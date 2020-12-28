USE football_life;

CREATE VIEW teams_timetable_view AS (
	SELECT 
		teams.id as team_id, 
		teams.name as team_name, 
		ff.name as field_name,
		cc.country_name,
		cities.name as city_name,
		ff.address,
		tt.timetable_date,
		tt.begin_at, 
		tt.end_at
	from (SELECT * from timetable 
			WHERE NOT EXISTS (SELECT 1 FROM play_offers po WHERE po.timetable_id = timetable.id AND po.offer_type = "lease_transfer" AND po.status = "closed")) tt
	JOIN teams ON tt.team_id = teams.id 
	JOIN football_fields ff ON tt.football_fields_id = ff.id
	JOIN countries_codes cc ON ff.country_code = cc.code 
	JOIN cities ON ff.city_id = cities.id
	
	UNION 
	
	SELECT 
		teams.id as team_id, 
		teams.name as team_name, 
		ff.name as field_name,
		cc.country_name,
		cities.name as city_name,
		ff.address,
		tt.timetable_date,
		tt.begin_at, 
		tt.end_at
	from timetable tt
	JOIN football_fields ff ON tt.football_fields_id = ff.id
	JOIN countries_codes cc ON ff.country_code = cc.code 
	JOIN cities ON ff.city_id = cities.id
	JOIN play_offers po ON tt.id = po.timetable_id AND po.status = "closed"
	JOIN play_offers_responses por ON po.id = por.play_offers_id AND por.status = "approved"
	JOIN teams ON por.team_id = teams.id
);


CREATE VIEW players_timetable_view AS (
	SELECT 
	pp.user_id as player_id,
	users.nikname,
	ttw.team_id,
	ttw.team_name,
	ttw.field_name,
	ttw.country_name,
	ttw.city_name,
	ttw.address,
	ttw.timetable_date,
	ttw.begin_at,
	ttw.end_at 
FROM players_profiles pp
JOIN users ON pp.user_id = users.id 
JOIN team_members tm ON pp.user_id = tm.player_id 
JOIN teams_timetable_view ttw ON tm.team_id = tm.team_id
);