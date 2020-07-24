select * from tb_marcas where nome like "%fa%";


use db_estoque;

create table tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(30) not null,
    preco decimal(10,2),
    marca_id bigint not null,
    primary key(id),
    foreign key (marca_id) references tb_marcas(id)
    
);

insert into tb_produtos(nome,preco,marca_id)
values("Tenis",69.99,3);



select tb_produtos.nome , tb_produtos.preco,tb_marcas.nome 
	from tb_produtos
inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id
where tb_marcas.nome = "Nike" 
&& tb_produtos.preco < 50
&& tb_produtos.nome = "Meias";


select tb_produtos.nome , tb_produtos.preco,tb_marcas.nome 
	from tb_produtos
inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id
where tb_produtos.nome = "Meias" || tb_produtos.nome = "Tenis";

select *
	from tb_produtos
right join tb_marcas on tb_marcas.id = tb_produtos.marca_id
