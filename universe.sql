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
-- Name: gal; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gal (
    gal_id integer NOT NULL,
    name character varying,
    gal1 integer NOT NULL,
    gal2 integer NOT NULL,
    gal3 integer
);


ALTER TABLE public.gal OWNER TO freecodecamp;

--
-- Name: gal_gal_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gal_gal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gal_gal_id_seq OWNER TO freecodecamp;

--
-- Name: gal_gal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gal_gal_id_seq OWNED BY public.gal.gal_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    numb integer,
    numbb integer,
    age_in_millios_of_years integer
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
    boo1 boolean,
    flow character varying(10),
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
    name character varying(30) NOT NULL,
    txt text,
    nu_moon integer,
    star_id integer NOT NULL
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
    numb numeric,
    has_life boolean,
    star_color character varying(10),
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
-- Name: gal gal_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal ALTER COLUMN gal_id SET DEFAULT nextval('public.gal_gal_id_seq'::regclass);


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
-- Data for Name: gal; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gal VALUES (1, 'a', 1, 2, 3);
INSERT INTO public.gal VALUES (2, 'a', 1, 2, 3);
INSERT INTO public.gal VALUES (3, 'a', 1, 2, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'Eay', 27, 3, 17);
INSERT INTO public.galaxy VALUES (5, 'NGC', 18, 2, 12);
INSERT INTO public.galaxy VALUES (6, 'Smock', 27, 3, 12);
INSERT INTO public.galaxy VALUES (1, 'Milky way', 9, 1, 1);
INSERT INTO public.galaxy VALUES (2, 'Androm', 18, 2, 3);
INSERT INTO public.galaxy VALUES (4, 'CratWheel', 9, 1, 500);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', true, 'Earth', 1);
INSERT INTO public.moon VALUES (2, 'moon2', true, 'Mars', 2);
INSERT INTO public.moon VALUES (3, 'moon3', true, 'Mars', 2);
INSERT INTO public.moon VALUES (4, 'moon4', true, 'Jupiter', 3);
INSERT INTO public.moon VALUES (5, 'moon5', true, 'Jupiter', 3);
INSERT INTO public.moon VALUES (6, 'moon6', false, 'jupiter', 3);
INSERT INTO public.moon VALUES (7, 'moon7', true, 'jupiter', 3);
INSERT INTO public.moon VALUES (8, 'moon8', false, 'Ouras', 9);
INSERT INTO public.moon VALUES (9, 'moon9', false, 'Human', 10);
INSERT INTO public.moon VALUES (10, 'moon10', false, 'Malmal', 11);
INSERT INTO public.moon VALUES (11, 'moon11', true, 'jupiter', 3);
INSERT INTO public.moon VALUES (12, 'moon12', true, 'jupiter', 3);
INSERT INTO public.moon VALUES (13, 'moon13', false, 'Ouras', 9);
INSERT INTO public.moon VALUES (14, 'moon14', false, 'Staun', 6);
INSERT INTO public.moon VALUES (15, 'moon15', false, 'Staun', 6);
INSERT INTO public.moon VALUES (16, 'moon16', true, 'jupiter', 3);
INSERT INTO public.moon VALUES (17, 'moon17', true, 'jupiter', 3);
INSERT INTO public.moon VALUES (18, 'moon18', true, 'Neptuen', 8);
INSERT INTO public.moon VALUES (19, 'moon19', true, 'Neptuen', 8);
INSERT INTO public.moon VALUES (20, 'moon20', true, 'Venus', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'the third in our solar system', 1, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'the forth in our solar system', 2, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 'the fifth in our solay system', 79, 2);
INSERT INTO public.planet VALUES (4, 'Mercury', 'the first in our solar system', 0, 2);
INSERT INTO public.planet VALUES (5, 'Venus', 'the socand in our solar system', 0, 3);
INSERT INTO public.planet VALUES (6, 'Satun', 'the sexth in our solay system', 82, 3);
INSERT INTO public.planet VALUES (7, 'Uranos', 'the seveth in our solar system', 27, 4);
INSERT INTO public.planet VALUES (8, 'Neptuen', 'the last our solar system', 14, 4);
INSERT INTO public.planet VALUES (9, 'Ouras', ' in our solay system', NULL, 5);
INSERT INTO public.planet VALUES (10, 'Human', ' our solar system', NULL, 5);
INSERT INTO public.planet VALUES (11, 'Malmal', 'the our solar system', NULL, 6);
INSERT INTO public.planet VALUES (12, 'Erias', ' in our solay system', 1, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 9, true, 'white', 1);
INSERT INTO public.star VALUES (2, 'Sun2', 18, true, 'red', 2);
INSERT INTO public.star VALUES (3, 'Sun3', 27, false, 'yellow', 3);
INSERT INTO public.star VALUES (4, 'sun4', 58, false, 'green', 4);
INSERT INTO public.star VALUES (5, 'sun5', 68, true, 'blue', 5);
INSERT INTO public.star VALUES (6, 'sun6', 31, true, 'pink', 6);


--
-- Name: gal_gal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gal_gal_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: gal gal_gal_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal
    ADD CONSTRAINT gal_gal_id_key UNIQUE (gal_id);


--
-- Name: gal gal_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal
    ADD CONSTRAINT gal_pkey PRIMARY KEY (gal_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

  
