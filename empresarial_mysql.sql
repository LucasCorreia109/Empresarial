create table cliente(
id serial primary key,
nome_empresarial varchar(255) not null,
cnpj varchar(18) not null,
ie varchar(15),
email varchar(255),
website varchar(255),
telefone varchar(20),
cep varchar(9),
endereco varchar(255),
numero varchar(20),
complemento varchar(255),
bairro varchar(20),
cidade varchar(50),
estado char(2),
nota integer,
situacao varchar(255) not null
);



create table contato(
id serial primary key,
nome varchar(255),
departamento varchar(255),
cpf varchar(14) not null,
email varchar(255),
telefone varchar(15),
situacao varchar(255) not null,
id_cliente integer references cliente(id)
);


create table fornecedor(
id serial primary key,
nome_empresarial varchar(255) not null,
cnpj varchar(18) not null,
ie varchar(15),
email varchar(255),
website varchar(255),
telefone varchar(255),
cep varchar(9),
endereco varchar(255),
numero varchar(255),
complemento varchar(255),
bairro varchar(255),
cidade varchar(255),
estado char(2),
nota integer,
situacao varchar(255) not null
);


create table conta(
id serial primary key,
nome varchar(255) not null,
agencia varchar(255) not null,
conta_corrente varchar(255) not null,
data_inclusao timestamp not null,
observacao text,
situacao varchar(255)
);


create table categoria(
id serial primary key,
nome varchar(255) not null,
situacao varchar(255) not null,
debito boolean,
credito boolean,
id_pai integer references categoria(id)
);


create table lancamento(
id serial primary key,
parcela integer not null,
total_parcela integer not null,
valor decimal not null,
data_lancamento timestamp not null,
data_vencimento timestamp not null,
descricao text,
situacao varchar(255) not null,
id_conta integer references conta(id),
id_categoria integer references categoria(id),
id_cliente integer,
id_fornecedor integer
);

