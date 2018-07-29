CREATE TABLE FUNCIONARIO(
	cod_vendedor integer,
	cpf integer,
    nome varchar(255),
    sexo varchar(20),
	CONSTRAINT pk_cod_pessoa_fisica PRIMARY KEY(cod_vendedor)
);