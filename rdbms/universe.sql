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
    version integer NOT NULL,
    age integer,
    distance_from_earth numeric(10,4),
    description text,
    has_atmoshphere boolean,
    has_water boolean
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
    version integer NOT NULL,
    age integer,
    distance_from_earth numeric(10,4),
    description text,
    has_atmoshphere boolean,
    has_water boolean,
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
    version integer NOT NULL,
    age integer,
    distance_from_earth numeric(10,4),
    description text,
    has_atmoshphere boolean,
    has_water boolean,
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
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    satelite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    version integer NOT NULL,
    age integer,
    distance_from_earth numeric(10,4),
    description text,
    has_atmoshphere boolean,
    has_water boolean,
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
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 1, 1000, 7777.8900, 'Galaxy of earth', true, true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 1, 2000, 8888.8900, NULL, true, true);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 1, 3000, 999.8900, NULL, true, true);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 1, 4000, 111.8900, NULL, true, false);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 1, 5000, 222.8900, NULL, false, false);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 1, 6000, 333.8900, NULL, false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 1, 1, 1.1000, NULL, false, false, 1);
INSERT INTO public.moon VALUES (2, 'Moon 2', 1, 2, 1.2000, NULL, false, false, 2);
INSERT INTO public.moon VALUES (3, 'Moon 3', 1, 3, 1.3000, NULL, false, false, 3);
INSERT INTO public.moon VALUES (4, 'Moon 4', 1, 4, 1.4000, NULL, false, false, 4);
INSERT INTO public.moon VALUES (5, 'Moon 5', 1, 5, 1.5000, NULL, false, false, 5);
INSERT INTO public.moon VALUES (6, 'Moon 6', 1, 6, 1.6000, NULL, false, false, 6);
INSERT INTO public.moon VALUES (7, 'Moon 7', 1, 7, 1.7000, NULL, false, false, 7);
INSERT INTO public.moon VALUES (8, 'Moon 8', 1, 8, 1.8000, NULL, false, false, 8);
INSERT INTO public.moon VALUES (9, 'Moon 9', 1, 9, 1.9000, NULL, false, false, 9);
INSERT INTO public.moon VALUES (10, 'Moon 10', 1, 10, 2.1000, NULL, false, false, 10);
INSERT INTO public.moon VALUES (11, 'Moon 11', 1, 11, 2.2000, NULL, false, false, 11);
INSERT INTO public.moon VALUES (12, 'Moon 12', 1, 12, 2.3000, NULL, false, false, 12);
INSERT INTO public.moon VALUES (13, 'Moon 13', 1, 13, 2.4000, NULL, false, false, 1);
INSERT INTO public.moon VALUES (14, 'Moon 14', 1, 14, 2.5000, NULL, false, false, 2);
INSERT INTO public.moon VALUES (15, 'Moon 15', 1, 15, 2.6000, NULL, false, false, 3);
INSERT INTO public.moon VALUES (16, 'Moon 16', 1, 16, 2.7000, NULL, false, false, 4);
INSERT INTO public.moon VALUES (17, 'Moon 17', 1, 17, 2.8000, NULL, false, false, 5);
INSERT INTO public.moon VALUES (18, 'Moon 18', 1, 18, 2.9000, NULL, false, false, 6);
INSERT INTO public.moon VALUES (19, 'Moon 19', 1, 19, 3.1000, NULL, false, false, 7);
INSERT INTO public.moon VALUES (20, 'Moon 20', 1, 20, 3.2000, NULL, false, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 10, 1.2000, NULL, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Planet 2', 1, 12, 2.2000, NULL, true, true, 2);
INSERT INTO public.planet VALUES (3, 'Planet 3', 1, 13, 3.2000, NULL, false, true, 3);
INSERT INTO public.planet VALUES (4, 'Planet 4', 1, 14, 4.2000, NULL, false, true, 4);
INSERT INTO public.planet VALUES (5, 'Planet 5', 1, 15, 5.2000, NULL, false, false, 5);
INSERT INTO public.planet VALUES (6, 'Planet 6', 1, 16, 6.2000, NULL, false, false, 6);
INSERT INTO public.planet VALUES (7, 'Planet 7', 1, 17, 7.2000, NULL, false, false, 1);
INSERT INTO public.planet VALUES (8, 'Planet 8', 1, 18, 8.2000, NULL, false, true, 2);
INSERT INTO public.planet VALUES (9, 'Planet 9', 1, 19, 9.2000, NULL, false, true, 3);
INSERT INTO public.planet VALUES (10, 'Planet 10', 1, 11, 1.2000, NULL, false, false, 4);
INSERT INTO public.planet VALUES (11, 'Planet 11', 1, 12, 2.2000, NULL, false, false, 5);
INSERT INTO public.planet VALUES (12, 'Planet 12', 1, 13, 3.2000, NULL, false, false, 6);


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES (1, 'Satelite 1', 11);
INSERT INTO public.satelite VALUES (2, 'Satelite 2', 22);
INSERT INTO public.satelite VALUES (3, 'Satelite 3', 33);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star 1', 1, 100, 11.4400, NULL, true, true, 1);
INSERT INTO public.star VALUES (2, 'Star 2', 2, 100, 22.4400, NULL, true, true, 2);
INSERT INTO public.star VALUES (3, 'Star 3', 2, 300, 33.4400, NULL, true, false, 3);
INSERT INTO public.star VALUES (4, 'Star 4', 2, 400, 44.4400, NULL, false, false, 4);
INSERT INTO public.star VALUES (5, 'Star 5', 2, 500, 55.4400, NULL, false, true, 5);
INSERT INTO public.star VALUES (6, 'Star 6', 2, 600, 66.4400, NULL, false, true, 6);


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
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satelite satelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_name_key UNIQUE (name);


--
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_start_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_start_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

