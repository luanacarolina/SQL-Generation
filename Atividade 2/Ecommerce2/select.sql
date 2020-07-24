/*
Faça um select que retorne os Produtos com o valor maior do que 2000.
*/
select * from tb_produtos where preco > 2000;

/*
Faça um select trazendo os Produtos com valor entre 1000 e 2000.
*/
select * from tb_produtos where preco between 1000 and 2000;
/*
Faça um select utilizando LIKE buscando os Produtos com a letra C.
*/
select * from tb_produtos where nome like "%c";
/*
Faça um um select com Inner join entre tabela produto e categoria.

*/

select tb_produtos.nome, tb_produtos.preco,tb_categorias.nome
	from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id;
 
select * from tb_produtos;
/*
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são eletrodomesticos).
*/

select tb_produtos.nome , tb_categorias.nome
from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.nome = "Eletrodomesticos";