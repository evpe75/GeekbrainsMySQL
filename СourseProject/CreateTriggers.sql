USE football_life;

DELIMITER //

CREATE TRIGGER players_profiles_insert BEFORE INSERT ON players_profiles
FOR EACH ROW 
BEGIN
	IF NOT EXISTS(SELECT 1 from users WHERE id = NEW.user_id and user_type = "player" LIMIT 1) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "User type must be equal 'player'. Insert canceled";
	END IF;
END //

CREATE TRIGGER players_profiles_update BEFORE UPDATE ON players_profiles
FOR EACH ROW 
BEGIN
	IF NEW.user_id <> OLD.user_id and NOT EXISTS(SELECT 1 from users WHERE id = NEW.user_id and user_type = "player" LIMIT 1) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "User type must be equal 'player'. Insert canceled";
	END IF;
END //	

CREATE TRIGGER requests_join_team_update AFTER UPDATE ON requests_join_team
FOR EACH ROW 
BEGIN
	 IF NEW.status = "approved" THEN 
	 	INSERT team_members (team_id, player_id, team_role, is_sponsor) VALUES (NEW.to_team_id, NEW.from_player_id, "player", NEW.ready_be_sponsor);
	 END IF;
END //	

CREATE TRIGGER invitations_join_team_update AFTER UPDATE ON invitations_join_team
FOR EACH ROW 
BEGIN
	 IF NEW.status = "approved" THEN 
	 	INSERT team_members (team_id, player_id, team_role) VALUES (NEW.from_team_id, NEW.to_player_id, "player");
	 END IF;
END //	

CREATE TRIGGER owners_profiles_insert BEFORE INSERT ON owners_profiles
FOR EACH ROW 
BEGIN
	 IF NOT EXISTS(SELECT 1 from users WHERE id = NEW.user_id and user_type = "field_owner" LIMIT 1) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "User type must be equal 'field_owner'. Insert canceled";
	 END IF;
END //	

CREATE TRIGGER owners_profiles_update BEFORE UPDATE ON owners_profiles
FOR EACH ROW 
BEGIN
	 IF NEW.user_id <> OLD.user_id and NOT EXISTS(SELECT 1 from users WHERE id = NEW.user_id and user_type = "field_owner" LIMIT 1) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "User type must be equal 'field_owner'. Insert canceled";
	 END IF;
END //	

CREATE TRIGGER favorite_teams_contenders_insert BEFORE INSERT ON favorite_teams_contenders
FOR EACH ROW 
BEGIN 
	 IF NEW.my_team_id = NEW.contender_team_id THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "The team can't have himself in favorites. Insert canceled";
	 END IF;
END //	


CREATE TRIGGER ignore_teams_insert_before BEFORE INSERT ON ignore_teams
FOR EACH ROW 
BEGIN 
	 IF NEW.my_team_id = NEW.ignore_team_id THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "The team cann't ignore himself. Insert canceled";
	 END IF;
END //	

CREATE TRIGGER ignore_teams_insert_before BEFORE INSERT ON ignore_teams
FOR EACH ROW 
BEGIN 
	 IF EXISTS(SELECT 1 FROM favorite_teams_contenders 
	 			WHERE favorite_teams_contenders.my_team_id        = NEW.my_team_id AND
	 			      favorite_teams_contenders.contender_team_id = NEW.ignore_team_id) THEN 
	 	DELETE FROM favorite_teams_contenders ftc 
	 		WHERE ftc.my_team_id        = NEW.my_team_id AND
	 			  ftc.contender_team_id = NEW.ignore_team_id;
	 END IF;
END //	

CREATE TRIGGER play_offers_insert BEFORE INSERT ON play_offers
FOR EACH ROW 
BEGIN
	
	 IF NEW.offer_type = "joint_game" AND (NEW.min_players IS NULL OR NEW.min_players = 0) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Minimal count of players must be selected for offers type 'joint_game'. Insert canceled";
	 END IF;
	
	 IF NEW.offer_type = "lease_transfer" AND (NOT NEW.min_players IS NULL OR NEW.min_players <> 0)  THEN 
		SET NEW.min_players = NULL;
	 END IF;
	
	 IF NEW.visibility = "team" AND EXISTS(SELECT 1 FROM ignore_teams it 
							 			   join timetable ON it.my_team_id = timetable.team_id and timetable.id = NEW.timetable_id
									 	   WHERE it.ignore_team_id = NEW.team_id) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Offer team is on the ignore list. Insert canceled";
	 END IF;
	
	 IF NEW.visibility = "team" AND NEW.team_id IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Team must be selected for visibility 'team'. Insert canceled";
	 END IF;
	
	 IF NEW.visibility <> "team" AND NOT NEW.team_id IS NULL  THEN 
		SET NEW.team_id = NULL;
	 END IF;
	
END //	

CREATE TRIGGER play_offers_update BEFORE UPDATE ON play_offers
FOR EACH ROW 
BEGIN
	 IF NEW.offer_type <> OLD.offer_type AND NEW.offer_type = "joint_game" AND (NEW.min_players IS NULL OR NEW.min_players = 0) THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Minimal count of players must be selected for offers type 'joint_game'. Insert canceled";
	 END IF;
	
	 IF NEW.offer_type <> OLD.offer_type AND NEW.offer_type = "lease_transfer" AND (NOT NEW.min_players IS NULL OR NEW.min_players <> 0)  THEN 
		SET NEW.min_players = NULL;
	 END IF;
	
	 IF NEW.visibility <> OLD.visibility AND NEW.visibility = "team" AND NEW.team_id IS NULL THEN 
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Team must be selected for visibility 'team'. Insert canceled";
	 END IF;
	
	 IF NEW.visibility <> OLD.visibility AND NEW.visibility <> "team" AND NOT NEW.team_id IS NULL  THEN 
		SET NEW.team_id = NULL;
	 END IF;
	
END //	

CREATE TRIGGER play_offers_responses_insert_before BEFORE INSERT ON play_offers_responses
FOR EACH ROW 
BEGIN
	IF (SELECT visibility FROM play_offers WHERE play_offers.id = NEW.play_offers_id LIMIT 1) = "team" AND 
	   (SELECT team_id    FROM play_offers WHERE play_offers.id = NEW.play_offers_id LIMIT 1) = NEW.team_id THEN 
		SET NEW.status = "approved";
	END IF;
END //

CREATE TRIGGER play_offers_responses_insert_after AFTER INSERT ON play_offers_responses
FOR EACH ROW 
BEGIN
	IF NEW.status = "approved" THEN 
		UPDATE play_offers SET status = "closed" WHERE play_offers.id = NEW.play_offers_id;
		UPDATE play_offers_responses SET status = "denied" WHERE play_offers_responses.id <> NEW.id AND play_offers_responses.play_offers_id = NEW.play_offers_id;
	END IF;
END //	

CREATE TRIGGER play_offers_responses_update_after AFTER UPDATE ON play_offers_responses
FOR EACH ROW 
BEGIN
	IF NEW.status <> OLD.status AND NEW.status = "approved" THEN 
		UPDATE play_offers SET status = "closed" WHERE play_offers.id = NEW.play_offers_id;
		UPDATE play_offers_responses SET status = "denied" WHERE play_offers_responses.id <> NEW.id AND play_offers_responses.play_offers_id = NEW.play_offers_id;
	END IF;
END //	


DELIMITER ;

