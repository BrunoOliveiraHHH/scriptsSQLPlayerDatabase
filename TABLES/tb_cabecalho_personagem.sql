/* Script para criação da tabela o_inicio_do_fim_v2.tb_arma

/----------- Modificações -----------------------------/
/ Nome           -   Data     - Descrição              /
/------------------------------------------------------/
/ Bruno Oliveira - 25/05/2020 - Criação.

*/

USE o_inicio_do_fim_v2_player;

CREATE TABLE tb_dados_cabecalho(
	id_personagem INT,
	nome_personagem VARCHAR(255),
	classe INT,
	raca INT,
	tendencia INT,
	jogador INT,
	nivel INT,
	ptsEXP INT,	
	PRIMARY KEY ( id_personagem )
	);
	
ALTER TABLE tb_dados_cabecalho
	ADD CONSTRAINT fk_cabecalho_classe 
    FOREIGN KEY (classe) 
    REFERENCES tb_classe (id_classe) ON UPDATE CASCADE ON DELETE CASCADE;
	
ALTER TABLE tb_dados_cabecalho
	ADD CONSTRAINT fk_cabecalho_raca 
    FOREIGN KEY (raca) 
    REFERENCES tb_raca (id_raca) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE tb_dados_cabecalho
	ADD CONSTRAINT fk_cabecalho_tendencia 
    FOREIGN KEY (tendencia) 
    REFERENCES tb_tendencia (id_tendencia) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE tb_dados_cabecalho
	ADD CONSTRAINT fk_cabecalho_jogador 
    FOREIGN KEY (jogador) 
    REFERENCES tb_jogador (id_jogador) ON UPDATE CASCADE ON DELETE CASCADE;
	
