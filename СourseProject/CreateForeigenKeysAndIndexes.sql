USE football_life;

ALTER TABLE cities 
ADD CONSTRAINT cities_countries_code_fk
	FOREIGN KEY (countries_code) REFERENCES countries_codes(code)
		ON DELETE CASCADE; 
	
CREATE UNIQUE INDEX cities_countries_code_name_idx
  ON cities (countries_code, name);	

 
ALTER TABLE telecom_operators 
ADD CONSTRAINT telecom_operators_countries_code_fk
	FOREIGN KEY (countries_code) REFERENCES countries_codes(code)
		ON DELETE CASCADE; 
	
ALTER TABLE users 
ADD CONSTRAINT users_phone_telecom_operators_code_fk
	FOREIGN KEY (phone_countries_code, phone_telecom_operators_code) REFERENCES telecom_operators(countries_code, code)
		ON DELETE RESTRICT; 
	
CREATE INDEX users_phone_idx
  ON users (phone_countries_code, phone_telecom_operators_code, phone);
 
CREATE INDEX users_email_idx
  ON users (phone_countries_code, phone_telecom_operators_code, phone);

 
ALTER TABLE players_profiles 
ADD CONSTRAINT players_profiles_users_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE; 

ALTER TABLE players_profiles 
ADD CONSTRAINT players_profiles_cities_fk
	FOREIGN KEY (my_city_id) REFERENCES cities(id)
		ON DELETE RESTRICT; 

	
ALTER TABLE players_profiles 
ADD CONSTRAINT players_profiles_countries_codes_fk
	FOREIGN KEY (my_country_code) REFERENCES countries_codes(code)
		ON DELETE RESTRICT; 
 
ALTER TABLE player_roles 
ADD CONSTRAINT player_roles_players_profiles_fk
	FOREIGN KEY (player_id) REFERENCES players_profiles(user_id)
		ON DELETE CASCADE; 
	
ALTER TABLE team_members 
ADD CONSTRAINT team_members_teams_fk
	FOREIGN KEY (team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 

ALTER TABLE team_members 
ADD CONSTRAINT team_members_players_profiles_fk
	FOREIGN KEY (player_id) REFERENCES players_profiles(user_id)
		ON DELETE CASCADE; 

ALTER TABLE requests_join_team 
ADD CONSTRAINT requests_join_team_teams_fk
	FOREIGN KEY (to_team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 

ALTER TABLE requests_join_team 
ADD CONSTRAINT requests_join_team_players_profiles_fk
	FOREIGN KEY (from_player_id) REFERENCES players_profiles(user_id)
		ON DELETE CASCADE; 

ALTER TABLE invitations_join_team 
ADD CONSTRAINT invitations_join_team_teams_fk
	FOREIGN KEY (from_team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 

ALTER TABLE invitations_join_team 
ADD CONSTRAINT invitations_join_team_players_profiles_fk
	FOREIGN KEY (to_player_id) REFERENCES players_profiles(user_id)
		ON DELETE CASCADE; 

ALTER TABLE favorite_teams_contenders 
ADD CONSTRAINT favorite_teams_contenders_my_team_fk
	FOREIGN KEY (my_team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 

ALTER TABLE favorite_teams_contenders 
ADD CONSTRAINT favorite_teams_contenders_contender_team_fk
	FOREIGN KEY (contender_team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 
	
ALTER TABLE ignore_teams 
ADD CONSTRAINT ignore_teams_my_team_fk
	FOREIGN KEY (my_team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 

ALTER TABLE ignore_teams 
ADD CONSTRAINT ignore_teams_ignore_team_fk
	FOREIGN KEY (ignore_team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 
	

ALTER TABLE owners_profiles 
ADD CONSTRAINT owners_profiles_users_fk
	FOREIGN KEY (user_id) REFERENCES users(id)
		ON DELETE CASCADE; 
	
ALTER TABLE football_fields 
ADD CONSTRAINT football_fields_owners_profiles_fk
	FOREIGN KEY (owner_id) REFERENCES owners_profiles(user_id)
		ON DELETE CASCADE; 
	

ALTER TABLE football_fields 
ADD CONSTRAINT football_fields_cities_fk
	FOREIGN KEY (city_id) REFERENCES cities(id)
		ON DELETE RESTRICT; 

	
ALTER TABLE football_fields 
ADD CONSTRAINT football_fields_countries_codes_fk
	FOREIGN KEY (country_code) REFERENCES countries_codes(code)
		ON DELETE RESTRICT; 

ALTER TABLE timetable 
ADD CONSTRAINT timetable_football_fields_fk
	FOREIGN KEY (football_fields_id) REFERENCES football_fields(id)
		ON DELETE CASCADE; 

	
ALTER TABLE timetable 
ADD CONSTRAINT timetable_teams_fk
	FOREIGN KEY (team_id) REFERENCES teams(id)
		ON DELETE SET NULL; 
	
ALTER TABLE play_offers 
ADD CONSTRAINT play_offers_timetable_fk
	FOREIGN KEY (timetable_id) REFERENCES timetable(id)
		ON DELETE CASCADE; 
	
ALTER TABLE play_offers 
ADD CONSTRAINT play_offers_teams_fk
	FOREIGN KEY (team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 

ALTER TABLE play_offers_responses 
ADD CONSTRAINT play_offers_responses_play_offers_fk
	FOREIGN KEY (play_offers_id) REFERENCES play_offers(id)
		ON DELETE CASCADE; 

	
ALTER TABLE play_offers_responses 
ADD CONSTRAINT play_offers_responses_teams_fk
	FOREIGN KEY (team_id) REFERENCES teams(id)
		ON DELETE CASCADE; 


 
