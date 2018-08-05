CREATE TABLE LOJA(
	loja_id integer,
    cep varchar(20),
	cidade_id integer,
	CONSTRAINT pk_store_identifier PRIMARY KEY(loja_id),
	CONSTRAINT fk_cidade_id FOREIGN KEY(cidade_id) REFERENCES CIDADE(cidade_id)
);