/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2011.csv no diretório C:\ do computador.	                  */
/*							 */ 
/*							 */
/* Para a leitura dos microdados é necessário a seleção do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATENÇÃO                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	                    */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir                */
/* os dados sem os rótulos basta importar diretamente no SPSS.		  */
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
NU_INSCRICAO			"Número de inscrição"
NU_ANO	                  		"Ano do Enem"
CO_MUNICIPIO_ESC 			"Código Município Escola"
NO_MUNICIPIO_ESC			"Nome do município da escola"
CO_UF_ESC			"Código da Unidade da Federação da escola"
SG_UF_ESC			"Sigla da Unidade da Federação da escola"
TP_DEPENDENCIA_ADM_ESC		"Dependência administrativa (Escola)"
TP_LOCALIZACAO_ESC		"Localização (Escola)"
TP_SIT_FUNC_ESC			"Situação de funcionamento (Escola)"
TP_FAIXA_ETARIA         		"Faixa Etária"
TP_SEXO	              			 "Sexo"
TP_ST_CONCLUSAO			"Situação de conclusão do Ensino Médio"
TP_ANO_CONCLUIU			"Ano de Conclusão do Ensino Médio"
TP_ESCOLA			"Tipo de escola do Ensino Médio"
TP_ENSINO			"Tipo de instituição que concluiu ou concluirá o Ensino Médio"
TP_ESTADO_CIVIL			"Estado Civil"
TP_COR_RACA			"Cor/raça"
IN_CERTIFICADO			"Indicador de solicitação de certificação no Ensino Médio"
NO_ENTIDADE_CERTIFICACAO		"Nome da Entidade Certificadora"
CO_UF_ENTIDADE_CERTIFICACAO		"'Código da Unidade da Federação da Entidade Certificadora"
SG_UF_ENTIDADE_CERTIFICACAO		"Código da Unidade da Federação da Entidade Certificadora"
CO_MUNICIPIO_PROVA		"Código do município da aplicação da prova"
NO_MUNICIPIO_PROVA		"Nome do município da aplicação da prova"
CO_UF_PROVA			"Código da Unidade da Federação da aplicação da prova"
SG_UF_PROVA  			"Sigla da Unidade da Federação da aplicação da prova"
TP_PRESENCA_CN			"Presença na prova objetiva de Ciências da Natureza"
TP_PRESENCA_CH			"Presença na prova objetiva de Ciências Humanas"
TP_PRESENCA_LC			"Presença na prova objetiva de Linguagens e Códigos"
TP_PRESENCA_MT			"Presença na prova objetiva de Matemática"
CO_PROVA_CN			"Código do tipo de prova de Ciências da Natureza"
CO_PROVA_CH			"Código do tipo de prova de Ciências Humanas"
CO_PROVA_LC			"Código do tipo de prova de Linguagens e Códigos"
CO_PROVA_MT			"Código do tipo de prova de Matemática"
NU_NOTA_CN			"Nota da prova de Ciências da Natureza"
NU_NOTA_CH			"Nota da prova de Ciências Humanas"
NU_NOTA_LC			"Nota da prova de Linguagens e Códigos"
NU_NOTA_MT			"Nota da prova de Matemática"
TX_RESPOSTAS_CN			"Vetor com as respostas da parte objetiva da prova de Ciências da Natureza"
TX_RESPOSTAS_CH			"Vetor com as respostas da parte objetiva da prova de Ciências Humanas"
TX_RESPOSTAS_LC			"Vetor com as respostas da parte objetiva da prova de Linguagens e Códigos"
TX_RESPOSTAS_MT			"Vetor com as respostas da parte objetiva da prova de Matemática"
TP_LINGUA				"Tipo de Língua Estrangeira "
TX_GABARITO_CN			"Vetor com o gabarito da parte objetiva da prova de Ciências da Natureza"
TX_GABARITO_CH			"Vetor com o gabarito da parte objetiva da prova de Ciências Humanas"
TX_GABARITO_LC			"Vetor com o gabarito da parte objetiva da prova de Linguagens e Códigos"
TX_GABARITO_MT			"Vetor com o gabarito da parte objetiva da prova de Matemática"
TP_STATUS_REDACAO		"Situação da redação do participante"
NU_NOTA_COMP1			"Nota da competência 1"
NU_NOTA_COMP2			"Nota da competência 2"
NU_NOTA_COMP3			"Nota da competência 3"
NU_NOTA_COMP4			"Nota da competência 4"
NU_NOTA_COMP5			"Nota da competência 5"
NU_NOTA_REDACAO			"Nota da prova de redação"
Q001    				"Quantas pessoas moram com você?"
Q002     				"Até quando seu pai estudou?"
Q003     				"Até quando sua mãe estudou?"
Q004     				"Somando a sua renda com a renda das pessoas que moram com você, quanto é, aproximadamente, a renda familiar mensal?" 
Q005     				"Qual a sua renda mensal, aproximadamente?"
Q006     				"A casa onde você mora é?"
Q007     				"Sua casa está localizada em?"
Q008     				"Você exerce ou já exerceu atividade remunerada?"
Q009     				"Grau de importância quanto a sua decisão de trabalhar para ajudar meus pais nas despesas com a casa"
Q010     				"Grau de importância quanto a sua decisão de trabalhar para sustentar minha família"
Q011     				"Grau de importância quanto a sua decisão de trabalhar para ser independente (ganhar meu próprio dinheiro)"
Q012    				"Grau de importância quanto a sua decisão de trabalhar para adquirir experiência"
Q013    				"Grau de importância quanto a sua decisão de trabalhar para custear/ pagar meus estudos"
Q014    				"Você fez algum curso preparatório para o trabalho que realiza ou realizou?"
Q015    				"Frequentou ou frequenta Curso profissionalizante"
Q016     				"Frequentou ou frequenta Curso preparatório para vestibular"
Q017     				"Frequentou ou frequenta Curso superior"
Q018    				"Frequentou ou frequenta Curso de língua estrangeira"
Q019    				"Frequentou ou frequenta Curso de computação ou informática"
Q020    				"Frequentou ou frequenta Curso preparatório para outros concursos públicos"
Q021    				"Frequentou ou frequenta Outro curso"
Q022    				"Quantas horas semanais você trabalha?"
Q023    				"Com que idade você começou a trabalhar?"
Q024    				"Grau de importância quanto aos motivos que levaram a participar do ENEM para Testar meus conhecimentos"
Q025     				"Grau de importância quanto aos motivos que levaram a participar do ENEM para Prosseguir os estudos no Ensino Superior"
Q026     				"Grau de importância quanto aos motivos que levaram a participar do ENEM para Obter a certificação do Ensino Médio ou acelerar meus estudos"
Q027     				"Grau de importância quanto aos motivos que levaram a participar do ENEM para Conseguir uma bolsa de estudos (ProUni, outras)"
Q028     				"Quantos anos você levou para concluir o Ensino Fundamental?"
Q029     				"Você deixou de estudar durante o Ensino Fundamental?"
Q030    				"Em que tipo de escola você cursou o Ensino Fundamental?"
Q031    				"Quantos anos você levou para concluir o Ensino Médio?"
Q032     				"Você deixou de estudar durante o Ensino Médio?"
Q033     				"Em que tipo de escola você cursou o Ensino Médio?"
Q034     				"Você cursa ou já cursou a Educação de Jovens e Adultos – EJA?"
Q035    				"Como é ou era o curso de EJA que você frequenta ou frequentou?"
Q036     				"Deixou de cursar EJA por causa de Trabalho/ falta de tempo para estudar."
Q037    				"Deixou de cursar EJA porque Estudava no curso da empresa e foi interrompido."
Q038    				"Deixou de cursar EJA por Problemas de saúde ou acidentes comigo ou familiares."
Q039    				"Deixou de cursar EJA por Mudança de estado, município ou cidade."
Q040     				"Deixou de cursar EJA por motivos pessoais: casamento / filhos."
Q041     				"Deixou de cursar EJA porque Não tinha interesse / desisti."
Q042     				"Deixou de cursar EJA porque Senti-me discriminado(a)."
Q043    				"Você já frequentou alguma vez escola regular?"
Q044     				"Inexistência de vaga em escola pública influenciou no fato de não ter freqüentado ou ter abandonado a escola regular"
Q045     				"Ausência de escola perto de casa influenciou no fato de não ter freqüentado ou ter abandonado a escola regular"
Q046     				"Falta de interesse em estudar influenciou no fato de não ter freqüentado ou ter abandonado a escola regular"
Q047     				"Trabalho: falta de tempo para estudar influenciou no fato de não ter freqüentado ou ter abandonado a escola regular"
Q048    				 "Motivos pessoais: casamento / filhos influenciou no fato de não ter freqüentado ou ter abandonado a escola regular"
Q049     				"Falta de apoio familiar influenciou no fato de não ter freqüentado ou ter abandonado a escola regular"
Q050     				"Problemas de saúde ou acidente comigo ou familiares influenciou no fato de não ter freqüentado ou ter abandonado a escola regular"
Q051     				"Discriminação/ preconceitos de raça, sexo, cor, idade ou socioeconômico influenciou no fato de não ter freqüentado ou ter abandonado a escola regular"
Q052     				"Quantos anos de idade você tinha quando deixou de frequentar a escola regular?"
Q053     				"Grau de importância quanto a querer a certificação do Ensino Médio para Conseguir um emprego"
Q054     				"Grau de importância quanto a querer a certificação do Ensino Médio para Conseguir um emprego melhor"
Q055     				"Grau de importância quanto a querer a certificação do Ensino Médio para Progredir no meu emprego atual"
Q056     				"Grau de importância quanto a querer a certificação do Ensino Médio para Continuar os estudos no Ensino Superior"
Q057     				"Caso ingresse no Ensino Superior privado, pretende recorrer ao FIES (Programa de Financiamento Estudantil) para custeio das mensalidades"
Q058     				"Caso ingresse no Ensino Superior privado pretende recorrer ao Pró-Uni (Programa Universidade para Todos) para custeio das mensalidades"
Q059     				"Caso ingresse no Ensino Superior privado pretende recorrer a Bolsa de estudos da própria Instituição de Ensino Superior para custeio das mensalidades"
Q060     				"Caso ingresse no Ensino Superior privado pretende recorrer a Bolsa de estudos da empresa onde trabalha para custeio das mensalidades"
Q061    				 "Você tem TV em cores em sua casa?"
Q062    				"Você tem Videocassete e/ou DVD em sua casa?"
Q063    				 "Você tem Rádio em sua casa?"
Q064    				 "Você tem Microcomputador em sua casa?"
Q065     				"Você tem Automóvel em sua casa?"
Q066     				"Você tem Máquina de lavar roupa em sua casa?"
Q067     				"Você tem Geladeira em sua casa?"
Q068     				"Você tem Freezer (aparelho independente ou parte da geladeira duplex) em sua casa?"
Q069    				 "Você tem Telefone fixo em sua casa?"
Q070     				"Você tem Telefone celular em sua casa?"
Q071    				 "Você tem Acesso à Internet em sua casa?"
Q072     				"Você tem TV por assinatura em sua casa?"
Q073     				"Você tem Aspirador de pó em sua casa?"
Q074     				"Você tem Empregada mensalista em sua casa?"
Q075     				"Você tem Banheiro em sua casa?".

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
	0	"Não"
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
	1	"Já concluí o Ensino Médio"
	2	"Estou cursando e concluirei o Ensino Médio em 2011"
	3	"Estou cursando e concluirei o Ensino Médio após 2011"
	4	"Não concluí e não estou cursando o Ensino Médio"
/TP_ANO_CONCLUIU
	0	"Não informado"
	1	"2010"
	2	"2009"
	3	"2008"
	4	"2007"
	5	"2006"
	6	"2005"
	7	"2004"
	8	"2003"
/TP_ESCOLA
	1	"Não respondeu"
	2	"Pública"
	3	"Privada"
	4	"Exterior"
/TP_ENSINO	 	
	1	"Ensino Regular"
	2	"Educação Especial - Modalidade Substitutiva"
	3	"Educação de Jovens e Adultos"
/TP_ESTADO_CIVIL	 	
	0	"Não informado"
	1	"Solteiro(a)"
	2	"Casado(a)/Mora com um(a) companheiro(a)"
	3	"Divorciado(a)/Desquitado(a)/Separado(a)"
	4	"Viúvo(a)"
/TP_COR_RACA	 	
	0	"Não declarado"
	1	"Branca"
	2	"Preta"
	3	"Parda"
	4	"Amarela"
	5	"Indígena"
/TP_PRESENCA_CN	 	 
	0	"Faltou à prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_CH	 	
	0	"Faltou à prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_LC	 	
	0	"Faltou à prova"
	1	"Presente na prova"
	2	"Eliminado na prova"
/TP_PRESENCA_MT	 	
	0	"Faltou à prova"
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
	0	"Inglês"
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
	"A" 	 "Não estudou;"
	"B" 	 "Da 1ª à 4ª série do Ensino Fundamental (antigo primário);"
	"C" 	 "Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio);"
	"D" 	 "Ensino Médio (antigo 2º grau) incompleto;"
	"E" 	 "Ensino Médio (antigo 2º grau);"
	"F" 	 "Ensino Superior incompleto;"
	"G" 	 "Ensino Superior;"
	"H" 	 "Pós-graduação;"
	"I" 	 "Não sei;"
/Q003
	"A" 	 "Não estudou;"
	"B" 	 "Da 1ª à 4ª série do Ensino Fundamental (antigo primário);"
	"C" 	 "Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio);"
	"D" 	 "Ensino Médio (antigo 2º grau) incompleto;"
	"E" 	 "Ensino Médio (antigo 2º grau);"
	"F" 	 "Ensino Superior incompleto;"
	"G" 	 "Ensino Superior;"
	"H" 	 "Pós-graduação;"
	"I" 	 "Não sei;"
/Q004
	"A"		 "Nenhuma renda;"
	"B"		 "Até um salário mínimo (até R$545,00);"
	"C"		 "Entre 1 e 1,5 salários (entre R$545,00 até R$817,50);"
	"D"		 "Entre 1,5 e 2 salários (entre R$817,50 até R$1.090,00);"
	"E"		 "Entre 2 e 5 salários (entre R$1.090,00 até R$2.725,00);"
	"F"		 "Entre 5 e 7 salários (entre R$2.725,00 até R$3.815,00);"
	"G"		 "Entre 7 e 10 salários (entre R$3.815,00 até R$5.450,00);"
	"H"		 "Entre 10 e 12 salários (entre R$5.450,00 até R$ 6.540,00);"
	"I"		 "Entre 12 e 15 salários (entre R$6.540,00 até R$8.175,00);"
	"J"		 "Entre 15 e 30 salários (entre R$8.175,00 até R$ 16.350,00);"
	"K"		 "Acima de 30 salários (mais de R$16.350,00);"
/Q005
	"A"		 "Nenhuma renda;"
	"B"		 "Até um salário mínimo (até R$545,00);"
	"C"		 "Entre 1 e 1,5 salários (entre R$545,00 até R$817,50);"
	"D"		 "Entre 1,5 e 2 salários (entre R$817,50 até R$1.090,00);"
	"E"		 "Entre 2 e 5 salários (entre R$1.090,00 até R$2.725,00);"
	"F"		 "Entre 5 e 7 salários (entre R$2.725,00 até R$3.815,00);"
	"G"		 "Entre 7 e 10 salários (entre R$3.815,00 até R$5.450,00);"
	"H"		 "Entre 10 e 12 salários (entre R$5.450,00 até R$ 6.540,00);"
	"I"		 "Entre 12 e 15 salários (entre R$6.540,00 até R$8.175,00);"
	"J"		 "Entre 15 e 30 salários (entre R$8.175,00 até R$ 16.350,00);"
	"K"		 "Acima de 30 salários (mais de R$16.350,00);"
/Q006
	"A"		 "Própria e quitada"
	"B"		 "Própria e em pagamento (financiada)"
	"C"		 "Alugada"
	"D"		 "Cedida"
/Q007
	"A"		 "Zona rural."
	"B"		 "Zona urbana"
	"C"		 "Comunidade indígena."
	"D"		 "Comunidade quilombola."
/Q008
	"A"		"Sim"
	"B"		"Não"
/Q014
	"A"		"Sim"
	"B"		"Não"
/Q015
	"A"		"Sim"
	"B"		"Não"
/Q016
	"A"		"Sim"
	"B"		"Não"
/Q017
	"A"		"Sim"
	"B"		"Não"
/Q018
	"A"		"Sim"
	"B"		"Não"
/Q019
	"A"		"Sim"
	"B"		"Não"
/Q020
	"A"		"Sim"
	"B"		"Não"
/Q021
	"A"		"Sim"
	"B"		"Não"
/Q022
	"A"		"Sem jornada fixa, até 10 horas semanais."
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
	"G"		 "Não conclui."
/Q029
	"A"		 "Não."
	"B"		 "Sim, por um ano."
	"C"		 "Sim, por 2 anos."
	"D"		 "Sim, por três anos."
	"E"		 "Sim, por 4 anos ou mais."
/Q030
	"A"		 "Somente em escola pública;"
	"B"		 "Maior parte em escola pública;"
	"C"		 "Somente em escola particular;"
	"D"		 "Maior parte em escola particular;"
	"E"		 "Somente em escola indígena;"
	"F"		 "Maior parte em escola indígena;"
	"G"		 "Somente em escola situada em comunidade quilombola;"
	"H"		 "Maior parte em escola situada em comunidade quilombola;"
	"I"		 "Não frequentei a escola."
/Q031
	"A"		 "Menos de 3 anos"
	"B"		 "3 anos"
	"C"		 "4 anos"
	"D"		 "5 anos"
	"E"		 "6 anos ou mais"
	"F"		 "Não conclui"
/Q032
	"A"		 "Não."
	"B"		 "Sim, por um ano."
	"C"		 "Sim, por 2 anos."
	"D"		 "Sim, por três anos."
	"E"		 "Sim, por 4 anos ou mais."
/Q033
	"A"		 "Somente em escola pública;"
	"B"		 "Maior parte em escola pública;"
	"C"		 "Somente em escola particular;"
	"D"		 "Maior parte em escola particular;"
	"E"		 "Somente em escola indígena;"
	"F"		 "Maior parte em escola indígena;"
	"G"		 "Somente em escola situada em comunidade quilombola;"
	"H"		 "Maior parte em escola situada em comunidade quilombola;"
	"I"		 "Não frequentei a escola."
/Q034
	"A"		 "Sim"
	"B"		 "Não"
/Q035
	"A"		 "Curso presencial em escola pública."
	"B"		 "Curso presencial em escola privada."
	"C"		 "Curso presencial na empresa em que trabalha, instituição filantrópica ou religiosa."
	"D"		 "Curso a distância (via rádio, televisão, internet, correio, com apostilas)."
	"E"		 "Curso semi-presencial em escola pública."
	"F"		 "Curso semi-presencial em escola privada."
/Q036
	"A"		 "Sim"
	"B"		 "Não"
/Q037
	"A"		 "Sim"
	"B"		 "Não"
/Q038
	"A"		 "Sim"
	"B"		 "Não"
/Q039
	"A"		 "Sim"
	"B"		 "Não"
/Q040
	"A"		 "Sim"
	"B"		 "Não"
/Q041
	"A"		 "Sim"
	"B"		 "Não"
/Q042
	"A"		 "Sim"
	"B"		 "Não"
/Q043
	"A"		 "Sim"
	"B"		 "Não"
/Q052
	"A"		 "Menos de 10 anos."
	"B"		 "Entre 10 e 14 anos."
	"C"		 "Entre 15 e 18 anos."
	"D"		 "Entre 19 e 24 anos."
	"E"		 "Entre 25 e 30 anos."
	"F"		 "Mais de 30 anos."
	"G"		 "Não deixei de frequentar."
/Q057
	"A"		 "Sim"
	"B"		 "Não"
/Q058
	"A"		 "Sim"
	"B"		 "Não"
/Q059
	"A"		 "Sim"
	"B"		 "Não"
/Q060
	"A"		 "Sim"
	"B"		 "Não"
/Q060
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q062
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q063
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q064
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q065
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q066
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q067
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q068
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q069
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q070
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q071
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q072
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q073
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q074
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho"
/Q075
	"A"		 "1"
	"B"		 "2"
	"C"		 "3 ou mais"
	"D"		 "Não tenho".