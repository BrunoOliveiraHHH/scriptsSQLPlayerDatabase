/* Script para criação da tabela o_inicio_do_fim_v2.tb_arma

/----------- Modificações -----------------------------/
/ Nome           -   Data     - Descrição              /
/------------------------------------------------------/
/ Bruno Oliveira - 25/05/2020 - Criação.

*/

USE o_inicio_do_fim_v2_player;

CREATE TABLE tb_tendencia(
	id_tendencia INT,
	nome VARCHAR(255) NOT NULL,
	PRIMARY KEY ( id_tendencia )
	);
	
