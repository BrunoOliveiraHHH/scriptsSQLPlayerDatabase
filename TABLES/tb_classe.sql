/* Script para criação da tabela o_inicio_do_fim_v2.tb_arma

/----------- Modificações -----------------------------/
/ Nome           -   Data     - Descrição              /
/------------------------------------------------------/
/ Bruno Oliveira - 25/05/2020 - Criação.

*/

USE o_inicio_do_fim_v2_player;

CREATE TABLE tb_classe(
	id_classe INT,
	nome VARCHAR(255) NOT NULL,
	dado_de_vida INT,
	PRIMARY KEY ( id_classe )
	);

ALTER TABLE tb_classe
	ADD CONSTRAINT fk_dado_de_vida_classe 
    FOREIGN KEY (dado_de_vida) 
    REFERENCES tb_dado_de_vida (id_dado_vida) ON UPDATE CASCADE ON DELETE CASCADE;
	
