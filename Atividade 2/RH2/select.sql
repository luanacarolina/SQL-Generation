use db_RH2;

select * from tb_funcionarios where salario > 2000;

select * from tb_funcionarios where salario between 1000 and 2000;

select * from tb_funcionarios where nome like "%c%";



select tb_funcionarios.nome ,tb_funcionarios.salario,tb_cargos.departamento
from tb_funcionarios 
inner join tb_cargos on tb_cargos.id = tb_funcionarios.cargos_id;