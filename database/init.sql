-- CREATE TABLE instrutor (
--     ins_id BIGINT GENERATED ALWAYS AS IDENTITY,
--     ins_nome VARCHAR(100) NOT NULL,
--     ins_email VARCHAR(150) NOT NULL UNIQUE,
--
--     PRIMARY KEY (ins_id)
-- );
--
-- CREATE TABLE curso (
--     cur_id BIGINT GENERATED ALWAYS AS IDENTITY,
--     cur_nome VARCHAR(100) NOT NULL,
--     cur_descricao VARCHAR(200),
--     cur_data_inicio TIMESTAMP NOT NULL,
--     cur_instrutor BIGINT NOT NULL,
--
--     PRIMARY KEY (cur_id),
--
--     CONSTRAINT cur_ins_fk
--        FOREIGN KEY (cur_instrutor)
--            REFERENCES instrutor(ins_id)
-- );

create table autor (
    aut_id BIGINT GENERATED ALWAYS AS IDENTITY,
    aut_nome VARCHAR(100) NOT NULL,
    aut_email VARCHAR(150) NOT NULL UNIQUE,

    PRIMARY KEY (aut_id)
);

create table livro (
    liv_id BIGINT GENERATED ALWAYS AS IDENTITY,
    liv_titulo VARCHAR(100) NOT NULL,
    liv_descricao VARCHAR(255),
    liv_data_publicacao TIMESTAMP NOT NULL,
    liv_autor BIGINT NOT NULL,

    PRIMARY KEY(liv_id),

    CONSTRAINT liv_aut_fk
        FOREIGN KEY (liv_autor)
                   REFERENCES  autor(aut_id)


);

INSERT INTO autor(aut_nome, aut_email)
VALUES
    ("Raphael Montes", "compnhinhadasletras@gmail.com"),
    ("Dotoýevsidkfahd", "elemesmo@gmail.com")
    ("joao", "joao@gmail.com"),
    ("java", "java@gmail.com");

INSERT INTO livro(liv_titulo,liv_descricao,liv_data_publicacao,liv_autor)
VALUES
    ("jantar secreto", "livro sobre 4 amigos que preparam jantares de carne de gaivota", "CURRENT_TIMESTAMP","1"),
    ("noites brancas", "nao faço ideia", "CURRENT_TIMESTAMP","2")