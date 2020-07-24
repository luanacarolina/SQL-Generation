create table tb_categorias(
	id bigint(5) auto_increment,
    nome varchar(150) not null,
    descricao varchar(200) not null,
    primary key(id)
);


create table tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(150) not null,
    preco decimal(10,2) not null,
    categoria_id bigint not null,
    quantidade bigint(40) not null,
    ativo boolean,
    foreign key(categoria_id) references tb_categorias(id),
    primary key(id)
    
);