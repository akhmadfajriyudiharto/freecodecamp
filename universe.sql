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
    name character varying NOT NULL,
    age_in_millions_of_years numeric(6,2),
    description text,
    galaxy_types_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    planet_id integer,
    has_live boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    distance_from_earth integer,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth integer,
    description text,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy 1', 100.00, 'this is galaxy 1', 1);
INSERT INTO public.galaxy VALUES (2, 'galaxy 2', 100.00, 'this is galaxy 2', 1);
INSERT INTO public.galaxy VALUES (3, 'galaxy 3', 100.00, 'this is galaxy 3', 2);
INSERT INTO public.galaxy VALUES (4, 'galaxy 4', 100.00, 'this is galaxy 4', 2);
INSERT INTO public.galaxy VALUES (5, 'galaxy 5', 100.00, 'this is galaxy 5', 3);
INSERT INTO public.galaxy VALUES (6, 'galaxy 6', 100.00, 'this is galaxy 6', 3);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'type 1', 'this is type 1');
INSERT INTO public.galaxy_types VALUES (2, 'type 2', 'this is type 2');
INSERT INTO public.galaxy_types VALUES (3, 'type 3', 'this is type 3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 'this is moon 1', 1, true);
INSERT INTO public.moon VALUES (2, 'moon 2', 'this is moon 2', 1, true);
INSERT INTO public.moon VALUES (3, 'moon 3', 'this is moon 3', 2, true);
INSERT INTO public.moon VALUES (4, 'moon 4', 'this is moon 4', 2, true);
INSERT INTO public.moon VALUES (5, 'moon 5', 'this is moon 5', 3, true);
INSERT INTO public.moon VALUES (6, 'moon 6', 'this is moon 6', 3, true);
INSERT INTO public.moon VALUES (7, 'moon 7', 'this is moon 7', 4, true);
INSERT INTO public.moon VALUES (8, 'moon 8', 'this is moon 8', 4, true);
INSERT INTO public.moon VALUES (9, 'moon 9', 'this is moon 9', 5, true);
INSERT INTO public.moon VALUES (10, 'moon 10', 'this is moon 10', 5, true);
INSERT INTO public.moon VALUES (11, 'moon 11', 'this is moon 11', 6, true);
INSERT INTO public.moon VALUES (12, 'moon 12', 'this is moon 12', 6, true);
INSERT INTO public.moon VALUES (13, 'moon 13', 'this is moon 13', 7, true);
INSERT INTO public.moon VALUES (14, 'moon 14', 'this is moon 14', 7, true);
INSERT INTO public.moon VALUES (15, 'moon 15', 'this is moon 15', 8, true);
INSERT INTO public.moon VALUES (16, 'moon 16', 'this is moon 16', 8, true);
INSERT INTO public.moon VALUES (17, 'moon 17', 'this is moon 17', 9, true);
INSERT INTO public.moon VALUES (18, 'moon 18', 'this is moon 18', 10, true);
INSERT INTO public.moon VALUES (19, 'moon 19', 'this is moon 19', 11, true);
INSERT INTO public.moon VALUES (20, 'moon 20', 'this is moon 20', 12, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', 'this is planet 1', 100, true, 1);
INSERT INTO public.planet VALUES (2, 'planet 2', 'this is planet 2', 100, true, 1);
INSERT INTO public.planet VALUES (3, 'planet 3', 'this is planet 3', 100, true, 2);
INSERT INTO public.planet VALUES (4, 'planet 4', 'this is planet 4', 100, true, 2);
INSERT INTO public.planet VALUES (5, 'planet 5', 'this is planet 5', 100, true, 3);
INSERT INTO public.planet VALUES (6, 'planet 6', 'this is planet 6', 100, true, 3);
INSERT INTO public.planet VALUES (7, 'planet 7', 'this is planet 7', 100, true, 4);
INSERT INTO public.planet VALUES (8, 'planet 8', 'this is planet 8', 100, true, 4);
INSERT INTO public.planet VALUES (9, 'planet 9', 'this is planet 9', 100, true, 5);
INSERT INTO public.planet VALUES (10, 'planet 10', 'this is planet 10', 100, true, 5);
INSERT INTO public.planet VALUES (11, 'planet 11', 'this is planet 11', 100, true, 6);
INSERT INTO public.planet VALUES (12, 'planet 12', 'this is planet 12', 100, true, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star 1', 100, 'this is star 1', true, 1);
INSERT INTO public.star VALUES (2, 'star 2', 100, 'this is star 2', true, 2);
INSERT INTO public.star VALUES (3, 'star 3', 100, 'this is star 3', true, 3);
INSERT INTO public.star VALUES (4, 'star 4', 100, 'this is star 4', true, 4);
INSERT INTO public.star VALUES (5, 'star 5', 100, 'this is star 5', true, 5);
INSERT INTO public.star VALUES (6, 'star 6', 100, 'this is star 6', true, 6);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: galaxy_types unique_galaxy_types_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT unique_galaxy_types_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

