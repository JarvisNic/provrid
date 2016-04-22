--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Name: dele_cordi(character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION dele_cordi(p1 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin delete from cordinators where name=p1; end$$;


ALTER FUNCTION public.dele_cordi(p1 character varying) OWNER TO jarvis;

--
-- Name: dele_facul(character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION dele_facul(p1 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin delete from facultads where name=p1; end$$;


ALTER FUNCTION public.dele_facul(p1 character varying) OWNER TO jarvis;

--
-- Name: dele_project(character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION dele_project(p1 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin delete from projects where name=p1; end
$$;


ALTER FUNCTION public.dele_project(p1 character varying) OWNER TO jarvis;

--
-- Name: dele_reports(character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION dele_reports(p1 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin delete from reports where name=p1; end$$;


ALTER FUNCTION public.dele_reports(p1 character varying) OWNER TO jarvis;

--
-- Name: dele_users(character); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION dele_users(p1 character) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin delete from users where name=p1; end$$;


ALTER FUNCTION public.dele_users(p1 character) OWNER TO jarvis;

--
-- Name: dele_works(character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION dele_works(p1 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin delete from works where name=p1; end$$;


ALTER FUNCTION public.dele_works(p1 character varying) OWNER TO jarvis;

--
-- Name: inser_cordi(character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION inser_cordi(p1 character varying, p2 character varying, p3 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin insert into cordinators values (p1,p2,p3); end$$;


ALTER FUNCTION public.inser_cordi(p1 character varying, p2 character varying, p3 character varying) OWNER TO jarvis;

--
-- Name: inser_fac(character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION inser_fac(p1 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin insert into facultads values (p1); end
$$;


ALTER FUNCTION public.inser_fac(p1 character varying) OWNER TO jarvis;

--
-- Name: insert_projects(character varying, character varying, character varying, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION insert_projects(p1 character varying, p2 character varying, p3 character varying, p4 character varying, p5 character varying, p6 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
begin insert into projects values (p1,p2,p3,p4,p5,p6); end
$$;


ALTER FUNCTION public.insert_projects(p1 character varying, p2 character varying, p3 character varying, p4 character varying, p5 character varying, p6 character varying) OWNER TO jarvis;

--
-- Name: insert_reports(character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION insert_reports(p1 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin insert into reports values (p1,p2,p3); end
$$;


ALTER FUNCTION public.insert_reports(p1 character varying) OWNER TO jarvis;

--
-- Name: insert_reports(character varying, date, text); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION insert_reports(p1 character varying, p2 date, p3 text) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin insert into reports values (p1,p2,p3); end
$$;


ALTER FUNCTION public.insert_reports(p1 character varying, p2 date, p3 text) OWNER TO jarvis;

--
-- Name: insert_user(character varying, character varying, character varying, character varying, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION insert_user(p1 character varying, p2 character varying, p3 character varying, p4 character varying, p5 character varying, p6 character varying, p7 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin insert into users values (p1,p2,p3,p4,p5,p6,p7); end$$;


ALTER FUNCTION public.insert_user(p1 character varying, p2 character varying, p3 character varying, p4 character varying, p5 character varying, p6 character varying, p7 character varying) OWNER TO jarvis;

--
-- Name: insert_works(character varying, text, text, date, date, integer); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION insert_works(p1 character varying, p2 text, p3 text, p4 date, p5 date, p6 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin insert into works values (p1,p2,p3,p4,p5,p6); end$$;


ALTER FUNCTION public.insert_works(p1 character varying, p2 text, p3 text, p4 date, p5 date, p6 integer) OWNER TO jarvis;

--
-- Name: update_cordina(character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION update_cordina(p1 character varying, p2 character varying, p3 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin update cordinator set name=p1,address=p2,phone=p3;end$$;


ALTER FUNCTION public.update_cordina(p1 character varying, p2 character varying, p3 character varying) OWNER TO jarvis;

--
-- Name: update_facul(character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION update_facul(p1 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin update facultads set name=p1; end$$;


ALTER FUNCTION public.update_facul(p1 character varying) OWNER TO jarvis;

--
-- Name: update_project(character varying, character varying, character varying, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION update_project(p1 character varying, p2 character varying, p3 character varying, p4 character varying, p5 character varying, p6 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin update projects set name=p1,objetive=p2,reponsable=p3,time=p4,status=p5,fase=p6 ;end$$;


ALTER FUNCTION public.update_project(p1 character varying, p2 character varying, p3 character varying, p4 character varying, p5 character varying, p6 character varying) OWNER TO jarvis;

--
-- Name: update_report(character varying, date, text, integer); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION update_report(p1 character varying, p2 date, p3 text, p4 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin update reports set name=p1,date=p2,desci=p3,project_id=p4; end$$;


ALTER FUNCTION public.update_report(p1 character varying, p2 date, p3 text, p4 integer) OWNER TO jarvis;

--
-- Name: update_users(character varying, character varying, character varying, character varying, character varying, character varying, character varying); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION update_users(p1 character varying, p2 character varying, p3 character varying, p4 character varying, p5 character varying, p6 character varying, p7 character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin update users set name=p1,lastname=p2, email=p3, password_digest=p4, address=p5, phone=p6, typeuser=p7; end$$;


ALTER FUNCTION public.update_users(p1 character varying, p2 character varying, p3 character varying, p4 character varying, p5 character varying, p6 character varying, p7 character varying) OWNER TO jarvis;

--
-- Name: update_work(character varying, text, text, date, date, integer); Type: FUNCTION; Schema: public; Owner: jarvis
--

CREATE FUNCTION update_work(p1 character varying, p2 text, p3 text, p4 date, p5 date, p6 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$begin update works set name=p1, objetive=p2, descripcion=p3, fecha_inicio=p4, fecha_fin=p5, report_id=p6; end$$;


ALTER FUNCTION public.update_work(p1 character varying, p2 text, p3 text, p4 date, p5 date, p6 integer) OWNER TO jarvis;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: cordinators; Type: TABLE; Schema: public; Owner: jarvis; Tablespace: 
--

CREATE TABLE cordinators (
    id integer NOT NULL,
    name character varying,
    address character varying,
    phone character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    facultad_id integer
);


ALTER TABLE public.cordinators OWNER TO jarvis;

--
-- Name: cordinators_id_seq; Type: SEQUENCE; Schema: public; Owner: jarvis
--

CREATE SEQUENCE cordinators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cordinators_id_seq OWNER TO jarvis;

--
-- Name: cordinators_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jarvis
--

ALTER SEQUENCE cordinators_id_seq OWNED BY cordinators.id;


--
-- Name: facultads; Type: TABLE; Schema: public; Owner: jarvis; Tablespace: 
--

CREATE TABLE facultads (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.facultads OWNER TO jarvis;

--
-- Name: facultads_id_seq; Type: SEQUENCE; Schema: public; Owner: jarvis
--

CREATE SEQUENCE facultads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facultads_id_seq OWNER TO jarvis;

--
-- Name: facultads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jarvis
--

ALTER SEQUENCE facultads_id_seq OWNED BY facultads.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: jarvis; Tablespace: 
--

CREATE TABLE projects (
    id integer NOT NULL,
    name character varying,
    objetive character varying,
    responsable character varying,
    "time" character varying,
    status character varying,
    fase character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO jarvis;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: jarvis
--

CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO jarvis;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jarvis
--

ALTER SEQUENCE projects_id_seq OWNED BY projects.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: jarvis; Tablespace: 
--

CREATE TABLE reports (
    id integer NOT NULL,
    name character varying,
    date date,
    "desc" text,
    project_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.reports OWNER TO jarvis;

--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: jarvis
--

CREATE SEQUENCE reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reports_id_seq OWNER TO jarvis;

--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jarvis
--

ALTER SEQUENCE reports_id_seq OWNED BY reports.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: provrid; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO provrid;

--
-- Name: users; Type: TABLE; Schema: public; Owner: jarvis; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying,
    lastname character varying,
    email character varying,
    password_digest character varying,
    address character varying,
    phone character varying,
    typeuser character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO jarvis;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: jarvis
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO jarvis;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jarvis
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: works; Type: TABLE; Schema: public; Owner: jarvis; Tablespace: 
--

CREATE TABLE works (
    id integer NOT NULL,
    name character varying,
    objetive text,
    descripcion text,
    fecha_inicio date,
    fecha_fin date,
    report_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.works OWNER TO jarvis;

--
-- Name: works_id_seq; Type: SEQUENCE; Schema: public; Owner: jarvis
--

CREATE SEQUENCE works_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.works_id_seq OWNER TO jarvis;

--
-- Name: works_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jarvis
--

ALTER SEQUENCE works_id_seq OWNED BY works.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jarvis
--

ALTER TABLE ONLY cordinators ALTER COLUMN id SET DEFAULT nextval('cordinators_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jarvis
--

ALTER TABLE ONLY facultads ALTER COLUMN id SET DEFAULT nextval('facultads_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jarvis
--

ALTER TABLE ONLY projects ALTER COLUMN id SET DEFAULT nextval('projects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jarvis
--

ALTER TABLE ONLY reports ALTER COLUMN id SET DEFAULT nextval('reports_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jarvis
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jarvis
--

ALTER TABLE ONLY works ALTER COLUMN id SET DEFAULT nextval('works_id_seq'::regclass);


--
-- Data for Name: cordinators; Type: TABLE DATA; Schema: public; Owner: jarvis
--

COPY cordinators (id, name, address, phone, created_at, updated_at, facultad_id) FROM stdin;
1	FEC	pedro	pedro	2016-03-26 07:30:26.724321	2016-03-26 07:30:26.724321	\N
2	FIQ	juan	juan	2016-03-30 08:51:24.259283	2016-03-30 08:51:24.259283	\N
\.


--
-- Name: cordinators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jarvis
--

SELECT pg_catalog.setval('cordinators_id_seq', 2, true);


--
-- Data for Name: facultads; Type: TABLE DATA; Schema: public; Owner: jarvis
--

COPY facultads (id, name, created_at, updated_at) FROM stdin;
1	FIQ	2016-03-26 07:03:05.688145	2016-03-26 07:03:05.688145
2	FEC	2016-03-26 07:03:16.612737	2016-03-26 07:03:16.612737
3	FCYS	2016-03-26 07:03:27.664913	2016-03-26 07:03:27.664913
4	FARQ	2016-03-26 07:03:43.03797	2016-03-26 07:03:43.03797
\.


--
-- Name: facultads_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jarvis
--

SELECT pg_catalog.setval('facultads_id_seq', 4, true);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: jarvis
--

COPY projects (id, name, objetive, responsable, "time", status, fase, created_at, updated_at) FROM stdin;
12	proyecto1	proyecto1	proyecto1	proyecto1	proyecto1	proyecto1	2016-03-30 04:10:06.82751	2016-03-30 04:10:06.82751
14	adf	adsf	2	adf	asdf	adsf	2016-03-30 09:32:57.305987	2016-03-30 09:32:57.305987
\.


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jarvis
--

SELECT pg_catalog.setval('projects_id_seq', 14, true);


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: jarvis
--

COPY reports (id, name, date, "desc", project_id, created_at, updated_at) FROM stdin;
6	reporte2	2016-03-30	adfadf	12	2016-03-30 04:16:19.202172	2016-03-30 04:16:19.202172
\.


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jarvis
--

SELECT pg_catalog.setval('reports_id_seq', 6, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: provrid
--

COPY schema_migrations (version) FROM stdin;
20160323200709
20160323210417
20160323211104
20160323211343
20160323211807
20160323212825
20160323212913
20160323225424
20160323230156
20160323230623
20160323230855
20160323231021
20160325190707
20160325191227
20160325194156
20160325194859
20160325195917
20160325201304
20160325201324
20160325201546
20160328172933
20160330085644
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: jarvis
--

COPY users (id, name, lastname, email, password_digest, address, phone, typeuser, created_at, updated_at) FROM stdin;
1	usuario1	usuario1	usuario1@gmail.com	$2a$10$HGSOnNQaqurzFal1jGcrpeGs46pr4Pmg3mVn21bLxeC0timNpdzqi	usuario1	usuario1	1	2016-03-29 04:56:32.530879	2016-03-29 04:56:32.530879
2	usuario2	usuario2	usuario2@gmail.com	$2a$10$/ChK3opS3egA/9Vu7ciSneYkBv2fMnUoDCgdB.PuP8nkQP3IHrIry	usuario2	usuario2	2	2016-03-29 05:00:37.612488	2016-03-29 05:00:37.612488
3	usuario3	usuario3	usuario3@gmail.com	$2a$10$HN4Hii64rPb8jPHo3QngU.f6XYF8KJWqcrrQ50bhXz1aJCwSJGTNG	usuario3	usuario3	3	2016-03-29 05:13:46.334897	2016-03-29 05:13:46.334897
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jarvis
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- Data for Name: works; Type: TABLE DATA; Schema: public; Owner: jarvis
--

COPY works (id, name, objetive, descripcion, fecha_inicio, fecha_fin, report_id, created_at, updated_at) FROM stdin;
11	tarea1	tarea1	tarea1	2016-03-30	2016-03-30	6	2016-03-30 04:31:22.09062	2016-03-30 04:31:22.09062
\.


--
-- Name: works_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jarvis
--

SELECT pg_catalog.setval('works_id_seq', 11, true);


--
-- Name: cordinators_pkey; Type: CONSTRAINT; Schema: public; Owner: jarvis; Tablespace: 
--

ALTER TABLE ONLY cordinators
    ADD CONSTRAINT cordinators_pkey PRIMARY KEY (id);


--
-- Name: facultads_pkey; Type: CONSTRAINT; Schema: public; Owner: jarvis; Tablespace: 
--

ALTER TABLE ONLY facultads
    ADD CONSTRAINT facultads_pkey PRIMARY KEY (id);


--
-- Name: projects_pkey; Type: CONSTRAINT; Schema: public; Owner: jarvis; Tablespace: 
--

ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: reports_pkey; Type: CONSTRAINT; Schema: public; Owner: jarvis; Tablespace: 
--

ALTER TABLE ONLY reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: jarvis; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: works_pkey; Type: CONSTRAINT; Schema: public; Owner: jarvis; Tablespace: 
--

ALTER TABLE ONLY works
    ADD CONSTRAINT works_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: provrid; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

