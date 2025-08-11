/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_1998                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_1998     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_1998.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_1998.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
NU_INSCRICAO A8
NU_ANO F8.0
TP_FAIXA_ETARIA F2.0
TP_SEXO A1
CO_MUNICIPIO_RESIDENCIA F8.0
NO_MUNICIPIO_RESIDENCIA A50
CO_UF_RESIDENCIA F8.0
SG_UF_RESIDENCIA A2
TP_PRESENCA F8.0
CO_PROVA A8
VL_PERC_COMP1  COMMA9.2
VL_PERC_COMP2  COMMA9.2
VL_PERC_COMP3  COMMA9.2
VL_PERC_COMP4  COMMA9.2
VL_PERC_COMP5  COMMA9.2
NU_NOTA_OBJETIVA  COMMA9.2
TX_RESPOSTAS_OBJETIVA A63
TX_GABARITO_OBJETIVA A63
TP_STATUS_REDACAO A1
NU_NOTA_COMP1  COMMA9.2
NU_NOTA_COMP2  COMMA9.2
NU_NOTA_COMP3  COMMA9.2
NU_NOTA_COMP4  COMMA9.2
NU_NOTA_COMP5  COMMA9.2
NU_NOTA_REDACAO  COMMA9.2
IN_QSE F8.0
Q1 A1
Q2 A1
Q3 A1
Q4 A1
Q5 A1
Q6 A1
Q7 A1
Q8 A1
Q9 A1
Q10 A1
Q11 A1
Q12 A1
Q13 A1
Q14 A1
Q15 A1
Q16 A1
Q17 A1
Q18 A1
Q19 A1
Q20 A1
Q21 A1
Q22 A1
Q23 A1
Q24 A1
Q25 A1
Q26 A1
Q27 A1
Q28 A1
Q29 A1
Q30 A1
Q31 A1
Q32 A1
Q33 A1
Q34 A1
Q35 A1
Q36 A1
Q37 A1
Q38 A1
Q39 A1
Q40 A1
Q41 A1
Q42 A1
Q43 A1
Q44 A1
Q45 A1
Q46 A1
Q47 A1
Q48 A1
Q49 A1
Q50 A1
Q51 A1
Q52 A1
Q53 A1
Q54 A1
Q55 A1
Q56 A1
Q57 A1
Q58 A1
Q59 A1
Q60 A1
Q61 A1
Q62 A1
Q63 A1
Q64 A1
Q65 A1
Q66 A1
Q67 A1
Q68 A1
Q69 A1
Q70 A1
Q71 A1
Q72 A1
Q73 A1
Q74 A1
Q75 A1
Q76 A1
Q77 A1
Q78 A1
Q79 A1
Q80 A1
Q81 A1
Q82 A1
Q83 A1
Q84 A1
Q85 A1
Q86 A1
Q87 A1
Q88 A1
Q89 A1
Q90 A1
Q91 A1
Q92 A1
Q93 A1
Q94 A1
Q95 A1
Q96 A1
Q97 A1
Q98 A1
Q99 A1
Q100 A1
Q101 A1
Q102 A1
Q103 A1
Q104 A1
Q105 A1
Q106 A1
Q107 A1
Q108 A1
Q109 A1
Q110 A1
Q111 A1
Q112 A1
Q113 A1
Q114 A1
Q115 A1
Q116 A1
Q117 A1
Q118 A1
Q119 A1
Q120 A1
Q121 A1
Q122 A1
Q123 A1
Q124 A1
Q125 A1
Q126 A1
Q127 A1
Q128 A1
Q129 A1
Q130 A1
Q131 A1
Q132 A1
Q133 A1
Q134 A1
Q135 A1
Q136 A1
Q137 A1
.
CACHE.
EXECUTE.
DATASET NAME ENEM_1998 WINDOW=FRONT.

VARIABLE LABELS
NU_INSCRICAO "N�mero de inscri��o no ENEM."
NU_ANO	"Ano do Enem"
TP_FAIXA_ETARIA	"Faixa et�ria do inscrito"
TP_SEXO	"Sexo do inscrito"
CO_MUNICIPIO_RESIDENCIA   " C�digo do Munic�pio em que o inscrito mora:"
NO_MUNICIPIO_RESIDENCIA   " Nome do munic�pio em que o inscrito mora"
CO_UF_RESIDENCIA   " C�digo da Unidade da Federa��o da residencia do inscrito"
SG_UF_RESIDENCIA   " Sigla da Unidade da Federa��o da residencia do inscrito"
TP_PRESENCA   " Presen�a a prova objetiva"
CO_PROVA   " Tipo de prova"
VL_PERC_COMP1   " Nota da compet�ncia 1"
VL_PERC_COMP2   " Nota da compet�ncia 2"
VL_PERC_COMP3   " Nota da compet�ncia 3"
VL_PERC_COMP4   " Nota da compet�ncia 4"
VL_PERC_COMP5   " Nota da compet�ncia 5"
NU_NOTA_OBJETIVA   " Nota da prova objetiva"
TX_RESPOSTAS_OBJETIVA   " Vetor com as respostas da parte objetiva da prova"
TX_GABARITO_OBJETIVA   " Vetor com o gabarito da parte objetiva da prova"
TP_STATUS_REDACAO   " Presen�a � reda��o"
NU_NOTA_COMP1   " Nota da compet�ncia 1"
NU_NOTA_COMP2   " Nota da compet�ncia 2"
NU_NOTA_COMP3   " Nota da compet�ncia 3"
NU_NOTA_COMP4   " Nota da compet�ncia 4"
NU_NOTA_COMP5   " Nota da compet�ncia 5"
NU_NOTA_REDACAO   " Nota da prova de reda��o"
IN_QSE   " Resposta ao Question�rio Socioecon�mico"
Q1 "Sexo"
Q2 "Ano em que nasceu"
Q3 "Entre que meses nasceu"
Q4 "Como se considera"
Q5 "Qual o estado civil"
Q6 "Com quem  mora"
Q7 "Quantidade de pessoas que moram no domic�lio incluindo o candidato"
Q8 "Quantidade de irm�os do candidato do ENEM"
Q9 "Quantidade de filhos do candidato do ENEM"
Q10 "O grau de escolaridade do pai do candidato"
Q11 "Qual a profiss�o ou ocupa��o do pai"
Q12 "O grau de escolaridade da m�e do candidato"
Q13 "Qual a profiss�o ou ocupa��o da m�e"
Q14 "Anos que levou para concluir o ensino fundamental (1� grau)"
Q15 "Tipo de escola que cursou o ensino fundamental (1� grau)"
Q16 "Depend�ncia administrativa do estabelecimento que o candidato do ENEM concluiu o ensino fundamental (1� grau)"
Q17 "Modalidade de ensino que o candidato concluiu o ensino fundamental"
Q18 "Ano de conclus�o do ensino m�dio (2� grau)"
Q19 "Anos que levou para concluir o ensino m�dio (2� grau)"
Q20 "Turno que cursou o ensino m�dio (2� grau)"
Q21 "Turno que concluir� ou concluiu o ensino m�dio (2� grau)"
Q22 "Tipo de estabelecimento que concluir� ou conclui o ensino m�dio (2� grau)"
Q23 "Tipo de escola que cursou o ensino m�dio (2�grau)"
Q24 "Modalidade de ensino que o candidato concluiu o ensino m�dio (2� grau)"
Q25 "Fez curso/atividade: de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)"
Q26 "Fez curso/atividade: de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)"
Q27 "Fez curso/atividade: de instrumento musical fora da escola durante o ensino m�dio (2� grau)"
Q28 "Fez curso/atividade: ginastica, esportes fora da escola durante o ensino m�dio (2� grau)"
Q29 "Fez curso/atividade: artes pl�sticas em geral fora da escola durante o ensino m�dio (2� grau)"
Q30 "Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)"
Q31 "Fez outra atividade ou curso l fora da escola durante o ensino m�dio (2� grau)"
Q32 "Com que frequ�ncia l� jornais"
Q33 "Com que frequ�ncia l� revistas de informa��o geral"
Q34 "Com que frequ�ncia l� revistas de humor / quadrinhos"
Q35 "Com que frequ�ncia l� revistas cient�ficas (Ci�ncia Hoje, Super Interessante, etc.)"
Q36 "Com que frequ�ncia l� romances, livros de fic��o"
Q37 "O quanto � importante para o candidato ser um sucesso na sua carreira ou no seu trabalho"
Q38 "O quanto � importante para o candidato ter um bom trabalho ou uma boa profiss�o"
Q39 "O quanto � importante para o candidato  ter um diploma universit�rio"
Q40 "O quanto � importante para o candidato conseguir um emprego"
Q41 "O quanto � importante para o candidato ganhar um bom sal�rio"
Q42 "O quanto � importante para o candidato construir uma fam�lia, ter filhos? (se ainda n�o tem sua pr�pria fam�lia)"
Q43 "O quanto � importante para o candidato encontrar um(a) parceiro(a) e casar? (se ainda n�o � casado  ou casada)"
Q44 "Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de conseguir um emprego"
Q45 "Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de utilizar no trabalho ou na profiss�o as habilidades que   desenvolveu no ensino m�dio (2� grau)"
Q46 "Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de ganhar um bom sal�rio"
Q47 "Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de  ser um sucesso no trabalho ou na profiss�o"
Q48 "Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de trabalhar por conta pr�pria/abrir seu pr�prio neg�cio"
Q49 "Em rela��o a sua experi�ncia educacional em todo o per�odo do ensino m�dio (2� grau), o candidato do ENEM se sente:"
Q50 "Voc� continuar� seus estudos ou seu trabalho utilizando o conhecimento te�rico e pr�tico recebido no ensino m�dio (2� grau)"
Q51 "Ao terminar o ensino m�dio (2� grau) o candidato do ENEM se considera capacitado(a) para desenvolver uma carreira ou um trabalho na sociedade moderna utilizando os conhecimentos de inform�tica adquiridos na escola;"
Q52 "Ao terminar o ensino m�dio (2� grau) o candidato do ENEM se considera capacitado(a) para desenvolver uma carreira ou um trabalho na sociedade moderna utilizando os de l�ngua estrangeira adquiridos na escola:"
Q53 "Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende procurar um emprego e trabalhar"
Q54 "Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende prestar vestibular e continuar os estudos no ensino superior"
Q55 "Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende fazer curso(s) profissionalizante(s) e me preparar para o trabalho"
Q56 "Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende trabalhar por conta pr�pria/trabalhar em neg�cio da fam�lia"
Q57 "Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende constituir uma fam�lia/encontrar um(a) companheiro(a) e casar/casar e ter filhos"
Q58 "Voc� considera que conhece suficientemente a atividade de trabalho que voc� escolheu"
Q59 "Voc� considera que desenvolveu no ensino m�dio (2� grau) as habilidades e t�cnicas necess�rias para trabalhar na atividade que voc� escolheu"
Q60 "O quanto � importante para o candidato estar formando ou ter-se formado no ensino m�dio (2� grau)"
Q61 "A obten��o de um certificado de conclus�o de curso/obten��o de um diploma foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?"
Q62 "Forma��o b�sica necess�ria para obter um emprego melhor  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?"
Q63 "Forma��o b�sica necess�ria para obter um emprego melhor  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?"
Q64 "� aquisi��o de cultura geral/amplia��o de minha forma��o pessoal  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?"
Q65 "� forma��o b�sica necess�ria para continuar os estudos em uma universidade/faculdade  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?"
Q66 "Fazer muitos amigos/conhecer v�rias pessoas foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?"
Q67 "Atender a expectativa de meus pais em rela��o a meus estudos  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?"
Q68 "Voc� tem amigos que usam drogas"
Q69 "Voc� se interessa  em acompanhar a politica ?"
Q70 "Voc� se interessa  em  acompanhar esportes?"
Q71 "Voc� se interessa  em  acompanhar assuntos econ�micos?"
Q72 "Voc� se interessa  em acompanhar assuntos de moda?"
Q73 "Voc� se interessa  em acompanhar atividades culturais, como teatro, pintura, arte, etc.?"
Q74 "Voc� se interessa  em  acompanhar quest�es sobre comportamento sexual, como a AIDS, a gravidez indesejada etc."
Q75 "Voc� se interessa  em acompanhar quest�es sobre o meio ambiente?"
Q76 "Voc� se interessa  em  quest�es sociais, como pobreza, o desemprego, a viol�ncia etc."
Q77 "Voc� frequenta ou participa: igreja ou grupo religioso"
Q78 "Voc� frequenta ou participa:  partido pol�tico ou movimento social."
Q79 "Voc� frequenta ou participa: sindicato ou associa��o profissional."
Q80 "Voc� frequenta ou participa:  grupo de bairro ou associa��o comunit�ria"
Q81 "Voc� frequenta ou participa: clube recreativo ou associa��o esportiva."
Q82 "Voc� frequenta ou participa:  gr�mio estudantil"
Q83 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Estudar."
Q84 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Trabalhar."
Q85 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Conviver com os amigos."
Q86 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Estar com a fam�lia."
Q87 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Ter um envolvimento amoroso, namorar."
Q88 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Programas culturais, ir ao teatro, ao cinema, etc."
Q89 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Escutar r�dio, assistir televis�o."
Q90 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Ir a festas, bares."
Q91 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Ler livros de fic��o, romances."
Q92 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Fazer algum trabalho para a comunidade, ajudar as pessoas."
Q93 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Praticar esportes, fazer gin�stica, cuidar do f�sico."
Q94 "Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Ter uma atividade pol�tica, participar de movimentos ou partidos."
Q95 "Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento durante o ensino m�dio (2� grau)"
Q96 "Caso o candidato tenha trabalhado durante o ensino m�dio (2� grau), com que idade ele come�ou a exercer atividade remunerada"
Q97 "Voc� est� trabalhando atualmente?"
Q98 "Se voc� est� trabalhando atualmente, qual � a sua renda ou o seu sal�rio mensal?"
Q99 "Voc� continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau)"
Q100 "Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: curso de especializa��o/curso t�cnico"
Q101 "Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando:  curso preparat�rio para vestibular"
Q102 "Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: curso superior/universidade/faculdade"
Q103 "Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: curso de l�nguas"
Q104 "Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: curso de computa��o"
Q105 "Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: outro curso"
Q106 "Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo: curso de especializa��o/curso t�cnico"
Q107 "Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo: curso preparat�rio para vestibular, mas n�o ingressei no  curso superior"
Q108 "Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo: Ingressou no curso superior/universidade/faculdade e me formei"
Q109 "Ingressou no curso superior/universidade/faculdade, mas n�o  me formei"
Q110 "Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo:  curso de l�ngua estrangeira"
Q111 "Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo:  curso de computa��o ou inform�tica"
Q112 "Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo: outro curso"
Q113 "Voc� est� trabalhando?"
Q114 "Se est� trabalhando, qual � a sua atividade"
Q115 "Est� atualmente trabalhando na ocupa��o para a qual voc� se preparou nos estudos"
Q116 "H� quanto tempo est� trabalhando nessa atividade"
Q117 "Se est� trabalhando atualmente, qual � a renda ou o seu sal�rio mensal"
Q118 "Se n�o est� trabalhando atualmente, qual � o principal motivo"
Q119 "Voc� participa com sua renda mensal no sustento econ�mico de sua fam�lia"
Q120 "Se voc� tem fam�lia qual a renda total mensal aproximada, no seu domic�lio?"
Q121 "Sua fam�lia tem Autom�vel"
Q122 "Sua fam�lia tem TV em cores"
Q123 "Sua fam�lia tem Microcomputador"
Q124 "Sua fam�lia tem Videocassete"
Q125 "Sua fam�lia tem M�quina de lavar roupa"
Q126 "Sua fam�lia tem aspirador de p�"
Q127 "Sua fam�lia tem geladeira"
Q128 "Sua fam�lia tem freezer"
Q129 "Sua fam�lia tem  casa pr�pria"
Q130 "Sua fam�lia tem  empregada mensalista"
Q131 "Sua fam�lia tem bicicleta"
Q132 "Sua fam�lia tem motocicleta"
Q133 "Sua fam�lia tem autom�vel"
Q134 "Sua fam�lia tem instrumento musical"
Q135 "Sua fam�lia tem mesa de estudos pr�pria"
Q136 "Sua fam�lia tem calculadora de bolso"
Q137 "Sua fam�lia tem microcomputador"
.

VALUE LABELS
TP_FAIXA_ETARIA
	1   "Menor de 17 anos"
	2   "17 anos"
	3   "18 anos"
	4   "19 anos"
	5   "20 anos"
	6   "21 anos"
	7   "22 anos"
	8   "23 anos"
	9   "24 anos"
	10  "25 anos"
	11  "Entre 26 e 30 anos"
	12  "Entre 31 e 35 anos"
	13  "Entre 36 e 40 anos"
	14  "Entre 41 e 45 anos"
	15  "Entre 46 e 50 anos"
	16  "Entre 51 e 55 anos"
	17  "Entre 56 e 60 anos"
	18  "Entre 61 e 65 anos"
	19  "Entre 66 e 70 anos"
	20  "Maior de 70 anos"
/TP_SEXO
	 "M" "Masculino"
	 "F" "Feminino"
/TP_PRESENCA
 	0 "Faltou � prova"
 	1 "Presente � prova"
/CO_PROVA
	"A" "Amarela"
	"B" "Branca"
	"G" "Grafite"
	"Z" "Azul"
/TP_STATUS_REDACAO
 	"F" "Faltou � prova"
  	"P" "Presente � prova"
/IN_QSE
 	1 "Respondeu o question�rio socioec�mico"
 	0 "N�o respondeu o question�rio socioec�mico"
/Q1
	"A" "Feminino"
	"B" "Masculino"
/Q2
	"A" "Ap�s 1981"
	"B" "1981"
	"C" "1980"
	"D" "1979"
	"E" "1978"
	"F" "1977"
	"G" "Entre 1973 e 1976"
	"H" "Antes de 1973"
/Q3
	"A" "Janeiro e Julho"
	"B" "Agosto a Dezembro"
/Q4
	"A" "Branco(a)."
	"B" "Pardo(a)"
	"C" "Negro(a)."
	"D" "Amarelo(a)"
	"E" "Ind�gena."
/Q5
	"A" "Solteiro(a)"
	"B" "Casado(a) / mora com um(a) companheiro(a)"
	"C" "Separado(a) / divorciado(a) / desquitado(a)"
	"D" "Vi�vo(a)"
/Q6
	"A" "Com o pai e m�e"
	"B" "S� com o pai"
	"C" "S� com a m�e"
	"D" "Com parentes/amigos"
	"E" "Com pai e m�e em nova uni�o"
	"F" "Sozinho(a)"
	"G" "Outra situa��o"
/Q7
	"A" "Uma pessoa"
	"B" "Duas pessoas"
	"C" "Tr�s pessoas"
	"D" "Quatro pessoas"
	"E" "Cinco pessoas"
	"F" "Seis pessoas"
	"G" "Mais de seis pessoas"
/Q8
	"A" "N�o tenho irm�os"
	"B" "Um irm�o"
	"C" "Dois irm�os"
	"D" "Tr�s irm�os"
	"E" "Quatro ou mais irm�os"
/Q9
	"A" "N�o tenho filhos"
	"B" "Um filho"
	"C" "Dois filhos"
	"D" "Tr�s filhos"
	"E" "Quatro ou mais filhos"
/Q10
	"A" "Nunca frequentou a escola"
	"B" "Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto"
	"E" "Ensino M�dio (2� grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o"
/Q11
	"A" "Trabalhador do setor de produ��o industrial (com registro ou carteira assinada)"
	"B" "Trabalhador do setor prim�rio/agricultura/pecu�ria/pesca (com registro ou carteira assinada)"
	"C" "Trabalhador do setor de presta��o de servi�os/com�rcio/banco/transporte, etc. (com registro ou carteira assinada)"
	"D" "Funcion�rio do setor p�blico"
	"E" "Gerente, administrador ou diretor de empresa privada"
	"F" "Trabalha no pr�prio neg�cio/empresa ou com�rcio pr�prio"
	"G" "Profissional liberal, professor, t�cnico de n�vel superior"
	"H" "Trabalhador do setor informal (sem carteira assinada)"
	"I" "Desempregado"
	"J" "Aposentado"
	"L" "N�o sei"
/Q12
	"A" "Nunca frequentou a escola"
	"B" "Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto"
	"E" "Ensino M�dio (2� grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o"
/Q13
	"A" "Trabalhadora do setor de produ��o industrial (com registro ou carteira assinada)"
	"B" "Trabalhadora do setor prim�rio/agricultura/pecu�ria/pesca (com registro ou carteira assinada)"
	"C" "Trabalhadora do setor de presta��o de servi�os/com�rcio/banco/transporte, etc. (com registro ou carteira assinada)"
	"D" "Funcion�ria do setor p�blico"
	"E" "Gerente, administradora ou diretora de empresa privada"
	"F" "Trabalha no pr�prio neg�cio/empresa ou com�rcio pr�prio"
	"G" "Profissional liberal, professora, t�cnica de n�vel superior"
	"H" "Trabalhadora do setor informal (sem carteira assinada)"
	"I" "Desempregada "
	"J" "Aposentada "
	"L" "Dona de casa"
	"M" "N�o sei"
/Q14
	"A" "Menos de 8 anos "
	"B" "8 anos"
	"C" "9 anos"
	"D" "10 anos"
	"E" "11 anos"
	"F" "Mais de 11 anos"
/Q15
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular "
	"C" "Somente em escola particular"
/Q16
	"A" "Federal "
	"B" "Estadual "
	"C" "Municipal"
	"D" "Particular"
/Q17
	"A" "Ensino regular"
	"B" "Ensino supletivo"
/Q18
	"A" "Vou conclu�-lo no segundo semestre de 1998 "
	"B" "Conclu�-o no primeiro semestre de 1998 "
	"C" "Conclu�-o em 1997"
	"D" "Conclu�-o em 1996"
	"E" "Conclu�-o em 1995"
	"F" "Conclu�-o entre 1991 e 1994 "
	"G" "Conclu�-o antes de 1991"
/Q19
	"A" "Menos de 3 anos "
	"B" "3 anos"
	"C" "4 anos"
	"D" "5 anos"
	"E" "6 anos"
	"F" "Mais de 6 anos"
/Q20
	"A" "Somente no turno diurno"
	"B" "Parte no turno diurno e parte no turno noturno "
	"C" "Somente no turno noturno"
/Q21
	"A" "Somente no turno diurno"
	"B" "Somente no turno noturno"
/Q22
	"A" "Federal "
	"B" "Estadual "
	"C" "Municipal"
	"D" "Particular"
/Q23
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular "
	"C" "Somente em escola particular"
/Q24
	"A" "Ensino regular"
	"B" "Ensino supletivo"
/Q25
	"A" "Sim"
	"B" "N�o"
/Q26
	"A" "Sim"
	"B" "N�o"
/Q27
	"A" "Sim"
	"B" "N�o"
/Q28
	"A" "Sim"
	"B" "N�o"
/Q29
	"A" "Sim"
	"B" "N�o"
/Q30
	"A" "Sim"
	"B" "N�o"
/Q31
	"A" "Sim"
	"B" "N�o"
/Q32
	"A" "Sempre "
	"B" "�s vezes"
	"C" "N�o"
/Q33
	"A" "Sempre "
	"B" "�s vezes"
	"C" "N�o"
/Q34
	"A" "Sempre "
	"B" "�s vezes"
	"C" "N�o"
/Q35
	"A" "Sempre "
	"B" "�s vezes"
	"C" "N�o"
/Q36
	"A" "Sempre "
	"B" "�s vezes"
	"C" "N�o"
/Q37
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q38
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q39
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q40
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q41
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q42
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q43
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q44
	"A" "N�o sei"
	"B" "J� consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q45
	"A" "N�o sei"
	"B" "J� consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q46
	"A" "N�o sei"
	"B" "J� consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q47
	"A" "N�o sei"
	"B" "J� consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q48
	"A" "N�o sei"
	"B" "J� consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q49
	"A" "N�o sei"
	"B" "J� consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q50
	"A" "N�o "
	"B" "Preferencialmente n�o "
	"C" "Talvez"
	"D" "Certamente"
/Q51
	"A" "Sim, na escola obtive algum conhecimento de inform�tica e uso de computadores"
	"B" "Sim, mas obtive os conhecimentos de inform�tica fora da escola regular"
	"C" "N�o, nunca tive acesso ao conhecimento de computadores e inform�tica"
/Q52
	"A" "Sim, na escola obtive algum conhecimento de inform�tica e uso de computadores"
	"B" "Sim, mas obtive os conhecimentos de inform�tica fora da escola regular"
	"C" "N�o, nunca tive acesso ao conhecimento de computadores e inform�tica"
/Q53
	"A" "N�o pretendo"
	"B" "Imediatamente ap�s estar formado"
	"C" "No decorrer dos pr�ximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q54
	"A" "N�o pretendo"
	"B" "Imediatamente ap�s estar formado"
	"C" "No decorrer dos pr�ximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q55
	"A" "N�o pretendo"
	"B" "Imediatamente ap�s estar formado"
	"C" "No decorrer dos pr�ximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q56
	"A" "N�o pretendo"
	"B" "Imediatamente ap�s estar formado"
	"C" "No decorrer dos pr�ximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q57
	"A" "N�o pretendo"
	"B" "Imediatamente ap�s estar formado"
	"C" "No decorrer dos pr�ximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q58
	"A" "Sim, muito"
	"B" "Conhe�o razoavelmente "
	"C" "Conhe�o pouco"
	"D" "N�o conhe�o nada sobre essa atividade"
/Q59
	"A" "Sim"
	"B" "Adquiri-as razoavelmente "
	"C" "Adquiri algumas"
	"D" "N�o adquiri nenhuma habilidade ou t�cnica necess�rias a essa atividade"
/Q60
	"A" "Muito importante "
	"B" "Importante  "
	"C" "Pouco importante"
	"D" "Nem um pouco importante"
/Q61
	"A" "Sim"
	"B" "N�o"
/Q62
	"A" "Sim"
	"B" "N�o"
/Q63
	"A" "Sim"
	"B" "N�o"
/Q64
	"A" "Sim"
	"B" "N�o"
/Q65
	"A" "Sim"
	"B" "N�o"
/Q66
	"A" "Sim"
	"B" "N�o"
/Q67
	"A" "Sim"
	"B" "N�o"
/Q68
	"A" "Sim, amigos pr�ximos."
	"B" "Sim, amigos distantes."
	"C" "N�o."
/Q69
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "S� um pouco"
	"D" "N�o, n�o me interesso"
/Q70
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "S� um pouco"
	"D" "N�o, n�o me interesso"
/Q71
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "S� um pouco"
	"D" "N�o, n�o me interesso"
/Q72
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "S� um pouco"
	"D" "N�o, n�o me interesso"
/Q73
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "S� um pouco"
	"D" "N�o, n�o me interesso"
/Q74
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "S� um pouco"
	"D" "N�o, n�o me interesso"
/Q75
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "S� um pouco"
	"D" "N�o, n�o me interesso"
/Q76
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "S� um pouco"
	"D" "N�o, n�o me interesso"
/Q77
	"A" "Sim, sempre "
	"B" "Sim, �s vezes"
	"C" "N�o"
/Q78
	"A" "Sim, sempre "
	"B" "Sim, �s vezes"
	"C" "N�o"
/Q79
	"A" "Sim, sempre "
	"B" "Sim, �s vezes"
	"C" "N�o"
/Q80
	"A" "Sim, sempre "
	"B" "Sim, �s vezes"
	"C" "N�o"
/Q81
	"A" "Sim, sempre "
	"B" "Sim, �s vezes"
	"C" "N�o"
/Q82
	"A" "Sim, sempre "
	"B" "Sim, �s vezes"
	"C" "N�o"
/Q83
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q84
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q85
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q86
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q87
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q88
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q89
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q90
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q91
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q92
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q93
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q94
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q95
	"A" "Sim, trabalhei durante todo o curso (at� 20 horas semanais)"
	"B" "Sim, trabalhei durante todo o curso (de 21 a 30 horas semanais)"
	"C" "Sim, trabalhei durante todo o curso (de 31 a 40 horas semanais)"
	"D" "Sim, mas trabalhei apenas durante alguns per�odos"
	"E" "N�o trabalhei durante esse tempo"
/Q96
	"A" "Antes dos 14 anos"
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Ap�s os 18 anos"
/Q97
	"A" "Sim"
	"B" "N�o, estou desempregado/estou procurando emprego"
/Q98
	"A" "At� 1 sal�rio m�nimo (at� R$130,00)"
	"B" "Entre 1 e 2 sal�rios m�nimos (entre R$131,00 e R$260,00)"
	"C" "De 2 a 5 sal�rios m�nimos (de R$261,00 a R$650,00)"
	"D" "De 5 a 10 sal�rio m�nimos (de R$651,00 a R$1.300,00)"
	"E" "De 10 a 30 sal�rios m�nimos (de R$1.301,00 a R$3.900,00)"
	"F" "De 30 a 50 sal�rios m�nimos (de R$3.901,00 a R$6.500,00)"
	"G" "Mais de 50 sal�rios m�nimos (mais de R$6.500,00)"
/Q99
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas n�o estou estudando no momento atual"
	"C" "N�o."
/Q100
	"A" "Sim"
	"B" "N�o"
/Q101
	"A" "Sim"
	"B" "N�o"
/Q102
	"A" "Sim"
	"B" "N�o"
/Q103
	"A" "Sim"
	"B" "N�o"
/Q104
	"A" "Sim"
	"B" "N�o"
/Q105
	"A" "Sim"
	"B" "N�o"
/Q106
	"A" "Sim"
	"B" "N�o"
/Q107
	"A" "Sim"
	"B" "N�o"
/Q108
	"A" "Sim"
	"B" "N�o"
/Q109
	"A" "Sim"
	"B" "N�o"
/Q110
	"A" "Sim"
	"B" "N�o"
/Q111
	"A" "Sim"
	"B" "N�o"
/Q112
	"A" "Sim"
	"B" "N�o"
/Q113
	"A" "Sim"
	"B" "N�o"
/Q114
	"A" "Trabalhador do setor de produ��o industrial"
	"B" "Trabalhador do setor prim�rio/agricultura/pecu�ria/pesca"
	"C" "Trabalhador do setor de presta��o de servi�os/com�rcio/banco/transporte, etc. (com registro ou carteira assinada)"
	"D" "Funcion�rio do setor p�blico"
	"E" "Gerente, administrador ou diretor de empresa privada"
	"F" "Trabalha no pr�prio neg�cio/empresa ou com�rcio pr�prio"
	"G" "Profissional liberal, professor, t�cnico de n�vel superior"
	"H" "Trabalhador do setor informal (sem carteira assinada)"
/Q115
	"A" "Sim"
	"B" "N�o, porque n�o consegui trabalho na minha profiss�o"
	"C" "N�o me preparei para um trabalho em espec�fico/minha forma��o foi geral"
/Q116
	"A" "Menos de 1 ano"
	"B" "Entre 1 e 2 anos"
	"C" "Entre 2 e 4 anos"
	"D" "Mais de 4 anos"
/Q117
	"A" "At� 1 sal�rio m�nimo (at� R$130,00)"
	"B" "Entre 1 e 2 sal�rios m�nimos (entre R$131,00 e R$260,00)"
	"C" "De 2 a 5 sal�rios m�nimos (de R$261,00 a R$650,00)"
	"D" "De 5 a 10 sal�rio m�nimos (de R$651,00 a R$1.300,00)"
	"E" "De 10 a 30 sal�rios m�nimos (de R$1.301,00 a R$3.900,00)"
	"F" "De 30 a 50 sal�rios m�nimos (de R$3.901,00 a R$6.500,00)"
	"G" "Mais de 50 sal�rios m�nimos (mais de R$6.500,00)"
/Q118
	"A" "N�o preciso trabalhar"
	"B" "Estava trabalhando, mas estou desempregado(a)"
	"C" "N�o consigo encontrar um trabalho na minha ocupa��o"
	"D" "Estou estudando"
/Q119
	"A" "Sim, com todo o meu rendimento"
	"B" "Sim, com parte do meu rendimento"
	"C" "N�o, tenho fam�lia, mas meus rendimentos s�o para meu pr�prio uso"
	"D" "N�o tenho rendimentos"
	"E" "N�o tenho fam�lia/meus rendimentos s�o s� para meu pr�prio uso"
/Q120
	"A" "At� 1 sal�rio m�nimo (at� R$130,00)"
	"B" "Entre 1 e 2 sal�rios m�nimos (entre R$131,00 e R$260,00)"
	"C" "De 2 a 5 sal�rios m�nimos (de R$261,00 a R$650,00)"
	"D" "De 5 a 10 sal�rio m�nimos (de R$651,00 a R$1.300,00)"
	"E" "De 10 a 30 sal�rios m�nimos (de R$1.301,00 a R$3.900,00)"
	"F" "De 30 a 50 sal�rios m�nimos (de R$3.901,00 a R$6.500,00)"
	"G" "Mais de 50 sal�rios m�nimos (mais de R$6.500,00)"
	"H" "N�o sabe"
/Q121
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q122
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q123
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q124
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q125
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q126
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q127
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q128
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q129
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q130
	"A" "N�o tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q131
	"A" "Sim"
	"B" "N�o"
	"C" "N�o, mas pretendo ter num futuro pr�ximo"
/Q132
	"A" "Sim"
	"B" "N�o"
	"C" "N�o, mas pretendo ter num futuro pr�ximo"
/Q133
	"A" "Sim"
	"B" "N�o"
	"C" "N�o, mas pretendo ter num futuro pr�ximo"
/Q134
	"A" "Sim"
	"B" "N�o"
	"C" "N�o, mas pretendo ter num futuro pr�ximo"
/Q135
	"A" "Sim"
	"B" "N�o"
	"C" "N�o, mas pretendo ter num futuro pr�ximo"
/Q136
	"A" "Sim"
	"B" "N�o"
	"C" "N�o, mas pretendo ter num futuro pr�ximo"
/Q137
	"A" "Sim"
	"B" "N�o"
	"C" "N�o, mas pretendo ter num futuro pr�ximo"
.