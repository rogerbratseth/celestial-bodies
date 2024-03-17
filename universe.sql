--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    diameter_in_parsecs integer,
    distance_from_earth numeric,
    description text,
    has_supermassive_black_hole boolean,
    visible_to_unaided_eye boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    surface_gravity numeric,
    equatorial_diameter_in_km integer,
    distance_from_planet_in_km integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    equatorial_diameter_in_km integer,
    min_distance_from_earth_in_ly numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planetary_system_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planetary_system_bodies (
    planetary_system_bodies_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type character varying(20) NOT NULL,
    width_in_meters integer,
    albedo_in_percent integer,
    density_in_grams_per_cubic_centimeters numeric,
    description text,
    visible_to_unaided_eye boolean,
    part_of_constellation boolean,
    star_id integer
);


ALTER TABLE public.planetary_system_bodies OWNER TO freecodecamp;

--
-- Name: planetary_system_bodies_planetary_system_bodies_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planetary_system_bodies_planetary_system_bodies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planetary_system_bodies_planetary_system_bodies_id_seq OWNER TO freecodecamp;

--
-- Name: planetary_system_bodies_planetary_system_bodies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planetary_system_bodies_planetary_system_bodies_id_seq OWNED BY public.planetary_system_bodies.planetary_system_bodies_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    surface_temp_max integer,
    distance_from_earth numeric,
    description text,
    visible_to_unaided_eye boolean,
    part_of_constallation boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planetary_system_bodies planetary_system_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system_bodies ALTER COLUMN planetary_system_bodies_id SET DEFAULT nextval('public.planetary_system_bodies_planetary_system_bodies_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'NGC 4414', NULL, NULL, 62300000, 'NGC 4414 is an unbarred spiral galaxy about 62 million light-years away in the constellation Coma Berenices.', NULL, false);
INSERT INTO public.galaxy VALUES (100, 'Milky Way', 13200, 26800, 26000, 'The Milky Way is the galaxy that includes the Solar System, with the name describing the galaxy''s appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', NULL, 10, 163000, 'The Large Magellanic Cloud (LMC) is a spiral satellite galaxy of the Milky Way.', NULL, true);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', NULL, 40, 53500000, 'Messier 87 (also known as Virgo A or NGC 4486, generally abbreviated to M87) is a supergiant elliptical galaxy in the constellation Virgo that contains several trillion stars.', true, false);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Galaxy', 2000, 46, 2500000, 'The Andromeda Galaxy is a barred spiral galaxy and is the nearest major galaxy to the Milky Way.', true, true);
INSERT INTO public.galaxy VALUES (5, 'Antennae Galaxies', 300, 150000, 45000000, 'The Antennae Galaxies (also known as NGC 4038/NGC 4039 or Caldwell 60/Caldwell 61) are a pair of interacting galaxies in the constellation Corvus.', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1.622, 3475, 356400, 'The Moon is Earth''s only natural satellite.', false, false, 103);
INSERT INTO public.moon VALUES (2, 'Titan', 1.352, 5149, 1186680, 'Titan is the largest moon of Saturn and the second-largest in the Solar System, larger than any of the dwarf planets of the Solar System.', NULL, NULL, 106);
INSERT INTO public.moon VALUES (3, 'Rhea', 0.264, 1528, 527108, 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System, with a surface area that is comparable to the area of Australia.', NULL, NULL, 106);
INSERT INTO public.moon VALUES (4, 'Iapetus', 0.223, 1467, 3560820, 'Iapetus is the outermost of Saturn''s large moons.', NULL, NULL, 106);
INSERT INTO public.moon VALUES (5, 'Dione', 0.232, 1123, 377396, 'Dione, also designated Saturn IV, is the fourth-largest moon of Saturn.', NULL, NULL, 106);
INSERT INTO public.moon VALUES (6, 'Tethys', 0.146, 1062, 294619, 'Tethys, or Saturn III, is a fifth largest moon of Saturn about 1,060 km (660 mi) across.', NULL, NULL, 106);
INSERT INTO public.moon VALUES (7, 'Enceladus', 0.113, 504, 237948, 'Enceladus is the sixth-largest moon of Saturn (19th largest in the Solar System).', NULL, NULL, 106);
INSERT INTO public.moon VALUES (8, 'Mimas', 0.064, 396, 181902, 'Mimas, also designated Saturn I, is a natural satellite of Saturn.', NULL, NULL, 106);
INSERT INTO public.moon VALUES (9, 'Ganymede', 1.428, 5268, 1069200, 'Ganymede, or Jupiter III, is the largest and most massive natural satellite of Jupiter as well as the largest in the Solar System, being a planetary-mass moon.', NULL, NULL, 105);
INSERT INTO public.moon VALUES (10, 'Callisto', 1.235, 4821, 1869000, 'Callisto, or Jupiter IV, is the second-largest moon of Jupiter, after Ganymede.', NULL, NULL, 105);
INSERT INTO public.moon VALUES (11, 'Io', 1.796502844, 3643, 420000, 'Io (/ˈaɪ.oʊ/), or Jupiter I, is the innermost and second-smallest of the four Galilean moons of the planet Jupiter.', NULL, NULL, 105);
INSERT INTO public.moon VALUES (12, 'Europa', 1.314, 3122, 664862, 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet of all the 95 known moons of Jupiter.', NULL, NULL, 105);
INSERT INTO public.moon VALUES (13, 'Phobos', 0.0057, 22, 9377, 'Phobos (/ˈfoʊbɒs/; systematic designation: Mars I) is the innermost and larger of the two natural satellites of Mars,[9] the other being Deimos.', NULL, NULL, 104);
INSERT INTO public.moon VALUES (14, 'Deimos', 0.003, 13, 23460, 'Deimos /ˈdaɪməs/ (systematic designation: Mars II)[10] is the smaller and outer of the two natural satellites of Mars, the other being Phobos.', NULL, NULL, 104);
INSERT INTO public.moon VALUES (15, 'Titania', 0.371, 1577, 435910, 'Titania (/təˈtɑːniə, təˈteɪniə/), also designated Uranus III, is the largest of the moons of Uranus and the eighth largest moon in the Solar System at a diameter of 1,578 kilometres (981 mi), with a surface area comparable to that of Australia.', NULL, NULL, 107);
INSERT INTO public.moon VALUES (16, 'Oberon', 0.358, 1523, 583520, 'Oberon /ˈoʊbərɒn/, also designated Uranus IV, is the outermost major moon of the planet Uranus.', NULL, NULL, 107);
INSERT INTO public.moon VALUES (17, 'Umbriel', 0.252, 1169, 266000, 'Umbriel /ˈʌmbriəl/ is a moon of Uranus discovered on October 24, 1851, by William Lassell.', NULL, NULL, 107);
INSERT INTO public.moon VALUES (18, 'Ariel', 0.246, 1158, 190900, 'Ariel is the fourth-largest moon of Uranus.', NULL, NULL, 107);
INSERT INTO public.moon VALUES (19, 'Miranda', 0.076, 472, 129390, 'Miranda, also designated Uranus V, is the smallest and innermost of Uranus''s five round satellites.', NULL, NULL, 107);
INSERT INTO public.moon VALUES (20, 'Triton', 0.779, 2707, 354759, 'Triton is the largest natural satellite of the planet Neptune, and was the first Neptunian moon to be discovered, on October 10, 1846, by English astronomer William Lassell.', NULL, NULL, 108);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (103, 'Earth', 4500, 12756, 0, 'Earth is the third planet from the Sun and the only astronomical object known to harbor life.', true, false, 100);
INSERT INTO public.planet VALUES (101, 'Mercury', 4500, 4880, NULL, 'Mercury is the first planet from the Sun and the smallest in the Solar System.', false, true, 100);
INSERT INTO public.planet VALUES (102, 'Venus', 4500, 12104, 0.00000433379598, 'Venus is the second planet from the Sun.', false, true, 100);
INSERT INTO public.planet VALUES (104, 'Mars', 4500, 6779, 0.00000570792642, 'Mars is the fourth planet from the Sun.', false, false, 100);
INSERT INTO public.planet VALUES (105, 'Jupiter', 4500, 139822, NULL, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System.', false, false, 100);
INSERT INTO public.planet VALUES (106, 'Saturn', 4500, 116464, NULL, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', false, false, 100);
INSERT INTO public.planet VALUES (108, 'Neptune', 4500, 49244, NULL, 'Neptune is the eighth and farthest known planet from the Sun.', false, false, 100);
INSERT INTO public.planet VALUES (107, 'Uranus', 4500, 50724, NULL, 'Uranus is the seventh planet from the Sun.', false, false, 100);
INSERT INTO public.planet VALUES (1, '51 Pegasi b', NULL, 271670, 50, '51 Pegasi b, officially named Dimidium, is an extrasolar planet approximately 50 light-years (15 parsecs) away in the constellation of Pegasus.', NULL, NULL, 201);
INSERT INTO public.planet VALUES (2, 'Kepler-20e', NULL, 11053, NULL, 'Kepler-20e is an exoplanet orbiting Kepler-20.', NULL, NULL, 202);
INSERT INTO public.planet VALUES (3, 'Kepler-20f', NULL, 12772, NULL, 'Kepler-20f (also known by its Kepler Object of Interest designation KOI-070.05) is an exoplanet orbiting the Sun-like star Kepler-20, the second outermost of five such planets discovered by NASA''s Kepler spacecraft.', NULL, NULL, 202);
INSERT INTO public.planet VALUES (4, 'COCONUTS-2b', 475, 160142, 35.5, 'COCONUTS-2 b, or WISEPA J075108.79-763449.6, is a gas giant exoplanet that orbits the M-type star L 34-26.', NULL, NULL, 203);


--
-- Data for Name: planetary_system_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planetary_system_bodies VALUES (1, 'Hale-Bopp', 'Comet', 60000, 7, 0.6, 'Comet Hale–Bopp (formally designated C/1995 O1) is a comet that was one of the most widely observed of the 20th century and one of the brightest seen for many decades.', true, false, NULL);
INSERT INTO public.planetary_system_bodies VALUES (2, '103P/Hartley', 'Comet', 1200, 3, NULL, 'Comet Hartley 2, designated as 103P/Hartley by the Minor Planet Center, is a small periodic comet with an orbital period of 6.48 years.', true, false, NULL);
INSERT INTO public.planetary_system_bodies VALUES (3, 'Tempel 1', 'Comet', 4900, 4, 0.62, 'Tempel 1 (official designation: 9P/Tempel) is a periodic Jupiter-family comet discovered by Wilhelm Tempel in 1867.', true, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 10, 3800, 408, 'Betelgeuse is a red supergiant star in the constellation of Orion.', true, true, 100);
INSERT INTO public.star VALUES (100, 'Sun', 4600, 6000, 0.0000158130702, 'The Sun is the star at the center of the Solar System.', true, false, 100);
INSERT INTO public.star VALUES (2, 'VX Sagittarii', NULL, 3400, 5100, 'VX Sagittarii is an asymptotic giant branch star located more than 1.5 kiloparsec away from the Sun in the constellation of Sagittarius.', NULL, true, 100);
INSERT INTO public.star VALUES (3, 'RW Cygni', NULL, 3605, 5283.84617, 'RW Cygni is a semiregular variable star in the constellation Cygnus, about a degree east of 2nd magnitude γ Cygni.', NULL, true, 100);
INSERT INTO public.star VALUES (4, 'HR 5171', 4, 5200, 10000, 'HR 5171, also known as V766 Centauri, is a yellow hypergiant in the constellation Centaurus.', false, true, 100);
INSERT INTO public.star VALUES (5, 'CIT 6', NULL, 2445, 1020, 'CIT 6 is a carbon star in the constellation Leo Minor.', false, true, 100);
INSERT INTO public.star VALUES (201, '51 Pegasi', 6100, 5768, 50.64, '51 Pegasi (abbreviated 51 Peg), formally named Helvetios /hɛlˈviːʃiəs/, is a Sun-like star located 50.6 light-years (15.5 parsecs) from Earth in the constellation of Pegasus.', false, true, 100);
INSERT INTO public.star VALUES (202, 'Kepler-20', 5600, 5495, 934, 'Kepler-20 is a star about 934 light-years (286 parsecs) from Earth in the constellation Lyra with a system of at least five, and possibly six, known planets.', false, true, 100);
INSERT INTO public.star VALUES (203, 'L 34-26', 150, 434, 35, 'L 34-26, also known as COCONUTS-2A and TYC 9381-1809-1, is a M3-type dwarf star located 35 light-years away, in the constellation of Chamaeleon.', false, false, 100);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 4, true);


--
-- Name: planetary_system_bodies_planetary_system_bodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planetary_system_bodies_planetary_system_bodies_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 5, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planetary_system_bodies planetary_system_bodies_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system_bodies
    ADD CONSTRAINT planetary_system_bodies_name_key UNIQUE (name);


--
-- Name: planetary_system_bodies planetary_system_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system_bodies
    ADD CONSTRAINT planetary_system_bodies_pkey PRIMARY KEY (planetary_system_bodies_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: planetary_system_bodies planetary_system_bodies_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planetary_system_bodies
    ADD CONSTRAINT planetary_system_bodies_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

