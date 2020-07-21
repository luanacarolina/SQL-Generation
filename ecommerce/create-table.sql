create table tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(200) not null,
    preco bigint(40) not null,
    quantidade bigint(40) not null,
    ativo boolean,
    primary key(id)
)