create table tra_trabalho (
      tra_id bigint generated always as identity,
      tra_titulo varchar(100) not null unique,
      tra_data_hora_entrega timestamp not null,
      tra_descricao varchar(200),
      tra_aluno bigint not null,
      tra_nota int,
      tra_justificativa varchar(100),
      primary key(tra_id),
      constraint tra_aln_fk foreign key(tra_aluno) references aln_aluno(aln_id)
);
insert into tra_trabalho (tra_titulo, tra_data_hora_entrega, tra_aluno, tra_nota, tra_justificativa)
values ('Teste 1', current_timestamp, 1, 6, 'Bom, mas falta conteúdo'),
       ('Teste 2', current_timestamp, 2, null, 'Incompleto');
grant update, delete, insert, select on all tables in schema public to spring;