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
-- Name: cheese_content; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cheese_content (
    cheese_content_id integer NOT NULL,
    name character varying(20) NOT NULL,
    cheese_content numeric,
    moon_id integer,
    unique_number integer
);


ALTER TABLE public.cheese_content OWNER TO freecodecamp;

--
-- Name: cheese_content_cheese_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cheese_content_cheese_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cheese_content_cheese_id_seq OWNER TO freecodecamp;

--
-- Name: cheese_content_cheese_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cheese_content_cheese_id_seq OWNED BY public.cheese_content.cheese_content_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_type text,
    distance_from_earth_in_lightyears integer NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    column_i_forgot character varying(30),
    other_column_i_forgot character varying(30)
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
    name character varying(30) NOT NULL,
    moons boolean NOT NULL,
    star_id integer,
    column_i_forgot character varying(30)
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
    name character varying(30) NOT NULL,
    type character varying(30),
    age integer,
    planets boolean,
    galaxy_id integer NOT NULL
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
-- Name: cheese_content cheese_content_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cheese_content ALTER COLUMN cheese_content_id SET DEFAULT nextval('public.cheese_content_cheese_id_seq'::regclass);


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
-- Data for Name: cheese_content; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cheese_content VALUES (1, 'Swiss', 50, 1, NULL);
INSERT INTO public.cheese_content VALUES (2, 'Mexican', 25, 3, NULL);
INSERT INTO public.cheese_content VALUES (3, 'Cheddar', 95, 20, NULL);
INSERT INTO public.cheese_content VALUES (4, 'Sharp Cheddar', 40, 17, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 10, 13600);
INSERT INTO public.galaxy VALUES (2, 'BLACK EYE', 'Spiral', 170, 13200);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Spiral', 3, 10000);
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 'Lenticular Ring', 500, 400);
INSERT INTO public.galaxy VALUES (5, 'Comet', 'Spiral', 3200, 1000000);
INSERT INTO public.galaxy VALUES (6, 'Cigar', 'Cigar', 120, 13200);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Demos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Europa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Callipso', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Kallichore', 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Adrestea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Himalia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Kalky', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Aitne', 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Tethys', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Tritan', 7, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Neso', 7, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Umbrial', 8, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Puck', 8, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Charon', 9, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', true, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', true, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Neptune', true, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', true, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', true, 1, NULL);
INSERT INTO public.planet VALUES (10, 'Glese 876 b', false, 5, NULL);
INSERT INTO public.planet VALUES (11, 'Glese 876 c', false, 5, NULL);
INSERT INTO public.planet VALUES (12, 'Kepler 174 d', false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow Dwarf', 5, true, 1);
INSERT INTO public.star VALUES (2, 'Duhbe', 'Hyper Giant', 0, false, 6);
INSERT INTO public.star VALUES (3, 'Beta Coma Bernices', 'Yellow Dwarf', 6, false, 2);
INSERT INTO public.star VALUES (4, 'Alparaz', 'Yellow Dwarf', 3, false, 3);
INSERT INTO public.star VALUES (5, 'Glese 876', 'Red Dwarf', 3, true, 1);
INSERT INTO public.star VALUES (6, 'Kepler 174', 'Yellow Dwarf', 3, true, 1);


--
-- Name: cheese_content_cheese_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cheese_content_cheese_id_seq', 4, true);


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
-- Name: cheese_content cheese_content_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cheese_content
    ADD CONSTRAINT cheese_content_pkey PRIMARY KEY (cheese_content_id);


--
-- Name: cheese_content cheese_content_unique_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cheese_content
    ADD CONSTRAINT cheese_content_unique_number_key UNIQUE (unique_number);


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
-- Name: cheese_content cheese_content_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cheese_content
    ADD CONSTRAINT cheese_content_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

