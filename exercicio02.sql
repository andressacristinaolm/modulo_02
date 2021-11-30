CREATE  DATABASE  db_loja ;
USE db_loja;

CREATE TABLE tb_produtos (
	id_produto INT  NOT NULL AUTO_INCREMENT,
    nome VARCHAR ( 150 ),
    sabor VARCHAR (30), 
    valor DECIMAL ( 5 , 2 ),
    quantidade_estoque INT NOT NULL ,

    PRIMARY KEY (id_produto)
);
INSERT INTO tb_produtos (nome, validade, valor,qtde_estoque) VALUES
("Bolo de chocolate","chocolate",15.00,7),
("brownie" ,"ninho com nutella",12.40 ,10),
("Pudim" ,"leite condensado",7.00 ,5),
("pao de mel" ,"doce de leite",6.00 ,20);

SELECT  *  FROM tb_produtos;

SELECT  *  FROM tb_produtos WHERE valor >  500 ;
SELECT  *  FROM tb_produtos WHERE valor <  500 ;

UPDATE tb_produtos SET  = sabor " ninho com nutella"  WHERE id_produto =  2 ;