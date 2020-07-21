use  db_escola;

create table tb_alunos(
	id bigint(5) auto_increment,
    nome varchar(200) not null,
    turma varchar(200) not null,
    disciplina varchar(200) not null,
    media bigint(10) not null,
    primary key (id)
)