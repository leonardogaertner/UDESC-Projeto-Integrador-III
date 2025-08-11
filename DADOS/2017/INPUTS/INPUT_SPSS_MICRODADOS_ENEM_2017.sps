/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2017                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2017     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2017.csv no diretório C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_2017.csv" /*local do arquivo*/
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
  Q025 A1
  Q026 A1
  Q027 A1.
CACHE.
EXECUTE.
DATASET NAME ENEM_17 WINDOW=FRONT.


VARIABLE LABELS
NU_INSCRICAO			"Número de inscrição"
NU_ANO	                  		"Ano do Enem"
IN_TREINEIRO 			 "Indica se o inscrito fez a prova com intuito de apenas treinar seus conhecimentos"
CO_MUNICIPIO_ESC 			"Código Município Escola"
NO_MUNICIPIO_ESC			"Nome do município da escola"
CO_UF_ESC			"Código da Unidade da Federação da escola"
SG_UF_ESC			"Sigla da Unidade da Federação da escola"
TP_DEPENDENCIA_ADM_ESC		"Dependência administrativa (Escola)"
TP_LOCALIZACAO_ESC		"Localização (Escola)"
TP_SIT_FUNC_ESC			"Situação de funcionamento (Escola)"
TP_FAIXA_ETARIA         		"Faixa Etária"
TP_SEXO	              			    "Sexo"
TP_NACIONALIDADE			"Nacionalidade"
TP_ST_CONCLUSAO			"Situação de conclusão do Ensino Médio"
TP_ANO_CONCLUIU			"Ano de Conclusão do Ensino Médio"
TP_ESCOLA			"Tipo de escola do Ensino Médio"
TP_ENSINO			"Tipo de instituição que concluiu ou concluirá o Ensino Médio"
TP_ESTADO_CIVIL			"Estado Civil"
TP_COR_RACA			"Cor/raça"
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
Q001				"Até que série seu pai, ou o homem responsável por você, estudou?"
Q002				"Até que série sua mãe, ou a mulher responsável por você, estudou?"
Q003				"Indique o grupo que contempla a ocupação mais próxima da ocupação do seu pai ou do homem responsável por você"
Q004				"Indique o grupo que contempla a ocupação mais próxima da ocupação da sua mãe ou da mulher responsável por você"
Q005				"Incluindo você, quantas pessoas moram atualmente em sua residência?"
Q006				"Qual é a renda mensal de sua família? (Some a sua renda com a dos seus familiares.)"
Q007				"Em sua residência trabalha empregado(a) doméstico(a)?"
Q008				"Na sua residência tem banheiro?"
Q009				"Na sua residência tem quartos para dormir?"
Q010				"Na sua residência tem carro?"
Q011				"Na sua residência tem motocicleta?"
Q012				"Na sua residência tem geladeira?"
Q013				"Na sua residência tem freezer (independente ou segunda porta da geladeira)?"
Q014				"Na sua residência tem máquina de lavar roupa (o tanquinho NÃO deve ser considerado)?"
Q015				"Na sua residência tem máquina de secar roupa (independente ou em conjunto com a máquina de lavar roupa)?"
Q016				"Na sua residência tem forno micro-ondas?"
Q017				"Na sua residência tem máquina de lavar louça?"
Q018				"Na sua residência tem aspirador de pó?"
Q019				"Na sua residência tem televisão em cores?"
Q020				"Na sua residência tem aparelho de DVD?"
Q021				"Na sua residência tem TV por assinatura?"
Q022				"Na sua residência tem telefone celular?"
Q023				"Na sua residência tem telefone fixo?"
Q024				"Na sua residência tem computador?"
Q025				"Na sua residência tem acesso à Internet?"
Q026				"Você já concluiu ou está concluindo o Ensino Médio?"
Q027				"Em que tipo de escola você frequentou o Ensino Médio?".

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
/TP_SEXO	 	
	"M"	"Masculino"
	"F"	"Feminino"
/TP_NACIONALIDADE	 
	0	"Não informado"	
	1	"Brasileiro(a)"
	2	"Brasileiro(a) Naturalizado(a)"
	3	"Estrangeiro(a)"
	4	"Brasileiro(a) Nato(a), nascido(a) no exterior"
/TP_ST_CONCLUSAO	 	
	1	"Já concluí o Ensino Médio"
	2	"Estou cursando e concluirei o Ensino Médio em 2017"
	3	"Estou cursando e concluirei o Ensino Médio após 2017"
	4	"Não concluí e não estou cursando o Ensino Médio"
/TP_ANO_CONCLUIU
	0	"Não informado"
	1	"2016"
	2	"2015"
	3	"2014"
	4	"2013"
	5	"2012"
	6	"2011"
	7	"2010"
	8	"2009"
	9	"2008"
	10	"2007"
	11	"Anterior a 2007"
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
	391	"Azul"
	392	"Amarela"
	393	"Cinza"
	394	"Rosa"
	407	"Laranja - Adaptada Ledor"
	411	"Verde - Videoprova - Libras"
	431	"Amarela (Reaplicação)"
	432	"Cinza (Reaplicação)"
	433	"Azul (Reaplicação)"
	434	"Rosa (Reaplicação)"	
/CO_PROVA_CH	 	
	395	"Azul"
	396	"Amarela"
	397	"Branca"
	398	"Rosa"
	408	"Laranja - Adaptada Ledor"
	412	"Verde - Videoprova - Libras"
	435	"Azul (Reaplicação)"
	436	"Amarelo (Reaplicação)"
	437	"Branco (Reaplicação)"
	438	"Rosa (Reaplicação)"
/CO_PROVA_LC	 	
	399	"Azul"
	400	"Amarela"
	401	"Rosa"
	402	"Branca"
	409	"Laranja - Adaptada Ledor"
	413	"Verde - Videoprova - Libras"
	439	"Azul (Reaplicação)"
	440	"Amarelo (Reaplicação)"
	441	"Branca (Reaplicação)"
	442	"Rosa (Reaplicação)"
/CO_PROVA_MT	 	
	403	"Azul"
	404	"Amarela"
	405	"Rosa"
	406	"Cinza"
	410	"Laranja - Adaptada Ledor"
	414	"Verde - Videoprova - Libras"
	443	"Amarela (Reaplicação)"
	444	"Cinza (Reaplicação)"
	445	"Azul (Reaplicação)"
	446	"Rosa (Reaplicação)"
 /TP_LINGUA	 	
	0	"Inglês"
	1	"Espanhol"
/TP_STATUS_REDACAO	 	 
	1	"Sem problemas"
	2	"Anulada"
	3	"Cópia Texto Motivador"
	4	"Em Branco"
	6	"Fuga ao tema"
	7	"Não atendimento ao tipo"
	8	"Texto insuficiente"
	9	"Parte desconectada"
/Q001	 	 
	"A"	"Nunca estudou"
	"B"	"Não completou a 4ª série/5º ano do ensino fundamental"
	"C"	"Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do ensino fundamental"
	"D"	"Completou a 8ª série/9º ano do ensino fundamental, mas não completou o Ensino Médio"
	"E"	"Completou o Ensino Médio, mas não completou a Faculdade"
	"F"	"Completou a Faculdade, mas não completou a Pós-graduação"
	"G"	"Completou a Pós-graduação"
	"H"	"Não sei"
/Q002	 	 
	"A"	"Nunca estudou"
	"B"	"Não completou a 4ª série/5º ano do ensino fundamental"
	"C"	"Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do ensino fundamental"
	"D"	"Completou a 8ª série/9º ano do ensino fundamental, mas não completou o Ensino Médio"
	"E"	"Completou o Ensino Médio, mas não completou a Faculdade"
	"F"	"Completou a Faculdade, mas não completou a Pós-graduação"
	"G"	"Completou a Pós-graduação"
	"H"	"Não sei"
/Q003	 	 
	"A"	"Grupo 1 (Verificar a definição no dicionário de dados)"
	"B"	"Grupo 2 (Verificar a definição no dicionário de dados)"
	"C"	"Grupo 3 (Verificar a definição no dicionário de dados)"
	"D"	"Grupo 4 (Verificar a definição no dicionário de dados)"
	"E"	"Grupo 5 (Verificar a definição no dicionário de dados)"
	"F"	"Não Sei"
/Q004	 	 
	"A"	"Grupo 1 (Verificar a definição no dicionário de dados)"
	"B"	"Grupo 2 (Verificar a definição no dicionário de dados)"
	"C"	"Grupo 3 (Verificar a definição no dicionário de dados)"
	"D"	"Grupo 4 (Verificar a definição no dicionário de dados)"
	"E"	"Grupo 5 (Verificar a definição no dicionário de dados)"
	"F"	"Não Sei"
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
	"A"	 "Nenhuma renda"
	"B"	 "Até R$ 937,00"
	"C"	 "De R$ 937,01 até R$ 1.405,50"
	"D"	 "De R$ 1.405,51 até R$ 1.874,00"
	"E"	 "De R$ 1.874,01 até R$ 2.342,50"
	"F"	 "De R$ 2.342,51 até R$ 2.811,00"
	"G"	 "De R$ 2.811,01 até R$ 3.748,00"
	"H"	 "De R$ 3.748,01 até R$ 4.685,00"
	"I"	 "De R$ 4.685,01 até R$ 5.622,00"
	"J"	 "De R$ 5.622,01 até R$ 6.559,00"
	"K"	 "De R$ 6.559,01 até R$ 7.496,00"
	"L"	 "De R$ 7.496,01 até R$ 8.433,00"
	"M"	 "De R$ 8.433,01 até R$ 9.370,00"
	"N"	 "De R$ 9.370,01 até R$ 11.244,00"
	"O"	 "De R$ 11.244,01 até R$ 14.055,00"
	"P"	 "De R$ 14.055,01 até R$ 18.740,00"
	"Q"	 "Mais de R$ 18.740,00"
/Q007	 	 
	"A"	"Não"
	"B"	"Sim, um ou dois dias por semana"
	"C"	"Sim, três ou quatro dias por semana"
	"D"	"Sim, pelo menos cinco dias por semana"
/Q008	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q009	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q010	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q011	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q012	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q013	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q014	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q015	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q016	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q017	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q018	 	 
	"A"	"Não"
	"B"	"Sim"
/Q019	 	 
	"A"	"Não"
	"B"	"Sim, uma"
	"C"	"Sim, duas"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q020	 	 
	"A"	"Não"
	"B"	"Sim"
/Q021	 	 
	"A"	"Não"
	"B"	"Sim"
/Q022	 	 
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q023	 	
	"A"	"Não"
	"B"	"Sim"
/Q024		
	"A"	"Não"
	"B"	"Sim, um"
	"C"	"Sim, dois"
	"D"	"Sim, três"
	"E"	"Sim, quatro ou mais"
/Q025		
	"A"	"Não"
	"B"	"Sim"
/Q026	 	 
	"A"	"Já concluí o Ensino Médio"
	"B"	"Estou cursando e concluirei o Ensino Médio em 2017"
	"C"	"Estou cursando e concluirei o Ensino Médio após 2017"
	"D"	"Não concluí e não estou cursando o Ensino Médio"
/Q027	 	 
	"A"	"Somente em escola pública"
	"B"	"Parte em escola pública e parte em escola privada sem bolsa de estudo integral"
	"C"	"Parte em escola pública e parte em escola privada com bolsa de estudo integral"
	"D"	"Somente em escola privada sem bolsa de estudo integral"
	"E"	"Somente em escola privada com bolsa de estudo integral".