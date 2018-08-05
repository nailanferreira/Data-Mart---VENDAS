/* DDL LEGADO */

CREATE TABLE PRODUTO(
	produto_id integer,
    tipo_produto varchar(25),
    nome_produto varchar(25),
	CONSTRAINT pk_product_identifier PRIMARY KEY(produto_id)
);

CREATE TABLE FUNCIONARIO(
	cod_vendedor integer,
	cpf integer,
    nome varchar(255),
    sexo varchar(20),
	CONSTRAINT pk_cod_pessoa_fisica PRIMARY KEY(cod_vendedor)
);

-- ************************** geografia
CREATE TABLE ESTADO(
	estado_id integer,
    nome varchar(50),
	CONSTRAINT pk_state_identifier PRIMARY KEY(estado_id)
);

CREATE TABLE CIDADE(
	cidade_id integer,
    nome varchar(50),
	estado_id integer,
	CONSTRAINT pk_city_identifier PRIMARY KEY(cidade_id),
	CONSTRAINT fk_estado_id FOREIGN KEY(estado_id) REFERENCES ESTADO(estado_id)
);

CREATE TABLE LOJA(
	loja_id integer,
    cep varchar(20),
	cidade_id integer,
	CONSTRAINT pk_store_identifier PRIMARY KEY(loja_id),
	CONSTRAINT fk_cidade_id FOREIGN KEY(cidade_id) REFERENCES CIDADE(cidade_id)
);

-- **************************

CREATE TABLE VENDA(
	cod_venda varchar(255),
	valor double precision,
	produto_id integer,
	loja_id integer,
	vendedor int,
	data_venda timestamp without time zone,
	CONSTRAINT pk_sales_identifier PRIMARY KEY(cod_venda),
	CONSTRAINT fk_produto_id FOREIGN KEY(produto_id) REFERENCES PRODUTO(produto_id),
	CONSTRAINT fk_loja_id FOREIGN KEY(loja_id) REFERENCES LOJA(loja_id),
	CONSTRAINT fk_cod_vendedor FOREIGN KEY(vendedor) REFERENCES FUNCIONARIO(cod_vendedor)
)