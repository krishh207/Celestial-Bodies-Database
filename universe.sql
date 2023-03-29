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
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_in_km integer,
    size_in_km numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    unique_id integer NOT NULL
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
-- Name: galaxy_moon_id; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_moon_id (
    galaxy_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(30),
    galaxy_moon_id_id integer NOT NULL
);


ALTER TABLE public.galaxy_moon_id OWNER TO freecodecamp;

--
-- Name: galaxy_moon_id_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_moon_id_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_moon_id_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_moon_id_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_moon_id_galaxy_id_seq OWNED BY public.galaxy_moon_id.galaxy_id;


--
-- Name: galaxy_moon_id_galaxy_moon_id_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_moon_id_galaxy_moon_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_moon_id_galaxy_moon_id_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_moon_id_galaxy_moon_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_moon_id_galaxy_moon_id_id_seq OWNED BY public.galaxy_moon_id.galaxy_moon_id_id;


--
-- Name: galaxy_moon_id_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_moon_id_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_moon_id_moon_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_moon_id_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_moon_id_moon_id_seq OWNED BY public.galaxy_moon_id.moon_id;


--
-- Name: galaxy_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_unique_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_unique_id_seq OWNED BY public.galaxy.unique_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_in_km integer,
    size_in_km numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    unique_id integer NOT NULL,
    planet_id integer NOT NULL
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
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: moon_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_unique_id_seq OWNER TO freecodecamp;

--
-- Name: moon_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_unique_id_seq OWNED BY public.moon.unique_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_in_km integer,
    size_in_km numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL,
    unique_id integer NOT NULL
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
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: planet_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_unique_id_seq OWNER TO freecodecamp;

--
-- Name: planet_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_unique_id_seq OWNED BY public.planet.unique_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_in_km integer,
    size_in_km numeric(5,1),
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL,
    unique_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


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
-- Name: star_unique_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_unique_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_unique_id_seq OWNER TO freecodecamp;

--
-- Name: star_unique_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_unique_id_seq OWNED BY public.star.unique_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy unique_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN unique_id SET DEFAULT nextval('public.galaxy_unique_id_seq'::regclass);


--
-- Name: galaxy_moon_id galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon_id ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_moon_id_galaxy_id_seq'::regclass);


--
-- Name: galaxy_moon_id moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon_id ALTER COLUMN moon_id SET DEFAULT nextval('public.galaxy_moon_id_moon_id_seq'::regclass);


--
-- Name: galaxy_moon_id galaxy_moon_id_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon_id ALTER COLUMN galaxy_moon_id_id SET DEFAULT nextval('public.galaxy_moon_id_galaxy_moon_id_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon unique_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN unique_id SET DEFAULT nextval('public.moon_unique_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: planet unique_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN unique_id SET DEFAULT nextval('public.planet_unique_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Name: star unique_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN unique_id SET DEFAULT nextval('public.star_unique_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, NULL, true, false, 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, NULL, true, false, 2);
INSERT INTO public.galaxy VALUES (3, 'Virgo_A', NULL, NULL, NULL, NULL, true, false, 3);
INSERT INTO public.galaxy VALUES (4, 'Magellenic_Clouds', NULL, NULL, NULL, NULL, true, false, 4);
INSERT INTO public.galaxy VALUES (5, 'Maffei', NULL, NULL, NULL, NULL, true, false, 5);
INSERT INTO public.galaxy VALUES (6, 'Cygnus', NULL, NULL, NULL, NULL, true, false, 6);


--
-- Data for Name: galaxy_moon_id; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_moon_id VALUES (1, 1, NULL, 1);
INSERT INTO public.galaxy_moon_id VALUES (2, 2, NULL, 2);
INSERT INTO public.galaxy_moon_id VALUES (3, 3, NULL, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, false, true, 1, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL, NULL, false, true, 2, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL, NULL, false, false, 4, 3);
INSERT INTO public.moon VALUES (4, 'Amalthea', NULL, NULL, NULL, NULL, false, false, 57, 4);
INSERT INTO public.moon VALUES (5, 'Thebe', NULL, NULL, NULL, NULL, false, false, 58, 5);
INSERT INTO public.moon VALUES (6, 'Io', NULL, NULL, NULL, NULL, false, false, 59, 6);
INSERT INTO public.moon VALUES (7, 'Europa', NULL, NULL, NULL, NULL, false, false, 60, 7);
INSERT INTO public.moon VALUES (8, 'Ganymede', NULL, NULL, NULL, NULL, false, false, 61, 8);
INSERT INTO public.moon VALUES (9, 'Callisto', NULL, NULL, NULL, NULL, false, false, 62, 9);
INSERT INTO public.moon VALUES (10, 'Himalia', NULL, NULL, NULL, NULL, false, false, 63, 10);
INSERT INTO public.moon VALUES (11, 'Pan', NULL, NULL, NULL, NULL, false, false, 64, 11);
INSERT INTO public.moon VALUES (12, 'Atlas', NULL, NULL, NULL, NULL, false, false, 65, 12);
INSERT INTO public.moon VALUES (13, 'Prometheus', NULL, NULL, NULL, NULL, false, false, 66, 13);
INSERT INTO public.moon VALUES (14, 'Pandora', NULL, NULL, NULL, NULL, false, false, 67, 14);
INSERT INTO public.moon VALUES (15, 'Janus', NULL, NULL, NULL, NULL, false, false, 68, 15);
INSERT INTO public.moon VALUES (16, 'Mimas', NULL, NULL, NULL, NULL, false, false, 69, 16);
INSERT INTO public.moon VALUES (17, 'Dione', NULL, NULL, NULL, NULL, false, false, 70, 17);
INSERT INTO public.moon VALUES (18, 'Pheobe', NULL, NULL, NULL, NULL, false, false, 71, 18);
INSERT INTO public.moon VALUES (19, 'Voyager', NULL, NULL, NULL, NULL, false, false, 72, 19);
INSERT INTO public.moon VALUES (20, 'Hyperion', NULL, NULL, NULL, NULL, false, false, 73, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, NULL, false, true, 4, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, NULL, false, true, 5, 2);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, NULL, false, false, 6, 3);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, NULL, false, false, 11, 8);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, NULL, false, true, 12, 9);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, false, true, 13, 10);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, NULL, false, false, 14, 11);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, NULL, false, false, 15, 12);
INSERT INTO public.planet VALUES (9, 'Eugenia', NULL, NULL, NULL, NULL, true, true, 16, 13);
INSERT INTO public.planet VALUES (10, 'Kalliope', NULL, NULL, NULL, NULL, true, false, 17, 14);
INSERT INTO public.planet VALUES (11, 'Mathilde', NULL, NULL, NULL, NULL, true, false, 18, 15);
INSERT INTO public.planet VALUES (12, 'Ida', NULL, NULL, NULL, NULL, true, false, 19, 16);
INSERT INTO public.planet VALUES (13, 'Gespro', NULL, NULL, NULL, NULL, false, true, 20, 17);
INSERT INTO public.planet VALUES (14, 'Krishh', NULL, NULL, NULL, NULL, true, false, 21, 18);
INSERT INTO public.planet VALUES (15, 'Pratik', NULL, NULL, NULL, NULL, NULL, NULL, 22, 19);
INSERT INTO public.planet VALUES (16, 'Bajaj', NULL, NULL, NULL, NULL, NULL, NULL, 23, 20);
INSERT INTO public.planet VALUES (17, 'Chunti', NULL, NULL, NULL, NULL, NULL, NULL, 24, 21);
INSERT INTO public.planet VALUES (18, 'Bunti', NULL, NULL, NULL, NULL, NULL, NULL, 25, 22);
INSERT INTO public.planet VALUES (19, 'Chunki', NULL, NULL, NULL, NULL, NULL, NULL, 26, 23);
INSERT INTO public.planet VALUES (20, 'Chumbi', NULL, NULL, NULL, NULL, NULL, NULL, 27, 24);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, NULL, false, true, 1, 1);
INSERT INTO public.star VALUES (2, 'Polaris', NULL, NULL, NULL, NULL, false, true, 2, 2);
INSERT INTO public.star VALUES (3, 'Lynx', NULL, NULL, NULL, NULL, false, false, 3, 3);
INSERT INTO public.star VALUES (4, 'Eridanus', NULL, NULL, NULL, NULL, false, false, 4, 4);
INSERT INTO public.star VALUES (5, 'Scorpious', NULL, NULL, NULL, NULL, false, false, 5, 5);
INSERT INTO public.star VALUES (6, 'Crux', NULL, NULL, NULL, NULL, false, false, 6, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: galaxy_moon_id_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_moon_id_galaxy_id_seq', 1, false);


--
-- Name: galaxy_moon_id_galaxy_moon_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_moon_id_galaxy_moon_id_id_seq', 3, true);


--
-- Name: galaxy_moon_id_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_moon_id_moon_id_seq', 1, false);


--
-- Name: galaxy_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_unique_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 33, true);


--
-- Name: moon_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_unique_id_seq', 73, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 53, true);


--
-- Name: planet_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_unique_id_seq', 50, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: star_unique_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_unique_id_seq', 6, true);


--
-- Name: galaxy_moon_id galaxy_moon_id_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon_id
    ADD CONSTRAINT galaxy_moon_id_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy_moon_id galaxy_moon_id_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon_id
    ADD CONSTRAINT galaxy_moon_id_moon_id_key UNIQUE (moon_id);


--
-- Name: galaxy_moon_id galaxy_moon_id_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_moon_id
    ADD CONSTRAINT galaxy_moon_id_pkey PRIMARY KEY (galaxy_moon_id_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_id_key UNIQUE (unique_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique_id_key UNIQUE (unique_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique_id_key UNIQUE (unique_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique_id_key UNIQUE (unique_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

