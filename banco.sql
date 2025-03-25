/* Lógico_1: */

CREATE TABLE Escalas (
    id_escala int PRIMARY KEY auto_increment,
    dia date,
    turno varchar(10),
    horario time
);

CREATE TABLE Funcionarios (
    id_funcionarios int PRIMARY KEY auto_increment,
    nome varchar(50),
    cpf varchar(20),
    cargo varchar(50),
    contato varchar(20),
    fk_Escalas_id_escala int
);

CREATE TABLE Solicitacoes (
    id_solicitacao int PRIMARY KEY auto_increment,
    data date,
    solicitacao varchar(200),
    status varchar(50),
    fk_Funcionarios_id_funcionarios int
);
 
ALTER TABLE Funcionarios ADD CONSTRAINT FK_Funcionarios_2
    FOREIGN KEY (fk_Escalas_id_escala)
    REFERENCES Escalas (id_escala)
    ON DELETE CASCADE;
 
ALTER TABLE Solicitacoes ADD CONSTRAINT FK_Solicitacoes_2
    FOREIGN KEY (fk_Funcionarios_id_funcionarios)
    REFERENCES Funcionarios (id_funcionarios)
    ON DELETE CASCADE;
