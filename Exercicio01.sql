CREATE DATABASE empresa;
USE empresa;

CREATE TABLE funcionaries(
	matricula INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    funcao ENUM('M', 'F'),
    salario DECIMAL(6,2),
    turno VARCHAR(20)
);

INSERT INTO funcionaries (matricula, nome, funcao, salario, turno) VALUES ("01","Andressa Machado", "administração", 1700.00, "manha");
INSERT INTO funcionaries (matricula, nome, funcao, salario, turno) VALUES ("12","Lanay Serena Machado", "recursos humanos", 1300.00, "manha");
INSERT INTO funcionaries (matricula, nome, funcao, salario, turno) VALUES ("15","Danilo  Machado", "Vigilante", 1250.00, "noite");
INSERT INTO funcionaries (matricula, nome, funcao, salario, turno) VALUES ("31","Pietra Luciano", "recepcionista", 1100.00, "tarde");
INSERT INTO funcionaries (matricula, nome, funcao, salario, turno) VALUES ("07","Elaine Regina", "almoxarifado", 1150.00, "manha");

SELECT * FROM funcionaries WHERE salario > 2000;
SELECT * FROM funcionaries WHERE salario < 2000;

UPDATE funcionaries SET salario = 3000.00 WHERE matricula = 3;

SELECT * FROM funcionaries;