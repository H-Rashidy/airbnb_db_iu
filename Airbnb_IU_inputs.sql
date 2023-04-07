USE IU_Airbnb;

 INSERT INTO guest_profile VALUES (1,'Hassan','Ahmed',12345678,01101010,'2020-09-01',NULL,TRUE);
 INSERT INTO guest_profile VALUES (2,'John','Stev',23456789,01010101,'2021-08-16',NULL,TRUE);
 INSERT INTO guest_profile VALUES (3,'Mariam','Ahmed',34567890,11001100,'2018-10-11',NULL,FALSE);
 INSERT INTO guest_profile VALUES (4,'Alexandra','Adam',45678901,11100010,'2019-12-01',NULL,FALSE);
 INSERT INTO guest_profile VALUES (5,'Ian','Mills',56789012,11100011,'2016-04-15','ian.mills@work.com',TRUE);
 INSERT INTO guest_profile VALUES (6,'Bella','Hamilton',67890123,11100000,'2021-10-01','bella.hamilton@work.com',TRUE);
 INSERT INTO guest_profile VALUES (7,'Leah','Piper',78901234,00001111,'2022-05-30',NULL,FALSE);
 INSERT INTO guest_profile VALUES (8,'Maria','Sharp',89012345,01001100,'2020-01-27','maria.sharp@work.com',TRUE);
 INSERT INTO guest_profile VALUES (9,'Anna','Nash',90123456,10110011,'2017-02-22',NULL,FALSE);
 INSERT INTO guest_profile VALUES (10,'Jack','Nolan',13456789,11111110,'2023-01-01','jack.nolan@work.com',TRUE);
 
 COMMIT;
 
 INSERT INTO host_profile VALUES (1,'Madeleine','Taylor',01010101,'Cairo, Egypt');
 INSERT INTO host_profile VALUES (2,'Heather','Ball',11001100,'Berlin, Germany');
 INSERT INTO host_profile VALUES (3,'Max','Lambert',00110011,'Naples, Italy');
 INSERT INTO host_profile VALUES (4,'Dan','Smith',10101010,'Rome, Italy');
 INSERT INTO host_profile VALUES (5,'Felicity','Black',11100011,'NYC, USA');
 INSERT INTO host_profile VALUES (6,'Sonia','Lyman',11100000,'California, USA');
 INSERT INTO host_profile VALUES (7,'Jane','Welch',11110000,'London, England');
 INSERT INTO host_profile VALUES (8,'Virginia','Wallace',11000000,'Paris, France');
 INSERT INTO host_profile VALUES (9,'Steven','Pullman',00011111,'Frankfurt, Germany');
 INSERT INTO host_profile VALUES (10,'William','Churchill',00001111,'Beijing, China');
 
 COMMIT;
 
 INSERT INTO login_guest VALUES (1,'hassan.ahmed@email.com',1234,1);
 INSERT INTO login_guest VALUES (2,'john.stev@email.com',5678,2);
 INSERT INTO login_guest VALUES (3,'mariam.ahmed@email.com',9012,3);
 INSERT INTO login_guest VALUES (4,'alexandra.adam@email.com',3456,4);
 INSERT INTO login_guest VALUES (5,'ian.mills@email.com',7890,5);
 INSERT INTO login_guest VALUES (6,'bella.hamiltond@email.com',1234,6);
 INSERT INTO login_guest VALUES (7,'leah.piper@email.com',2345,7);
 INSERT INTO login_guest VALUES (8,'aria.sharp@email.com',3456,8);
 INSERT INTO login_guest VALUES (9,'anna.nash@email.com',4567,9);
 INSERT INTO login_guest VALUES (10,'jack.nolan@email.com',5678,10);
 
 COMMIT;
 
 INSERT INTO login_host VALUES (1,'madeleine.taylor@email.com',6789,1);
 INSERT INTO login_host VALUES (2,'heather.ball@email.com',6789,2);
 INSERT INTO login_host VALUES (3,'max.lambert@email.com',6789,3);
 INSERT INTO login_host VALUES (4,'dan.smith@email.com',6789,4);
 INSERT INTO login_host VALUES (5,'felicity.black@email.com',6789,5);
 INSERT INTO login_host VALUES (6,'sonia.lyman@email.com',6789,6);
 INSERT INTO login_host VALUES (7,'jane.welch@email.com',6789,7);
 INSERT INTO login_host VALUES (8,'virginia.wallace@email.com',6789,8);
 INSERT INTO login_host VALUES (9,'steven.pullman@email.com',6789,9);
 INSERT INTO login_host VALUES (10,'william.churchill@email.com',6789,10);
 
 COMMIT;
 
 INSERT INTO guest_about VALUES (1,1,'London, England','Engineer, Google','Arabic');
 INSERT INTO guest_about VALUES (2,2,'Oxford, England','Doctor, NHS','English');
 INSERT INTO guest_about VALUES (3,3,'Paris, France','Software Engineer, Microsoft','French');
 INSERT INTO guest_about VALUES (4,4,'Rome, Italy','Data Scientist, Google','Italian');
 INSERT INTO guest_about VALUES (5,5,'Berlin, Germany','Data Analyst, Meta','German');
 INSERT INTO guest_about VALUES (6,6,'Barcelona, Spain','Manager, Amazon','Spanish');
 INSERT INTO guest_about VALUES (7,7,'Cairo, Egypt','Developer, Microsoft','Arabic');
 INSERT INTO guest_about VALUES (8,8,'Dubai, UAE','Sales Manager, Dell','English');
 INSERT INTO guest_about VALUES (9,9,'London, England','Marketing Manager, Google','English');
 INSERT INTO guest_about VALUES (10,10,'Paris, France','Engineer, Meta','French');
 
 COMMIT;
 
 INSERT INTO guest_card_details VALUES (1,123456789,'2027-09',123,11358,1);
 INSERT INTO guest_card_details VALUES (2,123456789,'2025-10',345,12345,2);
 INSERT INTO guest_card_details VALUES (3,123456789,'2028-11',678,13765,3);
 INSERT INTO guest_card_details VALUES (4,123456789,'2029-05',912,87654,4);
 INSERT INTO guest_card_details VALUES (5,123456789,'2026-06',345,34567,5);
 INSERT INTO guest_card_details VALUES (6,123456789,'2024-02',678,98076,6);
 INSERT INTO guest_card_details VALUES (7,123456789,'2025-04',913,23123,7);
 INSERT INTO guest_card_details VALUES (8,123456789,'2026-03',234,65765,8);
 INSERT INTO guest_card_details VALUES (9,123456789,'2027-01',913,87965,9);
 INSERT INTO guest_card_details VALUES (10,123456789,'2028-07',567,34256,10);
 
 COMMIT;

UPDATE guest_card_details 
	SET expiration_date = '2027-09-01'
    WHERE guest_card_id = 1;
    
UPDATE guest_card_details 
	SET card_number = 987654321, expiration_date = '2025-10-01'
    WHERE guest_card_id = 2;
    
UPDATE guest_card_details 
	SET card_number = 876543219, expiration_date = '2028-11-01'
    WHERE guest_card_id = 3;
    
UPDATE guest_card_details 
	SET card_number = 765432198, expiration_date = '2029-05-01'
    WHERE guest_card_id = 4;
    
UPDATE guest_card_details 
	SET card_number = 654321987, expiration_date = '2026-06-01'
    WHERE guest_card_id = 5;
    
UPDATE guest_card_details 
	SET card_number = 543219876, expiration_date = '2024-02-01'
    WHERE guest_card_id = 6;
    
UPDATE guest_card_details 
	SET card_number = 432198765, expiration_date = '2025-04-01'
    WHERE guest_card_id = 7;
    
UPDATE guest_card_details 
	SET card_number = 321987654, expiration_date = '2026-03-01'
    WHERE guest_card_id = 8;
    
UPDATE guest_card_details 
	SET card_number = 219876543, expiration_date = '2027-01-01'
    WHERE guest_card_id = 9;
    
UPDATE guest_card_details 
	SET card_number = 876543219, expiration_date = '2028-07-01'
    WHERE guest_card_id = 10;
 
 INSERT INTO identity_verification VALUES (1,'England',FALSE,TRUE,FALSE,10101010,1);
 INSERT INTO identity_verification VALUES (2,'England',TRUE,FALSE,FALSE,01010101,2);
 INSERT INTO identity_verification VALUES (3,'France',FALSE,FALSE,TRUE,11001100,3);
 INSERT INTO identity_verification VALUES (4,'Italy',FALSE,TRUE,FALSE,00110011,4);
 INSERT INTO identity_verification VALUES (5,'Germany',TRUE,FALSE,FALSE,11100011,5);
 INSERT INTO identity_verification VALUES (6,'Spain',FALSE,TRUE,FALSE,00011100,6);
 INSERT INTO identity_verification VALUES (7,'Egypt',FALSE,FALSE,TRUE,11110000,7);
 INSERT INTO identity_verification VALUES (8,'UAE',FALSE,TRUE,FALSE,00001111,8);
 INSERT INTO identity_verification VALUES (9,'England',TRUE,FALSE,FALSE,00000011,9);
 INSERT INTO identity_verification VALUES (10,'France',TRUE,FALSE,FALSE,11111100,10);
 
 COMMIT;
 
 INSERT INTO emergency_contact VALUES (1,'Victor Hodges','brother','victor.hodges@email.com',12345678,'English',10);
 INSERT INTO emergency_contact VALUES (2,'Julia	MacLeod','sister','julia.macleod@email.com',87654321,'French',9);
 INSERT INTO emergency_contact VALUES (3,'Sarah	Baker','mother','sarah.baker@email.com',12345678,'Arabic',8);
 INSERT INTO emergency_contact VALUES (4,'Connor Thomson','father',NULL,12345678,'English',7);
 INSERT INTO emergency_contact VALUES (5,'Oliver Welch','brother','oliver.welch@email.com',87654321,NULL,6);
 INSERT INTO emergency_contact VALUES (6,'Piers	Randall','friend','piers.randall@email.com',12345678,'Italian',5);
 INSERT INTO emergency_contact VALUES (7,'Joan	Paige','friend','joan.paige@email.com',87654321,'English',4);
 INSERT INTO emergency_contact VALUES (8,'Sam Jones','brother',NULL,12345678,'French',3);
 INSERT INTO emergency_contact VALUES (9,'Katherine	Glover','sister','katherine.glover@email.com',87654321,'German',2);
 INSERT INTO emergency_contact VALUES (10,'Warren Churchill','brother','warren.churchill@email.com',12345678,NULL,1);
 
 COMMIT;
 
 INSERT INTO host_place VALUES (1,'Beautiful Ocean View Villa', 'Experience luxury living with breathtaking ocean views from this stunning villa.', 500, 10101010, 00001111, 11110000, 01010101, 00110011, 1);
 INSERT INTO host_place VALUES (2,'Cozy Mountain Cabin', 'Escape to the mountains and relax in this charming cabin.', 200, 10101010, 00001111, 11110000, 01010101, 00110011, 2);
 INSERT INTO host_place VALUES (3,'Luxury Beachfront Condo', 'Enjoy the ultimate beach vacation in this luxurious condo.', 800, 10101010, 00001111, 11110000, 01010101, 00110011, 3);
 INSERT INTO host_place VALUES (4,'Rustic Farmhouse Retreat', 'Experience country living in this cozy and charming farmhouse.', 150, 10101010, 00001111, 11110000, 01010101, 00110011, 4);
 INSERT INTO host_place VALUES (5,'Modern City Loft', 'Stay in the heart of the city in this stylish and modern loft.', 300, 10101010, 00001111, 11110000, 01010101, 00110011, 5);
 INSERT INTO host_place VALUES (6,'Secluded Forest Cottage', 'Escape to the tranquility of the forest in this charming cottage.', 175, 10101010, 00001111, 11110000, 01010101, 00110011, 6);
 INSERT INTO host_place VALUES (7,'Historic Downtown Apartment', 'Experience the charm of the city in this historic and spacious apartment.', 250, 10101010, 00001111, 11110000, 01010101, 00110011, 7);
 INSERT INTO host_place VALUES (8,'Lakeside Retreat', 'Relax and unwind in this peaceful lakeside retreat.', 175, 10101010, 00001111, 11110000, 01010101, 00110011, 8);
 INSERT INTO host_place VALUES (9,'Charming Coastal Cottage', 'Experience the charm of the coast in this cozy and comfortable cottage.', 150, 10101010, 00001111, 11110000, 01010101, 00110011, 9);
 INSERT INTO host_place VALUES (10,'Spacious Mountain Retreat', 'Gather with family and friends in this spacious mountain retreat.', 400, 10101010, 00001111, 11110000, 01010101, 00110011, 10);
 
 COMMIT;
 
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (2, 2, 1, 1, 1);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (1, 1, 1, 0, 2);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (3, 2, 2, 1, 3);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (2, 1, 1, 0, 4);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (1, 1, 1, 0, 5);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (1, 1, 1, 0, 6);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (2, 2, 1, 1, 7);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (1, 1, 1, 0, 8);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (2, 1, 1, 1, 9);
INSERT INTO rooms_spaces (bedroom, full_bathroom, living_room, exterior, place_id) VALUES (3, 3, 1, 1, 10);

COMMIT;

INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('123 Main St, Anytown', -97.1234, 38.5678, 1);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('456 Elm St, Somewhere', -122.3456, 47.6789, 2);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('789 Oak St, Nowhere', -73.9876, 40.7654, 3);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('321 Maple St, Elsewhere', -118.2345, 34.5678, 4);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('654 Cedar St, Anytown', -97.2345, 38.6789, 5);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('987 Pine St, Somewhere', -122.4567, 47.7890, 6);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('135 Walnut St, Nowhere', -73.8765, 40.6543, 7);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('864 Birch St, Elsewhere', -118.3456, 34.4567, 8);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('246 Oakwood St, Anytown', -97.3456, 38.7890, 9);
INSERT INTO place_location (address, longitude, latitude, place_id) VALUES ('369 Maplewood St, Somewhere', -122.5678, 47.8901, 10);

COMMIT; 

INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, 1);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, 2);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, 3);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, 4);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, 5);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, 6);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, 7);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, 8);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, 9);
INSERT INTO place_highlight (peacful, `unique`, family_friendly, stylish, central, spacious, place_id) VALUES (FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, 10);

 COMMIT;
 
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('House', 'Single family home', 'Entire home/apt', '2000-01-01', 2000, 6, 1);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('Apartment', 'Condominium', 'Private room', '1995-01-01', 800, 2, 2);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('House', 'Single family home', 'Entire home/apt', '2010-01-01', 2500, 8, 3);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('Apartment', 'Studio', 'Entire home/apt', '2005-01-01', 500, 2, 4);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('House', 'Villa', 'Entire home/apt', '1990-01-01', 6000, 12, 5);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('Apartment', 'Loft', 'Private room', '2008-01-01', 700, 2, 6);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('House', 'Cabin', 'Entire home/apt', '1980-01-01', 1500, 6, 7);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('Apartment', 'Penthouse', 'Entire home/apt', '2015-01-01', 2000, 4, 8);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('House', 'Mansion', 'Entire home/apt', '2000-01-01', 10000, 16, 9);
 INSERT INTO `property_guests` (`place_type`, `property_type`, `room_type`, `year_built`, `property_size`, `number_of_guests`, `place_id`)
 VALUES ('Apartment', 'Duplex', 'Entire home/apt', '1998-01-01', 1200, 6, 10);
 
 COMMIT;
 
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1, 2);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 1, 1, 3);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 4);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 5);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 1, 0, 6);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 1, 7);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 8);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 1, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 9);
 INSERT INTO `place_offer` (`wifi`, `tv`, `kitchen`, `washer`, `free_parking`, `paid_parking`, `ac`, `dedicated_workplace`, `pool`, `hot_tub`, `patio`, `bbq_grill`, `outdoor_dining_area`, `fire_pit`, `pool_table`, `indoor_fireplace`, `piano`, `exercise_equipment`, `lake_access`, `beach_access`, `ski-in_ski-out`, `outdoor_shower`, `smoke_alarm`, `first_aid_kit`, `fire_extinguisher`, `carbon_monoxide_alarm`, `place_id`)
 VALUES (1, 0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 10);
 
 COMMIT;
 
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (1, 1, 1, '2023-05-01 12:00:00', '2023-05-05 12:00:00', 2, 4, 0);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (2, 1, 2, '2023-06-01 15:00:00', '2023-06-06 10:00:00', 4, 5, 1);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (3, 2, 3, '2023-07-01 11:00:00', '2023-07-05 11:00:00', 3, 4, 0);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (4, 2, 4, '2023-08-01 10:00:00', '2023-08-05 10:00:00', 2, 4, 1);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (1, 3, 5, '2023-09-01 12:00:00', '2023-09-07 12:00:00', 2, 6, 0);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (2, 3, 6, '2023-10-01 15:00:00', '2023-10-06 10:00:00', 4, 5, 1);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (3, 4, 7, '2023-11-01 11:00:00', '2023-11-05 11:00:00', 3, 4, 0);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (4, 4, 8, '2023-12-01 10:00:00', '2023-12-05 10:00:00', 2, 4, 1);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (1, 5, 9, '2024-01-01 12:00:00', '2024-01-07 12:00:00', 2, 6, 0);
 INSERT INTO `reservation` (`guest_id`, `host_id`, `place_id`, `check_in`, `check_out`, `guest_number`, `nights_number`, `work_trip`)
 VALUES (2, 5, 10, '2024-02-01 15:00:00', '2024-02-06 10:00:00', 4, 5, 1);
 
 COMMIT;
 
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (1, 1, 0, 1);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (1, 1, 0, 2);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (1, 0, 1, 3);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (1, 0, 0, 4);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (0, 1, 0, 5);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (0, 1, 1, 6);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (0, 0, 1, 7);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (0, 0, 0, 8);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (1, 1, 0, 9);
 INSERT INTO `guest_payment_type` (`credit_debt_card`, `paypal`, `coupon`, `guest_id`)
 VALUES (1, 0, 0, 10);
 
 COMMIT;
 
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (1, 'John Smith', '123 Main St', NULL, 'Los Angeles', 'CA', 90001, 'USA', 10);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (6, 'Jane Doe', '456 Oak Ave', 'Apt 101', 'San Francisco', 'CA', 94102, 'USA', 10);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (2, 'Michael Johnson', '789 Maple Blvd', NULL, 'New York', 'NY', 10001, 'USA', 8);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (7, 'Emily Davis', '321 Pine St', 'Suite 202', 'Chicago', 'IL', 60601, 'USA', 8);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (3, 'William Brown', '111 Cedar Rd', NULL, 'Austin', 'TX', 78701, 'USA', 12);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (8, 'Sophia Lee', '222 Elm St', 'Unit 303', 'Seattle', 'WA', 98101, 'USA', 12);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (4, 'James Johnson', '333 Oak St', NULL, 'Miami', 'FL', 33101, 'USA', 15);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (9, 'Isabella Davis', '444 Maple Ave', 'Apt 404', 'Denver', 'CO', 80201, 'USA', 15);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (5, 'Ethan Wilson', '555 Pine St', NULL, 'Portland', 'OR', 97201, 'USA', 10);
 INSERT INTO `setup_payouts` (`host_id`, `account_holder_name`, `street_address`, `apt_suite_bldg`, `city`, `state`, `zip_code`, `country`, `commission_host`)
 VALUES (10, 'Olivia Martin', '666 Cedar Ave', 'Suite 505', 'Boston', 'MA', 02101, 'USA', 10);
 
 COMMIT;
 
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (1, '2023-05-01 14:00:00', 0, 1, 1, 1, 5);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (2, '2023-06-15 10:00:00', 1, 2, 2, 2, 8);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (3, '2023-07-01 12:00:00', 0, 3, 3, 3, 6);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (4, '2023-08-10 15:00:00', 1, 4, 4, 4, 7);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (5, '2023-09-01 16:00:00', 0, 5, 5, 5, 4);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (6, '2023-10-20 11:00:00', 1, 6, 6, 6, 9);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (7, '2023-11-01 13:00:00', 0, 7, 7, 7, 5);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (8, '2023-12-05 18:00:00', 1, 8, 8, 8, 10);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (9, '2024-01-01 20:00:00', 0, 9, 9, 9, 6);
 INSERT INTO `transaction_approval` (`reservation_id`, `arrival_date`, `24_hrs_passed`, `host_id`, `guest_id`, `guest_card_id`, `commission_guest`)
 VALUES (10, '2024-02-14 09:00:00', 1, 10, 10, 10, 8);

 COMMIT;
 
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (1, 0, 1);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (1, 0, 2);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (0, 1, 3);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (0, 1, 4);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (1, 0, 5);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (1, 0, 6);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (0, 1, 7);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (0, 0, 8);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (1, 0, 9);
 INSERT INTO `host_payment_type` (`wire_transfer`, `payoneer`, `host_id`)
 VALUES (0, 1, 10);
 
 COMMIT;
 
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (1, 1, 1, 50, '2023-05-02 09:00:00', 1);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (2, 2, 2, 75, '2023-06-16 14:00:00', 0);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (3, 3, 3, 60, '2023-07-02 12:00:00', 1);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (4, 4, 4, 70, '2023-08-11 15:00:00', 0);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (5, 5, 5, 40, '2023-09-02 16:00:00', 1);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (6, 6, 6, 90, '2023-10-21 11:00:00', 0);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (7, 7, 7, 55, '2023-11-02 13:00:00', 1);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (8, 8, 8, 100, '2023-12-06 18:00:00', 0);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (9, 9, 9, 60, '2024-01-02 20:00:00', 1);
 INSERT INTO `payout_methods` (`host_id`, `setup_payouts_id`, `host_payment_type_id`, `final_payout`, `payout_date`, `24_hrs_passed`)
 VALUES (10, 10, 10, 80, '2024-02-15 09:00:00', 0);
 
 COMMIT;
 
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (1, 4, 50, 10, 5, 5, 180);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (2, 5, 75, 15, 7, 7, 425);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (3, 4, 60, 12, 6, 6, 156);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (4, 4, 70, 14, 7, 7, 322);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (5, 6, 40, 8, 4, 4, 56);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (6, 5, 90, 18, 9, 9, 711);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (7, 4, 55, 11, 6, 6, 203);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (8, 4, 100, 20, 10, 10, 640);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (9, 6, 60, 12, 6, 6, 156);
 INSERT INTO `price_calculator` (`reservation_id`, `nights_number`, `night_price`, `cleaning_fees`, `service_fees`, `taxes`, `total_USD`)
 VALUES (10, 5, 80, 16, 8, 8, 352);

 COMMIT;

 UPDATE price_calculator
	SET taxes= night_price * 0.1,
		total_USD = nights_number * (night_price + cleaning_fees + service_fees + taxes);
        
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (1, 1, 5, "Great guest, would definitely host again!");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (2, 2, 4, "Overall good guest, but could have been more communicative.");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (3, 3, 5, "One of the best guests I've ever had, very respectful and tidy.");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (4, 4, 3, "Decent guest, but left some messes that required extra cleaning.");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (5, 5, 5, "Fantastic guest, would highly recommend to other hosts!");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (6, 6, 2, "Unfortunately, this guest caused some damage to my property.");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (7, 7, 4, "Good guest overall, but arrived later than expected without communication.");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (8, 8, 5, "Wonderful guest, very friendly and respectful!");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (9, 9, 4, "Great guest, but left some items behind that I had to return.");
 INSERT INTO `review_guest` (`host_id`, `guest_id`, `stars`, `comment`)
 VALUES (10, 10, 5, "Fantastic guest, left the place spotless and was very courteous!");
 
 COMMIT;
 
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (1, 1, 1, 4, "Overall good experience, but the bathroom could have been cleaner.");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (2, 2, 2, 5, "Great host, very accommodating and helpful!");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (3, 3, 3, 4, "Good stay overall, but the room was a bit smaller than expected.");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (4, 4, 4, 3, "Decent stay, but the noise from outside was a bit disruptive.");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (5, 5, 5, 5, "Fantastic host, very welcoming and friendly!");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (6, 6, 6, 2, "Not the best experience, as the host was unresponsive to my messages.");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (7, 7, 7, 4, "Good stay overall, but the bed was a bit uncomfortable.");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (8, 8, 8, 5, "Wonderful host, very considerate and hospitable!");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (9, 9, 9, 4, "Good stay overall, but the Wi-Fi signal was weak.");
 INSERT INTO `review_host` (`guest_id`, `host_id`, `reservation_id`, `stars`, `comment`)
 VALUES (10, 10, 10, 5, "Fantastic host, very attentive and accommodating!");
 
 COMMIT;