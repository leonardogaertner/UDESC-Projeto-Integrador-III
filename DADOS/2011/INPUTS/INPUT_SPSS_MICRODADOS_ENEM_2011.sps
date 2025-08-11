/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2011                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2011     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2011.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_2011.csv" /*local do arquivo*/
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
  TP_ST_CONCLUSAO F1.0
  TP_ANO_CONCLUIU F2.0
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
  NO_ENTIDADE_CERTIFICACAO A150
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
  Q001 A2
  Q002 A1
  Q003 A1
  Q004 A1
  Q005 A2
  Q006 A1
  Q007 A1
  Q008 A1
  Q009 F1.0
  Q010 F1.0
  Q011 F1.0
  Q012 F1.0
  Q013 F1.0
  Q014 A1
  Q015 A1
  Q016 A1
  Q017 A1
  Q018 A1
  Q019 A1
  Q020 A1
  Q021 A1
  Q022 A1
  Q023 A2
  Q024 F1.0
  Q025 F1.0
  Q026 F1.0
  Q027 F1.0
  Q028 A1
  Q029 A1
  Q030 A2
  Q031 A1
  Q032 A1
  Q033 A1
  Q034 A1
  Q035 A1
  Q036 A1
  Q037 A1
  Q038 A1
  Q039 A1
  Q040 A1
  Q041 A1
  Q042 A1
  Q043 A1
  Q044 F1.0
  Q045 F1.0
  Q046 F1.0
  Q047 F1.0
  Q048 F1.0
  Q049 F1.0
  Q050 F1.0
  Q051 F1.0
  Q052 A1
  Q053 F1.0
  Q054 F1.0
  Q055 F1.0
  Q056 F1.0
  Q057 A1
  Q058 A1
  Q059 A1
  Q060 A1
  Q061 A1
  Q062 A1
  Q063 A1
  Q064 A1
  Q065 A1
  Q066 A1
  Q067 A1
  Q068 A1
  Q069 A1
  Q070 A1
  Q071 A1
  Q072 A1
  Q073 A1
  Q074 A1
  Q075 A1.
CACHE.
EXECUTE.
DATASET NAME ENEM_11 WINDOW=FRONT.

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
TP_SEXO	              			 "Sexo"
TP_ST_CONCLUSAO			"Situa��o de conclus�o do Ensino M�dio"
TP_ANO_CONCLUIU			"Ano de Conclus�o do Ensino M�dio"
TP_ESCOLA			"Tipo de escola do Ensino M�dio"
TP_ENSINO			"Tipo de institui��o que concluiu ou concluir� o Ensino M�dio"
TP_ESTADO_CIVIL			"Estado Civil"
TP_COR_RACA			"Cor/ra�a"
IN_CERTIFICADO			"Indicador de solicita��o de certifica��o no Ensino M�dio"
NO_ENTIDADE_CERTIFICACAO		"Nome da Entidade Certificadora"
CO_UF_ENTIDADE_CERTIFICACAO		"'C�digo da Unidade da Federa��o da Entidade Certificadora"
SG_UF_ENTIDADE_CERTIFICACAO		"C�digo da Unidade da Federa��o da Entidade Certificadora"
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
Q001    				"Quantas pessoas moram com voc�?"
Q002     				"At� quando seu pai estudou?"
Q003     				"At� quando sua m�e estudou?"
Q004     				"Somando a sua renda com a renda das pessoas que moram com voc�, quanto �, aproximadamente, a renda familiar mensal?" 
Q005     				"Qual a sua renda mensal, aproximadamente?"
Q006     				"A casa onde voc� mora �?"
Q007     				"Sua casa est� localizada em?"
Q008     				"Voc� exerce ou j� exerceu atividade remunerada?"
Q009     				"Grau de import�ncia quanto a sua decis�o de trabalhar para ajudar meus pais nas despesas com a casa"
Q010     				"Grau de import�ncia quanto a sua decis�o de trabalhar para sustentar minha fam�lia"
Q011     				"Grau de import�ncia quanto a sua decis�o de trabalhar para ser independente (ganhar meu pr�prio dinheiro)"
Q012    				"Grau de import�ncia quanto a sua decis�o de trabalhar para adquirir experi�ncia"
Q013    				"Grau de import�ncia quanto a sua decis�o de trabalhar para custear/ pagar meus estudos"
Q014    				"Voc� fez algum curso preparat�rio para o trabalho que realiza ou realizou?"
Q015    				"Frequentou ou frequenta Curso profissionalizante"
Q016     				"Frequentou ou frequenta Curso preparat�rio para vestibular"
Q017     				"Frequentou ou frequenta Curso superior"
Q018    				"Frequentou ou frequenta Curso de l�ngua estrangeira"
Q019    				"Frequentou ou frequenta Curso de computa��o ou inform�tica"
Q020    				"Frequentou ou frequenta Curso preparat�rio para outros concursos p�blicos"
Q021    				"Frequentou ou frequenta Outro curso"
Q022    				"Quantas horas semanais voc� trabalha?"
Q023    				"Com que idade voc� come�ou a trabalhar?"
Q024    				"Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Testar meus conhecimentos"
Q025     				"Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Prosseguir os estudos no Ensino Superior"
Q026     				"Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Obter a certifica��o do Ensino M�dio ou acelerar meus estudos"
Q027     				"Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Conseguir uma bolsa de estudos (ProUni, outras)"
Q028     				"Quantos anos voc� levou para concluir o Ensino Fundamental?"
Q029     				"Voc� deixou de estudar durante o Ensino Fundamental?"
Q030    				"Em que tipo de escola voc� cursou o Ensino Fundamental?"
Q031    				"Quantos anos voc� levou para concluir o Ensino M�dio?"
Q032     				"Voc� deixou de estudar durante o Ensino M�dio?"
Q033     				"Em que tipo de escola voc� cursou o Ensino M�dio?"
Q034     				"Voc� cursa ou j� cursou a Educa��o de Jovens e Adultos � EJA?"
Q035    				"Como � ou era o curso de EJA que voc� frequenta ou frequentou?"
Q036     				"Deixou de cursar EJA por causa de Trabalho/ falta de tempo para estudar."
Q037    				"Deixou de cursar EJA porque Estudava no curso da empresa e foi interrompido."
Q038    				"Deixou de cursar EJA por Problemas de sa�de ou acidentes comigo ou familiares."
Q039    				"Deixou de cursar EJA por Mudan�a de estado, munic�pio ou cidade."
Q040     				"Deixou de cursar EJA por motivos pessoais: casamento / filhos."
Q041     				"Deixou de cursar EJA porque N�o tinha interesse / desisti."
Q042     				"Deixou de cursar EJA porque Senti-me discriminado(a)."
Q043    				"Voc� j� frequentou alguma vez escola regular?"
Q044     				"Inexist�ncia de vaga em escola p�blica influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular"
Q045     				"Aus�ncia de escola perto de casa influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular"
Q046     				"Falta de interesse em estudar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular"
Q047     				"Trabalho: falta de tempo para estudar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular"
Q048    				 "Motivos pessoais: casamento / filhos influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular"
Q049     				"Falta de apoio familiar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular"
Q050     				"Problemas de sa�de ou acidente comigo ou familiares influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular"
Q051     				"Discrimina��o/ preconceitos de ra�a, sexo, cor, idade ou socioecon�mico influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular"
Q052     				"Quantos anos de idade voc� tinha quando deixou de frequentar a escola regular?"
Q053     				"Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Conseguir um emprego"
Q054     				"Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Conseguir um emprego melhor"
Q055     				"Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Progredir no meu emprego atual"
Q056     				"Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Continuar os estudos no Ensino Superior"
Q057     				"Caso ingresse no Ensino Superior privado, pretende recorrer ao FIES (Programa de Financiamento Estudantil) para custeio das mensalidades"
Q058     				"Caso ingresse no Ensino Superior privado pretende recorrer ao Pr�-Uni (Programa Universidade para Todos) para custeio das mensalidades"
Q059     				"Caso ingresse no Ensino Superior privado pretende recorrer a Bolsa de estudos da pr�pria Institui��o de Ensino Superior para custeio das mensalidades"
Q060     				"Caso ingresse no Ensino Superior privado pretende recorrer a Bolsa de estudos da empresa onde trabalha para custeio das mensalidades"
Q061    				 "Voc� tem TV em cores em sua casa?"
Q062    				"Voc� tem Videocassete e/ou DVD em sua casa?"
Q063    				 "Voc� tem R�dio em sua casa?"
Q064    				 "Voc� tem Microcomputador em sua casa?"
Q065     				"Voc� tem Autom�vel em sua casa?"
Q066     				"Voc� tem M�quina de lavar roupa em sua casa?"
Q067     				"Voc� tem Geladeira em sua casa?"
Q068     				"Voc� tem Freezer (aparelho independente ou parte da geladeira duplex) em sua casa?"
Q069    				 "Voc� tem Telefone fixo em sua casa?"
Q070     				"Voc� tem Telefone celular em sua casa?"
Q071    				 "Voc� tem Acesso � Internet em sua casa?"
Q072     				"Voc� tem TV por assinatura em sua casa?"
Q073     				"Voc� tem Aspirador de p� em sua casa?"
Q074     				"Voc� tem Empregada mensalista em sua casa?"
Q075     				"Voc� tem Banheiro em sua casa?".

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
/IN_CERTIFICADO
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
/TP_ST_CONCLUSAO	 	
	1	"J� conclu� o Ensino M�dio"
	2	"Estou cursando e concluirei o Ensino M�dio em 2011"
	3	"Estou cursando e concluirei o Ensino M�dio ap�s 2011"
	4	"N�o conclu� e n�o estou cursando o Ensino M�dio"
/TP_ANO_CONCLUIU
	0	"N�o informado"
	1	"2010"
	2	"2009"
	3	"2008"
	4	"2007"
	5	"2006"
	6	"2005"
	7	"2004"
	8	"2003"
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
	121 	"Azul"
	122 	"Amarela"
	123 	"Branca"
	124 	"Rosa"
/CO_PROVA_CH
	117 	"Azul"
	118 	"Amarela"
	119 	"Branca"
	120 	"Rosa"
/CO_PROVA_LC
	125 	"Amarela"
	126 	"Cinza"
	127 	"Azul"
	128 	"Rosa"	
/CO_PROVA_MT
	129 	"Amarela"
	130 	"Cinza"
	131 	"Azul"
	132 	"Rosa"
 /TP_LINGUA	 	
	0	"Ingl�s"
	1	"Espanhol"
/TP_STATUS_REDACAO	 	 
	"B" 	"Em Branco"
	"F" 	"Faltoso"
	"N" 	"Anulada"
	"P" 	"Presente"
/Q001
	1  	 "1"
	2  	 "2"
	3  	 "3"
	4  	 "4"
	5  	 "5"
	6  	 "6"
	7  	 "7"
	8  	 "8"
	9  	 "9"
	10 	 "10"
	11 	 "11"
	12 	 "12"
	13 	 "13"
	14 	 "14"
	15 	 "15"
	16 	 "16"
	17 	 "17"
	18 	 "18"
	19 	 "19"
	20 	 "20 ou mais"
/Q002
	"A" 	 "N�o estudou;"
	"B" 	 "Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio);"
	"C" 	 "Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio);"
	"D" 	 "Ensino M�dio (antigo 2� grau) incompleto;"
	"E" 	 "Ensino M�dio (antigo 2� grau);"
	"F" 	 "Ensino Superior incompleto;"
	"G" 	 "Ensino Superior;"
	"H" 	 "P�s-gradua��o;"
	"I" 	 "N�o sei;"
/Q003
	"A" 	 "N�o estudou;"
	"B" 	 "Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio);"
	"C" 	 "Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio);"
	"D" 	 "Ensino M�dio (antigo 2� grau) incompleto;"
	"E" 	 "Ensino M�dio (antigo 2� grau);"
	"F" 	 "Ensino Superior incompleto;"
	"G" 	 "Ensino Superior;"
	"H" 	 "P�s-gradua��o;"
	"I" 	 "N�o sei;"
/Q004
	"A"		 "Nenhuma renda;"
	"B"		 "At� um sal�rio m�nimo (at� R$545,00);"
	"C"		 "Entre 1 e 1,5 sal�rios (entre R$545,00 at� R$817,50);"
	"D"		 "Entre 1,5 e 2 sal�rios (entre R$817,50 at� R$1.090,00);"
	"E"		 "Entre 2 e 5 sal�rios (entre R$1.090,00 at� R$2.725,00);"
	"F"		 "Entre 5 e 7 sal�rios (entre R$2.725,00 at� R$3.815,00);"
	"G"		 "Entre 7 e 10 sal�rios (entre R$3.815,00 at� R$5.450,00);"
	"H"		 "Entre 10 e 12 sal�rios (entre R$5.450,00 at� R$ 6.540,00);"
	"I"		 "Entre 12 e 15 sal�rios (entre R$6.540,00 at� R$8.175,00);"
	"J"		 "Entre 15 e 30 sal�rios (entre R$8.175,00 at� R$ 16.350,00);"
	"K"		 "Acima de 30 sal�rios (mais de R$16.350,00);"
/Q005
	"A"		 "Nenhuma renda;"
	"B"		 "At� um sal�rio m�nimo (at� R$545,00);"
	"C"		 "Entre 1 e 1,5 sal�rios (entre R$545,00 at� R$817,50);"
	"D"		 "Entre 1,5 e 2 sal�rios (entre R$817,50 at� R$1.090,00);"
	"E"		 "Entre 2 e 5 sal�rios (entre R$1.090,00 at� R$2.725,00);"
	"F"		 "Entre 5 e 7 sal�rios (entre R$2.725,00 at� R$3.815,00);"
	"G"		 "Entre 7 e 10 sal�rios (entre R$3.815,00 at� R$5.450,00);"
	"H"		 "Entre 10 e 12 sal�rios (entre R$5.450,00 at� R$ 6.540,00);"
	"I"		 "Entre 12 e 15 sal�rios (entre R$6.540,00 at� R$8.175,00);"
	"J"		 "Entre 15 e 30 sal�rios (entre R$8.175,00 at� R$ 16.350,00);"
	"K"		 "Acima de 30 sal�rios (mais de R$16.350,00);"
/Q006
	"A"		 "Pr�pria e quitada"
	"B"		 "Pr�pria e em pagamento (financiada)"
	"C"		 "Alugada"
	"D"		 "Cedida"
/Q007
	"A"		 "Zona rural."
	"B"		 "Zona urbana"
	"C"		 "Comunidade ind�gena."
	"D"		 "Comunidade quilombola."
/Q008
	"A"		"Sim"
	"B"		"N�o"
/Q014
	"A"		"Sim"
	"B"		"N�o"
/Q015
	"A"		"Sim"
	"B"		"N�o"
/Q016
	"A"		"Sim"
	"B"		"N�o"
/Q017
	"A"		"Sim"
	"B"		"N�o"
/Q018
	"A"		"Sim"
	"B"		"N�o"
/Q019
	"A"		"Sim"
	"B"		"N�o"
/Q020
	"A"		"Sim"
	"B"		"N�o"
/Q021
	"A"		"Sim"
	"B"		"N�o"
/Q022
	"A"		"Sem jornada fixa, at� 10 horas semanais."
	"B"		"De 11 a 20 horas semanais."
	"C"		"De 21 a 30 horas semanais."
	"D"		"De 31 a 40 horas semanais."
	"E"		"Mais de 40 horas semanais"
/Q023
	13		 "Menos de 14"
	14		 "14"
	15		 "15"
	16		 "16"
	17		 "17"
	18		 "18"
	19		 "19"
	20		 "20"
	21		 "21"
	22		 "22"
	23		 "23"
	24		 "24"
	25		 "25 ou mais"
/Q028
	"A"		 "Menos de 8 anos."
	"B"		 "8 anos."
	"C"		 "9 anos."
	"D"		 "10 anos."
	"E"		 "11 anos."
	"F"		 "Mais de 11 anos."
	"G"		 "N�o conclui."
/Q029
	"A"		 "N�o."
	"B"		 "Sim, por um ano."
	"C"		 "Sim, por 2 anos."
	"D"		 "Sim, por tr�s anos."
	"E"		 "Sim, por 4 anos ou mais."
/Q030
	"A"		 "Somente em escola p�blica;"
	"B"		 "Maior parte em escola p�blica;"
	"C"		 "Somente em escola particular;"
	"D"		 "Maior parte em escola particular;"
	"E"		 "Somente em escola ind�gena;"
	"F"		 "Maior parte em escola ind�gena;"
	"G"		 "Somente em escola situada em comunidade quilombola;"
	"H"		 "Maior parte em escola situada em comunidade quilombola;"
	"I"		 "N�o frequentei a escola."
/Q031
	"A"		 "Menos de 3 anos"
	"B"		 "3 anos"
	"C"		 "4 anos"
	"D"		 "5 anos"
	"E"		 "6 anos ou mais"
	"F"		 "N�o conclui"
/Q032
	"A"		 "N�o."
	"B"		 "Sim, por um ano."
	"C"		 "Sim, por 2 anos."
	"D"		 "Sim, por tr�s anos."
	"E"		 "Sim, por 4 anos ou mais."
/Q033
	"A"		 "Somente em escola p�blica;"
	"B"		 "Maior parte em escola p�blica;"
	"C"		 "Somente em escola particular;"
	"D"		 "Maior parte em escola particular;"
	"E"		 "Somente em escola ind�gena;"
	"F"		 "Maior parte em escola ind�gena;"
	"G"		 "Somente em escola situada em comunidade quilombola;"
	"H"		 "Maior parte em escola situada em comunidade quilombola;"
	"I"		 "N�o frequentei a escola."
/Q034
	"A"		 "Sim"
	"B"		 "N�o"
/Q035
	"A"		 "Curso presencial em escola p�blica."
	"B"		 "Curso presencial em escola privada."
	"C"		 "Curso presencial na empresa em que trabalha, institui��o filantr�pica ou religiosa."
	"D"		 "Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas)."
	"E"		 "Curso semi-presencial em escola p�blica."
	"F"		 "Curso semi-presencial em escola privada."
/Q036
	"A"		 "Sim"
	"B"		 "N�o"
/Q037
	"A"		 "Sim"
	"B"		 "N�o"
/Q038
	"A"		 "Sim"
	"B"		 "N�o"
/Q039
	"A"		 "Sim"
	"B"		 "N�o"
/Q040
	"A"		 "Sim"
	"B"		 "N�o"
/Q041
	"A"		 "Sim"
	"B"		 "N�o"
/Q042
	"A"		 "Sim"
	"B"		 "N�o"
/Q043
	"A"		 "Sim"
	"B"		 "N�o"
/Q052
	"A"		 "Menos de 10 anos."
	"B"		 "Entre 10 e 14 anos."
	"C"		 "Entre 15 e 18 anos."
	"D"		 "Entre 19 e 24 anos."
	"E"		 "Entre 25 e 30 anos."
	"F"		 "Mais de 30 anos."
	"G"		 "N�o deixei de frequentar."
/Q057
	"A"		 "Sim"
	"B"		 "N�o"
/Q058
	"A"		 "Sim"
	"B"		 "N�o"
/Q059
	"A"		 "Sim"
	"B"		 "N�o"
/Q060
	"A"		 "Sim"
	"B"		 "N�o"
/Q060
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q062
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q063
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q064
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q065
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q066
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q067
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q068
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q069
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q070
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q071
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q072
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q073
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q074
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho"
/Q075
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "N�o tenho".