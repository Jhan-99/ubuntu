--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Centro_Costos; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public."Centro_Costos" (
    id_cdc integer NOT NULL,
    nombre_cdc character varying(100) NOT NULL,
    categoria_cdc character varying(100) NOT NULL,
    valor_cdc integer NOT NULL,
    clasificacion_cdc character varying(100) NOT NULL,
    tipo_cdc character varying(50) NOT NULL
);


ALTER TABLE public."Centro_Costos" OWNER TO costosbocadillo_user;

--
-- Name: Centro_Costos_id_cdc_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public."Centro_Costos_id_cdc_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Centro_Costos_id_cdc_seq" OWNER TO costosbocadillo_user;

--
-- Name: Centro_Costos_id_cdc_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public."Centro_Costos_id_cdc_seq" OWNED BY public."Centro_Costos".id_cdc;


--
-- Name: InsumosProductos_insumos_productos; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public."InsumosProductos_insumos_productos" (
    id_insumo integer NOT NULL
);


ALTER TABLE public."InsumosProductos_insumos_productos" OWNER TO costosbocadillo_user;

--
-- Name: InsumosProductos_insumos_productos_id_insumo_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public."InsumosProductos_insumos_productos_id_insumo_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."InsumosProductos_insumos_productos_id_insumo_seq" OWNER TO costosbocadillo_user;

--
-- Name: InsumosProductos_insumos_productos_id_insumo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public."InsumosProductos_insumos_productos_id_insumo_seq" OWNED BY public."InsumosProductos_insumos_productos".id_insumo;


--
-- Name: InsumosProductos_insumos_productos_insumo_id; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public."InsumosProductos_insumos_productos_insumo_id" (
    id integer NOT NULL,
    insumos_productos_id integer NOT NULL,
    insumos_id integer NOT NULL
);


ALTER TABLE public."InsumosProductos_insumos_productos_insumo_id" OWNER TO costosbocadillo_user;

--
-- Name: InsumosProductos_insumos_productos_insumo_id_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public."InsumosProductos_insumos_productos_insumo_id_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."InsumosProductos_insumos_productos_insumo_id_id_seq" OWNER TO costosbocadillo_user;

--
-- Name: InsumosProductos_insumos_productos_insumo_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public."InsumosProductos_insumos_productos_insumo_id_id_seq" OWNED BY public."InsumosProductos_insumos_productos_insumo_id".id;


--
-- Name: InsumosProductos_insumos_productos_producto_id; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public."InsumosProductos_insumos_productos_producto_id" (
    id integer NOT NULL,
    insumos_productos_id integer NOT NULL,
    productos_id integer NOT NULL
);


ALTER TABLE public."InsumosProductos_insumos_productos_producto_id" OWNER TO costosbocadillo_user;

--
-- Name: InsumosProductos_insumos_productos_producto_id_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public."InsumosProductos_insumos_productos_producto_id_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."InsumosProductos_insumos_productos_producto_id_id_seq" OWNER TO costosbocadillo_user;

--
-- Name: InsumosProductos_insumos_productos_producto_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public."InsumosProductos_insumos_productos_producto_id_id_seq" OWNED BY public."InsumosProductos_insumos_productos_producto_id".id;


--
-- Name: MOempaque; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public."MOempaque" (
    id_moe integer NOT NULL,
    detalle_pro_moe character varying(100) NOT NULL,
    valortarea_per_moe integer NOT NULL,
    valor_dia_moe integer,
    valor_uni_moe integer NOT NULL,
    produccion_moe integer NOT NULL,
    total_moe integer
);


ALTER TABLE public."MOempaque" OWNER TO costosbocadillo_user;

--
-- Name: MOempaque_id_moe_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public."MOempaque_id_moe_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."MOempaque_id_moe_seq" OWNER TO costosbocadillo_user;

--
-- Name: MOempaque_id_moe_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public."MOempaque_id_moe_seq" OWNED BY public."MOempaque".id_moe;


--
-- Name: Mano_Obra; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public."Mano_Obra" (
    id_mano integer NOT NULL,
    detalle_producto character varying(150) NOT NULL,
    tareadia character varying(200) NOT NULL,
    valordia integer NOT NULL,
    valoruni integer NOT NULL,
    produccion integer NOT NULL,
    totalmano integer NOT NULL
);


ALTER TABLE public."Mano_Obra" OWNER TO costosbocadillo_user;

--
-- Name: Mano_Obra_id_mano_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public."Mano_Obra_id_mano_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Mano_Obra_id_mano_seq" OWNER TO costosbocadillo_user;

--
-- Name: Mano_Obra_id_mano_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public."Mano_Obra_id_mano_seq" OWNED BY public."Mano_Obra".id_mano;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO costosbocadillo_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO costosbocadillo_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO costosbocadillo_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO costosbocadillo_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO costosbocadillo_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO costosbocadillo_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO costosbocadillo_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO costosbocadillo_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO costosbocadillo_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO costosbocadillo_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO costosbocadillo_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO costosbocadillo_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO costosbocadillo_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO costosbocadillo_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO costosbocadillo_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO costosbocadillo_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO costosbocadillo_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO costosbocadillo_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO costosbocadillo_user;

--
-- Name: fabricas_fabricas; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.fabricas_fabricas (
    id_fabrica integer NOT NULL,
    nombre_fabrica character varying(150) NOT NULL,
    direccion_fabrica character varying(180) NOT NULL,
    descripcion_fabrica character varying(250),
    inicio_oper_fabrica date,
    ubicacion_fabrica character varying(250) NOT NULL,
    "Tamano_fabrica" character varying(100),
    clasificacion_fabrica character varying(100)
);


ALTER TABLE public.fabricas_fabricas OWNER TO costosbocadillo_user;

--
-- Name: fabricas_fabricas_id_fabrica_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.fabricas_fabricas_id_fabrica_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fabricas_fabricas_id_fabrica_seq OWNER TO costosbocadillo_user;

--
-- Name: fabricas_fabricas_id_fabrica_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.fabricas_fabricas_id_fabrica_seq OWNED BY public.fabricas_fabricas.id_fabrica;


--
-- Name: fabricas_fabricas_propietario_id; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.fabricas_fabricas_propietario_id (
    id integer NOT NULL,
    fabricas_id integer NOT NULL,
    propietarios_id integer NOT NULL
);


ALTER TABLE public.fabricas_fabricas_propietario_id OWNER TO costosbocadillo_user;

--
-- Name: fabricas_fabricas_propietario_id_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.fabricas_fabricas_propietario_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fabricas_fabricas_propietario_id_id_seq OWNER TO costosbocadillo_user;

--
-- Name: fabricas_fabricas_propietario_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.fabricas_fabricas_propietario_id_id_seq OWNED BY public.fabricas_fabricas_propietario_id.id;


--
-- Name: insumos_insumos; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.insumos_insumos (
    id_insumo integer NOT NULL,
    nombre_insumo character varying(180) NOT NULL,
    descripcion_insumo character varying(255) NOT NULL,
    unidad_medida character varying(20) NOT NULL,
    unidad_comercial character varying(20),
    valor_unitario numeric(19,0)
);


ALTER TABLE public.insumos_insumos OWNER TO costosbocadillo_user;

--
-- Name: insumos_insumos_id_insumo_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.insumos_insumos_id_insumo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.insumos_insumos_id_insumo_seq OWNER TO costosbocadillo_user;

--
-- Name: insumos_insumos_id_insumo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.insumos_insumos_id_insumo_seq OWNED BY public.insumos_insumos.id_insumo;


--
-- Name: insumos_insumos_producto_id; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.insumos_insumos_producto_id (
    id integer NOT NULL,
    insumos_id integer NOT NULL,
    productos_id integer NOT NULL
);


ALTER TABLE public.insumos_insumos_producto_id OWNER TO costosbocadillo_user;

--
-- Name: insumos_insumos_producto_id_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.insumos_insumos_producto_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.insumos_insumos_producto_id_id_seq OWNER TO costosbocadillo_user;

--
-- Name: insumos_insumos_producto_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.insumos_insumos_producto_id_id_seq OWNED BY public.insumos_insumos_producto_id.id;


--
-- Name: productos_productos; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.productos_productos (
    id_producto integer NOT NULL,
    nombre_producto character varying(150) NOT NULL,
    descripcion_producto character varying(200) NOT NULL
);


ALTER TABLE public.productos_productos OWNER TO costosbocadillo_user;

--
-- Name: productos_productos_fabrica_id; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.productos_productos_fabrica_id (
    id integer NOT NULL,
    productos_id integer NOT NULL,
    fabricas_id integer NOT NULL
);


ALTER TABLE public.productos_productos_fabrica_id OWNER TO costosbocadillo_user;

--
-- Name: productos_productos_fabrica_id_id_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.productos_productos_fabrica_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_productos_fabrica_id_id_seq OWNER TO costosbocadillo_user;

--
-- Name: productos_productos_fabrica_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.productos_productos_fabrica_id_id_seq OWNED BY public.productos_productos_fabrica_id.id;


--
-- Name: productos_productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.productos_productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_productos_id_producto_seq OWNER TO costosbocadillo_user;

--
-- Name: productos_productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.productos_productos_id_producto_seq OWNED BY public.productos_productos.id_producto;


--
-- Name: propietarios_propietarios; Type: TABLE; Schema: public; Owner: costosbocadillo_user
--

CREATE TABLE public.propietarios_propietarios (
    id_propietario integer NOT NULL,
    nombre_propietario character varying(180) NOT NULL,
    cc_propietario character varying(20) NOT NULL,
    tel_propietario character varying(20) NOT NULL
);


ALTER TABLE public.propietarios_propietarios OWNER TO costosbocadillo_user;

--
-- Name: propietarios_propietarios_id_propietario_seq; Type: SEQUENCE; Schema: public; Owner: costosbocadillo_user
--

CREATE SEQUENCE public.propietarios_propietarios_id_propietario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.propietarios_propietarios_id_propietario_seq OWNER TO costosbocadillo_user;

--
-- Name: propietarios_propietarios_id_propietario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: costosbocadillo_user
--

ALTER SEQUENCE public.propietarios_propietarios_id_propietario_seq OWNED BY public.propietarios_propietarios.id_propietario;


--
-- Name: Centro_Costos id_cdc; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."Centro_Costos" ALTER COLUMN id_cdc SET DEFAULT nextval('public."Centro_Costos_id_cdc_seq"'::regclass);


--
-- Name: InsumosProductos_insumos_productos id_insumo; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos" ALTER COLUMN id_insumo SET DEFAULT nextval('public."InsumosProductos_insumos_productos_id_insumo_seq"'::regclass);


--
-- Name: InsumosProductos_insumos_productos_insumo_id id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_insumo_id" ALTER COLUMN id SET DEFAULT nextval('public."InsumosProductos_insumos_productos_insumo_id_id_seq"'::regclass);


--
-- Name: InsumosProductos_insumos_productos_producto_id id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_producto_id" ALTER COLUMN id SET DEFAULT nextval('public."InsumosProductos_insumos_productos_producto_id_id_seq"'::regclass);


--
-- Name: MOempaque id_moe; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."MOempaque" ALTER COLUMN id_moe SET DEFAULT nextval('public."MOempaque_id_moe_seq"'::regclass);


--
-- Name: Mano_Obra id_mano; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."Mano_Obra" ALTER COLUMN id_mano SET DEFAULT nextval('public."Mano_Obra_id_mano_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: fabricas_fabricas id_fabrica; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.fabricas_fabricas ALTER COLUMN id_fabrica SET DEFAULT nextval('public.fabricas_fabricas_id_fabrica_seq'::regclass);


--
-- Name: fabricas_fabricas_propietario_id id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.fabricas_fabricas_propietario_id ALTER COLUMN id SET DEFAULT nextval('public.fabricas_fabricas_propietario_id_id_seq'::regclass);


--
-- Name: insumos_insumos id_insumo; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.insumos_insumos ALTER COLUMN id_insumo SET DEFAULT nextval('public.insumos_insumos_id_insumo_seq'::regclass);


--
-- Name: insumos_insumos_producto_id id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.insumos_insumos_producto_id ALTER COLUMN id SET DEFAULT nextval('public.insumos_insumos_producto_id_id_seq'::regclass);


--
-- Name: productos_productos id_producto; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.productos_productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_productos_id_producto_seq'::regclass);


--
-- Name: productos_productos_fabrica_id id; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.productos_productos_fabrica_id ALTER COLUMN id SET DEFAULT nextval('public.productos_productos_fabrica_id_id_seq'::regclass);


--
-- Name: propietarios_propietarios id_propietario; Type: DEFAULT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.propietarios_propietarios ALTER COLUMN id_propietario SET DEFAULT nextval('public.propietarios_propietarios_id_propietario_seq'::regclass);


--
-- Data for Name: Centro_Costos; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public."Centro_Costos" (id_cdc, nombre_cdc, categoria_cdc, valor_cdc, clasificacion_cdc, tipo_cdc) FROM stdin;
\.


--
-- Data for Name: InsumosProductos_insumos_productos; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public."InsumosProductos_insumos_productos" (id_insumo) FROM stdin;
\.


--
-- Data for Name: InsumosProductos_insumos_productos_insumo_id; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public."InsumosProductos_insumos_productos_insumo_id" (id, insumos_productos_id, insumos_id) FROM stdin;
\.


--
-- Data for Name: InsumosProductos_insumos_productos_producto_id; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public."InsumosProductos_insumos_productos_producto_id" (id, insumos_productos_id, productos_id) FROM stdin;
\.


--
-- Data for Name: MOempaque; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public."MOempaque" (id_moe, detalle_pro_moe, valortarea_per_moe, valor_dia_moe, valor_uni_moe, produccion_moe, total_moe) FROM stdin;
\.


--
-- Data for Name: Mano_Obra; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public."Mano_Obra" (id_mano, detalle_producto, tareadia, valordia, valoruni, produccion, totalmano) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Fabrica	7	add_fabricas
26	Can change Fabrica	7	change_fabricas
27	Can delete Fabrica	7	delete_fabricas
28	Can view Fabrica	7	view_fabricas
29	Can add Insumo	8	add_insumos
30	Can change Insumo	8	change_insumos
31	Can delete Insumo	8	delete_insumos
32	Can view Insumo	8	view_insumos
33	Can add Insumos Producto	9	add_insumos_productos
34	Can change Insumos Producto	9	change_insumos_productos
35	Can delete Insumos Producto	9	delete_insumos_productos
36	Can view Insumos Producto	9	view_insumos_productos
37	Can add Propducto	10	add_productos
38	Can change Propducto	10	change_productos
39	Can delete Propducto	10	delete_productos
40	Can view Propducto	10	view_productos
41	Can add Propietario	11	add_propietarios
42	Can change Propietario	11	change_propietarios
43	Can delete Propietario	11	delete_propietarios
44	Can view Propietario	11	view_propietarios
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$150000$NhrnNS5QZCQG$EBSFLNqwU5/Ukrzv0PZ4Ck94ga997Pz1UyDGxPzr0AY=	2019-06-16 21:24:52.170528+00	t	jhan			jhancarlosholguin79@gmail.com	t	t	2019-06-16 21:21:17.805962+00
3	pbkdf2_sha256$150000$PftPDMPmp2Mm$Luoubdep3p2r41KKKRVHfHpv+psb7qkKhYueEALs6E0=	2019-07-14 05:56:41.770315+00	t	carlosh				t	t	2019-07-14 05:56:34.600706+00
4	pbkdf2_sha256$150000$GXxGmXgjKpxU$xoTGnzAXtQt7j70sv8GAq3SLsfI0EmPPoQZ09REXL/A=	\N	f	jhancarlosh				f	t	2019-07-14 06:16:56+00
2	pbkdf2_sha256$150000$S2EDvMtlxubb$vNF0R0QT61unwopOMPY3SQu1hETOBTxQGseLUvVFtrM=	2019-07-17 11:57:53.335286+00	t	costosbocadillo				t	t	2019-06-18 23:32:13.674188+00
6	pbkdf2_sha256$150000$xdwMSEBreWIu$Fo4rt9EtDs1ldh6hEEnwbpzhTjOqDtJj5ect0tOMTPc=	2019-12-09 00:23:57.728182+00	f	jhanca	JHAN CARLOS	HOLGUIN MOSQUERA		f	t	2019-12-09 00:23:41.281141+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-07-14 06:16:56.346292+00	4	jhancarlosh	1	[{"added": {}}]	4	3
2	2019-07-14 06:17:03.756784+00	4	jhancarlosh	2	[]	4	3
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	fabricas	fabricas
8	insumos	insumos
9	InsumosProductos	insumos_productos
10	productos	productos
11	propietarios	propietarios
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
34	CentroCostos	0001_initial	2019-12-09 01:13:39.291875+00
35	MOempaques	0001_initial	2019-12-09 01:13:39.309072+00
36	ManoObra	0001_initial	2019-12-09 01:13:39.327731+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5whv7lbjfxojms0lclnnqeo4r436w1j9	NjUxYTExNjc2MDA5OGFkODZiNTE1M2EzODM2ZDk4MDQ1OWViOWJiZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxOWNhNzY5NzQyYjcyYWZiMGI2MWJmNzJjYTEyMTllYWM0NTczYWY3In0=	2019-07-03 00:23:33.686503+00
t7j7rlhblkv0ag7qs3kryzjlsfgktrmd	NjUxYTExNjc2MDA5OGFkODZiNTE1M2EzODM2ZDk4MDQ1OWViOWJiZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxOWNhNzY5NzQyYjcyYWZiMGI2MWJmNzJjYTEyMTllYWM0NTczYWY3In0=	2019-07-09 21:05:00.797187+00
ychvnr6o331a0jzskbedr2nynwjfj4qw	NjUxYTExNjc2MDA5OGFkODZiNTE1M2EzODM2ZDk4MDQ1OWViOWJiZDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxOWNhNzY5NzQyYjcyYWZiMGI2MWJmNzJjYTEyMTllYWM0NTczYWY3In0=	2019-07-31 11:57:53.338978+00
w9j0gqd6d1jukqvblf00cd0iza1ic70n	ZTQ4OGE2YWM0ZmIwMTVmNDg1ZDI3YTdkY2UwMzBiMGFmYWI2OTJmYTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1MDA3OWQ5OGZkYWRhMzcwMGY1MjJmNzJkMDhmNGYxZmYyYzQyZGJlIiwidXNlcl9pZCI6Nn0=	2019-12-23 00:23:57.73526+00
\.


--
-- Data for Name: fabricas_fabricas; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.fabricas_fabricas (id_fabrica, nombre_fabrica, direccion_fabrica, descripcion_fabrica, inicio_oper_fabrica, ubicacion_fabrica, "Tamano_fabrica", clasificacion_fabrica) FROM stdin;
2	BOCADILLOS FRUTI FRESCA	CALLE 9 6-28 VELEZ	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
3	FABRICA DE BOCADILLOS MUNDO RARO	CALLE 9 NO.5BIS-01	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
4	BOCADILLOS LA VELEÑITA	Calle 9 No. 4-65 Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
5	PRODUCTOS EL DURAZNO	Cra. 3 3a- 29 Barrio el Ricaurte	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
6	PRODUCTOS LA ESPERANZA	ENTRADA DE VELEZ COMPRA VENTA DE CARROS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
7	FABRICA DE BOCADILLOS VILLA DORADA	TRANSVERSAL 3 # 4 - 31, VELEZ	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
8	BELLA HOLANDESA	CRA.5 NO.3A-28, VELEZ	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
9	BOCADILLERIA EL PERRITO	CRA 3 No 3B - 52	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
10	BOCADILLOS LA ESPAÑOLA DE VELEZ	CARRERA 3 # 3 B - 48 SALIDA BARBOSA	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
11	BOCADILLOS EL RUIZ	CRA 3 No 3 B 14 Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
12	BOCADILLOS LA  ANGELITA	Cra 3 No. 3a-92 Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
13	BOCADILLOS LAS DALIAS	Cra 2 No. 3a-43 Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
14	BOCADILLOS LA FORTUNA	Barrio Ricaurte Bajo-Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
15	BOCADILLOS LA FLOR	Salida  Vélez-Barbosa Km 1 Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
16	EL DULCE BOCADILLO VELEÑO	KM 12 VIA BARBOSA VELEZ	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
17	BOCADILLOS LA SUPERIOR-VELEZ	VEREDA LOS GUAYABOS FINCA EL TRIUNFO	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
18	EL PORVENIR VELEÑO	VEREDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
19	BOCADILLOS EL PORTAL VELEÑO	VEREDA LOS GUAYABOS BOCADILLOS EL PORTAL VELEÑO	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
20	BOCADILLOS EL RECUERDO	Sector Industrial Los Guayabos Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
21	BOCADILLOS DULCE MARIA	VEREDA LOS GUAYABOS FINCA LA ALCANCIA	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
22	BOCADILLOS LA GRAN DINASTIA	VEREDA LOS GUAYABOS 0	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
23	FABRICA DE BOCADILLOS EL RUISEÑOR	Ninguna	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
24	FABRICA DE BOCADILLO VELEÑO RICAFRUT	VDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
25	PRODUCTOS SAN VALENTIN	VEREDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
26	FABRICA DE BOCADILLOS FRUTI VELEÑO	VDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
27	FABRICA DE BOCADILLOS LOS GUAYABITOS	VEREDA LOS GUAYABOS FINCA MIRADOR	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
28	DULCE VELEÑO	VEREDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
29	BOCADILLOS KARLA	VEREDA ACO Y PEÑA BLANCA	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
30	PRODUCTOS EL SABOR VELEÑO	VEREDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
31	BOCADILLLOS EL NARANJITO	Sector Industrial Los Guayabos Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
32	BOCADILLOS EL HORIZONTE	Sector Industrial Los Guayabos Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
33	FABRICA DE BOCADILLOS LOS CLAVELES	VEREDA ACO Y  PE?A BLANCA	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
34	BOCADILLOS EL AGUILA	Sector Industrial Los Guayabos Vélez	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
35	LA GUABINA	Ninguna	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
36	FABRICA DE BOCADILLOS LA GACELA	VEREDA ACO Y PEÑA BLANCA, LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
37	FABRICA DE BOCADILLOS MUNDO RARO	Ninguna	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
38	BOCADILLOS LA FLORESTA	VEREDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
39	FABRICA BOCADILLOS DOÑA FRUTA	VEREDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
40	FABRICA DE BOCADILLOS EL VENADO	Ninguna	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
41	VELEÑA DE BOCADILLO	VEREDA LOS GUAYABOS	BOCADILLOS	1998-12-21	VÉLEZ	No especifico 	FAMILIAR
\.


--
-- Data for Name: fabricas_fabricas_propietario_id; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.fabricas_fabricas_propietario_id (id, fabricas_id, propietarios_id) FROM stdin;
\.


--
-- Data for Name: insumos_insumos; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.insumos_insumos (id_insumo, nombre_insumo, descripcion_insumo, unidad_medida, unidad_comercial, valor_unitario) FROM stdin;
1	Azúcar	Azúcar manuelita	gr	kl	12000
3	Azucar	Azucar	Bulto	Kl	103708
5	Guayaba Blanca	Guayaba Blanca	Kilo	Canastilla Pequeña	24000
4	Guayaba Roja	Guayaba Roja	Kilo	Canastilla Pequeña	21000
2	Leche	Leche Liquida\r\n	Botella 750 Ml	Kilos	1050
6	Leche en Polvo	Leche en Polvo	Kilos	Bulto	306000
7	Conservantes y Preservativos	Bensobato	Kilo	Kilo	7800
8	Conservantes y Preservativos	Sorbato	Kilo	Kilo	21420
9	Conservantes y Preservativos	Citrato	Kilo	Kilo	7260
10	Conservantes y Preservativos	Anti Moho	Kilo	Kilo	49132
11	Fecula	Fecula	Kilo	Bulto	67800
12	Harina de Maiz	Harina de Maiz	Kilo	Bulto	90000
13	Harina de Arroz	Harina de Arroz	Kilo	Bulto	49300
14	Cartulina	Cartulina	Kilo	Cartulina	145
15	Papel Celofan	Papel Celofan Timbrado	Kilo	Kilo	15000
16	Caja Corrugada	Caja Corrugada No 24 Mini Rollo	Caja	Caja	2300
17	Caja Corrugada	Caja Corrugada Lonja - Arequipe	Caja	Caja	1311
18	Caja Corrugada	Caja Corrugada Velenita	Caja	Caja	2400
19	Pegante para Caja	Gomel	Kilo	Caneca	85670
20	Cinta Adhesiva	Cinta Adhesiva Ancha timbrada	Metros	Rollo	5092
21	Cinta Adhesiva	Cinta Adhesiva Angosta	Metros	Rollo	1900
22	Vapor	Vapor	Hora	Hora	8000
23	Cinta para Fechado	Cinta para Fechado	Metro	Rollo	7600
24	Leña	Leña	Carga de Lena	Carga de Lena	13500
25	Carbon	Carbon	Kilos	Bultos	15900
26	Agua	Agua	Litros	m3	2123
\.


--
-- Data for Name: insumos_insumos_producto_id; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.insumos_insumos_producto_id (id, insumos_id, productos_id) FROM stdin;
\.


--
-- Data for Name: productos_productos; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.productos_productos (id_producto, nombre_producto, descripcion_producto) FROM stdin;
3	Extrafino Especial	Extrafino Especial
4	Extrafino Grande	Extrafino Grande
5	Deditos	Deditos
6	Ojitos	Ojitos
7	Mini Tume	Mini Tume
8	Lonja Extrafino	Lonja Extrafino
9	Trocitos	Trocitos
10	Tume 	Tume 
11	Conserva	Conserva
12	Conserva 1/2	Conserva 1/2
13	Veleño Especial	Veleño Especial
14	Lonja Combinada 200 Gr	Lonja Combinada 200 Gr
15	Lonja Combinada 300 Gr	Lonja Combinada 300 Gr
16	Herpos	Herpos
17	Marqueta	Marqueta
18	Lonja Combinada 500 Gr	Lonja Combinada 500 Gr
19	Arrobas	Arrobas
20	Lonja Roja 200 Gr	Lonja Roja 200 Gr
21	Lonja Roja 500 Gr	Lonja Roja 500 Gr
22	Lonja Roja 300 Gr	Lonja Roja 300 Gr
23	Veleño	Veleño
1	La Veleñita	La Veleñita\r\n
\.


--
-- Data for Name: productos_productos_fabrica_id; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.productos_productos_fabrica_id (id, productos_id, fabricas_id) FROM stdin;
\.


--
-- Data for Name: propietarios_propietarios; Type: TABLE DATA; Schema: public; Owner: costosbocadillo_user
--

COPY public.propietarios_propietarios (id_propietario, nombre_propietario, cc_propietario, tel_propietario) FROM stdin;
94	SOTOMONTE VILLAMIL NUBIA	9009565861	3163919047
95	CAICEDO FAJARDO JOSÉ CARMELINO	0000	3174384149
2	RIVERA DE RODRIGUEZ ROSA ELENA	28476425	3106805645
9	AVILA FLORES HECTOR JULIO	91014142	3102767764
11	GRANDAS CASTAÑEDA NIDIA LUCIA	633256851	3208526406
12	ROA ESPERANZA	516289385	3143087546
13	PARDO DE SERRANO CONSUELO	284798390	3208782737
14	GONZÁLEZ MATEÚS SILVIO HERNANDO	0000	3132109886
15	ROJAS SANABRIA REYNALDO	13953281	3214777339
16	LEON ARCE LINDERMAN	13956475	3107602731
17	JIMENEZ MATEUS NESTOR	22005465	3102805142
18	RODRIGUEZ DE LEON LILIA	28476857	3124117983
19	LEÓN GONZÁLEZ ETELBINA	63434230	3108593853
20	DIAZ ROA JAIME	57892785	3115887562
21	MARTÍNEZ DÍAZ CARLOS GERMÁN	139500343	3208487828
22	SERRANO PARDO CLAUDIA PATRICIA	11017522942	3104800626
23	MORALES GONZALEZ MARCO HERNANDO	139557139	3112209029
24	GONZALEZ JEREZ BRANDON ALEXIS	11017571804	3213573570
25	ARIZA PAEZ WEYMAR	139559253	3208518557
26	MATEUS PAEZ WILLIAM	9011979932	3112224479
27	ARIZA ESCOBAR JENNIFER YESSENIA	634384811	3167293902
28	ZAID DÍAZ CAMACHO	139552611	3125226129
29	MATEUS PAEZ AIDA	517405588	3143270402
30	MATEUS PAEZ WALDO	139510237	3202845960
31	JENNY MARCELA GALEANO RUIZ	634368648	3107851820
32	ALDANA VELASCO RICHARD	11017573968	3112168078
33	WILSON ALDANA CIFUENTES	139563470	3114807910
34	ALDANA FONSECA HENRY	139567212	3124804428
35	CIFUENTES ORTIZ LIDA	0000	3115380190
36	RIVERA MARIELA	0000	3214533261
37	PARADA LEON LUZ MILA	634351692	3134791926
38	RIVERA GONZALEZ CLARA MARGOT	634355728	3105603990
39	RODRÍGUEZ JIMÉNEZ MAURICIO	139558753	3204929749
40	RODRIGUEZ SANDRA MILENA	279840032	3214795890
41	GONZALEZ GONZALEZ MARCO FIDEL	139508062	3107710412
42	RIVERA GONZÁLEZ LEONEL	5787971	3214533249
43	RIVERA GONZÁLEZ LUIS HUMBERTO	5787112	3134236232
44	GONZÁLEZ QUINTERO ENITH	634354579	3166234155
45	MEJIA PEREZ JUAN SEBASTIAN	11017559248	3112511074
46	GARZON MORALES YEBRAIL	13955383	3134061559
47	ARIZA TELLEZ ELBERT	0000	3115315958
48	GONZÁLEZ LEÓN SANDRA MILENA	63436009	3103129275
49	PARADA WILFREDO	139589185	3112644888
50	PERDOMO  FREDY ANTONIO	9012446352	3203457490
51	RODRIGUEZ RIVERA ROMALDO ESTEBAN	0000	3115167877
52	HERREÑO CARMEN	28476493	3103193617
53	GONZALEZ EDINSON	0000	3213437572
54	RIVERA CARLOS ARTURO	139508395	3112265104
55	ORTIZ OLARTE ANA CELIA	0000	3208555132
56	GARZON MORALES DORIS CONSUELO	0000	3132204673
57	DIAZ BAREÑO LILIA	0000	3112629720
58	ARDILA SANTAMARIA FABIOLA	0000	3134684470
60	RIVERA GONZALEZ PEDRO ALONSO	5787971	3214533249
61	RODRIGUEZ JIMENEZ NELSON	0000	3142192864
62	SERRANO PARDO JAIRO ALONSO	0000	3194587145
63	MATEUS NOHORA	51650971	3133974379
64	GONZALEZ MATEUS REINALDO	0000	3144167580
65	ROA ARDILA YESID OMAR	13953302	3153815117
66	SUAREZ RODRIGUEZ MARIA ELCY	0000	3132332390
67	MATEUS IVAN	0000	3209152268
68	RODRIGUEZ RIVERA GEOVANNY	13955170	3105529679
69	AVILA ALEXANDER	0000	No tiene
70	CAÑON JIMENEZ NELLY MARCELA	0000	3112493562
71	VARGAS DE BELTRAN ARACELY	237775627	3142889787
72	PINEDA SIMIJACA JOSE ROSENDO	1092116	3103337449
73	SAENZ NAVARRETE YIN HEINER	237832809	3107701379
74	VILLAMIL YULI ANDREA	0000	3114435852
75	ALVAREZ RUBIANO NANCY ROCELY	9012604156	3142970691
76	NARANJO BLANCO LUIS FRANCISCO	0000	7281787
77	BRICEÑO PINZON FRANKY	0000	3102209896
78	CACERES DOSITEO	0000	7282362
79	ARDILA JOSE ALFONSO	0000	3138594788
80	MORA MALAGON OSVAR ARMANDO	0000	3133485742
81	BUSTOS SANCHEZ GERLY	0000	3123758116
82	BRICEÑO PINZON ECCEHOMO	0000	3138766081
83	PORRAS PORRAS REINEL	0000	3138293886
84	BELTRAN FAJARDO MARTIN	0000	3142889787
85	HURTADO DE RONCANCIO HELIA	0000	7282511
86	BERNAL CASTRO WILMER MARTIN	0000	3115897174
87	CRUZ SANABRIA GILBERTO	57878398	3142036989
88	MATEUS AREVALO MARIA CRISTINA	281774771	3105742835
89	ISIDRO ANDRÉS RODRIGUEZ ARIZA	56583710	3213875916
90	AVILA PIÑA LUIS ALVARO	0000	3105595384
91	AVILA ARIZA LUIS REINALDO	0000	317 4244639
92	AVILA CASTELLANOS NIDSON	0000	3105595384
93	TELLEZ CASTILLO GABRIELINA	284777481	3112174614
96	QUINTERO TRIANA SEGUNDO MIGUEL	21026725	3013715644
97	GUERRERO MORALES LIVER	795408973	3105616672
98	CASTAÑEDA EVA	0000	3108609927
99	HERREÑO CASTILLO ISAÍAS	900446408	3114757765
100	LARA MATEUS INGRY ZULAY	0000	3153325110
101	PIZA FERRO ANA MARIA	0000	3015294006
102	SANABRIA PALACIOS ANA MERCEDES	0000	3204928618
103	TELLEZ SIERRA EFRAIN	0000	3114523861
104	PINZON DE TELLEZ ORFA	0000	3163214010
105	ATUESTA SANCHEZ HEYDA AMPARO	0000	3133335534
106	LEON BLANCO MERCEDES	0000	3142993000
107	LIZARAZO CARRILLO YONY	0000	3182577464
108	AGUDELO TAMAYO JORGE	0000	3102045325
109	SUAREZ LEON ALIX AMIRA	0000	3214140251
110	MARULANDA CASTAÑEDA ANGY PAOLA	0000	3002056371
111	ROA BARRERA WALDO	0000	3167414903
112	GUERRA GUERRERO CLAUDIA MARCELA	0000	7281717
113	CARRILLO GUARIN VIVIANA	0000	3229104660
114	MILLER ARDILA STEPHANY	0000	3136695145
115	PINEDA SIERRA CARLOS	0000	3105892960
116	MERA CALDERON YEISON	0000	3106132512
117	GARZON MURCIA NATALY	0000	3133742409
118	RODRIGUEZ CASTILLO ESPERANZA	0000	3114618088
119	SAENZ NUÑEZ VICTOR GERMAN	0000	3107806958
120	ARDILA DUCUARA LIGIA	0000	3003045370
121	HERNANDEZ MOSQUERA GENY OMAIRA	0000	3118684255
122	PINEDA SIERRA MARIA GLADYS	0000	3204249707
123	ARDILA ALZA ANA ROSELIA	0000	3138013298
124	CASTILLO  MARIA DEL PILAR	0000	3219885112
125	CONTRERAS BUITRAGO EMILSEN	0000	3202942037
126	GONZALEZ OSMA ANA TERESA DE JESUS	0000	3115654993
127	PINEDA SIERRA WILSON	0000	3142962853
128	HURTADO GARCIA LUIS ALEXANDER	0000	3108802526
129	MARULANDA CASTAÑEDA CINDY CAROLINA	0000	3046096269
130	ARIZA GONZALO	0000	No tiene
131	MOLINA SAAVEDRA LUIS CARLOS	0000	3202714143
132	BARRERA OMAR	0000	3132524473
133	ROJAS CASTILLO YAMILE	0000	3186647226
134	ACERO VILLAMIL ROSA ELENA	0000	3228585621
135	QUINTERO ORTIZ OLIVA	0000	3203844571
59	MATEUS PAEZ ARGEMIRO	0000	3112230350
\.


--
-- Name: Centro_Costos_id_cdc_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public."Centro_Costos_id_cdc_seq"', 1, false);


--
-- Name: InsumosProductos_insumos_productos_id_insumo_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public."InsumosProductos_insumos_productos_id_insumo_seq"', 1, false);


--
-- Name: InsumosProductos_insumos_productos_insumo_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public."InsumosProductos_insumos_productos_insumo_id_id_seq"', 1, false);


--
-- Name: InsumosProductos_insumos_productos_producto_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public."InsumosProductos_insumos_productos_producto_id_id_seq"', 1, false);


--
-- Name: MOempaque_id_moe_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public."MOempaque_id_moe_seq"', 1, false);


--
-- Name: Mano_Obra_id_mano_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public."Mano_Obra_id_mano_seq"', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 2, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 36, true);


--
-- Name: fabricas_fabricas_id_fabrica_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.fabricas_fabricas_id_fabrica_seq', 41, true);


--
-- Name: fabricas_fabricas_propietario_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.fabricas_fabricas_propietario_id_id_seq', 1, true);


--
-- Name: insumos_insumos_id_insumo_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.insumos_insumos_id_insumo_seq', 26, true);


--
-- Name: insumos_insumos_producto_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.insumos_insumos_producto_id_id_seq', 1, false);


--
-- Name: productos_productos_fabrica_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.productos_productos_fabrica_id_id_seq', 2, true);


--
-- Name: productos_productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.productos_productos_id_producto_seq', 24, true);


--
-- Name: propietarios_propietarios_id_propietario_seq; Type: SEQUENCE SET; Schema: public; Owner: costosbocadillo_user
--

SELECT pg_catalog.setval('public.propietarios_propietarios_id_propietario_seq', 135, true);


--
-- Name: Centro_Costos Centro_Costos_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."Centro_Costos"
    ADD CONSTRAINT "Centro_Costos_pkey" PRIMARY KEY (id_cdc);


--
-- Name: InsumosProductos_insumos_productos_insumo_id InsumosProductos_insumos_insumos_productos_id_ins_0c217bb5_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_insumo_id"
    ADD CONSTRAINT "InsumosProductos_insumos_insumos_productos_id_ins_0c217bb5_uniq" UNIQUE (insumos_productos_id, insumos_id);


--
-- Name: InsumosProductos_insumos_productos_producto_id InsumosProductos_insumos_insumos_productos_id_pro_ba76b642_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_producto_id"
    ADD CONSTRAINT "InsumosProductos_insumos_insumos_productos_id_pro_ba76b642_uniq" UNIQUE (insumos_productos_id, productos_id);


--
-- Name: InsumosProductos_insumos_productos_insumo_id InsumosProductos_insumos_productos_insumo_id_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_insumo_id"
    ADD CONSTRAINT "InsumosProductos_insumos_productos_insumo_id_pkey" PRIMARY KEY (id);


--
-- Name: InsumosProductos_insumos_productos InsumosProductos_insumos_productos_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos"
    ADD CONSTRAINT "InsumosProductos_insumos_productos_pkey" PRIMARY KEY (id_insumo);


--
-- Name: InsumosProductos_insumos_productos_producto_id InsumosProductos_insumos_productos_producto_id_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_producto_id"
    ADD CONSTRAINT "InsumosProductos_insumos_productos_producto_id_pkey" PRIMARY KEY (id);


--
-- Name: MOempaque MOempaque_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."MOempaque"
    ADD CONSTRAINT "MOempaque_pkey" PRIMARY KEY (id_moe);


--
-- Name: Mano_Obra Mano_Obra_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."Mano_Obra"
    ADD CONSTRAINT "Mano_Obra_pkey" PRIMARY KEY (id_mano);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: fabricas_fabricas fabricas_fabricas_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.fabricas_fabricas
    ADD CONSTRAINT fabricas_fabricas_pkey PRIMARY KEY (id_fabrica);


--
-- Name: fabricas_fabricas_propietario_id fabricas_fabricas_propie_fabricas_id_propietarios_48da86b8_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.fabricas_fabricas_propietario_id
    ADD CONSTRAINT fabricas_fabricas_propie_fabricas_id_propietarios_48da86b8_uniq UNIQUE (fabricas_id, propietarios_id);


--
-- Name: fabricas_fabricas_propietario_id fabricas_fabricas_propietario_id_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.fabricas_fabricas_propietario_id
    ADD CONSTRAINT fabricas_fabricas_propietario_id_pkey PRIMARY KEY (id);


--
-- Name: insumos_insumos insumos_insumos_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.insumos_insumos
    ADD CONSTRAINT insumos_insumos_pkey PRIMARY KEY (id_insumo);


--
-- Name: insumos_insumos_producto_id insumos_insumos_producto_id_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.insumos_insumos_producto_id
    ADD CONSTRAINT insumos_insumos_producto_id_pkey PRIMARY KEY (id);


--
-- Name: insumos_insumos_producto_id insumos_insumos_producto_insumos_id_productos_id_6eaef68b_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.insumos_insumos_producto_id
    ADD CONSTRAINT insumos_insumos_producto_insumos_id_productos_id_6eaef68b_uniq UNIQUE (insumos_id, productos_id);


--
-- Name: productos_productos_fabrica_id productos_productos_fabr_productos_id_fabricas_id_6ae226f3_uniq; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.productos_productos_fabrica_id
    ADD CONSTRAINT productos_productos_fabr_productos_id_fabricas_id_6ae226f3_uniq UNIQUE (productos_id, fabricas_id);


--
-- Name: productos_productos_fabrica_id productos_productos_fabrica_id_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.productos_productos_fabrica_id
    ADD CONSTRAINT productos_productos_fabrica_id_pkey PRIMARY KEY (id);


--
-- Name: productos_productos productos_productos_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.productos_productos
    ADD CONSTRAINT productos_productos_pkey PRIMARY KEY (id_producto);


--
-- Name: propietarios_propietarios propietarios_propietarios_pkey; Type: CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.propietarios_propietarios
    ADD CONSTRAINT propietarios_propietarios_pkey PRIMARY KEY (id_propietario);


--
-- Name: InsumosProductos_insumos_p_insumos_id_a4d8644c; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX "InsumosProductos_insumos_p_insumos_id_a4d8644c" ON public."InsumosProductos_insumos_productos_insumo_id" USING btree (insumos_id);


--
-- Name: InsumosProductos_insumos_p_insumos_productos_id_753cdfa4; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX "InsumosProductos_insumos_p_insumos_productos_id_753cdfa4" ON public."InsumosProductos_insumos_productos_producto_id" USING btree (insumos_productos_id);


--
-- Name: InsumosProductos_insumos_p_insumos_productos_id_da301386; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX "InsumosProductos_insumos_p_insumos_productos_id_da301386" ON public."InsumosProductos_insumos_productos_insumo_id" USING btree (insumos_productos_id);


--
-- Name: InsumosProductos_insumos_p_productos_id_d5e59978; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX "InsumosProductos_insumos_p_productos_id_d5e59978" ON public."InsumosProductos_insumos_productos_producto_id" USING btree (productos_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: fabricas_fabricas_propietario_id_fabricas_id_61afe6ce; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX fabricas_fabricas_propietario_id_fabricas_id_61afe6ce ON public.fabricas_fabricas_propietario_id USING btree (fabricas_id);


--
-- Name: fabricas_fabricas_propietario_id_propietarios_id_ce586fbf; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX fabricas_fabricas_propietario_id_propietarios_id_ce586fbf ON public.fabricas_fabricas_propietario_id USING btree (propietarios_id);


--
-- Name: insumos_insumos_producto_id_insumos_id_93a3018a; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX insumos_insumos_producto_id_insumos_id_93a3018a ON public.insumos_insumos_producto_id USING btree (insumos_id);


--
-- Name: insumos_insumos_producto_id_productos_id_f95af584; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX insumos_insumos_producto_id_productos_id_f95af584 ON public.insumos_insumos_producto_id USING btree (productos_id);


--
-- Name: productos_productos_fabrica_id_fabricas_id_86c7fa6d; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX productos_productos_fabrica_id_fabricas_id_86c7fa6d ON public.productos_productos_fabrica_id USING btree (fabricas_id);


--
-- Name: productos_productos_fabrica_id_productos_id_40a1f445; Type: INDEX; Schema: public; Owner: costosbocadillo_user
--

CREATE INDEX productos_productos_fabrica_id_productos_id_40a1f445 ON public.productos_productos_fabrica_id USING btree (productos_id);


--
-- Name: InsumosProductos_insumos_productos_insumo_id InsumosProductos_ins_insumos_id_a4d8644c_fk_insumos_i; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_insumo_id"
    ADD CONSTRAINT "InsumosProductos_ins_insumos_id_a4d8644c_fk_insumos_i" FOREIGN KEY (insumos_id) REFERENCES public.insumos_insumos(id_insumo) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: InsumosProductos_insumos_productos_producto_id InsumosProductos_ins_insumos_productos_id_753cdfa4_fk_InsumosPr; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_producto_id"
    ADD CONSTRAINT "InsumosProductos_ins_insumos_productos_id_753cdfa4_fk_InsumosPr" FOREIGN KEY (insumos_productos_id) REFERENCES public."InsumosProductos_insumos_productos"(id_insumo) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: InsumosProductos_insumos_productos_insumo_id InsumosProductos_ins_insumos_productos_id_da301386_fk_InsumosPr; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_insumo_id"
    ADD CONSTRAINT "InsumosProductos_ins_insumos_productos_id_da301386_fk_InsumosPr" FOREIGN KEY (insumos_productos_id) REFERENCES public."InsumosProductos_insumos_productos"(id_insumo) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: InsumosProductos_insumos_productos_producto_id InsumosProductos_ins_productos_id_d5e59978_fk_productos; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public."InsumosProductos_insumos_productos_producto_id"
    ADD CONSTRAINT "InsumosProductos_ins_productos_id_d5e59978_fk_productos" FOREIGN KEY (productos_id) REFERENCES public.productos_productos(id_producto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fabricas_fabricas_propietario_id fabricas_fabricas_pr_fabricas_id_61afe6ce_fk_fabricas_; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.fabricas_fabricas_propietario_id
    ADD CONSTRAINT fabricas_fabricas_pr_fabricas_id_61afe6ce_fk_fabricas_ FOREIGN KEY (fabricas_id) REFERENCES public.fabricas_fabricas(id_fabrica) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: fabricas_fabricas_propietario_id fabricas_fabricas_pr_propietarios_id_ce586fbf_fk_propietar; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.fabricas_fabricas_propietario_id
    ADD CONSTRAINT fabricas_fabricas_pr_propietarios_id_ce586fbf_fk_propietar FOREIGN KEY (propietarios_id) REFERENCES public.propietarios_propietarios(id_propietario) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: insumos_insumos_producto_id insumos_insumos_prod_insumos_id_93a3018a_fk_insumos_i; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.insumos_insumos_producto_id
    ADD CONSTRAINT insumos_insumos_prod_insumos_id_93a3018a_fk_insumos_i FOREIGN KEY (insumos_id) REFERENCES public.insumos_insumos(id_insumo) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: insumos_insumos_producto_id insumos_insumos_prod_productos_id_f95af584_fk_productos; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.insumos_insumos_producto_id
    ADD CONSTRAINT insumos_insumos_prod_productos_id_f95af584_fk_productos FOREIGN KEY (productos_id) REFERENCES public.productos_productos(id_producto) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: productos_productos_fabrica_id productos_productos__fabricas_id_86c7fa6d_fk_fabricas_; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.productos_productos_fabrica_id
    ADD CONSTRAINT productos_productos__fabricas_id_86c7fa6d_fk_fabricas_ FOREIGN KEY (fabricas_id) REFERENCES public.fabricas_fabricas(id_fabrica) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: productos_productos_fabrica_id productos_productos__productos_id_40a1f445_fk_productos; Type: FK CONSTRAINT; Schema: public; Owner: costosbocadillo_user
--

ALTER TABLE ONLY public.productos_productos_fabrica_id
    ADD CONSTRAINT productos_productos__productos_id_40a1f445_fk_productos FOREIGN KEY (productos_id) REFERENCES public.productos_productos(id_producto) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

