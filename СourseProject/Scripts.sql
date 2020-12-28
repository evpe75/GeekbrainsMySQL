use football_life;

SET @my_email = "evpe75@mail.ru";

-- 1. Поиск свободных предложений игры, доступных для моих команд в моем городе players_profiles

-- если приглашение направлено конкретной команде, к которой я состою
select
	team_master.id as team_master_id,
	team_master.name as team_master_name,
	ff.name as field_name,
	po.offer_type,
	po.payment_demand,
	tt.timetable_date,
	tt.begin_at,
	tt.end_at,
	team_guest.id as team_guest_id,
	team_guest.name as team_guest_name
from play_offers po
join timetable tt on po.timetable_id = tt.id and po.status = "open" and tt.begin_at > DATE_ADD(NOW(), INTERVAL -1 HOUR)
join football_fields ff on tt.football_fields_id = ff.id 
join teams team_master on tt.team_id = team_master.id
join teams team_guest 
	on  po.team_id = team_guest.id 
	and po.visibility = "team"
join team_members tm on team_guest.id = tm.team_id 
join players_profiles pp 
	on tm.player_id = pp.user_id and 
	   pp.my_country_code = ff.country_code and
	   pp.my_city_id      = ff.city_id
join users u 
	on pp.user_id = u.id and 
	   u.email = @my_email
	   
UNION DISTINCT 	

-- если приглашение направлено командам из приоритетного списка, к которых я состою
select
	team_master.id as team_master_id,
	team_master.name as team_master_name,
	ff.name as field_name,
	po.offer_type,
	po.payment_demand,
	tt.timetable_date,
	tt.begin_at,
	tt.end_at,
	team_guest.id as team_guest_id,
	team_guest.name as team_guest_name
from play_offers po
join timetable tt on po.timetable_id = tt.id and po.status = "open" and tt.begin_at > DATE_ADD(NOW(), INTERVAL -1 HOUR)
join football_fields ff on tt.football_fields_id = ff.id 
join teams team_master on tt.team_id = team_master.id
join favorite_teams_contenders ON team_master.id = favorite_teams_contenders.my_team_id
join teams team_guest 
	on favorite_teams_contenders.contender_team_id = team_guest.id AND 
	   (select count(tm_count.player_id) from team_members tm_count WHERE tm_count.team_id = team_guest.id) >= po.min_players
join team_members tm on team_guest.id = tm.team_id 
join players_profiles pp 
	on tm.player_id = pp.user_id and 
	   pp.my_country_code = ff.country_code and
	   pp.my_city_id      = ff.city_id
join users u 
	on pp.user_id = u.id and 
	   u.email = @my_email
where po.visibility	= "favorite_teams"

UNION DISTINCT	
-- если приглашение направлено всем командам
select
	team_master.id as team_master_id,
	team_master.name as team_master_name,
	ff.name as field_name,
	po.offer_type,
	po.payment_demand,
	tt.timetable_date,
	tt.begin_at,
	tt.end_at,
	team_guest.id as team_guest_id,
	team_guest.name as team_guest_name
from play_offers po
join timetable tt on po.timetable_id = tt.id and po.status = "open" and tt.begin_at > DATE_ADD(NOW(), INTERVAL -1 HOUR)
join football_fields ff on tt.football_fields_id = ff.id 
join teams team_master on tt.team_id = team_master.id
join teams team_guest 
	on (select count(tm_count.player_id) from team_members tm_count WHERE tm_count.team_id = team_guest.id) >= po.min_players AND 
	   NOT EXISTS (SELECT 1 FROM ignore_teams it WHERE it.my_team_id = team_master.id AND it.ignore_team_id = team_guest.id)
join team_members tm on team_guest.id = tm.team_id 
join players_profiles pp 
	on tm.player_id = pp.user_id and 
	   pp.my_country_code = ff.country_code and
	   pp.my_city_id      = ff.city_id
join users u 
	on pp.user_id = u.id and 
	   u.email = @my_email
where po.visibility	= "all"

ORDER BY timetable_date, begin_at, team_master_name;


-- 2. Поиск подходящих команд, для направления предложений игры от моей команды
select 
	team_candidate.id,
	team_candidate.name,
	CASE 
		WHEN EXISTS (SELECT 1 FROM favorite_teams_contenders ftc2 WHERE ftc2.my_team_id = team_master.id AND ftc2.contender_team_id = team_candidate.id) THEN 1
		ELSE 0
	END AS is_favorite
from play_offers po
join timetable tt on po.timetable_id = tt.id and po.status = "draft" and tt.begin_at > DATE_ADD(NOW(), INTERVAL -1 HOUR)
join teams team_master on tt.team_id = team_master.id
join (select my_pp_adm.my_city_id, my_pp_adm.my_country_code, my_tm.team_id from players_profiles my_pp_adm 
		join team_members my_tm on my_tm.player_id = my_pp_adm.user_id AND my_tm.team_role = "admin") my_team_city
	on team_master.id = my_team_city.team_id
join (select pp_adm.my_city_id, pp_adm.my_country_code, tm.team_id from players_profiles pp_adm 
		join team_members tm on tm.player_id = pp_adm.user_id AND tm.team_role = "admin") team_city	
	on my_team_city.my_country_code = team_city.my_country_code AND 
	   my_team_city.my_city_id      = team_city.my_city_id  AND 
	   my_team_city.team_id        <> team_city.team_id
join teams team_candidate 
	on team_city.team_id = team_candidate.id AND 
	   (select count(tm2.player_id) from team_members tm2 where tm2.team_id = team_candidate.id) >= po.min_players
where po.visibility	= "favorite_teams" OR po.visibility	= "all"
















	


