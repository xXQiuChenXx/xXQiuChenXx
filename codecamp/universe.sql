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
    description text,
    age integer,
    galaxy_types character varying(20),
    is_spherical boolean
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
    description text,
    distance numeric,
    age integer
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
-- Name: network; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.network (
    name character varying(30) NOT NULL,
    description text,
    network_id integer NOT NULL
);


ALTER TABLE public.network OWNER TO freecodecamp;

--
-- Name: network_network_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.network_network_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.network_network_id_seq OWNER TO freecodecamp;

--
-- Name: network_network_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.network_network_id_seq OWNED BY public.network.network_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text,
    planet_types character varying(20),
    has_life boolean,
    name character varying(50) NOT NULL
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
    description text,
    distance numeric,
    age integer,
    name character varying(30) NOT NULL
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
-- Name: network network_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.network ALTER COLUMN network_id SET DEFAULT nextval('public.network_network_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'planet_a', 'A planet', 2000, 'black', true);
INSERT INTO public.galaxy VALUES (2, 'planet_b', 'B planet', 2000, 'brown', true);
INSERT INTO public.galaxy VALUES (3, 'planet_c', 'C planet', 2000, 'green', true);
INSERT INTO public.galaxy VALUES (5, 'planet_d', 'D planet', 300, 'gray', false);
INSERT INTO public.galaxy VALUES (6, 'planet_e', 'E planet', 1200, 'blue', false);
INSERT INTO public.galaxy VALUES (7, 'planet_f', 'F planet', 1300, 'aqua', false);
INSERT INTO public.galaxy VALUES (8, 'planet_g', 'Planet G', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (9, 'planet_h', 'Planet H', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (10, 'planet_i', 'Planet I', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (11, 'planet_j', 'Planet J', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (12, 'planet_k', 'Planet K', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (13, 'planet_l', 'Planet L', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (14, 'planet_m', 'Planet M', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (15, 'planet_n', 'Planet N', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (16, 'planet_o', 'Planet O', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (17, 'planet_p', 'Planet P', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (18, 'planet_q', 'Planet q', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (19, 'planet_r', 'Planet R', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (20, 'planet_s', 'Planet S', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (21, 'planet_t', 'Planet T', 1233, NULL, true);
INSERT INTO public.galaxy VALUES (22, 'planet_u', 'Planet U', 1233, NULL, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'planet_a', 'Some Description', 10.5, 20);
INSERT INTO public.moon VALUES (3, 'planet_b', 'Some Description', 10.5, 20);
INSERT INTO public.moon VALUES (4, 'planet_c', 'Some Description', 10.5, 20);
INSERT INTO public.moon VALUES (5, 'planet_d', 'Some Description', 10.5, 20);
INSERT INTO public.moon VALUES (6, 'planet_e', 'Some Description', 10.5, 20);
INSERT INTO public.moon VALUES (8, 'planet_g', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'planet_f', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'planet_h', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'planet_i', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'planet_j', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'planet_k', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'planet_l', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'planet_m', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'planet_n', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'planet_o', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'planet_p', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'planet_q', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'planet_r', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'planet_s', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'planet_t', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'planet_u', NULL, NULL, NULL);


--
-- Data for Name: network; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.network VALUES ('unifi', 'A high Stable Network', 1);
INSERT INTO public.network VALUES ('maxis', 'A High Performan Stable Network', 2);
INSERT INTO public.network VALUES ('celcom', 'A High Performance and  Stable Network', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Planet A', 'black', true, 'planet_a');
INSERT INTO public.planet VALUES (4, 'Planet B', 'black', true, 'planet_b');
INSERT INTO public.planet VALUES (5, 'Planet C', 'black', true, 'planet_c');
INSERT INTO public.planet VALUES (6, 'Planet D', 'black', true, 'planet_d');
INSERT INTO public.planet VALUES (7, 'Planet E', 'black', true, 'planet_e');
INSERT INTO public.planet VALUES (8, 'Planet F', 'Some Type', true, 'planet_f');
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, 'planet_g');
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, 'planet_h');
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, 'planet_i');
INSERT INTO public.planet VALUES (14, NULL, NULL, NULL, 'planet_j');
INSERT INTO public.planet VALUES (16, NULL, NULL, NULL, 'planet_k');
INSERT INTO public.planet VALUES (17, NULL, NULL, NULL, 'planet_l');
INSERT INTO public.planet VALUES (18, NULL, NULL, NULL, 'planet_m');
INSERT INTO public.planet VALUES (19, NULL, NULL, NULL, 'planet_n');
INSERT INTO public.planet VALUES (20, NULL, NULL, NULL, 'planet_o');
INSERT INTO public.planet VALUES (21, NULL, NULL, NULL, 'planet_p');
INSERT INTO public.planet VALUES (22, NULL, NULL, NULL, 'planet_q');
INSERT INTO public.planet VALUES (23, NULL, NULL, NULL, 'planet_r');
INSERT INTO public.planet VALUES (24, NULL, NULL, NULL, 'planet_s');
INSERT INTO public.planet VALUES (25, NULL, NULL, NULL, 'planet_t');
INSERT INTO public.planet VALUES (26, NULL, NULL, NULL, 'planet_u');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Some Description', 12.3, 1200, 'planet_a');
INSERT INTO public.star VALUES (2, 'Some Description', 134.5, 130, 'planet_b');
INSERT INTO public.star VALUES (3, 'Some Description', 12.34, 400, 'planet_d');
INSERT INTO public.star VALUES (4, 'Some Description', 12.21, 130, 'planet_c');
INSERT INTO public.star VALUES (5, 'Some Description', 123, 330, 'planet_e');
INSERT INTO public.star VALUES (6, 'Some Description', 12.45, 550, 'planet_f');
INSERT INTO public.star VALUES (8, NULL, NULL, NULL, 'planet_g');
INSERT INTO public.star VALUES (9, NULL, NULL, NULL, 'planet_h');
INSERT INTO public.star VALUES (10, NULL, NULL, NULL, 'planet_i');
INSERT INTO public.star VALUES (11, NULL, NULL, NULL, 'planet_j');
INSERT INTO public.star VALUES (12, NULL, NULL, NULL, 'planet_k');
INSERT INTO public.star VALUES (13, NULL, NULL, NULL, 'planet_l');
INSERT INTO public.star VALUES (14, NULL, NULL, NULL, 'planet_m');
INSERT INTO public.star VALUES (15, NULL, NULL, NULL, 'planet_n');
INSERT INTO public.star VALUES (16, NULL, NULL, NULL, 'planet_o');
INSERT INTO public.star VALUES (17, NULL, NULL, NULL, 'planet_p');
INSERT INTO public.star VALUES (19, NULL, NULL, NULL, 'planet_q');
INSERT INTO public.star VALUES (20, NULL, NULL, NULL, 'planet_r');
INSERT INTO public.star VALUES (21, NULL, NULL, NULL, 'planet_s');
INSERT INTO public.star VALUES (22, NULL, NULL, NULL, 'planet_t');
INSERT INTO public.star VALUES (23, NULL, NULL, NULL, 'planet_u');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 22, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: network_network_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.network_network_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 26, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 23, true);


--
-- Name: moon c_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT c_moon UNIQUE (name);


--
-- Name: planet c_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT c_planet UNIQUE (name);


--
-- Name: star c_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT c_star UNIQUE (name);


--
-- Name: galaxy ccc; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT ccc UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: network network_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.network
    ADD CONSTRAINT network_pkey PRIMARY KEY (network_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: network u_network; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.network
    ADD CONSTRAINT u_network UNIQUE (name);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--

