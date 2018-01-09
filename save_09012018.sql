--
-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: crypto; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA crypto;


ALTER SCHEMA crypto OWNER TO postgres;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = crypto, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: coinslist; Type: TABLE; Schema: crypto; Owner: postgres
--

CREATE TABLE coinslist (
    id character(255),
    name character(255),
    symbol character(16),
    rank integer,
    price_usd character(100),
    price_btc character(100),
    daily_volume_usd character(100),
    market_cap_usd character(100),
    available_supply character(100),
    total_supply character(100),
    max_supply character(100),
    percent_change_1h character(100),
    percent_change_24h character(100),
    percent_change_7d character(100),
    last_updated character(100)
);


ALTER TABLE coinslist OWNER TO postgres;

--
-- Name: ohlc; Type: TABLE; Schema: crypto; Owner: postgres
--

CREATE TABLE ohlc (
    tck_from character(10),
    tck_to character(10),
    date character(10),
    open double precision,
    high double precision,
    low double precision,
    close double precision
);


ALTER TABLE ohlc OWNER TO postgres;

--
-- Name: test; Type: TABLE; Schema: crypto; Owner: postgres
--

CREATE TABLE test (
    "?column?" integer
);


ALTER TABLE test OWNER TO postgres;

--
-- Name: test1; Type: TABLE; Schema: crypto; Owner: postgres
--

CREATE TABLE test1 (
    key text,
    value json
);


ALTER TABLE test1 OWNER TO postgres;

SET search_path = public, pg_catalog;

--
-- Name: ohlc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ohlc (
    zip character(10),
    open double precision,
    high double precision,
    low double precision,
    close double precision
);


ALTER TABLE ohlc OWNER TO postgres;

--
-- Name: v_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE v_test (
    value json
);


ALTER TABLE v_test OWNER TO postgres;

--
-- PostgreSQL database dump complete
--

