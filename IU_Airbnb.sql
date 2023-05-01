SET SESSION sql_mode='ANSI';

DROP DATABASE IF EXISTS IU_Airbnb;

CREATE DATABASE IU_Airbnb;

USE IU_Airbnb;

CREATE TABLE IF NOT EXISTS `guest_profile`(
    `guest_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `last_name` VARCHAR(255) NOT NULL,
    `first_name` VARCHAR(255) NOT NULL,
    `phone_number` INT NOT NULL,
    `profile_picture` BLOB NOT NULL,
    `join_date` DATE NOT NULL,
    `work_email` VARCHAR(255) NULL,
    `gov_id_verification` BOOLEAN NULL,
    PRIMARY KEY (`guest_id`)
);

CREATE TABLE IF NOT EXISTS `host_profile`(
    `host_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(255) NOT NULL,
    `last_name` VARCHAR(255) NOT NULL,
    `profile_pic` BLOB NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`host_id`)
);

CREATE TABLE IF NOT EXISTS `login_guest`(
    `login_guest_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `guest_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`login_guest_id`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `login_host` (
	`login_host_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `username` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `host_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`login_host_id`),
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `guest_about`(
    `guest_about_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `guest_id` INT UNSIGNED NOT NULL,
    `location` VARCHAR(255) NOT NULL,
    `work` VARCHAR(255) NULL,
    `language` VARCHAR(255) NULL,
    PRIMARY KEY (`guest_about_id`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `guest_card_details`(
    `guest_card_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `card_number` INT NOT NULL,
    `expiration_date` DATE NOT NULL,
    `cvv` INT NOT NULL,
    `zip_code` INT NOT NULL,
    `guest_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`guest_card_id`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

ALTER TABLE `guest_card_details`
MODIFY `card_number` BIGINT NOT NULL;

CREATE TABLE IF NOT EXISTS `identity_verification`(
    `identity_verification_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `issuing_country` VARCHAR(255) NOT NULL,
    `driver's_license` BOOLEAN NOT NULL,
    `passport` BOOLEAN NOT NULL,
    `identity_card` BOOLEAN NOT NULL,
    `id_image` BLOB NOT NULL,
    `guest_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`identity_verification_id`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `emergency_contact`(
    `emergency_contact_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `relationship` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NULL,
    `phone_number` INT NOT NULL,
    `prefered_language` VARCHAR(255) NULL,
    `guest_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`emergency_contact_id`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `host_place`(
    `place_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(255) NOT NULL,
    `description` LONGTEXT NOT NULL,
    `night_price` INT NOT NULL,
    `pic_1` BLOB NOT NULL,
    `pic_2` BLOB NOT NULL,
    `pic_3` BLOB NOT NULL,
    `pic_4` BLOB NOT NULL,
    `pic_5` BLOB NOT NULL,
    `host_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`place_id`),
    INDEX NIGHT_PRICE_INDEX (`night_price`),
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

ALTER TABLE `host_place`
DROP COLUMN `night_price`;

CREATE TABLE IF NOT EXISTS `rooms_spaces`(
    `rooms_spaces_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `bedroom` INT NOT NULL,
    `full_bathroom` INT NOT NULL,
    `living_room` INT NOT NULL,
    `exterior` INT NOT NULL,
    `place_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`rooms_spaces_id`),
    FOREIGN KEY(`place_id`) REFERENCES `host_place`(`place_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `place_location`(
    `place_location_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `address` VARCHAR(255) NOT NULL,
    `longitude` DECIMAL(8, 2) NOT NULL,
    `latitude` DECIMAL(8, 2) NOT NULL,
    `place_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`place_location_id`),
    FOREIGN KEY(`place_id`) REFERENCES `host_place`(`place_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

ALTER TABLE `place_location`
MODIFY `longitude` FLOAT(7,4) NOT NULL,
MODIFY `latitude` FLOAT(7,4) NOT NULL;

CREATE TABLE IF NOT EXISTS `place_highlight`(
    `place_highlight_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `peacful` BOOLEAN NOT NULL,
    `unique` BOOLEAN NOT NULL,
    `family_friendly` BOOLEAN NOT NULL,
    `stylish` BOOLEAN NOT NULL,
    `central` BOOLEAN NOT NULL,
    `spacious` BOOLEAN NOT NULL,
    `place_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`place_highlight_id`),
    FOREIGN KEY(`place_id`) REFERENCES `host_place`(`place_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `property_guests`(
    `property_guest_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `place_type` VARCHAR(255) NOT NULL,
    `property_type` VARCHAR(255) NOT NULL,
    `room_type` VARCHAR(255) NULL,
    `year_built` DATE NULL,
    `property_size` INT NULL,
    `number_of_guests` INT NOT NULL,
    `place_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`property_guest_id`),
    FOREIGN KEY(`place_id`) REFERENCES `host_place`(`place_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `place_offer`(
    `place_offer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `wifi` BOOLEAN NOT NULL,
    `tv` BOOLEAN NOT NULL,
    `kitchen` BOOLEAN NOT NULL,
    `washer` BOOLEAN NOT NULL,
    `free_parking` BOOLEAN NOT NULL,
    `paid_parking` BOOLEAN NOT NULL,
    `ac` BOOLEAN NOT NULL,
    `dedicated_workplace` BOOLEAN NOT NULL,
    `pool` BOOLEAN NOT NULL,
    `hot_tub` BOOLEAN NOT NULL,
    `patio` BOOLEAN NOT NULL,
    `bbq_grill` BOOLEAN NOT NULL,
    `outdoor_dining_area` BOOLEAN NOT NULL,
    `fire_pit` BOOLEAN NOT NULL,
    `pool_table` BOOLEAN NOT NULL,
    `indoor_fireplace` BOOLEAN NOT NULL,
    `piano` BOOLEAN NOT NULL,
    `exercise_equipment` BOOLEAN NOT NULL,
    `lake_access` BOOLEAN NOT NULL,
    `beach_access` BOOLEAN NOT NULL,
    `ski-in_ski-out` BOOLEAN NOT NULL,
    `outdoor_shower` BOOLEAN NOT NULL,
    `smoke_alarm` BOOLEAN NOT NULL,
    `first_aid_kit` BOOLEAN NOT NULL,
    `fire_extinguisher` BOOLEAN NOT NULL,
    `carbon_monoxide_alarm` BOOLEAN NOT NULL,
    `place_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`place_offer_id`),
    FOREIGN KEY(`place_id`) REFERENCES `host_place`(`place_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `reservation`(
    `reservation_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `guest_id` INT UNSIGNED NOT NULL,
    `host_id` INT UNSIGNED NOT NULL,
    `place_id` INT UNSIGNED NOT NULL,
    `check_in` DATETIME NOT NULL,
    `check_out` DATETIME NOT NULL,
    `guest_number` INT NOT NULL,
    `nights_number` INT NOT NULL,
    `work_trip` BOOLEAN NOT NULL,
    PRIMARY KEY (`reservation_id`),
    INDEX NIGHTS_NUMBER_INDEX (`nights_number`),
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`place_id`) REFERENCES `host_place`(`place_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `guest_payment_type`(
    `guest_payment_type_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `credit_debt_card` BOOLEAN NOT NULL,
    `paypal` BOOLEAN NOT NULL,
    `coupon` BOOLEAN NULL,
    `guest_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`guest_payment_type_id`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `setup_payouts`(
    `setup_payouts_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `host_id` INT UNSIGNED NOT NULL,
    `account_holder_name` VARCHAR(255) NOT NULL,
    `street_address` VARCHAR(255) NOT NULL,
    `apt_suite_bldg` VARCHAR(255) NULL,
    `city` VARCHAR(255) NOT NULL,
    `state` VARCHAR(255) NOT NULL,
    `zip_code` INT NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `commission_host` INT NOT NULL,
    PRIMARY KEY (`setup_payouts_id`),
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `transaction_approval`(
    `transaction_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `reservation_id` INT UNSIGNED NOT NULL,
    `arrival_date` DATETIME NOT NULL,
    `24_hrs_passed` BOOLEAN NOT NULL,
    `host_id` INT UNSIGNED NOT NULL,
    `guest_id` INT UNSIGNED NOT NULL,
    `guest_card_id` INT UNSIGNED NOT NULL,
    `commission_guest` INT NOT NULL,
    PRIMARY KEY (`transaction_id`),
    INDEX 24_hrs_passed_INDEX (`24_hrs_passed`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`reservation_id`) REFERENCES `reservation`(`reservation_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`guest_card_id`) REFERENCES `guest_card_details`(`guest_card_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `host_payment_type`(
    `host_payment_type_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `wire_transfer` BOOLEAN NOT NULL,
    `payoneer` BOOLEAN NOT NULL,
    `host_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`host_payment_type_id`),
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `payout_methods`(
    `payout_methods_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `host_id` INT UNSIGNED NOT NULL,
    `setup_payouts_id` INT UNSIGNED NOT NULL,
    `host_payment_type_id` INT UNSIGNED NOT NULL,
    `final_payout` INT NOT NULL,
    `payout_date` DATETIME NOT NULL,
    `24_hrs_passed` BOOLEAN NOT NULL,
    PRIMARY KEY (`payout_methods_id`),
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY(`host_payment_type_id`) REFERENCES `host_payment_type`(`host_payment_type_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`setup_payouts_id`) REFERENCES `setup_payouts`(`setup_payouts_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`24_hrs_passed`) REFERENCES `transaction_approval`(`24_hrs_passed`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS `price_calculator`(
    `price_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `reservation_id` INT UNSIGNED NOT NULL,
    `nights_number` INT NOT NULL,
    `night_price` INT NOT NULL,
    `cleaning_fees` INT NOT NULL,
    `service_fees` INT NOT NULL,
    `taxes` INT NOT NULL,
    `total_USD` INT NOT NULL,
    PRIMARY KEY (`price_id`),
    FOREIGN KEY(`reservation_id`) REFERENCES `reservation`(`reservation_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`nights_number`) REFERENCES `reservation`(`nights_number`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

ALTER TABLE `price_calculator`
DROP FOREIGN KEY price_calculator_ibfk_2;


CREATE TABLE IF NOT EXISTS `review_guest`(
    `review_guest_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `host_id` INT UNSIGNED NOT NULL,
    `guest_id` INT UNSIGNED NOT NULL,
    `stars` INT NOT NULL,
    `comment` LONGTEXT NOT NULL,
    PRIMARY KEY (`review_guest_id`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS `review_host`(
    `review_host_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `guest_id` INT UNSIGNED NOT NULL,
    `host_id` INT UNSIGNED NOT NULL,
    `reservation_id` INT UNSIGNED NOT NULL,
    `stars` INT NOT NULL,
    `comment` LONGTEXT NOT NULL,
    PRIMARY KEY (`review_host_id`),
    FOREIGN KEY(`guest_id`) REFERENCES `guest_profile`(`guest_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`host_id`) REFERENCES `host_profile`(`host_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
    FOREIGN KEY(`reservation_id`) REFERENCES `reservation`(`reservation_id`)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);