CREATE TABLE galaxy (
	galaxy_id SERIAL NOT NULL,
	name VARCHAR(30) NOT NULL UNIQUE,
	age_in_millions_of_years INT,
	diameter_in_parsecs INT,
	distance_from_earth NUMERIC,
	description TEXT,
	has_supermassive_black_hole BOOLEAN,
	visible_to_unaided_eye BOOLEAN,	
	PRIMARY KEY (galaxy_id)
);

CREATE TABLE star (
	star_id SERIAL NOT NULL,
	name VARCHAR(20) NOT NULL UNIQUE,
	age_in_millions_of_years INT,
	surface_temp_max INT,
	distance_from_earth NUMERIC,
	description TEXT,
	visible_to_unaided_eye BOOLEAN,
	part_of_constallation BOOLEAN,
	galaxy_id INT,
	PRIMARY KEY (star_id),
	FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id)
);

CREATE TABLE planet (
	planet_id SERIAL NOT NULL,
	name VARCHAR(20) NOT NULL UNIQUE,
	age_in_millions_of_years INT,
	equatorial_diameter_in_km INT,
	min_distance_from_earth_in_ly NUMERIC,
	description TEXT,
	has_life BOOLEAN,
	is_spherical BOOLEAN,
	star_id INT,
	PRIMARY KEY (planet_id),
	FOREIGN KEY (star_id) REFERENCES star(star_id)
);

CREATE TABLE moon (
	moon_id SERIAL NOT NULL,
	name VARCHAR(20) NOT NULL UNIQUE,
	surface_gravity NUMERIC,
	equatorial_diameter_in_km INT,
	distance_from_planet_in_km INT,
	description TEXT,
	has_life BOOLEAN,
	is_spherical BOOLEAN,
	planet_id INT,
	PRIMARY KEY (moon_id),
	FOREIGN KEY (planet_id) REFERENCES planet(planet_id)
);

CREATE TABLE planetary_system_bodies(
	planetary_system_bodies_id SERIAL NOT NULL,
	name VARCHAR(20) NOT NULL UNIQUE,
	type VARCHAR(20) NOT NULL,
	width_in_meters INT,
	albedo_in_percent INT,
	density_in_grams_per_cubic_centimeters NUMERIC,
	description TEXT,
	visible_to_unaided_eye BOOLEAN,
	part_of_constellation BOOLEAN,
	star_id INT,
	PRIMARY KEY (planetary_system_bodies_id),
	FOREIGN KEY (star_id) REFERENCES star(star_id)
);
