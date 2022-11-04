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
    name character varying(30),
    height integer NOT NULL,
    weight integer NOT NULL,
    level numeric(4,1),
    bio text,
    married boolean,
    tall boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    height integer NOT NULL,
    weight integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    height integer NOT NULL,
    weight integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: plutor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.plutor (
    name character varying(30),
    height integer NOT NULL,
    weight integer NOT NULL,
    plutor_id integer NOT NULL
);


ALTER TABLE public.plutor OWNER TO freecodecamp;

--
-- Name: plutor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.plutor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plutor_id_seq OWNER TO freecodecamp;

--
-- Name: plutor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.plutor_id_seq OWNED BY public.plutor.plutor_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    height integer NOT NULL,
    weight integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: plutor plutor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.plutor ALTER COLUMN plutor_id SET DEFAULT nextval('public.plutor_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'zainab', 23, 24, 23.4, 'friendly', true, true);
INSERT INTO public.galaxy VALUES (2, 'zainab', 23, 24, 23.4, 'friendly', true, true);
INSERT INTO public.galaxy VALUES (3, 'paul', 23, 24, 26.5, 'wicked', true, true);
INSERT INTO public.galaxy VALUES (4, 'grace', 23, 24, 35.6, 'nice', true, true);
INSERT INTO public.galaxy VALUES (5, 'pastor', 36, 78, 39.8, 'jovial', true, true);
INSERT INTO public.galaxy VALUES (6, 'uthman', 26, 27, 20.8, 'funny', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'zainab', 23, 24, 1);
INSERT INTO public.moon VALUES (5, 'bolu', 24, 25, 2);
INSERT INTO public.moon VALUES (6, 'yemi', 28, 29, 3);
INSERT INTO public.moon VALUES (7, 'yas', 25, 28, 1);
INSERT INTO public.moon VALUES (8, 'yee', 35, 28, 2);
INSERT INTO public.moon VALUES (9, 'hey', 78, 90, 3);
INSERT INTO public.moon VALUES (10, 'yas', 25, 28, 1);
INSERT INTO public.moon VALUES (11, 'yee', 35, 28, 2);
INSERT INTO public.moon VALUES (12, 'hey', 78, 90, 3);
INSERT INTO public.moon VALUES (13, 'yas', 25, 28, 1);
INSERT INTO public.moon VALUES (14, 'yee', 35, 28, 2);
INSERT INTO public.moon VALUES (15, 'hey', 78, 90, 3);
INSERT INTO public.moon VALUES (16, 'yas', 25, 28, 1);
INSERT INTO public.moon VALUES (17, 'yee', 35, 28, 2);
INSERT INTO public.moon VALUES (18, 'hey', 78, 90, 3);
INSERT INTO public.moon VALUES (19, 'yas', 25, 28, 1);
INSERT INTO public.moon VALUES (20, 'yee', 35, 28, 2);
INSERT INTO public.moon VALUES (21, 'hey', 78, 90, 3);
INSERT INTO public.moon VALUES (22, 'yas', 25, 28, 1);
INSERT INTO public.moon VALUES (23, 'yee', 35, 28, 2);
INSERT INTO public.moon VALUES (24, 'hey', 78, 90, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'bowser', 24, 25, 1);
INSERT INTO public.planet VALUES (2, 'zainab', 25, 26, 2);
INSERT INTO public.planet VALUES (3, 'grace', 26, 30, 3);
INSERT INTO public.planet VALUES (4, 'yee', 24, 25, 4);
INSERT INTO public.planet VALUES (5, 'yas', 39, 40, 5);
INSERT INTO public.planet VALUES (6, 'yep', 56, 78, 6);
INSERT INTO public.planet VALUES (7, 'yee', 24, 25, 4);
INSERT INTO public.planet VALUES (8, 'yas', 39, 40, 5);
INSERT INTO public.planet VALUES (9, 'yep', 56, 78, 6);
INSERT INTO public.planet VALUES (10, 'yee', 24, 25, 4);
INSERT INTO public.planet VALUES (11, 'yas', 39, 40, 5);
INSERT INTO public.planet VALUES (12, 'yep', 56, 78, 6);
INSERT INTO public.planet VALUES (13, 'yee', 24, 25, 4);
INSERT INTO public.planet VALUES (14, 'yas', 39, 40, 5);
INSERT INTO public.planet VALUES (15, 'yep', 56, 78, 6);


--
-- Data for Name: plutor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.plutor VALUES ('mojeed', 25, 26, 1);
INSERT INTO public.plutor VALUES ('isioma', 27, 28, 2);
INSERT INTO public.plutor VALUES ('richard', 29, 30, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'zainab', 23, 24, 1);
INSERT INTO public.star VALUES (2, 'mario', 23, 24, 2);
INSERT INTO public.star VALUES (3, 'Bowser', 23, 24, 3);
INSERT INTO public.star VALUES (4, 'zee', 25, 26, 3);
INSERT INTO public.star VALUES (5, 'yee', 27, 29, 4);
INSERT INTO public.star VALUES (6, 'mee', 30, 31, 5);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 15, true);


--
-- Name: plutor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.plutor_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: plutor plutor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.plutor
    ADD CONSTRAINT plutor_pkey PRIMARY KEY (plutor_id);


--
-- Name: plutor plutor_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.plutor
    ADD CONSTRAINT plutor_unique UNIQUE (plutor_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


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

