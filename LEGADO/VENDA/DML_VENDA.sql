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