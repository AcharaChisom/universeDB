--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    radius numeric(10,2),
    description text NOT NULL
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
    name character varying(60) NOT NULL,
    distance_from_earth integer NOT NULL,
    planet_id integer,
    description text
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
-- Name: no_idea; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.no_idea (
    no_idea_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text
);


ALTER TABLE public.no_idea OWNER TO freecodecamp;

--
-- Name: no_idea_no_idea_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.no_idea_no_idea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.no_idea_no_idea_id_seq OWNER TO freecodecamp;

--
-- Name: no_idea_no_idea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.no_idea_no_idea_id_seq OWNED BY public.no_idea.no_idea_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60),
    has_water boolean NOT NULL,
    has_life boolean NOT NULL,
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
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions integer
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
-- Name: no_idea no_idea_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.no_idea ALTER COLUMN no_idea_id SET DEFAULT nextval('public.no_idea_no_idea_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'nebula', 2376548, 7654.86, 'a huge pain in the ass');
INSERT INTO public.galaxy VALUES (2, 'raijin', 65594975, 65487.98, 'a bigger pain');
INSERT INTO public.galaxy VALUES (3, 'ichimonji', 45684657, 6457.98, 'raikiri is damn cool');
INSERT INTO public.galaxy VALUES (4, 'naki', 35436474, 7567.90, 'super prost');
INSERT INTO public.galaxy VALUES (5, 'shino', 37645879, 5343.98, 'I am hungry');
INSERT INTO public.galaxy VALUES (6, 'heyaa', 6453735, 3476.09, 'hunger is prolly a friend');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'planet1', 2364, 4, NULL);
INSERT INTO public.moon VALUES (2, 'planet2', 6864, 5, NULL);
INSERT INTO public.moon VALUES (3, 'planet3', 5473, 4, NULL);
INSERT INTO public.moon VALUES (4, 'MOON4', 649456, 5, NULL);
INSERT INTO public.moon VALUES (5, 'MOON5', 38756, 6, NULL);
INSERT INTO public.moon VALUES (6, 'MOON6', 394756, 7, NULL);
INSERT INTO public.moon VALUES (7, 'MOON7', 245432, 8, NULL);
INSERT INTO public.moon VALUES (8, 'MOON8', 98765, 9, NULL);
INSERT INTO public.moon VALUES (9, 'MOON9', 24567, 10, NULL);
INSERT INTO public.moon VALUES (10, 'MOON10', 98764, 11, NULL);
INSERT INTO public.moon VALUES (11, 'MOON11', 345788, 12, NULL);
INSERT INTO public.moon VALUES (12, 'MOON12', 66666, 13, NULL);
INSERT INTO public.moon VALUES (13, 'MOON13', 86758, 14, NULL);
INSERT INTO public.moon VALUES (14, 'MOON14', 7648375, 15, NULL);
INSERT INTO public.moon VALUES (15, 'MOON15', 43636853, 4, NULL);
INSERT INTO public.moon VALUES (16, 'MOON16', 38476, 5, NULL);
INSERT INTO public.moon VALUES (17, 'MOON17', 283745, 6, NULL);
INSERT INTO public.moon VALUES (18, 'MOON18', 345776, 7, NULL);
INSERT INTO public.moon VALUES (19, 'MOON19', 98756, 8, NULL);
INSERT INTO public.moon VALUES (20, 'MOON20', 7254245, 9, NULL);


--
-- Data for Name: no_idea; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.no_idea VALUES (1, 'no_idea1', NULL);
INSERT INTO public.no_idea VALUES (2, 'no_idea_2', NULL);
INSERT INTO public.no_idea VALUES (3, 'no_idea3', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'planet1', true, false, 4);
INSERT INTO public.planet VALUES (5, 'planet2', false, true, 5);
INSERT INTO public.planet VALUES (6, 'planet3', true, true, 4);
INSERT INTO public.planet VALUES (7, 'planet4', true, false, 6);
INSERT INTO public.planet VALUES (8, 'planet5', false, false, 7);
INSERT INTO public.planet VALUES (9, 'PLANET6', true, false, 8);
INSERT INTO public.planet VALUES (10, 'PLANET7', true, true, 9);
INSERT INTO public.planet VALUES (11, 'PLANET8', false, false, 4);
INSERT INTO public.planet VALUES (12, 'PLANET9', true, false, 5);
INSERT INTO public.planet VALUES (13, 'PLANET10', false, false, 6);
INSERT INTO public.planet VALUES (14, 'PLANET11', true, true, 7);
INSERT INTO public.planet VALUES (15, 'PLANET12', true, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (4, 'moon1', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'moon2', 1, NULL, NULL);
INSERT INTO public.star VALUES (6, 'moon3', 2, NULL, NULL);
INSERT INTO public.star VALUES (7, 'moon4', 3, 'tired mate', 76484693);
INSERT INTO public.star VALUES (8, 'moon5', 4, 'hungry mate', 76487529);
INSERT INTO public.star VALUES (9, 'moon6', 3, 'ahhhhhh', 765432);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: no_idea_no_idea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.no_idea_no_idea_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: no_idea no_idea_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.no_idea
    ADD CONSTRAINT no_idea_name_key UNIQUE (name);


--
-- Name: no_idea no_idea_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.no_idea
    ADD CONSTRAINT no_idea_pkey PRIMARY KEY (no_idea_id);


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

