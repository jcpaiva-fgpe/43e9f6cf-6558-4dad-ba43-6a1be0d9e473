--
-- PostgreSQL database dump
--


CREATE TABLE public.artistas (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    especialidad character varying(255) NOT NULL,
    edad integer NOT NULL,
    nacionalidad character varying(255) NOT NULL
);


--ALTER TABLE public.artistas OWNER TO javier;

--
-- TOC entry 219 (class 1259 OID 54415)
-- Name: artistas_espectaculos; Type: TABLE; Schema: public; Owner: javier
--

CREATE TABLE public.artistas_espectaculos (
    artista_id integer NOT NULL,
    espectaculo_id integer NOT NULL
);


--ALTER TABLE public.artistas_espectaculos OWNER TO javier;

--
-- TOC entry 216 (class 1259 OID 54387)
-- Name: espectaculos; Type: TABLE; Schema: public; Owner: javier
--

CREATE TABLE public.espectaculos (
    id integer NOT NULL,
    nombre character varying(255) NOT NULL,
    descripcion character varying(255) NOT NULL,
    duracion integer NOT NULL
);


--ALTER TABLE public.espectaculos OWNER TO javier;

--
-- TOC entry 217 (class 1259 OID 54394)
-- Name: funciones; Type: TABLE; Schema: public; Owner: javier
--

CREATE TABLE public.funciones (
    id integer NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    espectaculo_id integer NOT NULL,
    precio numeric(10,2) NOT NULL,
    aforo integer
);


--ALTER TABLE public.funciones OWNER TO javier;

--
-- TOC entry 218 (class 1259 OID 54404)
-- Name: ventas; Type: TABLE; Schema: public; Owner: javier
--

CREATE TABLE public.ventas (
    fecha date DEFAULT CURRENT_DATE,
    id integer NOT NULL,
    idfuncion integer
);


--ALTER TABLE public.ventas OWNER TO javier;

--
-- TOC entry 4861 (class 0 OID 54380)
-- Dependencies: 215
-- Data for Name: artistas; Type: TABLE DATA; Schema: public; Owner: javier
--

INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (1, 'Juan García', 'Acróbata', 25, 'España');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (2, 'María Pérez', 'Domadora de leones', 30, 'Argentina');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (3, 'Pedro López', 'Payaso', 40, 'México');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (4, 'Ana Martínez', 'Trapecista', 22, 'Italia');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (5, 'Luis González', 'Malabarista', 28, 'Francia');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (6, 'Sofía Rodríguez', 'Bailarina', 20, 'China');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (7, 'David Hernández', 'Mago', 35, 'Brasil');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (8, 'Clara Fernández', 'Contorsionista', 24, 'Rusia');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (9, 'Pablo Jiménez', 'Lanzador de cuchillos', 32, 'Alemania');
INSERT INTO public.artistas (id, nombre, especialidad, edad, nacionalidad) VALUES (10, 'Laura Ruiz', 'Trapecista volante', 26, 'Estados Unidos');


--
-- TOC entry 4865 (class 0 OID 54415)
-- Dependencies: 219
-- Data for Name: artistas_espectaculos; Type: TABLE DATA; Schema: public; Owner: javier
--

INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (1, 1);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (2, 2);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (3, 3);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (4, 4);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (5, 5);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (1, 4);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (2, 5);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (3, 1);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (4, 3);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (5, 2);

INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (6, 2);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (7, 6);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (2, 6);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (8, 6);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (7, 7);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (4, 7);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (9, 7);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (10, 8);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (9, 8);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (1, 10);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (10, 10);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (9, 10);
INSERT INTO public.artistas_espectaculos (artista_id, espectaculo_id) VALUES (6, 10);


--
-- TOC entry 4862 (class 0 OID 54387)
-- Dependencies: 216
-- Data for Name: espectaculos; Type: TABLE DATA; Schema: public; Owner: javier
--

INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (1, 'Acrobacias', 'Espectacular show de acrobacias con los mejores artistas del mundo.', 60);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (2, 'Doma de leones', 'Una emocionante experiencia con los reyes de la selva.', 30);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (3, 'Payasos', 'Un show lleno de risas y diversión para toda la familia.', 45);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (4, 'Trapecio', 'Un espectáculo acrobático lleno de emoción y adrenalina.', 60);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (5, 'Malabares', 'Un show de malabares único e impresionante.', 30);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (6, 'Baile', 'Un espectáculo de baile lleno de ritmo y color.', 45);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (7, 'Magia', 'Un show de magia que te dejará sin palabras.', 60);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (8, 'Contorsionismo', 'Un espectáculo de contorsionismo que te desafiará las leyes de la física.', 30);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (9, 'Lanzamiento de cuchillos', 'Un show de lanzamiento de cuchillos lleno de suspense y emoción.', 45);
INSERT INTO public.espectaculos (id, nombre, descripcion, duracion) VALUES (10, 'Trapecio volante', 'Un espectáculo acrobático único y emocionante.', 60);


--
-- TOC entry 4863 (class 0 OID 54394)
-- Dependencies: 217
-- Data for Name: funciones; Type: TABLE DATA; Schema: public; Owner: javier
--

INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (1, '2024-03-08', '18:00:00', 1, 20.00, 50);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (2, '2024-03-09', '19:00:00', 2, 25.00, 70);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (3, '2024-03-10', '20:00:00', 3, 15.00, 80);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (4, '2024-03-11', '18:00:00', 4, 20.00, 60);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (5, '2024-03-12', '19:00:00', 5, 15.00, 60);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (6, '2024-03-13', '20:00:00', 6, 20.00, 60);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (7, '2024-03-14', '18:00:00', 7, 25.00, 70);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (8, '2024-03-15', '19:00:00', 8, 15.00, 50);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (9, '2024-03-16', '20:00:00', 9, 22.00, 60);
INSERT INTO public.funciones (id, fecha, hora, espectaculo_id, precio, aforo) VALUES (10, '2024-03-17', '18:00:00', 10, 27.50, 25);


--
-- TOC entry 4864 (class 0 OID 54404)
-- Dependencies: 218
-- Data for Name: ventas; Type: TABLE DATA; Schema: public; Owner: javier
--

INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 13, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 29, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 47, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 60, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 72, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 73, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 84, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 103, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 8, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 17, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 26, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 28, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 34, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 38, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 45, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 53, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 58, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 61, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 65, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 19, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 24, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 35, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 37, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 40, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 41, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 42, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 48, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 55, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 66, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 83, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 94, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 133, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 134, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 136, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 151, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 168, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 177, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 184, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 4, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 18, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 51, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 56, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 69, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 81, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 82, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 85, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 91, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 95, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 105, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 114, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 121, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 126, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 132, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 141, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 156, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 157, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 158, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 160, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 162, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 169, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 1, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 11, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 12, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 14, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 15, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 36, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 46, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 49, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 57, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 62, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 74, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 97, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 99, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 101, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 111, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 116, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 150, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 161, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 164, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 183, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 2, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 5, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 6, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 7, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 31, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 44, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 59, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 79, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 88, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 96, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 119, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 122, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 135, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 137, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 138, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 154, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 155, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 163, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 171, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 20, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 21, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 22, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 25, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 27, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 30, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 39, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 52, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 64, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 70, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 75, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 77, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 80, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 89, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 107, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 186, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 222, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 225, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 235, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 243, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 263, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 265, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 285, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 333, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 351, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 355, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-07', 363, 10);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 231, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 234, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 253, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 224, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 241, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 254, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 278, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 279, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 287, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 291, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 294, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 187, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 189, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 193, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 199, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 208, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 228, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 232, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 233, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 236, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 271, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 274, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 280, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 282, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 197, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 205, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 206, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 207, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 213, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 215, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 219, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 220, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 227, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 229, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 230, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 240, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 244, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 249, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 250, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 262, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 268, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 272, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 284, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 289, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 290, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 195, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 211, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 212, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 214, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 221, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 226, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 251, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 260, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 264, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 269, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 275, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 306, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 317, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 340, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 346, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 354, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 188, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 190, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 191, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 200, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 201, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 203, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 204, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 210, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 252, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 266, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 270, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 277, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 281, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 288, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 292, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 308, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 330, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 341, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 348, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 356, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 365, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 367, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 369, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 192, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 217, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 223, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 247, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 258, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 259, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 295, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 299, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 309, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 318, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 321, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 323, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 331, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 337, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 358, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 194, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 196, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 198, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 202, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 237, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 238, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 239, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 50, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 67, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 71, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 100, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 104, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 106, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 112, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 139, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 143, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 179, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 256, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 261, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 313, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 344, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 361, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 364, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-26', 393, 1);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 68, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 87, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 108, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 113, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 115, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 123, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 125, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 129, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 147, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 152, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 153, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 166, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 167, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 173, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 178, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 182, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 298, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 307, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 319, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 349, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 350, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 362, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 376, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 377, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 383, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 385, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-28', 397, 2);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 296, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 302, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 314, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 316, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 320, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 329, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 335, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 336, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 360, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 368, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 374, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 380, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 388, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 389, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-02-29', 398, 3);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 176, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 300, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 304, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 322, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 334, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 338, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 352, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 353, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 359, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 373, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 387, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-01', 395, 4);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-02', 399, 5);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 375, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 384, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-03', 400, 6);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 109, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 110, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 117, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 148, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 165, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 174, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 180, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 181, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 371, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 386, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 390, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 394, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-04', 396, 7);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 3, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 9, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 43, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 76, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 86, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 90, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 92, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 118, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 120, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 128, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 140, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 159, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 172, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 248, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 255, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 257, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 273, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 276, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 293, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 297, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 303, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 305, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 310, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 312, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 315, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 324, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 325, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 326, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 328, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 339, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 342, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 343, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 345, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 379, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 381, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 391, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 392, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 16, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 311, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 357, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-05', 370, 8);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 10, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 23, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 32, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 33, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 54, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 63, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 78, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 93, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 98, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 102, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 124, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 127, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 130, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 131, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 142, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 144, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 145, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 146, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 149, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 170, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 175, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 185, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 372, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 378, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 382, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 209, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 216, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 218, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 242, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 245, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 246, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 267, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 283, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 286, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 301, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 327, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 332, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 347, 9);
INSERT INTO public.ventas (fecha, id, idfuncion) VALUES ('2024-03-06', 366, 9);


--
-- TOC entry 4713 (class 2606 OID 54419)
-- Name: artistas_espectaculos artistas_espectaculos_pkey; Type: CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.artistas_espectaculos
    ADD CONSTRAINT artistas_espectaculos_pkey PRIMARY KEY (artista_id, espectaculo_id);


--
-- TOC entry 4705 (class 2606 OID 54386)
-- Name: artistas artistas_pkey; Type: CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.artistas
    ADD CONSTRAINT artistas_pkey PRIMARY KEY (id);


--
-- TOC entry 4707 (class 2606 OID 54393)
-- Name: espectaculos espectaculos_pkey; Type: CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.espectaculos
    ADD CONSTRAINT espectaculos_pkey PRIMARY KEY (id);


--
-- TOC entry 4709 (class 2606 OID 54398)
-- Name: funciones funciones_pkey; Type: CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.funciones
    ADD CONSTRAINT funciones_pkey PRIMARY KEY (id);


--
-- TOC entry 4711 (class 2606 OID 54409)
-- Name: ventas ventas_pkey; Type: CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.ventas
    ADD CONSTRAINT ventas_pkey PRIMARY KEY (id);


--
-- TOC entry 4716 (class 2606 OID 54420)
-- Name: artistas_espectaculos artistas_espectaculos_artista_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.artistas_espectaculos
    ADD CONSTRAINT artistas_espectaculos_artista_id_fkey FOREIGN KEY (artista_id) REFERENCES public.artistas(id);


--
-- TOC entry 4717 (class 2606 OID 54425)
-- Name: artistas_espectaculos artistas_espectaculos_espectaculo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.artistas_espectaculos
    ADD CONSTRAINT artistas_espectaculos_espectaculo_id_fkey FOREIGN KEY (espectaculo_id) REFERENCES public.espectaculos(id);


--
-- TOC entry 4714 (class 2606 OID 54399)
-- Name: funciones funciones_espectaculo_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.funciones
    ADD CONSTRAINT funciones_espectaculo_id_fkey FOREIGN KEY (espectaculo_id) REFERENCES public.espectaculos(id);


--
-- TOC entry 4715 (class 2606 OID 54410)
-- Name: ventas ventas_idfuncion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: javier
--

ALTER TABLE public.ventas
    ADD CONSTRAINT ventas_idfuncion_fkey FOREIGN KEY (idfuncion) REFERENCES public.funciones(id);


-- Completed on 2024-03-05 08:50:45

--
-- PostgreSQL database dump complete
--

