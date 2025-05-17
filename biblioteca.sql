CREATE DATABASE OR REPLACE biblioteca;

\c biblioteca;
CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY NOT NULL,
    nome VARCHAR(45) NOT NULL);
CREATE TABLE livro (
    id_livro SERIAL PRIMARY KEY NOT NULL,
    titulo VARCHAR(45) NOT NULL,
    autor VARCHAR(45) NOT NULL,
    id_usuario INT,  
    disponibilidade BOOLEAN NOT NULL,
    genero VARCHAR(45) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario));

CREATE TABLE emprestimo (
    id_emprestimo SERIAL PRIMARY KEY NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    id_usuario INT,
    id_livro INT,
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario));


