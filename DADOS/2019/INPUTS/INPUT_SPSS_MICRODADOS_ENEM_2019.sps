/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2019                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2019     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2019.csv no diret�rio C:\ do computador.	                  */
/*							 */ 
/*							 */
/* Para a leitura dos microdados � necess�rio a sele��o do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
/* 							   */
/*******************************************************************************************************/



GET DATA
  /TYPE=TXT
  /FILE="C:\MICRODADOS_ENEM_2019.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
  NU_INSCRICAO F21.0
  NU_ANO F4.0
  TP_FAIXA_ETARIA F2.0
  TP_SEXO A1
  TP_ESTADO_CIVIL F1.0
  TP_COR_RACA F1.0
  TP_NACIONALIDADE F2.0
  TP_ST_CONCLUSAO F1.0
  TP_ANO_CONCLUIU F2.0
  TP_ESCOLA F1.0
  TP_ENSINO F1.0
  IN_TREINEIRO F1.0
  CO_MUNICIPIO_ESC F7.0
  NO_MUNICIPIO_ESC A32
  CO_UF_ESC F2.0
  SG_UF_ESC A2
  TP_DEPENDENCIA_ADM_ESC F1.0
  TP_LOCALIZACAO_ESC F1.0
  TP_SIT_FUNC_ESC F1.0
  CO_MUNICIPIO_PROVA F7.0
  NO_MUNICIPIO_PROVA A27
  CO_UF_PROVA F2.0
  SG_UF_PROVA A10
  TP_PRESENCA_CN F1.0
  TP_PRESENCA_CH F1.0
  TP_PRESENCA_LC F1.0
  TP_PRESENCA_MT F1.0
  CO_PROVA_CN F3.0
  CO_PROVA_CH F3.0
  CO_PROVA_LC F3.0
  CO_PROVA_MT F3.0
  NU_NOTA_CN COMMA8.2
  NU_NOTA_CH COMMA8.2
  NU_NOTA_LC COMMA8.2
  NU_NOTA_MT COMMA8.2
  TX_RESPOSTAS_CN A45
  TX_RESPOSTAS_CH A45
  TX_RESPOSTAS_LC A50
  TX_RESPOSTAS_MT A45
  TP_LINGUA F1.0
  TX_GABARITO_CN A45
  TX_GABARITO_CH A45
  TX_GABARITO_LC A50
  TX_GABARITO_MT A45
  TP_STATUS_REDACAO F2.0
  NU_NOTA_COMP1 F3.0
  NU_NOTA_COMP2 F3.0
  NU_NOTA_COMP3 F3.0
  NU_NOTA_COMP4 F3.0
  NU_NOTA_COMP5 F3.0
  NU_NOTA_REDACAO F4.0
  Q001 A1
  Q002 A1
  Q003 A1
  Q004 A1
  Q005 F2.0
  Q006 A1
  Q007 A1
  Q008 A1
  Q009 A1
  Q010 A1
  Q011 A1
  Q012 A1
  Q013 A1
  Q014 A1
  Q015 A1
  Q016 A1
  Q017 A1
  Q018 A1
  Q019 A1
  Q020 A1
  Q021 A1
  Q022 A1
  Q023 A1
  Q024 A1
  Q025 A1.
CACHE.
EXECUTE.
DATASET NAME ENEM_19 WINDOW=FRONT.

VARIABLE LABELS
NU_INSCRICAO			"N�mero de inscri��o"
NU_ANO	                  		"Ano do Enem"
IN_TREINEIRO 			 "Indica se o inscrito fez a prova com intuito de apenas treinar seus conhecimentos"
CO_MUNICIPIO_ESC 			"C�digo Munic�pio Escola"
NO_MUNICIPIO_ESC			"Nome do munic�pio da escola"
CO_UF_ESC			"C�digo da Unidade da Federa��o da escola"
SG_UF_ESC			"Sigla da Unidade da Federa��o da escola"
TP_DEPENDENCIA_ADM_ESC		"Depend�ncia administrativa (Escola)"
TP_LOCALIZACAO_ESC		"Localiza��o (Escola)"
TP_SIT_FUNC_ESC			"Situa��o de funcionamento (Escola)"
TP_FAIXA_ETARIA         		"Faixa Et�ria"
TP_SEXO	              			    "Sexo"
TP_NACIONALIDADE			"Nacionalidade"
TP_ST_CONCLUSAO			"Situa��o de conclus�o do Ensino M�dio"
TP_ANO_CONCLUIU			"Ano de Conclus�o do Ensino M�dio"
TP_ESCOLA			"Tipo de escola do Ensino M�dio"
TP_ENSINO			"Tipo de institui��o que concluiu ou concluir� o Ensino M�dio"
TP_ESTADO_CIVIL			"Estado Civil"
TP_COR_RACA			"Cor/ra�a"
CO_MUNICIPIO_PROVA		"C�digo do munic�pio da aplica��o da prova"
NO_MUNICIPIO_PROVA		"Nome do munic�pio da aplica��o da prova"
CO_UF_PROVA			"C�digo da Unidade da Federa��o da aplica��o da prova"
SG_UF_PROVA  			"Sigla da Unidade da Federa��o da aplica��o da prova"
TP_PRESENCA_CN			"Presen�a na prova objetiva de Ci�ncias da Natureza"
TP_PRESENCA_CH			"Presen�a na prova objetiva de Ci�ncias Humanas"
TP_PRESENCA_LC			"Presen�a na prova objetiva de Linguagens e C�digos"
TP_PRESENCA_MT			"Presen�a na prova objetiva de Matem�tica"
CO_PROVA_CN			"C�digo do tipo de prova de Ci�ncias da Natureza"
CO_PROVA_CH			"C�digo do tipo de prova de Ci�ncias Humanas"
CO_PROVA_LC			"C�digo do tipo de prova de Linguagens e C�digos"
CO_PROVA_MT			"C�digo do tipo de prova de Matem�tica"
NU_NOTA_CN			"Nota da prova de Ci�ncias da Natureza"
NU_NOTA_CH			"Nota da prova de Ci�ncias Humanas"
NU_NOTA_LC			"Nota da prova de Linguagens e C�digos"
NU_NOTA_MT			"Nota da prova de Matem�tica"
TX_RESPOSTAS_CN			"Vetor com as respostas da parte objetiva da prova de Ci�ncias da Natureza"
TX_RESPOSTAS_CH			"Vetor com as respostas da parte objetiva da prova de Ci�ncias Humanas"
TX_RESPOSTAS_LC			"Vetor com as respostas da parte objetiva da prova de Linguagens e C�digos"
TX_RESPOSTAS_MT			"Vetor com as respostas da parte objetiva da prova de Matem�tica"
TP_LINGUA				"Tipo de L�ngua Estrangeira "
TX_GABARITO_CN			"Vetor com o gabarito da parte objetiva da prova de Ci�ncias da Natureza"
TX_GABARITO_CH			"Vetor com o gabarito da parte objetiva da prova de Ci�ncias Humanas"
TX_GABARITO_LC			"Vetor com o gabarito da parte objetiva da prova de Linguagens e C�digos"
TX_GABARITO_MT			"Vetor com o gabarito da parte objetiva da prova de Matem�tica"
TP_STATUS_REDACAO		"Situa��o da reda��o do participante"
NU_NOTA_COMP1			"Nota da compet�ncia 1"
NU_NOTA_COMP2			"Nota da compet�ncia 2"
NU_NOTA_COMP3			"Nota da compet�ncia 3"
NU_NOTA_COMP4			"Nota da compet�ncia 4"
NU_NOTA_COMP5			"Nota da compet�ncia 5"
NU_NOTA_REDACAO			"Nota da prova de reda��o"
Q001				"At� que s�rie seu pai, ou o homem respons�vel por voc�, estudou?"
Q002				"At� que s�rie sua m�e, ou a mulher respons�vel por voc�, estudou?"
Q003				"Indique o grupo que contempla a ocupa��o mais pr�xima da ocupa��o do seu pai ou do homem respons�vel por voc�"
Q004				"Indique o grupo que contempla a ocupa��o mais pr�xima da ocupa��o da sua m�e ou da mulher respons�vel por voc�"
Q005				"Incluindo voc�, quantas pessoas moram atualmente em sua resid�ncia?"
Q006				"Qual � a renda mensal de sua fam�lia? (Some a sua renda com a dos seus familiares.)"
Q007				"Em sua resid�ncia trabalha empregado(a) dom�stico(a)?"
Q008				"Na sua resid�ncia tem banheiro?"
Q009				"Na sua resid�ncia tem quartos para dormir?"
Q010				"Na sua resid�ncia tem carro?"
Q011				"Na sua resid�ncia tem motocicleta?"
Q012				"Na sua resid�ncia tem geladeira?"
Q013				"Na sua resid�ncia tem freezer (independente ou segunda porta da geladeira)?"
Q014				"Na sua resid�ncia tem m�quina de lavar roupa (o tanquinho N�O deve ser considerado)?"
Q015				"Na sua resid�ncia tem m�quina de secar roupa (independente ou em conjunto com a m�quina de lavar roupa)?"
Q016				"Na sua resid�ncia tem forno micro-ondas?"
Q017				"Na sua resid�ncia tem m�quina de lavar lou�a?"
Q018				"Na sua resid�ncia tem aspirador de p�?"
Q019				"Na sua resid�ncia tem televis�o em cores?"
Q020				"Na sua resid�ncia tem aparelho de DVD?"
Q021				"Na sua resid�ncia tem TV por assinatura?"
Q022				"Na sua resid�ncia tem telefone celular?"
Q023				"Na sua resid�ncia tem telefone fixo?"
Q024				"Na sua resid�ncia tem computador?"
Q025				"Na sua resid�ncia tem acesso � Internet?".

VALUE LABELS
TP_FAIXA_ETARIA
	1   	"Menor de 17 anos"
	2   	"17 anos"
	3   	"18 anos"
	4   	"19 anos"
	5   	"20 anos"
	6   	"21 anos"
	7   	"22 anos"
	8   	"23 anos"
	9   	"24 anos"
	10  	"25 anos"
	11  	"Entre 26 e 30 anos"
	12  	"Entre 31 e 35 anos"
	13  	"Entre 36 e 40 anos"
	14  	"Entre 41 e 45 anos"
	15  	"Entre 46 e 50 anos"
	16  	"Entre 51 e 55 anos"
	17  	"Entre 56 e 60 anos"
	18  	"Entre 61 e 65 anos"
	19  	"Entre 66 e 70 anos"
	20  	"Maior de 70 anos"
/IN_TREINEIRO
	1	"Sim"
	0	"N�o"
/TP_DEPENDENCIA_ADM_ESC	 	 
	1	"Federal"
	2	"Estadual"
	3	"Municipal"
	4	"Privada"
/TP_LOCALIZACAO_ESC	 	 
	1	"Urbana"
	2	"Rural"
/TP_SIT_FUNC_ESC	 	
	1	"Em atividade"
	2	"Paralisada"
	3	"Extinta"
	4	"Escola extinta em anos anteriores"
/TP_SEXO	 	
	"M"	"Masculino"
	"F"	"Feminino"
/TP_NACIONALIDADE	 
	0	"N�o informado"	
	1	"Brasileiro(a)"
	2	"Brasileiro(a) Naturalizado(a)"
	3	"Estrangeiro(a)"
	4	"Brasileiro(a) Nato(a), nascido(a) no exterior"
/TP_ST_CONCLUSAO	 	
	1	"J� conclu� o Ensino M�dio"
	2	"Estou cursando e concluirei o Ensino M�dio em 2019"
	3	"Estou cursando e concluirei o Ensino M�dio ap�s 2019"
	4	"N�o conclu� e n�o estou cursando o Ensino M�dio"
/TP_ANO_CONCLUIU
	0	"N�o informado"
	1	"2018"
	2	"2017"
	3	"2016"
	4	"2015"
	5	"2014"
	6	"2013"
	7	"2012"
	8	"2011"
	9	"2010"
	10	"2009"
	11	"2008"
	12	"2007"
	13	"Anterior a 2007"
/TP_ESCOLA
	1	"N�o respondeu"
	2	"P�blica"
	3	"Privada"
	4	"Exterior"	
/TP_ENSINO	 	
	1	"Ensino Regular"
	2	"Educa��o Especial - Modalidade Substitutiva"
	3	"Educa��o de Jovens e Adultos"
/TP_ESTADO_CIVIL	 	
	0	"N�o informado"
	1	"Solteiro(a)"
	2	"Casado(a)/Mora com um(a) companheiro(a)"
	3	"Divorciado(a)/Desquitado(a)/Separado(a)"
	4	"Vi�vo(a)"
/TP_COR_RACA	 	
	0	"N�o declarado"
	1	"Branca"
	2	"Preta"
	3	"Parda"
	4	"Amarela"
	5	"Ind�gena"
/TP_PRESENCA_CN	 	 
	0	"Faltou � prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_CH	 	
	0	"Faltou � prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_LC	 	
	0	"Faltou � prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_MT	 	
	0	"Faltou � prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/CO_PROVA_CN
	503	"Azul"
	504	"Amarela"
	505	"Cinza"
	506	"Rosa"
	519	"Laranja - Adaptada Ledor"
	523	"Verde - Videoprova - Libras"
	543	"Amarela (Reaplica��o)"
	544	"Cinza (Reaplica��o)"
	545	"Azul (Reaplica��o)"
	546	"Rosa (Reaplica��o)"
/CO_PROVA_CH	 	
	507	"Azul"
	508	"Amarela"
	509	"Branca"
	510	"Rosa"
	520	"Laranja - Adaptada Ledor"
	524	"Verde - Videoprova - Libras"
	547	"Azul (Reaplica��o)"
	548	"Amarelo (Reaplica��o)"
	549	"Branco (Reaplica��o)"
	550	"Rosa (Reaplica��o)"
	564	"Laranja - Adaptada Ledor (Reaplica��o)"
/CO_PROVA_LC	 	
	511	"Azul"
	512	"Amarela"
	513	"Rosa"
	514	"Branca"
	521	"Laranja - Adaptada Ledor"
	525	"Verde - Videoprova - Libras"
	551	"Azul (Reaplica��o)"
	552	"Amarelo (Reaplica��o)"
	553	"Branco (Reaplica��o)"
	554	"Rosa (Reaplica��o)"
	565	"Laranja - Adaptada Ledor (Reaplica��o)"
/CO_PROVA_MT	 	
	515	"Azul"
	516	"Amarela"
	517	"Rosa"
	518	"Cinza"
	522	"Laranja - Adaptada Ledor"
	526	"Verde - Videoprova - Libras"
	555	"Amarela (Reaplica��o)"
	556	"Cinza (Reaplica��o)"
	557	"Azul (Reaplica��o)"
	558	"Rosa (Reaplica��o)"
 /TP_LINGUA	 	
	0	"Ingl�s"
	1	"Espanhol"
/TP_STATUS_REDACAO	 	 
	1	"Sem problemas"
	2	"Anulada"
	3	"C�pia Texto Motivador"
	4	"Em Branco"
	6	"Fuga ao tema"
	7	"N�o atendimento ao tipo"
	8	"Texto insuficiente"
	9	"Parte desconectada"
/Q001	 	 
	"A"	"Nunca estudou"
	"B"	"N�o completou a 4� s�rie/5� ano do ensino fundamental"
	"C"	"Completou a 4� s�rie/5� ano, mas n�o completou a 8� s�rie/9� ano do ensino fundamental"
	"D"	"Completou a 8� s�rie/9� ano do ensino fundamental, mas n�o completou o Ensino M�dio"
	"E"	"Completou o Ensino M�dio, mas n�o completou a Faculdade"
	"F"	"Completou a Faculdade, mas n�o completou a P�s-gradua��o"
	"G"	"Completou a P�s-gradua��o"
	"H"	"N�o sei"
/Q002	 	 
	"A"	"Nunca estudou"
	"B"	"N�o completou a 4� s�rie/5� ano do ensino fundamental"
	"C"	"Completou a 4� s�rie/5� ano, mas n�o completou a 8� s�rie/9� ano do ensino fundamental"
	"D"	"Completou a 8� s�rie/9� ano do ensino fundamental, mas n�o completou o Ensino M�dio"
	"E"	"Completou o Ensino M�dio, mas n�o completou a Faculdade"
	"F"	"Completou a Faculdade, mas n�o completou a P�s-gradua��o"
	"G"	"Completou a P�s-gradua��o"
	"H"	"N�o sei"
/Q003	 	 
	"A"	"Grupo 1 (Verificar a defini��o no dicion�rio de dados)"
	"B"	"Grupo 2 (Verificar a defini��o no dicion�rio de dados)"
	"C"	"Grupo 3 (Verificar a defini��o no dicion�rio de dados)"
	"D"	"Grupo 4 (Verificar a defini��o no dicion�rio de dados)"
	"E"	"Grupo 5 (Verificar a defini��o no dicion�rio de dados)"
	"F"	"N�o Sei"
/Q004	 	 
	"A"	"Grupo 1 (Verificar a defini��o no dicion�rio de dados)"
	"B"	"Grupo 2 (Verificar a defini��o no dicion�rio de dados)"
	"C"	"Grupo 3 (Verificar a defini��o no dicion�rio de dados)"
	"D"	"Grupo 4 (Verificar a defini��o no dicion�rio de dados)"
	"E"	"Grupo 5 (Verificar a defini��o no dicion�rio de dados)"
	"F"	"N�o Sei"
/Q005	 	 
	1	"1"
	2	"2"
	3	"3"
	4	"4"
	5	"5"
	6	"6"
	7	"7"
	8	"8"
	9	"9"
	10	"10"
	11	"11"
	12	"12"
	13	"13"
	14	"14"
	15	"15"
	16	"16"
	17	"17"
	18	"18"
	19	"19"
	20	"20"
/Q006	 	 
	"A"	"Nenhuma renda"
	"B"	"At� R$ 998,00"
	"C"	"De R$ 998,01 at� R$ 1.497,00"
	"D"	"De R$ 1.497,01 at� R$ 1.996,00"
	"E"	"De R$ 1.996,01 at� R$ 2.495,00"
	"F"	"De R$ 2.495,01 at� R$ 2.994,00"
	"G"	"De R$ 2.994,01 at� R$ 3.992,00"
	"H"	"De R$ 3.992,01 at� R$ 4.990,00"
	"I"	"De R$ 4.990,01 at� R$ 5.988,00"
	"J"	"De R$ 5.988,01 at� R$ 6.986,00"
	"K"	"De R$ 6.986,01 at� R$ 7.984,00"
	"L"	"De R$ 7.984,01 at� R$ 8.982,00"
	"M"	"De R$ 8.982,01 at� R$ 9.980,00"
	"N"	"De R$ 9.980,01 at� R$ 11.976,00"
	"O"	"11.976,01 at� R$ 14.970,00"
	"P"	"14.970,01 at� R$ 19.960,00"
	"Q"	"Mais de R$ 19.960,00"
/Q007	 	 
	"A"	"N�o"
	"B"	"Sim, um ou dois dias por semana"
	"C"	"Sim, tr�s ou quatro dias por semana"
	"D"	"Sim, pelo menos cinco dias por semana"
/Q008	 	 
	"A"	"N�o"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q009	 	 
	"A"	"N�o"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q010	 	 
	"A"	"N�o"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q011	 	 
	"A"	"N�o"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q012	 	 
	"A"	"N�o"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q013	 	 
	"A"	"N�o"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q014	 	 
	"A"	"N�o"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q015	 	 
	"A"	"N�o"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q016	 	 
	"A"	"N�o"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q017	 	 
	"A"	"N�o"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q018	 	 
	"A"	"N�o"
	"B"	"Sim"
/Q019	 	 
	"A"	"N�o"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q020	 	 
	"A"	"N�o"
	"B"	"Sim"
/Q021	 	 
	"A"	"N�o"
	"B"	"Sim"
/Q022	 	 
	"A"	"N�o"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q023	 	
	"A"	"N�o"
	"B"	"Sim"
/Q024		
	"A"	"N�o"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, tr�s"
	"E"	"Sim, quatro ou mais"
/Q025		
	"A"	"N�o"
	"B"	"Sim".
