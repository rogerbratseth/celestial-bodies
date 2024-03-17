--
-- Data for planetary_system_bodies table
-- Requirement: 3 rows
--

INSERT INTO planetary_system_bodies VALUES (DEFAULT, 'Hale-Bopp', 'Comet', 60000, 7, 0.6, 'Comet Hale–Bopp (formally designated C/1995 O1) is a comet that was one of the most widely observed of the 20th century and one of the brightest seen for many decades.', TRUE, FALSE, NULL );

INSERT INTO planetary_system_bodies VALUES (DEFAULT, '103P/Hartley', 'Comet', 1200, 3, NULL, 'Comet Hartley 2, designated as 103P/Hartley by the Minor Planet Center, is a small periodic comet with an orbital period of 6.48 years.', TRUE, FALSE, NULL );

INSERT INTO planetary_system_bodies VALUES (DEFAULT, 'Tempel 1', 'Comet', 4900, 4, 0.62, 'Tempel 1 (official designation: 9P/Tempel) is a periodic Jupiter-family comet discovered by Wilhelm Tempel in 1867.', TRUE, FALSE, NULL );

--
-- Data for galaxy table
-- Requirement: 6 rows
--

-- INSERT INTO galaxy VALUES (DEFAULT, 'name', age, diameter, distance from earth, description, has supermassive black hole, visible to unaided eye)

INSERT INTO galaxy VALUES (DEFAULT, 'NGC 4414', NULL, NULL, 62300000, 'NGC 4414 is an unbarred spiral galaxy about 62 million light-years away in the constellation Coma Berenices.', NULL, FALSE);

INSERT INTO galaxy VALUES (100, 'Milky Way', 13200, 26800, 26000, 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxy''s appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.', TRUE, TRUE);

INSERT INTO galaxy VALUES (DEFAULT, 'Large Magellanic Cloud', NULL, 10, 163000, 'The Large Magellanic Cloud (LMC) is a spiral satellite galaxy of the Milky Way.', NULL, TRUE);

INSERT INTO galaxy VALUES (DEFAULT, 'Messier 87', NULL, 40, 53500000, 'Messier 87 (also known as Virgo A or NGC 4486, generally abbreviated to M87) is a supergiant elliptical galaxy in the constellation Virgo that contains several trillion stars.', TRUE, FALSE);

INSERT INTO galaxy VALUES (DEFAULT, 'Andromeda Galaxy', 2000, 46, 2500000, 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', TRUE, TRUE);

INSERT INTO galaxy VALUES (DEFAULT, 'Antennae Galaxies', 300, 150000, 45000000, 'The Antennae Galaxies (also known as NGC 4038/NGC 4039 or Caldwell 60/Caldwell 61) are a pair of interacting galaxies in the constellation Corvus.', FALSE, FALSE);

--
-- Data for star table
-- Requirement: 6 rows
--

INSERT INTO star VALUES (DEFAULT, 'Betelgeuse', 10, 3800, 408, 'Betelgeuse is a red supergiant star in the constellation of Orion.', TRUE, TRUE, 100);

INSERT INTO star VALUES (100, 'Sun', 4600, 6000, 1.58130702e-5, 'The Sun is the star at the center of the Solar System.', TRUE, FALSE, 100);

INSERT INTO star VALUES (DEFAULT, 'VX Sagittarii', NULL, 3400, 5100, 'VX Sagittarii is an asymptotic giant branch star located more than 1.5 kiloparsec away from the Sun in the constellation of Sagittarius.', NULL, TRUE, 100);

INSERT INTO star VALUES (DEFAULT, 'RW Cygni', NULL, 3605, 5283.84617, 'RW Cygni is a semiregular variable star in the constellation Cygnus, about a degree east of 2nd magnitude γ Cygni.', NULL, TRUE, 100);

INSERT INTO star VALUES (DEFAULT, 'HR 5171', 3.5, 5200, 10000, 'HR 5171, also known as V766 Centauri, is a yellow hypergiant in the constellation Centaurus.', FALSE, TRUE, 100);

INSERT INTO star VALUES (DEFAULT, 'CIT 6', NULL, 2445, 1020, 'CIT 6 is a carbon star in the constellation Leo Minor.', FALSE, TRUE, 100);
INSERT INTO star VALUES (201, '51 Pegasi', 6100, 5768, 50.64, '51 Pegasi (abbreviated 51 Peg), formally named Helvetios /hɛlˈviːʃiəs/, is a Sun-like star located 50.6 light-years (15.5 parsecs) from Earth in the constellation of Pegasus.', FALSE, TRUE, 100);
INSERT INTO star VALUES (202, 'Kepler-20', 5600, 5495, 934, 'Kepler-20 is a star about 934 light-years (286 parsecs) from Earth in the constellation Lyra with a system of at least five, and possibly six, known planets.', FALSE, TRUE, 100);
INSERT INTO star VALUES (203, 'L 34-26', 150, 434, 35, 'L 34-26, also known as COCONUTS-2A and TYC 9381-1809-1, is a M3-type dwarf star located 35 light-years away, in the constellation of Chamaeleon.', FALSE, FALSE, 100);
--
-- Data for planet table
-- Requirement: 12 rows
--

-- INSERT INTO planet VALUES (DEFAULT, 'name', age, diameter, distance, 'description', has_life, is_spherical, star_id);

INSERT INTO planet VALUES (103, 'Earth', 4500, 12756, 0, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', TRUE, FALSE, 100);
INSERT INTO planet VALUES (101, 'Mercury', 4500, 4880, NULL, 'Mercury is the first planet from the Sun and the smallest in the Solar System.', FALSE, TRUE, 100);
INSERT INTO planet VALUES (102, 'Venus', 4500, 12104, 4.33379598e-6, 'Venus is the second planet from the Sun.', FALSE, TRUE, 100);
INSERT INTO planet VALUES (104, 'Mars', 4500, 6779, 5.70792642e-6, 'Mars is the fourth planet from the Sun.', FALSE, FALSE, 100);
INSERT INTO planet VALUES (105, 'Jupiter', 4500, 139822, NULL, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', FALSE, FALSE, 100);
INSERT INTO planet VALUES (106, 'Saturn', 4500, 116464, NULL, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', FALSE, FALSE, 100);
INSERT INTO planet VALUES (108, 'Neptune', 4500, 49244, NULL, 'Neptune is the eighth and farthest known planet from the Sun.', FALSE, FALSE, 100);
INSERT INTO planet VALUES (107, 'Uranus', 4500, 50724, NULL, 'Uranus is the seventh planet from the Sun.', FALSE, FALSE, 100);
INSERT INTO planet VALUES (DEFAULT, '51 Pegasi b', NULL, 271670, 50, '51 Pegasi b, officially named Dimidium, is an extrasolar planet approximately 50 light-years (15 parsecs) away in the constellation of Pegasus.', NULL, NULL, 201);
INSERT INTO planet VALUES (DEFAULT, 'Kepler-20e', NULL, 11053, NULL, 'Kepler-20e is an exoplanet orbiting Kepler-20.', NULL, NULL, 202);
INSERT INTO planet VALUES (DEFAULT, 'Kepler-20f', NULL, 12772, NULL, 'Kepler-20f (also known by its Kepler Object of Interest designation KOI-070.05) is an exoplanet orbiting the Sun-like star Kepler-20, the second outermost of five such planets discovered by NASA''s Kepler spacecraft.', NULL, NULL, 202);
INSERT INTO planet VALUES (DEFAULT, 'COCONUTS-2b', 475, 160142, 35.5, 'COCONUTS-2 b, or WISEPA J075108.79-763449.6, is a gas giant exoplanet that orbits the M-type star L 34-26.', NULL, NULL, 203);


-- CREATE TABLE planet (
-- 	planet_id SERIAL NOT NULL,
-- 	name VARCHAR(20) NOT NULL UNIQUE,
-- 	age_in_millions_of_years INT,
-- 	equatorial_diameter_in_km INT,
-- 	min_distance_from_earth_in_ly NUMERIC,
-- 	description TEXT,
-- 	has_life BOOLEAN,
-- 	is_spherical BOOLEAN,
-- 	star_id INT,
-- 	PRIMARY KEY (planet_id),
-- 	FOREIGN KEY (star_id) REFERENCES star(star_id)
-- );

--
-- Data for moon table
-- Requirement: 20 rows
--

-- INSERT INTO moon VALUES (DEFAULT, 'name', surface_gravity, diameter_in_km, distance_from_planet_in_km, 'description', has_life, is_spherical, planet_id);
INSERT INTO moon VALUES (DEFAULT, 'Moon', 1.622, 3475, 356400, 'The Moon is Earth''s only natural satellite.', FALSE, FALSE, 103);
INSERT INTO moon VALUES (DEFAULT, 'Titan', 1.352, 5149, 1186680, 'Titan is the largest moon of Saturn and the second-largest in the Solar System, larger than any of the dwarf planets of the Solar System.', NULL, NULL, 106);
INSERT INTO moon VALUES (DEFAULT, 'Rhea', 0.264, 1528, 527108, 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System, with a surface area that is comparable to the area of Australia.', NULL, NULL, 106);
INSERT INTO moon VALUES (DEFAULT, 'Iapetus', 0.223, 1467, 3560820, 'Iapetus is the outermost of Saturn''s large moons.', NULL, NULL, 106);
INSERT INTO moon VALUES (DEFAULT, 'Dione', 0.232, 1123, 377396, 'Dione, also designated Saturn IV, is the fourth-largest moon of Saturn.', NULL, NULL, 106);
INSERT INTO moon VALUES (DEFAULT, 'Tethys', 0.146, 1062, 294619, 'Tethys, or Saturn III, is a fifth largest moon of Saturn about 1,060 km (660 mi) across.', NULL, NULL, 106);
INSERT INTO moon VALUES (DEFAULT, 'Enceladus', 0.113, 504, 237948, 'Enceladus is the sixth-largest moon of Saturn (19th largest in the Solar System).', NULL, NULL, 106);
INSERT INTO moon VALUES (DEFAULT, 'Mimas', 0.064, 396, 181902, 'Mimas, also designated Saturn I, is a natural satellite of Saturn.', NULL, NULL, 106);
INSERT INTO moon VALUES (DEFAULT, 'Ganymede', 1.428, 5268, 1069200, 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter as well as the largest in the Solar System, being a planetary-mass moon.', NULL, NULL, 105);
INSERT INTO moon VALUES (DEFAULT, 'Callisto', 1.235, 4821, 1869000, 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede.', NULL, NULL, 105);
INSERT INTO moon VALUES (DEFAULT, 'Io', 1.796502844, 3643, 420000, 'Io (/ˈaɪ.oʊ/), or Jupiter I, is the innermost and second-smallest of the four Galilean moons of the planet Jupiter.', NULL, NULL, 105);
INSERT INTO moon VALUES (DEFAULT, 'Europa', 1.314, 3122, 664862, 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 95 known moons of Jupiter.', NULL, NULL, 105);
INSERT INTO moon VALUES (DEFAULT, 'Phobos', 0.0057, 22, 9377, 'Phobos (/ˈfoʊbɒs/; systematic designation: Mars I) is the innermost and larger of the two natural satellites of Mars,[9] the other being Deimos.', NULL, NULL, 104);
INSERT INTO moon VALUES (DEFAULT, 'Deimos', 0.003, 13, 23460, 'Deimos /ˈdaɪməs/ (systematic designation: Mars II)[10] is the smaller and outer of the two natural satellites of Mars, the other being Phobos.', NULL, NULL, 104);
INSERT INTO moon VALUES (DEFAULT, 'Titania', 0.371, 1577, 435910, 'Titania (/təˈtɑːniə, təˈteɪniə/), also designated Uranus III, is the largest of the moons of Uranus and the eighth largest moon in the Solar System at a diameter of 1,578 kilometres (981 mi), with a surface area comparable to that of Australia.', NULL, NULL, 107);
INSERT INTO moon VALUES (DEFAULT, 'Oberon', 0.358, 1523, 583520, 'Oberon /ˈoʊbərɒn/, also designated Uranus IV, is the outermost major moon of the planet Uranus.', NULL, NULL, 107);
INSERT INTO moon VALUES (DEFAULT, 'Umbriel', 0.252, 1169, 266000, 'Umbriel /ˈʌmbriəl/ is a moon of Uranus discovered on October 24, 1851, by William Lassell.', NULL, NULL, 107);
INSERT INTO moon VALUES (DEFAULT, 'Ariel', 0.246, 1158, 190900, 'Ariel is the fourth-largest moon of Uranus.', NULL, NULL, 107);
INSERT INTO moon VALUES (DEFAULT, 'Miranda', 0.076, 472, 129390, 'Miranda, also designated Uranus V, is the smallest and innermost of Uranus''s five round satellites.', NULL, NULL, 107);
INSERT INTO moon VALUES (DEFAULT, 'Triton', 0.779, 2707, 354759, 'Triton is the largest natural satellite of the planet Neptune, and was the first Neptunian moon to be discovered, on October 10, 1846, by English astronomer William Lassell.', NULL, NULL, 108);


-- CREATE TABLE moon (
-- 	moon_id SERIAL NOT NULL,
-- 	name VARCHAR(20) NOT NULL UNIQUE,
-- 	surface_gravity NUMERIC,
-- 	equatorial_diameter_in_km INT,
-- 	distance_from_planet_in_km INT,
-- 	description TEXT,
-- 	has_life BOOLEAN,
-- 	is_spherical BOOLEAN,
-- 	planet_id INT,
-- 	PRIMARY KEY (moon_id),
-- 	FOREIGN KEY (planet_id) REFERENCES planet(planet_id)
-- );
