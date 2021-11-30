CREATE TABLE tb_classes(
id_classe INT NOT NULL AUTO_INCREMENT ,
Classe VARCHAR (15) NOT NULL,
Arma VARCHAR (20) NOT NULL,
defesa INT NOT NULL,
ataque INT NOT NULL,
PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens(
email VARCHAR (30) PRIMARY KEY,
nome VARCHAR (20) NOT NULL,
experiencia INT NOT NULL DEFAULT 0,
vida INT NOT NULL,
armadura INT NOT NULL,
ataque INT NOT NULL fk_classe INT NOT NULL
FOREIGN KEY (fk_classe) REFERENCES tb_classes (id_classe)
);

-- DML 

INSERT INTO tb_classes ( classe, arma, regiao)
VALUES
("NOVATO", "ADAGA SIMPLES", "SÃO PAULO"),
("MAGO", "CAJADO", "MANAUS"),
("ARQUEIRO", "ARCO E FLEXA", "MINAS GERAIS"),
("PISTOLEIRO", "PISTOLA", "BAHIA");

-- DML NOVATOS

INSERT INTO tb_persnagens (email, nome, vida, armadura, ataque)
VALUES
("andressa@gmail.com", "Sol", "100" ,"20" ,"10"),
("lanay@gmail.com", "Hinata", "110" ,"40" ,"25"),
("Pietra@gmail.com", "Pedra", "115" ,"35" ,"15"),
("danilo@gmail.com", "escudeiro", "100" ,"15" ,"30");

-- DML EXPERIENTES
INSERT INTO tb_personagens ( email, nome, vida, armadura, ataque,fk_classe)
VALUES

("elaine@gmail.com", "medica", "1000" ,"1200" ,"100", 4),
("shirley@gmail.com", "pessego", "1100" ,"4000" ,"250",3),
("Paula@gmail.com", "aguia", "1150" ,"3500" ,"150", 1),
("claudia@gmail.com", "escudeiro", "1000" ,"1500" ,"300", 2);

SELECT nome, classe
FROM tb_personagens
INNER JOIN tb_classe
ON tb_personagens.fk_classe = tb_classe.id_classe



