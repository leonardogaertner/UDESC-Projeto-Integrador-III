/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)             */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2015                                                 */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2015     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2015.csv no diretório C:\ do computador.	                  */
/*							 */ 
/*							 */
/* Para a leitura dos microdados é necessário a seleção do programa abaixo,               */
/* depois execute-o.						 */
/*							 */ 
/*							 */ 
/* Se receber a mensagem "Text value unmappable in the current server locale"	 */
/* acesse o menu "Edit" do SPSS, clique em "Options" e na aba "General", 	 */
/* em "Character encoding for data and syntax", marque a			 */
/* opção "Unicode (universal character set)", clique em "Apply" e, depois, "OK.              */
/* Proceda novamente os passos para execução do programa			 */ 
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
  /FILE="C:\MICRODADOS_ENEM_2015.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
  NU_INSCRICAO F12.0
  NU_ANO F4.0
  TP_FAIXA_ETARIA F2.0
  TP_SEXO A10
  TP_ESTADO_CIVIL F1.0
  TP_COR_RACA F1.0
  TP_NACIONALIDADE F1.0
  TP_ST_CONCLUSAO F1.0
  TP_ANO_CONCLUIU F2.0
  TP_ESCOLA F1.0
  TP_ENSINO F1.0
  IN_TREINEIRO F1.0
  CO_MUNICIPIO_ESC F8.0
  NO_MUNICIPIO_ESC A25
  CO_UF_ESC F2.0
  SG_UF_ESC A10
  TP_DEPENDENCIA_ADM_ESC F1.0
  TP_LOCALIZACAO_ESC F1.0
  TP_SIT_FUNC_ESC F1.0
  IN_CERTIFICADO F1.0
  NO_ENTIDADE_CERTIFICACAO A63
  CO_UF_ENTIDADE_CERTIFICACAO F2.0
  SG_UF_ENTIDADE_CERTIFICACAO A10
  CO_MUNICIPIO_PROVA F8.0
  NO_MUNICIPIO_PROVA A25
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
  NU_NOTA_CN COMMA6.2
  NU_NOTA_CH COMMA6.2
  NU_NOTA_LC COMMA6.2
  NU_NOTA_MT COMMA6.2
  TX_RESPOSTAS_CN A45
  TX_RESPOSTAS_CH A45
  TX_RESPOSTAS_LC A50
  TX_RESPOSTAS_MT A45
  TP_LINGUA F1.0
  TX_GABARITO_CN A45
  TX_GABARITO_CH A45
  TX_GABARITO_LC A50
  TX_GABARITO_MT A45
  TP_STATUS_REDACAO F1.0
  NU_NOTA_COMP1 F3.0
  NU_NOTA_COMP2 F3.0
  NU_NOTA_COMP3 F3.0
  NU_NOTA_COMP4 F3.0
  NU_NOTA_COMP5 F3.0
  NU_NOTA_REDACAO F3.0
  Q001 A8
  Q002 A8
  Q003 A8
  Q004 A8
  Q005 F2.0
  Q006 A8
  Q007 A8
  Q008 A8
  Q009 A8
  Q010 A8
  Q011 A8
  Q012 A8
  Q013 A8
  Q014 A8
  Q015 A8
  Q016 A8
  Q017 A8
  Q018 A8
  Q019 A8
  Q020 A8
  Q021 A8
  Q022 A8
  Q023 A8
  Q024 A8
  Q025 A8
  Q026 A8
  Q027 A8
  Q028 A8
  Q029 F1.0
  Q030 F1.0
  Q031 F1.0
  Q032 F1.0
  Q033 F1.0
  Q034 F1.0
  Q035 F1.0
  Q036 F1.0
  Q037 F1.0
  Q038 F1.0
  Q039 F1.0
  Q040 F1.0
  Q041 F1.0
  Q042 A8
  Q043 A8
  Q044 A8
  Q045 A8
  Q046 A8
  Q047 A8
  Q048 A8
  Q049 A8
  Q050 A8.
CACHE.
EXECUTE.
DATASET NAME ENEM_15 WINDOW=FRONT.



VARIABLE LABELS
NU_INSCRICAO	"Número de inscrição"
NU_ANO	                  "Ano do Enem"
IN_TREINEIRO  "Indica se o inscrito fez a prova com intuito de apenas treinar seus conhecimentos"
CO_MUNICIPIO_ESC 	"Código Município Escola"
NO_MUNICIPIO_ESC	"Nome do município da escola"
CO_UF_ESC	"Código da Unidade da Federação da escola"
SG_UF_ESC	"Sigla da Unidade da Federação da escola"
TP_DEPENDENCIA_ADM_ESC	"Dependência administrativa (Escola)"
TP_LOCALIZACAO_ESC		"Localização (Escola)"
TP_SIT_FUNC_ESC	"Situação de funcionamento (Escola)"
TP_FAIXA_ETARIA         		"Faixa Etária"
TP_SEXO	                  "Sexo"
TP_NACIONALIDADE	"Nacionalidade"
TP_ST_CONCLUSAO	"Situação de conclusão do Ensino Médio"
TP_ANO_CONCLUIU	"Ano de Conclusão do Ensino Médio"
TP_ESCOLA	"Tipo de escola do Ensino Médio"
TP_ENSINO	"Tipo de instituição que concluiu ou concluirá o Ensino Médio"
TP_ESTADO_CIVIL	"Estado Civil"
TP_COR_RACA	"Cor/raça"
IN_CERTIFICADO		"Indicador de solicitação de certificação no Ensino Médio"
NO_ENTIDADE_CERTIFICACAO	"Nome da Entidade Certificadora"
CO_UF_ENTIDADE_CERTIFICACAO	"Código da Unidade da Federação da Entidade Certificadora"
SG_UF_ENTIDADE_CERTIFICACAO	"Sigla da Unidade da Federação da Entidade Certificadora"
CO_MUNICIPIO_PROVA	"Código do município da aplicação da prova"
NO_MUNICIPIO_PROVA	"Nome do município da aplicação da prova"
CO_UF_PROVA	"Código da Unidade da Federação da aplicação da prova"
SG_UF_PROVA  	"Sigla da Unidade da Federação da aplicação da prova"
TP_PRESENCA_CN	"Presença na prova objetiva de Ciências da Natureza"
TP_PRESENCA_CH	"Presença na prova objetiva de Ciências Humanas"
TP_PRESENCA_LC	"Presença na prova objetiva de Linguagens e Códigos"
TP_PRESENCA_MT	"Presença na prova objetiva de Matemática"
CO_PROVA_CN	"Código do tipo de prova de Ciências da Natureza"
CO_PROVA_CH	"Código do tipo de prova de Ciências Humanas"
CO_PROVA_LC	"Código do tipo de prova de Linguagens e Códigos"
CO_PROVA_MT	"Código do tipo de prova de Matemática"
NU_NOTA_CN	"Nota da prova de Ciências da Natureza"
NU_NOTA_CH	"Nota da prova de Ciências Humanas"
NU_NOTA_LC	"Nota da prova de Linguagens e Códigos"
NU_NOTA_MT	"Nota da prova de Matemática"
TX_RESPOSTAS_CN	"Vetor com as respostas da parte objetiva da prova de Ciências da Natureza"
TX_RESPOSTAS_CH	"Vetor com as respostas da parte objetiva da prova de Ciências Humanas"
TX_RESPOSTAS_LC	"Vetor com as respostas da parte objetiva da prova de Linguagens e Códigos"
TX_RESPOSTAS_MT	"Vetor com as respostas da parte objetiva da prova de Matemática"
TP_LINGUA	"Tipo de Língua Estrangeira "
TX_GABARITO_CN	"Vetor com o gabarito da parte objetiva da prova de Ciências da Natureza"
TX_GABARITO_CH	"Vetor com o gabarito da parte objetiva da prova de Ciências Humanas"
TX_GABARITO_LC	"Vetor com o gabarito da parte objetiva da prova de Linguagens e Códigos"
TX_GABARITO_MT	"Vetor com o gabarito da parte objetiva da prova de Matemática"
TP_STATUS_REDACAO	"Situação da redação do participante"
NU_NOTA_COMP1	"Nota da competência 1"
NU_NOTA_COMP2	"Nota da competência 2"
NU_NOTA_COMP3	"Nota da competência 3"
NU_NOTA_COMP4	"Nota da competência 4"
NU_NOTA_COMP5	"Nota da competência 5"
NU_NOTA_REDACAO	"Nota da prova de redação"
Q001	"Até que série seu pai, ou o homem responsável por você, estudou?"
Q002	"Até que série sua mãe, ou a mulher responsável por você, estudou?"
Q003	"Indique o grupo que contempla a ocupação mais próxima da ocupação do seu pai ou do homem responsável por você"
Q004	"Indique o grupo que contempla a ocupação mais próxima da ocupação da sua mãe ou da mulher responsável por você"
Q005	"Incluindo você, quantas pessoas moram atualmente em sua residência?"
Q006	"Qual é a renda mensal de sua família? (Some a sua renda com a dos seus familiares.)"
Q007	"Em sua residência trabalha empregado(a) doméstico(a)?"
Q008	"Na sua residência tem banheiro?"
Q009	"Na sua residência tem quartos para dormir?"
Q010	"Na sua residência tem carro?"
Q011	"Na sua residência tem motocicleta?"
Q012	"Na sua residência tem geladeira?"
Q013	"Na sua residência tem freezer (independente ou segunda porta da geladeira)?"
Q014	"Na sua residência tem máquina de lavar roupa (o tanquinho NÃO deve ser considerado)?"
Q015	"Na sua residência tem máquina de secar roupa (independente ou em conjunto com a máquina de lavar roupa)?"
Q016	"Na sua residência tem forno micro-ondas?"
Q017	"Na sua residência tem máquina de lavar louça?"
Q018	"Na sua residência tem aspirador de pó?"
Q019	"Na sua residência tem televisão em cores?"
Q020	"Na sua residência tem aparelho de DVD?"
Q021	"Na sua residência tem TV por assinatura?"
Q022	"Na sua residência tem telefone celular?"
Q023	"Na sua residência tem telefone fixo?"
Q024	"Na sua residência tem computador?"
Q025	"Na sua residência tem acesso à Internet?"
Q026	"Você exerce ou já exerceu atividade remunerada?"
Q027	"Com que idade você começou a exercer uma atividade remunerada?"
Q028	"Quantas horas semanais você trabalha ou trabalhava aproximadamente? (Considere a atividade remunerada mais recente.)"
Q029	"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Ajudar meus pais nas despesas com a casa"
Q030	"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Sustentar minha família (esposo/a, filhos/as etc.)"
Q031	"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Ser independente/ganhar meu próprio dinheiro"
Q032	"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Adquirir experiência"
Q033	"Indique a importância de cada um dos motivos abaixo na sua decisão de trabalhar: Custear/pagar meus estudos"
Q034	"Indique os motivos que levaram você a participar do ENEM: Testar meus conhecimentos, para aumentar as minhas chances de ingressar na Educação Superior"
Q035	"Indique os motivos que levaram você a participar do ENEM: Ingressar na Educação Superior pública"
Q036	"Indique os motivos que levaram você a participar do ENEM: Ingressar na Educação Superior privada"
Q037	"Indique os motivos que levaram você a participar do ENEM: Conseguir uma bolsa de estudos (ProUni, outras)"
Q038	"Indique os motivos que levaram você a participar do ENEM: Participar do Programa de Financiamento Estudantil – FIES"
Q039	"Indique os motivos que levaram você a participar do ENEM: Participar do Programa Ciências Sem Fronteiras"
Q040	"Indique os motivos que levaram você a participar do ENEM: Aumentar a possibilidade de conseguir um emprego"
Q041	"Indique os motivos que levaram você a participar do ENEM: Progredir no meu emprego atual"
Q042	"Em que tipo de escola você frequentou o Ensino Fundamental?"
Q043	"Marque entre as opções abaixo aquela que melhor descreve a modalidade de Ensino Fundamental que você frequentou"
Q044	"Em que turno você frequentou o Ensino Fundamental?"
Q045	"Durante o Ensino Fundamental, você abandonou os estudos e/ou foi reprovado?"
Q046	"Você já concluiu ou está concluindo o Ensino Médio?"
Q047	"Em que tipo de escola você frequentou o Ensino Médio?"
Q048	"Marque entre as opções abaixo aquela que melhor descreve a modalidade de Ensino Médio que você frequentou"
Q049	"Em que turno você frequentou o Ensino Médio?"
Q050	"Durante o Ensino Médio, você abandonou os estudos por algum tempo e/ou foi reprovado?"                                                                
.



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
	4	"Escola extinta em anos anteriores"
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
	2	"Estou cursando e concluirei o Ensino Médio em 2015"
	3	"Estou cursando e concluirei o Ensino Médio após 2015"
	4	"Não concluí e não estou cursando o Ensino Médio"
	/TP_ANO_CONCLUIU
	0	"Nã?o informado"
	1	"2015"
	2	"2014"
	3	"2013"
	4	"2012"
	5	"2011"
	6	"2010"
	7	"2009"
	8	"2008"
	9	"2007"
	10	"Anterior a 2007"
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
	0	"Solteiro(a)"
	1	"Casado(a)/Mora com um(a) companheiro(a)"
	2	"Divorciado(a)/Desquitado(a)/Separado(a)"
	3	"Viúvo(a)"
/TP_COR_RACA	 	
	0	"Não declarado"
	1	"Branca"
	2	"Preta"
	3	"Parda"
	4	"Amarela"
	5	"Indígena"
	6	"Não dispõe da informação"
/IN_CERTIFICADO	 	 
	1	"Sim"
	0	"Não"
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
	235	"Azul"
	236	"Amarelo"
	237	"Branco"
	238	"Rosa"
	252	"Branco-Adaptada(Braile e Ledor)"
	275	"Azul (REAPLICAÇÃO)"
	276	"Amarelo (REAPLICAÇÃO)"
	277	"Branco (REAPLICAÇÃO)"
	278	"Rosa (REAPLICAÇÃO)"
/CO_PROVA_CH	 	
	231	"Azul"
	232	"Amarelo"
	233	"Branco"
	234	"Rosa"
	251	"Branco-Adaptada(Braile e Ledor)"
	271	"Azul (REAPLICAÇÃO)"
	272	"Amarelo (REAPLICAÇÃO)"
	273	"Branco (REAPLICAÇÃO)"
	274	"Rosa (REAPLICAÇÃO)"
/CO_PROVA_LC	 	
	239	"Amarelo"
	240	"Cinza"
	241	"Azul"
	242	"Rosa"
	253	"Cinza - Adaptada (Braile e Ledor)"
	279	"Amarelo (REAPLICAÇÃO)"
	280	"Cinza (REAPLICAÇÃO)"
	281	"Azul (REAPLICAÇÃO)"
	282	"Rosa (REAPLICAÇÃO)"
/CO_PROVA_MT	 	
	243	"Amarelo"
	244	"Cinza"
	245	"Azul"
	246	"Rosa"
	254	"Cinza - Adaptada (Braile e Ledor)"
	283	"Amarelo (REAPLICAÇÃO)"
	284	"Cinza (REAPLICAÇÃO)"
	285	"Azul (REAPLICAÇÃO)"
	286	"Rosa (REAPLICAÇÃO)"
/TP_LINGUA	 	
	0	"Inglês"
	1	"Espanhol"
/TP_STATUS_REDACAO	 	 
	1	"Sem problemas"
	2	"Anulada"
	3	"Cópia Texto Motivador"
	4	"Em Branco"
	5	"Fere Direitos Humanos"
	6	"Fuga ao tema"
	7	"Não atendimento ao tipo"
	8	"Texto insuficiente"
	9	"Parte desconectada"
	98	"Não atendimento ao item 2.2.5 do edital do exame"
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
	"B"	 "Até R$ 788,00"
	"C"	 "De R$ 788,01 até R$ 1.182,00"
	"D"	 "De R$ 1.182,01 até R$ 1.572,00"
	"E"	 "De R$ 1.572,01 até R$ 1.970,00"
	"F"	 "De R$ 1.970,01 até R$ 2.364,00"
	"G"	 "De R$ 2.364,01 até R$ 3.152,00"
	"H"	 "De R$ 3.152,01 até R$ 3.940,00"
	"I"	 "De R$ 3.940,01 até R$ 4.728,00"
	"J"	 "De R$ 4.728,01 até R$ 5.516,00"
	"K"	 "De R$ 5.516,01 até R$ 6.304,00"
	"L"	 "De R$ 6.304,01 até R$ 7.092,00"
	"M"	 "De R$ 7.092,01 até R$ 7.880,00"
	"N"	 "De R$ 7.880,01 até R$ 9.456,00"
	"O"	 "De R$ 9.456,01 até R$ 11.820,00"
	"P"	 "De R$ 11.820,01 até R$ 15.760,00"
	"Q"	 "Mais de 15.760,00"
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
	"A"	"Não, nunca trabalhei"
	"B"	"Sim, já trabalhei, mas não estou trabalhando"
	"C"	"Sim, estou trabalhando"
/Q027		
	"A"	"Menos de 14 anos"
	"B"	"15 anos"
	"C"	"16 anos"
	"D"	"17 anos"
	"E"	"18 anos"
	"F"	"19 anos"
	"G"	"20 anos"
	"H"	"21 anos"
	"I"	"22 anos"
	"J"	"23 anos"
	"K"	"24 anos"
	"L"	"25 anos ou mais"
/Q028		
	"A"	"Até 10 horas semanais"
	"B"	"De 11 a 20 horas semanais"
	"C"	"De 21 a 30 horas semanais"
	"D"	"De 31 a 40 horas semanais"
	"E"	"Mais de 40 horas semanais"
/Q042	 	 
	"A"	"Somente em escola pública"
	"B"	"A maior parte em escola pública"
	"C"	"Somente em escola particular"
	"D"	"A maior parte em escola particular"
	"E"	"Somente em escola indígena"
	"F"	"A maior parte em escola indígena"
	"G"	"Somente em escola situada em comunidade quilombola"
	"H"	"A maior parte em escola situada em comunidade quilombola"
/Q043		
	"A"	"Cursei o Ensino Fundamental somente na modalidade regular"
	"B"	"Cursei o Ensino Fundamental parte na modalidade regular e parte na modalidade EJA (Educação de Jovens e Adultos)"
	"C"	"Cursei o Ensino Fundamental somente na modalidade EJA (Educação de Jovens e Adultos)"
	"D"	"Outras modalidades"
/Q044	 	 
	"A"	"Somente no diurno"
	"B"	"Parte no diurno e parte no noturno"
	"C"	"Somente no noturno"
/Q045	 	 
	"A"	"Não abandonei, nem fui reprovado"
	"B"	"Não abandonei, mas fui reprovado"
	"C"	"Abandonei, mas não fui reprovado"
	"D"	"Abandonei e fui reprovado"
/Q046	 	 
	"A"	"Já concluí o Ensino Médio"
	"B"	"Estou cursando e concluirei o Ensino Médio em 2015"
	"C"	"Estou cursando e concluirei o Ensino Médio após 2015"
	"D"	"Não concluí e não estou cursando o Ensino Médio"
/Q047	 	 
	"A"	"Somente em escola pública"
	"B"	"Parte em escola pública e parte em escola privada sem bolsa de estudo integral"
	"C"	"Parte em escola pública e parte em escola privada com bolsa de estudo integral"
	"D"	"Somente em escola privada sem bolsa de estudo integral"
	"E"	"Somente em escola privada com bolsa de estudo integral"
/Q048	 	
	"A"	"Cursei o Ensino Médio somente na modalidade regular"
	"B"	"Cursei o Ensino Médio parte na modalidade regular e parte na modalidade EJA (Educação de Jovens 	e Adultos)"
	"C"	"Cursei o Ensino Médio somente na modalidade EJA (Educação de Jovens e Adultos)"
	"D"	"Outras modalidades"
/Q049		
	"A"	"Somente no diurno"
	"B"	"Parte no diurno e parte no noturno"
	"C"	"Somente no noturno"
/Q050		
	"A"	"Não abandonei, nem fui reprovado"
	"B"	"Não abandonei, mas fui reprovado"
	"C"	"Abandonei, mas não fui reprovado"
	"D"	"Abandonei e fui reprovado"
/SG_UF_ESC
	"AC"	"Acre"
	"AL"	"Alagoas"
	"AP"	"Amapá"
	"AM"	"Amazonas"
	"BA"	"Bahia"
	"CE"	"Ceará"
	"DF"	"Distrito Federal"
	"ES"	"Espírito Santo"
	"GO"	"Goiás"
	"MA"	"Maranhão"
	"MT"	"Mato Grosso"
	"MS"	"Mato Grosso do Sul"
	"MG"	"Minas Gerais"
	"PA"	"Pará"
	"PB"	"Paraíba"
	"PR"	"Paraná"
	"PE"	"Pernambuco"
	"PI"	"Piauí"
	"RJ"	"Rio de Janeiro"
	"RN"	"Rio Grande do Norte"
	"RS"	"Rio Grande do Sul"
	"RO"	"Rondônia"
	"RR"	"Roraima"
	"SC"	"Santa Catarina"
	"SP"	"São Paulo"
	"SE"	"Sergipe"
	"TO"	"Tocantins"
/SG_UF_PROVA
	"AC"	"Acre"
	"AL"	"Alagoas"
	"AP"	"Amapá"
	"AM"	"Amazonas"
	"BA"	"Bahia"
	"CE"	"Ceará"
	"DF"	"Distrito Federal"
	"ES"	"Espírito Santo"
	"GO"	"Goiás"
	"MA"	"Maranhão"
	"MT"	"Mato Grosso"
	"MS"	"Mato Grosso do Sul"
	"MG"	"Minas Gerais"
	"PA"	"Pará"
	"PB"	"Paraíba"
	"PR"	"Paraná"
	"PE"	"Pernambuco"
	"PI"	"Piauí"
	"RJ"	"Rio de Janeiro"
	"RN"	"Rio Grande do Norte"
	"RS"	"Rio Grande do Sul"
	"RO"	"Rondônia"
	"RR"	"Roraima"
	"SC"	"Santa Catarina"
	"SP"	"São Paulo"
	"SE"	"Sergipe"
	"TO"	"Tocantins".