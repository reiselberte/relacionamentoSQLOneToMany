--ONE TO MANY
--CRIAÇÃO DE RELACIONAMENTO OneToMany

create table POSTAGEM (ID_POST NUMBER NOT NULL, TITULO_DA_POSTAGEM VARCHAR (60) NOT NULL);
ALTER TABLE POSTAGEM ADD CONSTRAINT PK_POST PRIMARY KEY (ID_POST)


CREATE TABLE COMENTARIO (ID_COMENT NUMBER NOT NULL, TEXTO_COMENTARIO VARCHAR (500) NOT NULL, ID_POST NUMBER NOT NULL);
ALTER TABLE COMENTARIO ADD CONSTRAINT FK_ID_POST FOREIGN KEY (ID_POST) REFERENCES POSTAGEM (ID_POST);

INSERT INTO POSTAGEM (ID_POST, TITULO_DA_POSTAGEM) VALUES (1, 'HOJE FUI PARA COPACABANA PASSEAR');
SELECT * FROM POSTAGEM

INSERT INTO COMENTARIO (ID_COMENT, TEXTO_COMENTARIO, ID_POST) VALUES (1, 'Que legaaaaal, semana que vem, tb vou. ficou supinpa', 1);

INSERT INTO COMENTARIO (ID_COMENT, TEXTO_COMENTARIO, ID_POST) VALUES (2, 'deve ta roubando ou traficando para viajar toda semana', 1);

INSERT INTO COMENTARIO (ID_COMENT, TEXTO_COMENTARIO, ID_POST) VALUES (3, 'Ele trabalhou muito pra isso', 1);

