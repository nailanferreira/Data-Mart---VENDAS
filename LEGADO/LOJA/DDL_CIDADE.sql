CREATE TABLE CIDADE(
	cidade_id integer,
    nome varchar(50),
	estado_id integer,
	CONSTRAINT pk_city_identifier PRIMARY KEY(cidade_id),
	CONSTRAINT fk_estado_id FOREIGN KEY(estado_id) REFERENCES ESTADO(estado_id)
);