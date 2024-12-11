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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    star_id integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,5),
    galaxy_types character varying
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
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,5),
    is_spherical boolean,
    has_life boolean,
    distance_from_earth integer,
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
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,5),
    planet_types character varying,
    is_spherical boolean,
    has_life boolean,
    distance_from_earth integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years numeric(10,5),
    is_spherical boolean,
    distance_from_earth integer,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 'Prominent winter constellation', 3);
INSERT INTO public.constellation VALUES (2, 'Lyra', 'Contains the bright star Vega', 6);
INSERT INTO public.constellation VALUES (3, 'Canis Major', 'Home to Sirius', 2);
INSERT INTO public.constellation VALUES (4, 'Scorpius', 'Features the star Antares', NULL);
INSERT INTO public.constellation VALUES (5, 'Ursa Major', 'Contains the Big Dipper', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13600.00000, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest spiral galaxy', 10000.00000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest galaxy in the Local Group', 12000.00000, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Famous for its spiral arms', 15000.00000, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Known for its bright nucleus', 13000.00000, 'Elliptical');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Unusual ring-like structure', 14000.00000, 'Irregular');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth’s only natural satellite', 4500.00000, true, false, 384, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 'One of Mars’ moons', 4500.00000, false, false, 9400, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Another moon of Mars', 4500.00000, false, false, 9400, 4);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanically active moon of Jupiter', 4500.00000, true, false, 628, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 'Potentially habitable moon of Jupiter', 4500.00000, true, false, 628, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the solar system', 4500.00000, true, false, 628, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 'One of Jupiter’s moons', 4500.00000, true, false, 628, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 'Largest moon of Saturn', 4500.00000, true, false, 1427, 6);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Moon with water jets', 4500.00000, true, false, 1427, 6);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Saturn’s moon with a large crater', 4500.00000, true, false, 1427, 6);
INSERT INTO public.moon VALUES (11, 'Triton', 'Largest moon of Neptune', 4500.00000, true, false, 4497, 8);
INSERT INTO public.moon VALUES (12, 'Charon', 'Pluto’s largest moon', 4500.00000, true, false, 5906, 7);
INSERT INTO public.moon VALUES (13, 'Nix', 'A moon of Pluto', 4500.00000, false, false, 5906, 7);
INSERT INTO public.moon VALUES (14, 'Hydra', 'Another moon of Pluto', 4500.00000, false, false, 5906, 7);
INSERT INTO public.moon VALUES (15, 'Oberon', 'A moon of Uranus', 4500.00000, true, false, 2871, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 'Largest moon of Uranus', 4500.00000, true, false, 2871, 7);
INSERT INTO public.moon VALUES (17, 'Miranda', 'Small moon of Uranus', 4500.00000, true, false, 2871, 7);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Another Uranian moon', 4500.00000, true, false, 2871, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 'Moon of Uranus', 4500.00000, true, false, 2871, 7);
INSERT INTO public.moon VALUES (20, 'Proteus', 'Small moon of Neptune', 4500.00000, true, false, 4497, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest planet in our solar system', 4500.00000, 'Terrestrial', true, false, 58, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hottest planet in the solar system', 4500.00000, 'Terrestrial', true, false, 108, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Home to life as we know it', 4500.00000, 'Terrestrial', true, true, 150, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Known as the Red Planet', 4500.00000, 'Terrestrial', true, false, 228, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the solar system', 4500.00000, 'Gas Giant', true, false, 778, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Famous for its rings', 4500.00000, 'Gas Giant', true, false, 1427, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'An ice giant with a tilt', 4500.00000, 'Ice Giant', true, false, 2871, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Known for its deep blue color', 4500.00000, 'Ice Giant', true, false, 4497, 1);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 'Potentially habitable exoplanet', 6000.00000, 'Exoplanet', true, false, 600, 2);
INSERT INTO public.planet VALUES (10, 'Proxima b', 'Exoplanet in the habitable zone of Proxima Centauri', 4500.00000, 'Exoplanet', true, false, 4, 4);
INSERT INTO public.planet VALUES (11, 'Gliese 581c', 'Potentially habitable exoplanet', 5000.00000, 'Exoplanet', true, false, 20, 3);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 'First discovered transiting exoplanet', 7500.00000, 'Gas Giant', true, false, 150, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Main sequence star, sustains life on Earth', 4600.00000, true, 0, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Brightest star in the night sky', 242.00000, true, 8, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Red supergiant in Orion', 8500.00000, true, 640, 2);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 'Closest star to Earth after Sun', 4500.00000, true, 4, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue supergiant in Orion', 9000.00000, true, 860, 2);
INSERT INTO public.star VALUES (6, 'Vega', 'Bright star in Lyra', 455.00000, true, 25, 3);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation constellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

