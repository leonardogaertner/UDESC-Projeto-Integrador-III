/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2012                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2012     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2012.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_2012.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
  NU_INSCRICAO F21.0
  NU_ANO F4.0
  TP_FAIXA_ETARIA F2.0
  TP_SEXO F1.0
  TP_ESTADO_CIVIL F1.0
  TP_COR_RACA F1.0
  TP_ST_CONCLUSAO F1.0
  TP_ANO_CONCLUIU F4.0
  TP_ESCOLA F1.0
  TP_ENSINO F1.0
  CO_MUNICIPIO_ESC F7.0
  NO_MUNICIPIO_ESC A32
  CO_UF_ESC F2.0
  SG_UF_ESC A2
  TP_DEPENDENCIA_ADM_ESC F1.0
  TP_LOCALIZACAO_ESC F1.0
  TP_SIT_FUNC_ESC F1.0
  IN_CERTIFICADO F1.0
  NO_ENTIDADE_CERTIFICACAO A90
  CO_UF_ENTIDADE_CERTIFICACAO F2.0
  SG_UF_ENTIDADE_CERTIFICACAO A2
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
  TP_STATUS_REDACAO A1
  NU_NOTA_COMP1 F3.0
  NU_NOTA_COMP2 F3.0
  NU_NOTA_COMP3 F3.0
  NU_NOTA_COMP4 F3.0
  NU_NOTA_COMP5 F3.0
  NU_NOTA_REDACAO F4.0
Q001	A1
Q002	A1
Q003	A1
Q004	F1.0
Q005	A1
Q006	A1
Q007	A1
Q008	A1
Q009	A1
Q010	A1
Q011	A1
Q012	A1
Q013	A1
Q014	A1
Q015	A1
Q016	A1
Q017	A1
Q018	A1
Q019	A1
Q020	A1
Q021	A1
Q022	A1
Q023	A1
Q024	A1
Q025	A1
Q026	A1
Q027	A1
Q028	A1
Q029	A1
Q030	A1
Q031	A1
Q032	A1
Q033	A1
Q034	A1
Q035	A1
Q036	A1
Q037	A1
Q038	A1
Q039	A1
Q040	A1
Q041	A1
Q042	A1
Q043	A1
Q044	A1
Q045	A1
Q046	A1
Q047	A1
Q048	A1
Q049	A1
Q050	A1
Q051	A1
Q052	A1
Q053	A1
Q054	A1
Q055	A1
Q056	A1
Q057	A1
Q058	A1
Q059	A1
Q060	A1
Q061	A1
Q062	A1.
CACHE.
EXECUTE.
DATASET NAME ENEM_12 WINDOW=FRONT.


VARIABLE LABELS
NU_INSCRICAO			"N�mero de inscri��o"
NU_ANO	                  		"Ano do Enem"
CO_MUNICIPIO_ESC 			"C�digo Munic�pio Escola"
NO_MUNICIPIO_ESC			"Nome do munic�pio da escola"
CO_UF_ESC			"C�digo da Unidade da Federa��o da escola"
SG_UF_ESC			"Sigla da Unidade da Federa��o da escola"
TP_DEPENDENCIA_ADM_ESC		"Depend�ncia administrativa (Escola)"
TP_LOCALIZACAO_ESC		"Localiza��o (Escola)"
TP_SIT_FUNC_ESC			"Situa��o de funcionamento (Escola)"
TP_FAIXA_ETARIA         		"Faixa Et�ria"
TP_SEXO	              			"Sexo"
TP_ST_CONCLUSAO			"Situa��o de conclus�o do Ensino M�dio"
TP_ANO_CONCLUIU			"Ano de Conclus�o do Ensino M�dio"
TP_ESCOLA			"Tipo de escola do Ensino M�dio"
TP_ENSINO			"Tipo de institui��o que concluiu ou concluir� o Ensino M�dio"
TP_ESTADO_CIVIL			"Estado Civil"
TP_COR_RACA			"Cor/ra�a"
IN_CERTIFICADO			"Indicador de solicita��o de certifica��o no Ensino M�dio"
NO_ENTIDADE_CERTIFICACAO		"Nome da Entidade Certificadora"
CO_UF_ENTIDADE_CERTIFICACAO		"C�digo da Unidade da Federa��o da Entidade Certificadora"
SG_UF_ENTIDADE_CERTIFICACAO		"Sigla da Unidade da Federa��o da Entidade Certificadora"
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
Q001  'At� quando seu pai estudou?'
Q002  'At� quando sua m�e estudou?'
Q003  'Qual � a renda mensal de sua fam�lia? (Some a sua renda com a dos seus familiares.)'
Q004  'Quantas pessoas moram em sua casa (incluindo voc�)? '
Q005  'A resid�ncia de sua fam�lia �? '
Q006  'A resid�ncia de sua fam�lia est� localizada em?'
Q007  'Voc� tem em sua casa? TV em cores'
Q008  'Voc� tem em sua casa? Videocassete e/ou DVD'
Q009  'Voc� tem em sua casa? R�dio'
Q010  'Voc� tem em sua casa? Microcomputador'
Q011  'Voc� tem em sua casa? Autom�vel '
Q012  'Voc� tem em sua casa? M�quina de lavar roupa'
Q013  'Voc� tem em sua casa? Geladeira'
Q014  'Voc� tem em sua casa? Freezer (aparelho independente ou parte da geladeira duplex)'
Q015  'Voc� tem em sua casa? Telefone fixo'
Q016  'Voc� tem em sua casa? Telefone celular'
Q017  'Voc� tem em sua casa? Acesso � Internet'
Q018  'Voc� tem em sua casa? TV por assinatura'
Q019  'Voc� tem em sua casa? Aspirador de p�'
Q020  'Voc� tem em sua casa? Empregada mensalista'
Q021  'Voc� tem em sua casa? Banheiro'
Q022  'Voc� exerce ou j� exerceu atividade remunerada?'
Q023  'Indique os motivos que levaram voc� a participar do ENEM: Testar meus conhecimentos'
Q024  'Indique os motivos que levaram voc� a participar do ENEM: Aumentar a possibilidade de conseguir um emprego'
Q025  'Indique os motivos que levaram voc� a participar do ENEM: Progredir no meu emprego atual'
Q026  'Indique os motivos que levaram voc� a participar do ENEM: Ingressar na Educa��o Superior P�blica'
Q027  'Indique os motivos que levaram voc� a participar do ENEM: Ingressar na Educa��o Superior Privada'
Q028  'Indique os motivos que levaram voc� a participar do ENEM: Conseguir uma bolsa de estudos (ProUni, outras)'
Q029  'Indique os motivos que levaram voc� a participar do ENEM: Participar do Programa de Financiamento Estudantil - FIES'
Q030  'Quantos anos voc� levou para concluir o Ensino Fundamental?'
Q031  'Voc� deixou de estudar durante o Ensino Fundamental?'
Q032  'Em que tipo de escola voc� cursou o Ensino Fundamental?'
Q033  'Quantos anos voc� levou para concluir o Ensino M�dio?'
Q034  'Voc� deixou de estudar durante o Ensino M�dio?'
Q035  'Em que tipo de escola voc� cursou o Ensino M�dio?'
Q036  'Caso voc� ingresse no Ensino Superior privado pretende recorrer aos aux�lios abaixo para custeio das mensalidades? Pr�-Uni (Programa Universidade para Todos)'
Q037  'Caso voc� ingresse no Ensino Superior privado pretende recorrer aos aux�lios abaixo para custeio das mensalidades? Bolsa de estudos da pr�pria Institui��o de Ensino Superior'
Q038  'Caso voc� ingresse no Ensino Superior privado pretende recorrer aos aux�lios abaixo para custeio das mensalidades? Bolsa de estudos da empresa onde trabalho.'
Q039  'Caso voc� ingresse no Ensino Superior privado pretende recorrer aos aux�lios abaixo para custeio das mensalidades?Aux�lio do Programa de Financiamento Estudantil - FIES'
Q040  'Voc� cursa ou j� cursou a Educa��o de Jovens e Adultos � EJA?'
Q041  'Como � ou era o principal curso de EJA que voc� frequenta ou frequentou?'
Q042  'Indique o que levou voc� a deixar de cursar a EJA: Trabalhava, n�o tinha tempo de estudar.'
Q043  'Indique o que levou voc� a deixar de cursar a EJA: Estudava no curso da empresa e foi interrompido.'
Q044  'Indique o que levou voc� a deixar de cursar a EJA: Ocorreram problemas de sa�de ou acidentes comigo ou familiares'
Q045  'Indique o que levou voc� a deixar de cursar a EJA: Mudei de bairro, cidade ou munic�pio.'
Q046  'Indique o que levou voc� a deixar de cursar a EJA: Por motivos pessoais, casamento, filhos, etc.'
Q047  'Indique o que levou voc� a deixar de cursar a EJA: Faltava-me interesse, desisti.'
Q048  'Indique o que levou voc� a deixar de cursar a EJA: Senti-me discriminado(a).'
Q049  'Indique o que levou voc� a deixar de cursar a EJA: Temi/Sofri viol�ncia.'
Q050  'Voc� j� frequentou o ensino regular?'
Q051  'Indique o que levou voc� a deixar de cursar o ensino regular: Falta de vaga em escola p�blica.'
Q052  'Indique o que levou voc� a deixar de cursar o ensino regular: Aus�ncia de escola perto de casa.'
Q053  'Indique o que levou voc� a deixar de cursar o ensino regular: Dificuldades ap�s reprova��o.'
Q054  'Indique o que levou voc� a deixar de cursar o ensino regular: Falta de interesse em estudar.'
Q055  'Indique o que levou voc� a deixar de cursar o ensino regular: Falta de condi��es adequadas na escola.'
Q056  'Indique o que levou voc� a deixar de cursar o ensino regular: Trabalho, falta de tempo para estudar.'
Q057  'Indique o que levou voc� a deixar de cursar o ensino regular: Motivos pessoais, casamento / filhos, etc'
Q058  'Indique o que levou voc� a deixar de cursar o ensino regular: Falta de apoio familiar.'
Q059  'Indique o que levou voc� a deixar de cursar o ensino regular: Problemas de sa�de ou acidente comigo ou familiares.'
Q060  'Indique o que levou voc� a deixar de cursar o ensino regular: Discrimina��o / Preconceitos (sexo, ra�a, idade, classe etc.)'
Q061  'Indique o que levou voc� a deixar de cursar o ensino regular: Medo de sofrer viol�ncia.'
Q062  'Quantos anos voc� tinha quando deixou de frequentar o ensino regular?'.


VALUE LABELS
/TP_FAIXA_ETARIA
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
	0	"Masculino"
	1	"Feminino"
/TP_ST_CONCLUSAO
	1	"J� conclu� o Ensino M�dio"
	2	"Estou cursando e concluirei o Ensino M�dio em 2012"
	3	"Estou cursando e concluirei o Ensino M�dio ap�s 2012"
	4	"N�o conclu� e n�o estou cursando o Ensino M�dio"
/TP_ESCOLA
	1	"P�blica"
	2	"Privada"
/TP_ENSINO
	1	"Ensino Regular"
	2	"Ensino de Jovens e Adultos"
	4	"Ensino Especial"
/TP_ESTADO_CIVIL
	0	"Solteiro(a)"
	1	"Casado(a)/Mora com um(a) companheiro(a)"
	2	"Divorciado(a)/Desquitado(a)/Separado(a)"
	3	"Vi�vo(a)"
/TP_COR_RACA
	0	"N�o declarado"
	1	"Branca"
	2	"Preta"
	3	"Parda"
	4	"Amarela"
	5	"Ind�gena "
/IN_CERTIFICADO
	1	"Sim"
	0	"N�o"
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
	141 'AZUL' 
	142 'AMARELO' 
	143 'BRANCO'
	144 'ROSA' 
	153 'BRANCO (LEDOR)'
/CO_PROVA_CH
	137 'AZUL' 
	138 'AMARELO' 
	139 'BRANCO' 
	140 'ROSA' 
	154 'BRANCO (LEDOR)'
/CO_PROVA_LC
	145 'AMARELO' 
	146 'CINZA' 
	147 'AZUL' 
	148 'ROSA' 
	155 'CINZA (LEDOR)'
/CO_PROVA_MT
	149 'AMARELO' 
	150 'CINZA' 
	151 'AZUL' 
	152 'ROSA' 
	156 'CINZA (LEDOR)'
 /TP_LINGUA
	0	"Ingl�s"
	1	"Espanhol"
/TP_STATUS_REDACAO
	'P' 'Presente' 
	'B' 'Em Branco' 
	'T' 'Fuga ao Tema' 
	'N' 'Anulada' 
	'I'  'Texto Insuficiente' 
	'A' 'N�o atende ao tipo textual' 
	'H' 'Anulada � Fere Direitos Humanos' 
	'C' 'C�pia de texto motivador'
	'F' 'Ausente'
/Q001
	"A"	"N�o estudou"
	"B"	"Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)"
	"C"	"Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)"
	"D"	"Ensino M�dio (antigo 2� grau) incompleto"
	"E"	"Ensino M�dio (antigo 2� grau)"
	"F"	"Ensino Superior incompleto"
	"G"	"Ensino Superior"
	"H"	"P�s-gradua��o"
	"I"	"N�o sei"
/Q002
	"A"	"N�o estudou"
	"B"	"Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio) "
	"C"	"Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)"
	"D"	"Ensino M�dio (antigo 2� grau) incompleto"
	"E"	"Ensino M�dio (antigo 2� grau)"
	"F"	"Ensino Superior incompleto"
	"G"	"Ensino Superior"
	"H"	"P�s-gradua��o"
	"I"	"N�o sei"
/Q003
	'A' 'Nenhuma renda;'
	'B' 'At� um sal�rio m�nimo (at� R$622,00);'
	'C' 'Mais de 1 at� 1,5 (de R$ 622,01 at� R$ 933,00).'
	'D' 'Mais de 1,5 at� 2 (de R$ 933,01 at� R$ 1244,00).'
	'E' 'Mais de 2 at� 2,5 (de R$ 1244,01 at� R$ 1555,00).'
	'F' 'Mais de 2,5 at� 3 (de R$ 1555,01 at� R$ 1866,00).'
	'G' 'Mais de 3 at� 4 (de R$ 1866,01 at� R$ 2488,00).'
	'H' 'Mais de 4 at� 5 (de R$ 2488,01 at� R$ 3110,00).'
	'I' 'Mais de 5 at� 6 (de R$ 3110,01 at� R$ 3732,00).'
	'J' 'Mais de 6 at� 7 (de R$ 3732,01 at� R$ 4354,00).'
	'K' 'Mais de 7 at� 8 (de R$ 4354,01 at� R$ 4976,00).'
	'L' 'Mais de 8 at� 9 (de R$ 4976,01 at� R$ 5598,00).'
	'M' 'Mais de 9 at� 10 (de R$ 5598,01 at� R$ 6220,00).'
	'N' 'Mais de 10 at� 12 (de R$ 6220,01 at� R$ 7464,00).'
	'O' 'Mais de 12 at� 15 (de R$ 7464,01 at� R$ 9330,00).'
	'P' 'Mais de 15 at� 20 (de R$ 9330,01 at� R$ 12440,00).'
	'Q' 'Acima de 20 sal�rios (mais de R$12440,00);'
/Q004
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
	20	"20 ou mais"
/Q005
	"A"	"Pr�pria e quitada"
	"B"	"Pr�pria e em pagamento (financiada)"
	"C"	"Alugada"
	"D"	"Cedida"
	"E"	"Outra situa��o (loteamento n�o regularizado, ocupa��o etc.)"
/Q006
	"A"	"Zona rural"
	"B"	"Zona urbana"
	"C"	"Comunidade ind�gena"
	"D"	"Comunidade quilombola"
/Q007
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q008
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q009
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q010
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q011
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q012
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q013
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q014
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q015
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q016
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q017
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q018
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q019
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q020
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q021
	"A"	"1"
	"B"	"2"
	"C"	"3 ou mais"
	"D"	"N�o tenho"
/Q022
	"A"	"Sim, estou trabalhando"
	"B"	"Sim, j� trabalhei, mas n�o estou trabalhando"
	"C"	"N�o, nunca trabalhei"
/Q030
	"A"	"Menos de 8 anos"
	"B"	"8 anos"
	"C"	"9 anos"
	"D"	"10 anos"
	"E"	"11 anos"
	"F"	"Mais de 11 anos"
	"G"	"N�o conclu�"
	"H"	"N�o cursei"
/Q031
	"A"	"N�o"
	"B"	"Sim, por um ano"
	"C"	"Sim, por dois anos"
	"D"	"Sim, por tr�s anos"
	"E"	"Sim, por quatro anos ou mais"
/Q032
	"A"	"Somente em escola p�blica"
	"B"	"Maior parte em escola p�blica"
	"C"	"Somente em escola particular"
	"D"	"Maior parte em escola particular"
	"E"	"Somente em escola ind�gena"
	"F"	"Maior parte em escola ind�gena"
	"G"	"Somente em escola situada em comunidade quilombola"
	"H"	"Maior parte em escola situada em comunidade quilombola"
/Q033
	"A"	"Menos de 3 anos"
	"B"	"3 anos"
	"C"	"4 anos"
	"D"	"5 anos"
	"E"	"6 anos ou mais"
	"F"	"N�o conclu�"
	"G"	"N�o cursei"
/Q034
	"A"	"N�o"
	"B"	"Sim, por um ano"
	"C"	"Sim, por dois anos"
	"D"	"Sim, por tr�s anos"
	"E"	"Sim, por quatro anos ou mais"
/Q035
	"A"	"Somente em escola p�blica"
	"B"	"Maior parte em escola p�blica"
	"C"	"Somente em escola particular"
	"D"	"Maior parte em escola particular"
	"E"	"Somente em escola ind�gena"
	"F"	"Maior parte em escola ind�gena"
	"G"	"Somente em escola situada em comunidade quilombola"
	"H"	"Maior parte em escola situada em comunidade quilombola"
/Q036
	"A"	"Sim"
	"B"	"N�o"
/Q037
	"A"	"Sim"
	"B"	"N�o"
/Q038
	"A"	"Sim"
	"B"	"N�o"
/Q039
	"A"	"Sim"
	"B"	"N�o"
/Q040
	"A" 	"Sim"
	"B"	"N�o"
/Q041
	"A" 	"Curso presencial em escola p�blica."
	"B" 	"Curso presencial em escola privada."
	"C" 	"Curso presencial na empresa em que trabalhei, institui��o filantr�pica ou religiosa."
	"D" 	"Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas)."
	"E" 	"Curso semi-presencial em escola p�blica."
	"F" 	"Curso semi-presencial em escola privada."
/Q042
	'A' 	"Sim"
	'B' 	"N�o"
/Q043
	'A' 	"Sim"
	'B' 	"N�o"
/Q044
	'A' 	"Sim"
	'B' 	"N�o"
/Q045
	'A' 	"Sim"
	'B' 	"N�o"
/Q046
	"A" 	"Sim"
	"B" 	"N�o"
/Q047
	"A"	"Sim"
	"B"	"N�o"
/Q048
	"A"	"Sim"
	"B"	"N�o"
/Q049
	"A"	"Sim"
	"B"	"N�o"
/Q050
	"A"	"Sim"
	"B"	"N�o"
/Q051
	"A"	"Sim"
	"B"	"N�o"
/Q052
	"A"	"Sim"
	"B"	"N�o"
/Q053
	"A"	"Sim"
	"B"	"N�o"
/Q054
	"A"	"Sim"
	"B"	"N�o"
/Q055
	"A"	"Sim"
	"B"	"N�o"
/Q056
	"A"	"Sim"
	"B"	"N�o"
/Q057
	"A"	"Sim"
	"B"	"N�o"
/Q058
	"A"	"Sim"
	"B"	"N�o"
/Q059
	"A"	"Sim"
	"B"	"N�o"
/Q060
	"A"	"Sim"
	"B"	"N�o"
/Q061
	"A"	"Sim"
	"B"	"N�o"
/Q062
	"A"	"Menos de 10 anos"
	"B"	"Entre 10 e 14 anos"
	"C"	"Entre 15 e 18 anos"
	"D"	"Entre 19 e 24 anos"
	"E"	"Entre 25 e 30 anos"
	"F"	"Mais de 30 anos"
	"G"	"N�o deixei de frequentar".

CACHE.
EXECUTE.

.