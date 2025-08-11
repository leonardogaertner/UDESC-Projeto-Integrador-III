/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*   Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2002                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2002     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2002.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_2002.csv" /*local do arquivo*/
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
CO_MUNICIPIO_ESC F8.0
NO_MUNICIPIO_ESC A50
CO_UF_ESC F8.0
SG_UF_ESC A2
TP_DEPENDENCIA_ADM_ESC F8.0
TP_LOCALIZACAO_ESC F8.0
TP_SIT_FUNC_ESC F8.0
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
Q6_1 A1
Q6_2 A1
Q6_3 A1
Q6_4 A1
Q6_5 A1
Q6_6 A1
Q6_7 A1
Q6_8 A1
Q7 A1
Q8 A1
Q9 A1
Q10 A1
Q11 A1
Q12 A1
Q13 A1
Q14 A1
Q15 A1
Q16_1 A1
Q16_2 A1
Q16_3 A1
Q16_4 A1
Q16_5 A1
Q16_6 A1
Q16_7 A1
Q16_8 A1
Q16_9 A1
Q16_10 A1
Q17_1 A1
Q17_2 A1
Q17_3 A1
Q17_4 A1
Q17_5 A1
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
Q30_1 A1
Q30_2 A1
Q30_3 A1
Q30_4 A1
Q31 A1
Q32 A1
Q33_1 A1
Q33_2 A1
Q33_3 A1
Q33_4 A1
Q33_5 A1
Q33_6 A1
Q33_7 A1
Q34_1 A1
Q34_2 A1
Q34_3 A1
Q34_4 A1
Q34_5 A1
Q34_6 A1
Q34_7 A1
Q35 A1
Q36 A1
Q37 A1
Q38 A1
Q39 A1
Q40 A1
Q41 A1
Q42_1 A1
Q42_2 A1
Q42_3 A1
Q42_4 A1
Q42_5 A1
Q43_1 A1
Q43_2 A1
Q43_3 A1
Q43_4 A1
Q43_5 A1
Q44_1 A1
Q44_2 A1
Q44_3 A1
Q44_4 A1
Q44_5 A1
Q44_6 A1
Q44_7 A1
Q44_8 A1
Q44_9 A1
Q44_10 A1
Q44_11 A1
Q44_12 A1
Q44_13 A1
Q44_14 A1
Q44_15 A1
Q44_16 A1
Q45_1 A1
Q45_2 A1
Q45_3 A1
Q45_4 A1
Q45_5 A1
Q45_6 A1
Q45_7 A1
Q45_8 A1
Q46 A1
Q47_1 A1
Q47_2 A1
Q47_3 A1
Q47_4 A1
Q47_5 A1
Q47_6 A1
Q47_7 A1
Q48_1 A1
Q48_2 A1
Q48_3 A1
Q48_4 A1
Q48_5 A1
Q48_6 A1
Q48_7 A1
Q48_8 A1
Q48_9 A1
Q48_10 A1
Q48_11 A1
Q48_12 A1
Q49 A1
Q50 A1
Q51 A1
Q52 A1
Q53 A1
Q54_1 A1
Q54_2 A1
Q54_3 A1
Q54_4 A1
Q54_5 A1
Q54_6 A1
Q54_7 A1
Q54_8 A1
Q55 A1
Q56 A1
Q57_1 A1
Q57_2 A1
Q57_3 A1
Q57_4 A1
Q57_5 A1
Q57_6 A1
Q57_7 A1
Q58_1 A1
Q58_2 A1
Q58_3 A1
Q58_4 A1
Q58_5 A1
Q58_6 A1
Q58_7 A1
Q58_8 A1
Q58_9 A1
Q58_10 A1
Q59_1 A1
Q59_2 A1
Q60_1 A1
Q60_2 A1
Q61_1 A1
Q61_2 A1
Q62_1 A1
Q62_2 A1
Q63_1 A1
Q63_2 A1
Q64_1 A1
Q64_2 A1
Q64_3 A1
Q64_4 A1
Q64_5 A1
Q64_6 A1
Q64_7 A1
Q64_8 A1
Q64_9 A1
Q64_10 A1
Q64_11 A1
Q64_12 A1
Q64_13 A1
Q65_1 A1
Q65_2 A1
Q65_3 A1
Q66 A1
Q67 A1
Q68 A1
Q69_1 A1
Q69_2 A1
Q69_3 A1
Q69_4 A1
Q69_5 A1
Q69_6 A1
Q69_7 A1
Q69_8 A1
Q70 A1
Q71_1 A1
Q71_2 A1
Q71_3 A1
Q71_4 A1
Q71_5 A1
Q71_6 A1
Q72_1 A1
Q72_2 A1
Q72_3 A1
Q72_4 A1
Q72_5 A1
Q72_6 A1
Q72_7 A1
Q73_1 A1
Q73_2 A1
Q73_3 A1
Q73_4 A1
Q73_5 A1
Q73_6 A1
.
CACHE.
EXECUTE.
DATASET NAME ENEM_2002 WINDOW=FRONT.

VARIABLE LABELS
NU_INSCRICAO "N�mero de inscri��o no ENEM."
NU_ANO	"Ano do Enem"
TP_FAIXA_ETARIA	"Faixa et�ria do inscrito"
TP_SEXO	"Sexo do inscrito"
CO_MUNICIPIO_RESIDENCIA   " C�digo do Munic�pio em que o inscrito mora:"
NO_MUNICIPIO_RESIDENCIA   " Nome do munic�pio em que o inscrito mora"
CO_UF_RESIDENCIA   " C�digo da Unidade da Federa��o da residencia do inscrito"
SG_UF_RESIDENCIA   " Sigla da Unidade da Federa��o da residencia do inscrito"
CO_MUNICIPIO_ESC   " C�digo do Munic�pio da escola em que estudou:"
NO_MUNICIPIO_ESC   " Nome do munic�pio da escola"
CO_UF_ESC   " C�digo da Unidade da Federa��o da escola"
SG_UF_ESC   " Sigla da UF da escola"
TP_DEPENDENCIA_ADM_ESC   " Depend�ncia administrativa"
TP_LOCALIZACAO_ESC   " Localiza��o/Zona da escola"
TP_SIT_FUNC_ESC   " Condi��o de funcionamento"
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
Q3 "Como se considera"
Q4 "Qual o estado civil"
Q5 "Onde e como mora atualmente"
Q6_1 "Mora sozinho(a)"
Q6_2 "Mora com o pai"
Q6_3 "Mora com a m�e"
Q6_4 "Mora com esposa / marido / companheiro(a)"
Q6_5 "Mora com filho(s)"
Q6_6 "Mora com irm�o(s)"
Q6_7 "Mora com outro(s) parente(s)"
Q6_8 "Mora com amigo(s) ou colega(s)"
Q7 "Quantidade de pessoas que moram na casa"
Q8 "Quantos filhos tem"
Q9 "At� quando o pai estudou"
Q10 "At� quando a m�e estudou"
Q11 "�rea que o pai trabalha ou trabalhou, na maior parte da vida"
Q12 "Qual a posi��o do pai neste trabalho, na maior parte do tempo"
Q13 "�rea que a m�e trabalha ou trabalhou, na maior parte da vida"
Q14 "Qual a posi��o da m�e neste trabalho, na maior parte do tempo"
Q15 "Renda familiar (somando a do respondente e com a das pessoas que moram com ele)"
Q16_1 "Tem TV em cores e quantas"
Q16_2 "Tem Videocassete e/ou DVD e quantos"
Q16_3 "Tem R�dio e quantos"
Q16_4 "Tem Microcomputador e quantos"
Q16_5 "Tem Autom�vel e quantos"
Q16_6 "Tem M�quina de lavar roupa e quantos"
Q16_7 "Aspirador de p�"
Q16_8 "Geladeira"
Q16_9 "Freezer"
Q16_10 "Telefone fixo"
Q17_1 "Tem casa pr�pria"
Q17_2 "Se a casa � em rua cal�ada ou asfaltada"
Q17_3 "Se a casa tem �gua corrente de torneira"
Q17_4 "Se a casa tem eletricidade"
Q17_5 "Tem empregada dom�stica"
Q18 "Motivo para fazer o Enem"
Q19 "O motivo mais importante para se ter um trabalho"
Q20 "Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento"
Q21 "Trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)"
Q22 "Quantas horas trabalhava, durante o ensino m�dio (2� grau)"
Q23 "Com que finalidade trabalhava"
Q24 "Com que idade come�ou a exercer atividade remunerada"
Q25 "Se estiver trabalhando atualmente, qual a renda ou sal�rio mensal"
Q26 "Trabalha em alguma atividade para o qual se preparou"
Q27 "Em que trabalha atualmente"
Q28 "Qual a posi��o no trabalho"
Q29 "Quanto tempo est� trabalhando na atividade"
Q30_1 "Os conhecimentos no ensino m�dio foram adequados ao que o mercado de trabalho solicita"
Q30_2 "Os conhecimentos no ensino m�dio tiveram rela��o com a profiss�o que escolheu / que exerce"
Q30_3 "Os conhecimentos no ensino m�dio foram bem desenvolvidos, com aulas pr�ticas, laborat�rios, etc"
Q30_4 "Os conhecimentos no ensino m�dio proporcionaram cultura e conhecimento"
Q31 "Avalia��o de ter estudado e trabalhado, simultaneamente, durante o ensino m�dio"
Q32 "A escola que freq�enta ou freq�entou durante o ensino m�dio levou em conta que trabalhava ao mesmo tempo que estudava"
Q33_1 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o hor�rio flex�vel"
Q33_2 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse"
Q33_3 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recupera��o de notas"
Q33_4 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas"
Q33_5 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais din�micas, com did�tica diferenciada"
Q33_6 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revis�o da mat�ria aos  interessados"
Q33_7 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refei��o aos alunos"
Q34_1 "A escola deve oferecer hor�rio flex�vel para o aluno que trabalha"
Q34_2 "A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha"
Q34_3 "A escola deve oferecer programa de recupera��o de notas para o aluno que trabalha"
Q34_4 "A escola deve oferecer abono de faltas para o aluno que trabalha"
Q34_5 "A escola deve oferecer aulas mais din�micas, com did�tica diferenciada para o aluno que trabalha"
Q34_6 "A escola deve oferecer aulas de revis�o da mat�ria  aos alunos que interessados que trabalham"
Q34_7 "A escola deve oferecer fornecimento de refei��o para o aluno que trabalha"
Q35 "Anos que levou para concluir o ensino fundamental (1� grau)"
Q36 "Em que tipo de escola cursou o ensino fundamental (1� grau)"
Q37 "Em que ano concluiu ou concluir� o ensino m�dio (2� grau)"
Q38 "Quantos anos levou para cursas o ensino m�dio (2� grau)"
Q39 "Em que turno cursou ou esta cursando o ensino m�dio (2� grau)"
Q40 "Em que  tipo escola cursou ou est� cursando o ensino m�dio (2� grau)"
Q41 "Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)"
Q42_1 "Fez curso de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)"
Q42_2 "Fez curso de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)"
Q42_3 "Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)"
Q42_4 "Fez artes pl�sticas ou atividades art�sticas em geral fora da escola durante o ensino m�dio (2� grau)"
Q42_5 "Fez esportes, atividades f�sicas fora da escola durante o ensino m�dio (2� grau)"
Q43_1 "Com que freq��ncia l� jornais"
Q43_2 "Com que freq��ncia l� revistas de informa��o geral (Veja, Isto �, �poca, etc)"
Q43_3 "Com que freq��ncia l� revistas de humor / quadrinhos"
Q43_4 "Com que freq��ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc)"
Q43_5 "Com que freq��ncia l� romances, livros de fic��o"
Q44_1 "Avalia��o da escola que fez o ensino m�dio quanto o conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo"
Q44_2 "Avalia��o da escola que fez o ensino m�dio quanto a dedica��o dos professores para preparar aulas e atender aos alunos"
Q44_3 "Avalia��o da escola que fez o ensino m�dio quanto as iniciativas da escola para realizar excurs�es, estudos do meio"
Q44_4 "Avalia��o da escola que fez o ensino m�dio quanto a biblioteca  da escola"
Q44_5 "Avalia��o da escola que fez o ensino m�dio quanto as condi��es das salas de aula"
Q44_6 "Avalia��o da escola que fez o ensino m�dio quanto as condi��es dos laborat�rios"
Q44_7 "Avalia��o da escola que fez o ensino m�dio quanto o acesso a computadores e outros recursos de inform�tica"
Q44_8 "Avalia��o da escola que fez o ensino m�dio quanto o ensino de l�ngua estrangeira"
Q44_9 "Avalia��o da escola que fez o ensino m�dio quanto o interesse dos alunos"
Q44_10 "Avalia��o da escola que fez o ensino m�dio quanto o trabalho de grupo"
Q44_11 "Avalia��o da escola que fez o ensino m�dio quanto a pr�ticas de esportes"
Q44_12 "Avalia��o da escola que fez o ensino m�dio quanto a aten��o e o respeito dos funcion�rios"
Q44_13 "Avalia��o da escola que fez o ensino m�dio quanto a dire��o dela"
Q44_14 "Avalia��o da escola que fez o ensino m�dio quanto a organiza��o dos hor�rios de aulas"
Q44_15 "Avalia��o da escola que fez o ensino m�dio quanto a localiza��o dela"
Q44_16 "Avalia��o da escola que fez o ensino m�dio quanto a seguran�a (ilumina��o, policiamento, etc)"
Q45_1 "A escola em que estuda ou estudou realiza palestras / debates"
Q45_2 "A escola em que estuda ou estudou realiza jogos / esportes / campeonatos"
Q45_3 "A escola em que estuda ou estudou realiza teatro"
Q45_4 "A escola em que estuda ou estudou realiza coral"
Q45_5 "A escola em que estuda ou estudou realiza dan�a / m�sica"
Q45_6 "A escola em que estuda ou estudou realiza estudos do meio / passeios"
Q45_7 "A escola em que estuda ou estudou realiza feira de ci�ncias / feira cultural"
Q45_8 "A escola em que estuda ou estudou realiza festas / gincanas"
Q46 "De acordo com os ensinamentos no ensino m�dio, como considera o preparo para conseguir um emprego, exercer alguma atividade"
Q47_1 "Sua rea��o � de amizade"
Q47_2 "Os(as) professores(as) t�m autoridade, firmeza"
Q47_3 "Os(as) professores(as) s�o distantes, t�m pouco envolvimento"
Q47_4 "Os(as) professores(as) t�m respeito"
Q47_5 "Os(as) professores(as) s�o indiferentes, ignoram sua exist�ncia"
Q47_6 "Os(as) professores(as) s�o preocupados(as) e dedicados(as)"
Q47_7 "Os(as) professores(as) s�o autorit�rios(as), r�gidos(as), abusam do poder"
Q48_1 "Avalia��o sobre a escola quanto a liberdade de expressar a id�ias"
Q48_2 "Avalia��o sobre a escola quanto o respeito aos alunos"
Q48_3 "Avalia��o sobre a escola quanto a amizade e respeito entre alunos(as) e funcion�rios(as)"
Q48_4 "Avalia��o sobre a escola quanto a levar em conta suas opini�es"
Q48_5 "Avalia��o sobre a escola quanto a discuss�o dos problemas da atualidade nas aulas"
Q48_6 "Avalia��o sobre a escola quanto a conviv�ncia entre alunos"
Q48_7 "Avalia��o sobre a escola quanto a organiza��o para apoiar a resolu��o de problemas de relacionamento entre alunos"
Q48_8 "Avalia��o sobre a escola quanto a iniciativa para apoiar a resolu��o de problemas de relacionamento entre alunos e professores"
Q48_9 "Avalia��o sobre a escola quanto a levar em conta seus problemas pessoais e familiares"
Q48_10 "Avalia��o sobre a escola quanto a realiza��o de Programas e Palestras contra drogas"
Q48_11 "Avalia��o sobre a escola quanto a capacidade relacionar os conte�dos das mat�rias com o cotidiano"
Q48_12 "Avalia��o sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu"
Q49 "Nota para a forma��o que obteve no ensino m�dio"
Q50 "Nota para ensino m�dio no pa�s, em geral"
Q51 "O que o candidato acha que mais faz falta em sua forma��o pessoal para enfrentar a vida"
Q52 "Religi�o do candidato"
Q53 "Frequ�ncia que vai � Igreja"
Q54_1 "O candidato j� procurou pela fam�lia para resolver seus problemas pessoais"
Q54_2 "O candidato j� procurou cartomante para resolver seus problemas pessoais"
Q54_3 "O candidato j� consultou o jogo de b�zios para resolver os seus problemas pessoais"
Q54_4 "O candidato foi � Igreja/procurou padre/pastor para resolver seus problemas pessoais"
Q54_5 "O candidato buscou ajuda profissional (psic�logo, m�dico,etc) para resolver seus problemas pessoais"
Q54_6 "O candidato consultou hor�scopo para resolver os seus problemas pessoais"
Q54_7 "O candidato j� procurou pelos amigos para resolver"
Q54_8 "O candidato buscou orienta��o em livros e revistas para resolver dados pessoais"
Q55 "Pessoas com quem o candidato mais passa seu tempo livre ,depois da escola ou do trabalho, nos fins de semana?"
Q56 "O que o candidato faz com maior freq��ncia no tempo livre, depois da escola, do trabalho ou nos finais de semana?"
Q57_1 "Participa de um Gr�mio estudantil"
Q57_2 "Participa de um Sindicato ou Associa��o Profissional"
Q57_3 "Participa de um Grupo de bairro ou associa��o comunit�ria"
Q57_4 "Participa de uma Igreja ou grupo religioso"
Q57_5 "Participa de um partido pol�tico"
Q57_6 "Participa de uma Ong ou movimento social"
Q57_7 "Participa de um clube recreativo ou associa��o esportiva"
Q58_1 "O quanto voc� se interessa pela pol�tica nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da Rep�blica, etc"
Q58_2 "O quanto voc� se interessa pela pol�tica dos outros pa�ses"
Q58_3 "O quanto voc� se interessa pela economia nacional, a quest�o da infla��o,  o plano real"
Q58_4 "O quanto voc� se interessa a pol�tica da sua cidade, o prefeito, os vereadores"
Q58_5 "O quanto voc� se interessa por esportes"
Q58_6 "O quanto voc� se interessa pelas quest�es sobre o meio ambiente, polui��o, etc"
Q58_7 "O quanto voc� se interessa pelas quest�es sociais como a desigualdade, a pobreza, o desemprego, a mis�ria"
Q58_8 "O quanto voc� se interessa pelas quest�es sobre artes, teatro, cinema"
Q58_9 "O quanto voc� se interessa sobre a quest�o das drogas e suas conseq��ncias"
Q58_10 "O quanto voc� se interessa sobre assuntos sobre seu �dolo (cantor/a, artista, ou conjunto musical)"
Q59_1 "Qual dos pontos o candidato valoriza  em 1� lugar no momento"
Q59_2 "Qual dos pontos o candidato valoriza  em 2� lugar no momento"
Q60_1 "Qual dos pontos o candidato valoriza  em 1� lugar no momento"
Q60_2 "Qual dos pontos o candidato valoriza  em 2� lugar no momento"
Q61_1 "Qual dos pontos o candidato valoriza  em 1� lugar no momento"
Q61_2 "Qual dos pontos o candidato valoriza  em 2� lugar no momento"
Q62_1 "O que mais preocupa o candidato em 1� lugar no momento"
Q62_2 "O que mais preocupa o candidato em 2� lugar no momento"
Q63_1 "O que mais preocupa o candidato em 1� lugar no momento"
Q63_2 "O que mais preocupa o candidato em 2� lugar no momento"
Q64_1 "Para se conseguir alguma coisa na vida � preciso ter sorte."
Q64_2 "� importante ser honesto e trabalhador, mas n�o se consegue nada na vida."
Q64_3 "S� se realiza quem cursa uma faculdade e consegue um diploma superior."
Q64_4 "Quando se � perseverante se consegue tudo."
Q64_5 "� bom ter amigos influentes, pois est� cada vez mais dif�cil conseguir o que se quer."
Q64_6 "O sucesso s� vale a pena se for obtido com honestidade e trabalho."
Q64_7 "� a compet�ncia de cada um que leva ao sucesso profissional."
Q64_8 "� preciso ter f� para conseguir as coisas."
Q64_9 "N�o tem nada de mais fumar maconha."
Q64_10 "Cada vez mais a sociedade valoriza quem estuda."
Q64_11 "Existe pobreza e mis�ria no pa�s porque n�o h� vontade de trabalhar."
Q64_12 "Vale tudo para conseguir meus objetivos."
Q64_13 "O uso de drogas e do �lcool s�o duas das piores coisas do mundo de hoje."
Q65_1 "� a primeira mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q65_2 "� a segunda mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q65_3 "� a terceira mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q66 "A principal decis�o que vai tomar quando concluir o ensino m�dio (2� grau)"
Q67 "E a m�dio prazo, daqui a uns 4 ou 5 anos j� planejou o que gostaria que acontecesse"
Q68 "Que profiss�o escolheu seguir"
Q69_1 "Meus pais ajudaram a tomar minha decis�o sobre minha profiss�o"
Q69_2 "A escola ajudou a tomar minha decis�o sobre minha profiss�o"
Q69_3 "Meus amigos ajudaram a tomar minha decis�o sobre minha profiss�o"
Q69_4 "Informa��es gerais, revistas, jornais, TV ajudaram a tomar minha decis�o sobre minha profiss�o"
Q69_5 "Meu trabalho ajudou a tomar minha decis�o sobre minha profiss�o"
Q69_6 "Est�mulo financeiro ajudou a tomar minha decis�o sobre minha profiss�o"
Q69_7 "Facilidade de obter emprego ajudou a tomar minha decis�o sobre minha profiss�o"
Q69_8 "Minha identifica��o com a profiss�o me ajudou a tomar minha decis�o sobre minha profiss�o"
Q70 "Continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)"
Q71_1 "Est� freq�entando um curso profissionalizante"
Q71_2 "Est� freq�entando um curso preparat�rio para vestibular"
Q71_3 "Est� freq�entando um curso superior"
Q71_4 "Est� freq�entando um curso de l�ngua estrangeira"
Q71_5 "Est� freq�entando um curso de computa��o ou inform�tica"
Q71_6 "Est� freq�entando outro curso"
Q72_1 "Concluiu curso profissionalizante"
Q72_2 "Concluiu curso preparat�rio para vestibular, mas n�o ingressei no curso superior"
Q72_3 "Concluiu curso superior"
Q72_4 "Fiz curso superior mas n�o me formei"
Q72_5 "Concluiu curso de l�ngua estrangeira"
Q72_6 "Concluiu curso de computa��o ou inform�tica"
Q72_7 "Concluiu outro curso"
Q73_1 "O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q73_2 "O curso preparat�rio para vestibular fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q73_3 "O curso superior fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q73_4 "O curso de l�ngua estrangeira fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q73_5 "O curso de computa��o ou inform�tica fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q73_6 "Outro curso fez mais falta para minha vida, depois que terminei o ensino m�dio"
.

VALUE LABELS
TP_FAIXA_ETARIA
	1  	"Menor de 17 anos"
	2  	"17 anos"
	3  	"18 anos"
	4  	"19 anos"
	5  	"20 anos"
	6  	"21 anos"
	7  	"22 anos"
	8  	"23 anos"
	9  	"24 anos"
	10 	"25 anos"
	11 	"Entre 26 e 30 anos"
	12 	"Entre 31 e 35 anos"
	13 	"Entre 36 e 40 anos"
	14 	"Entre 41 e 45 anos"
	15 	"Entre 46 e 50 anos"
	16 	"Entre 51 e 55 anos"
	17 	"Entre 56 e 60 anos"
	18 	"Entre 61 e 65 anos"
	19 	"Entre 66 e 70 anos"
	20 	"Maior de 70 anos"
/TP_SEXO
	 "M" "Masculino"
	 "F" "Feminino"
/TP_DEPENDENCIA_ADM_ESC
 	1 "Federal"
 	2 "Estadual"
 	3 "Municipal"
 	4 "Privada"
/TP_LOCALIZACAO_ESC
 	1 "Urbana"
 	2 "Rural"
/TP_SIT_FUNC_ESC
 	1 "Em atividade"
 	2 "Paralisada"
 	3 "Extinta"
/TP_PRESENCA
 	0 "Faltou � prova"
 	1 "Presente � prova"
/CO_PROVA
	"A" "Amarela"
	"B" "Branca"
	"R" "Rosa"
	"V" "Verde"
/TP_STATUS_REDACAO
	"B" "Entregou a reda��o em branco"
 	"F" "Faltou � prova"
 	"N" "Reda��o anulada"
 	"P" "Presente � prova"
/IN_QSE
 	1 "Respondeu o question�rio socioec�mico"
 	0 "N�o respondeu o question�rio socioec�mico"
/Q1
	"A" "Feminino"
	"B" "Masculino"
/Q2
	"A" "Ap�s 1984."
	"B" "Em 1983."
	"C" "Em 1982."
	"D" "Em 1981."
	"E" "Em 1980."
	"F" "Entre 1976 e 1979."
	"G" "Antes de 1976."
/Q3
	"A" "Branco(a)."
	"B" "Pardo(a) / mulato(a)."
	"C" "Negro(a)."
	"D" "Amarelo(a)."
	"E" "Ind�gena."
/Q4
	"A" "Solteiro(a)"
	"B" "Casado(a) / mora com um(a) companheiro(a)"
	"C" "Separado(a) / divorciado(a) / desquitado(a)"
	"D" "Vi�vo(a)"
/Q5
	"A" "Em casa ou apartamento, com sua fam�lia"
	"B" "Em casa ou apartamento, sozinho(a)"
	"C" "Em quarto ou c�modo alugado, sozinho(a)"
	"D" "Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc"
	"E" "Outra situa��o"
/Q6_1
	"A" "Sim"
	"B" "N�o"
/Q6_2
	"A" "Sim"
	"B" "N�o"
/Q6_3
	"A" "Sim"
	"B" "N�o"
/Q6_4
	"A" "Sim"
	"B" "N�o"
/Q6_5
	"A" "Sim"
	"B" "N�o"
/Q6_6
	"A" "Sim"
	"B" "N�o"
/Q6_7
	"A" "Sim"
	"B" "N�o"
/Q6_8
	"A" "Sim"
	"B" "N�o"
/Q7
	"A" "Duas pessoas"
	"B" "Tr�s pessoas"
	"C" "Quatro pessoas"
	"D" "Cinco pessoas"
	"E" "Seis pessoas"
	"F" "Mais de 6 pessoas"
	"G" "Moro sozinho"
/Q8
	"A" "Um filho"
	"B" "Dois filhos"
	"C" "Tr�s filhos"
	"D" "Quatro ou mais filhos"
	"E" "N�o tenho filhos"
/Q9
	"A" "N�o estudou"
	"B" "Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da 5� a 8� do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto"
	"E" "Ensino M�dio (2� grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o"
	"I" "N�o sei"
/Q10
	"A" "N�o estudou"
	"B" "Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da 5� a 8� do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto"
	"E" "Ensino M�dio (2� grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o"
	"I" "N�o sei"
/Q11
	"A" "Na agricultura, no campo, em fazenda ou na pesca"
	"B" "Na ind�stria"
	"C" "No com�rcio, banco, transporte ou outros servi�os"
	"D" "Funcion�rio p�blico do governo federal, estadual, ou do munic�pio, ou militar"
	"E" "Profissional liberal, professor ou t�cnico de n�vel superior"
	"F" "Trabalhador do setor informal (sem carteira assinada)"
	"G" "Trabalha em casa em servi�os (costura, cozinha, aulas particulares, etc)"
	"H" "No lar"
	"I" "N�o trabalha"
	"J" "N�o sei"
/Q12
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcion�rio p�blico (federal, estadual ou municipal), com fun��es de dire��o"
	"C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o"
	"F" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando"
	"G" "Trabalho tempor�rio, informal, sem carteira assinada"
	"H" "Trabalho por conta pr�pria"
	"I" "Desempregado"
	"J" "Aposentado"
	"K" "Outra situa��o"
/Q13
	"A" "Na agricultura, no campo, em fazenda ou na pesca"
	"B" "Na ind�stria"
	"C" "No com�rcio, banco, transporte ou outros servi�os"
	"D" "Funcion�rio p�blico do governo federal, estadual, ou do munic�pio, ou militar"
	"E" "Profissional liberal, professor ou t�cnico de n�vel superior"
	"F" "Trabalhador do setor informal (sem carteira assinada)"
	"G" "Trabalha em casa em servi�os (costura, cozinha, aulas particulares, etc)"
	"H" "No lar"
	"I" "N�o trabalha"
	"J" "N�o sei"
/Q14
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcion�rio p�blico (federal, estadual ou municipal), com fun��es de dire��o"
	"C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o"
	"F" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando"
	"G" "Trabalho tempor�rio, informal, sem carteira assinada"
	"H" "Trabalho por conta pr�pria"
	"I" "Desempregado"
	"J" "Aposentado"
	"K" "Outra situa��o"
/Q15
	"A" "At� 1 sal�rio m�nimo (at� R$ 200,00)."
	"B" "De 1 a 2 sal�rios m�nimos (R$ 200,00 a R$ 400,00 inclusive)"
	"C" "De 2 a 5 sal�rios m�nimos (R$ 400,00 a R$ 1.000,00 inclusive)."
	"D" "De 5 a 10 sal�rios m�nimos (R$ 1.000,00 a R$ 2.000,00 inclusive)."
	"E" "De 10 a 30 sal�rios m�nimos (R$ 2.000,00 a R$ 6.000,00 inclusive)."
	"F" "De 30 a 50 sal�rios m�nimos (R$ 6.000,00 a R$ 10.000,00 inclusive)."
	"G" "Mais de 50 sal�rios m�nimos (mais de R$ 10.000,00)."
	"H" "Nenhuma renda."
/Q16_1
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_2
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_3
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_4
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_5
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_6
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_7
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_8
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_9
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q16_10
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5 ou +"
	"F" "N�o h�."
/Q17_1
	"A" "Sim"
	"B" "N�o"
/Q17_2
	"A" "Sim"
	"B" "N�o"
/Q17_3
	"A" "Sim"
	"B" "N�o"
/Q17_4
	"A" "Sim"
	"B" "N�o"
/Q17_5
	"A" "Sim"
	"B" "N�o"
/Q18
	"A" "Para testar seus conhecimentos / capacidade de racioc�nio"
	"B" "Para entrar na faculdade / conseguir pontos para o vestibular"
	"C" "Para ter um bom emprego / saber se est� preparado(a) para o futuro profissional"
	"D" "N�o sei"
/Q19
	"A" "Para ter mais responsabilidade"
	"B" "Independ�ncia financeira"
	"C" "Adquirir experi�ncia"
	"D" "Crescer profissionalmente"
	"E" "Sentir-me �til"
	"F" "Para fazer amigos, conhecer pessoas"
	"G" "N�o acho importante ter um trabalho"
/Q20
	"A" "Sim"
	"B" "Nunca trabalhei"
	"C" "Nunca trabalhei, mas estou procurando trabalho"
/Q21
	"A" "Sim, todo o tempo"
	"B" "Sim, menos de 1 ano"
	"C" "Sim, de 1 a 2 anos"
	"D" "Sim, de 2 a 3 anos"
	"E" "N�o"
/Q22
	"A" "Sem jornada fixa, at� 10 horas semanais"
	"B" "De 11 a 20 horas semanais"
	"C" "De 21 a 30 horas semanais"
	"D" "De 31 a 40 horas semanais"
	"E" "Mais de 40 horas semanais"
/Q23
	"A" "Para ajudar meus pais nas despesas com a casa, sustentar a fam�lia"
	"B" "Para ser independente (ter meu sustento, ganhar meu pr�prio dinheiro)"
	"C" "Para adquirir experi�ncia"
	"D" "Para ajudar minha comunidade"
	"E" "Outra finalidade"
/Q24
	"A" "Antes dos 14 anos"
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Ap�s 18 anos"
/Q25
	"A" "At� 1 sal�rio m�nimo (at� R$ 200,00)."
	"B" "De 1 a 2  sal�rios m�nimos (R$ 200,00 a R$ 400,00 inclusive)"
	"C" "De 2 a 5 sal�rios m�nimos (R$ 400,00 a R$ 1.000,00 inclusive)."
	"D" "De 5 a 10 sal�rios m�nimos (R$ 1.000,00 a R$ 2.000,00 inclusive)."
	"E" "De 10 a 30 sal�rios m�nimos (R$ 2.000,00 a R$ 6.000,00 inclusive)."
	"F" "De 30 a 50 sal�rios m�nimos (R$ 6.000,00 a R$ 10.000,00 inclusive)."
	"G" "Mais de 50 sal�rios m�nimos (mais de R$ 10.000,00)."
	"H" "Nenhuma renda."
/Q26
	"A" "Sim"
	"B" "N�o"
/Q27
	"A" "Na agricultura (campo, fazenda, pesca)."
	"B" "Na ind�stria."
	"C" "No com�rcio, banco, transporte ou outros servi�os."
	"D" "Como empregado(a) em casa de fam�lia."
	"E" "Como funcion�rio(a) do governo federal, do estado ou do munic�pio, ou militar."
	"F" "Como profissional liberal, professor(a) ou t�cnico(a) de n�vel superior."
	"G" "No lar."
	"H" "Trabalho em casa em servi�os (costura, comida, aulas particulares, etc.)."
	"I" "N�o trabalha"
/Q28
	"A" "Gerente, administrador(a) ou diretor(a) de empresa privada."
	"B" "Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), com fun��es de dire��o."
	"C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregado(a) no setor privado, com carteira assinada"
	"E" "Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), sem fun��o de dire��o."
	"F" "Trabalho tempor�rio, informal, sem carteira assinada"
	"G" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando."
	"H" "Trabalho por conta pr�pria"
	"I" "Aposentado(a)."
	"J" "Outra situa��o."
/Q29
	"A" "Menos de 1 ano"
	"B" "Entre 1 e 2 anos"
	"C" "Entre 2 e 4 anos"
	"D" "Mais de 4 anos"
/Q30_1
	"A" "Sim"
	"B" "N�o"
/Q30_2
	"A" "Sim"
	"B" "N�o"
/Q30_3
	"A" "Sim"
	"B" "N�o"
/Q30_4
	"A" "Sim"
	"B" "N�o"
/Q31
	"A" "Atrapalhou os estudos"
	"B" "Possibilitou crescimento pessoal"
	"C" "Atrapalhou os estudos, mas possibilitou crescimento pessoal"
	"D" "N�o atrapalhou os estudos"
	"E" "N�o trabalho / n�o trabalhei"
/Q32
	"A" "Sim"
	"B" "N�o"
	"C" "N�o sei"
/Q33_1
	"A" "Sim"
	"B" "N�o"
/Q33_2
	"A" "Sim"
	"B" "N�o"
/Q33_3
	"A" "Sim"
	"B" "N�o"
/Q33_4
	"A" "Sim"
	"B" "N�o"
/Q33_5
	"A" "Sim"
	"B" "N�o"
/Q33_6
	"A" "Sim"
	"B" "N�o"
/Q33_7
	"A" "Sim"
	"B" "N�o"
/Q34_1
	"A" "Sim"
	"B" "N�o"
/Q34_2
	"A" "Sim"
	"B" "N�o"
/Q34_3
	"A" "Sim"
	"B" "N�o"
/Q34_4
	"A" "Sim"
	"B" "N�o"
/Q34_5
	"A" "Sim"
	"B" "N�o"
/Q34_6
	"A" "Sim"
	"B" "N�o"
/Q34_7
	"A" "Sim"
	"B" "N�o"
/Q35
	"A" "Menos de 8 anos"
	"B" "8 anos"
	"C" "9 anos"
	"D" "10 anos"
	"E" "11 anos"
	"F" "Mais de 11 anos"
/Q36
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular"
	"C" "Somente em escola particular"
/Q37
	"A" "Vou conclu�-lo no segundo semestre de 2002."
	"B" "No primeiro semestre de 2002."
	"C" "Em 2001."
	"D" "Em 2000."
	"E" "Em 1999."
	"F" "Entre 1995 e 1996."
	"G" "Antes de 1995."
/Q38
	"A" "Menos de 3 anos"
	"B" "3 anos"
	"C" "4 anos"
	"D" "5 anos"
	"E" "6 anos"
	"F" "Mais de 6 anos"
/Q39
	"A" "Somente no turno diurno"
	"B" "Parte no turno diurno e parte no turno noturno"
	"C" "Somente no turno noturno"
/Q40
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular"
	"C" "Somente em escola particular"
/Q41
	"A" "Ensino regular"
	"B" "Educa��o para jovens e adultos (antigo supletivo)"
	"C" "Ensino t�cnico / ensino profissional"
/Q42_1
	"A" "Sim"
	"B" "N�o"
/Q42_2
	"A" "Sim"
	"B" "N�o"
/Q42_3
	"A" "Sim"
	"B" "N�o"
/Q42_4
	"A" "Sim"
	"B" "N�o"
/Q42_5
	"A" "Sim"
	"B" "N�o"
/Q43_1
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q43_2
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q43_3
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q43_4
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q43_5
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q45_1
	"A" "Sim"
	"B" "N�o"
/Q45_2
	"A" "Sim"
	"B" "N�o"
/Q45_3
	"A" "Sim"
	"B" "N�o"
/Q45_4
	"A" "Sim"
	"B" "N�o"
/Q45_5
	"A" "Sim"
	"B" "N�o"
/Q45_6
	"A" "Sim"
	"B" "N�o"
/Q45_7
	"A" "Sim"
	"B" "N�o"
/Q45_8
	"A" "Sim"
	"B" "N�o"
/Q46
	"A" "Eu me considero preparado(a) para entrar no mercado de trabalho"
	"B" "Apesar de ter frequentado uma boa escola, eu me considero despreparado(a), pois n�o aprendi o suficiente para conseguir um emprego"
	"C" "Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola, que n�o me preparou o suficiente"
	"D" "J� estou empregado"
	"E" "N�o sei"
/Q47_1
	"A" "Sim"
	"B" "N�o"
/Q47_2
	"A" "Sim"
	"B" "N�o"
/Q47_3
	"A" "Sim"
	"B" "N�o"
/Q47_4
	"A" "Sim"
	"B" "N�o"
/Q47_5
	"A" "Sim"
	"B" "N�o"
/Q47_6
	"A" "Sim"
	"B" "N�o"
/Q47_7
	"A" "Sim"
	"B" "N�o"
/Q49
	"A" "0"
	"B" "1"
	"C" "2"
	"D" "3"
	"E" "4"
	"F" "5"
	"G" "6"
	"H" "7"
	"I" "8"
	"J" "9"
	"K" "10"
	"L" "N�o sei"
/Q50
	"A" "0"
	"B" "1"
	"C" "2"
	"D" "3"
	"E" "4"
	"F" "5"
	"G" "6"
	"H" "7"
	"I" "8"
	"J" "9"
	"K" "10"
	"L" "N�o sei"
/Q51
	"A" "Autoconfian�a. "
	"B" "Clareza de objetivos."
	"C" "Capacidade de solu��o de problemas."
	"D" "Lideran�a."
	"E" "Saber me relacionar com pessoas, trabalhar em grupo."
	"F" "N�o me falta nada."
/Q52
	"A" "Evang�lica pentecostal "
	"B" "Evang�lica n�o pentecostal "
	"C" "Umbanda"
	"D" "Candombl�. "
	"E" "Esp�rita kardecista. "
	"F" "Cat�lica."
	"G" "Jud�ica  "
	"H" "Outra religi�o."
	"I" "Acredita em Deus, mas n�o tem religi�o."
	"J" "� ateu / n�o acredita em Deus."
/Q53
	"A" "Mais de uma vez por semana. "
	"B" "1 vez por semana."
	"C" "1 vez por m�s."
	"D" "Somente em ocasi�es especiais. "
	"E" "Nunca."
/Q54_1
	"A" "Sim"
	"B" "N�o"
/Q54_2
	"A" "Sim"
	"B" "N�o"
/Q54_3
	"A" "Sim"
	"B" "N�o"
/Q54_4
	"A" "Sim"
	"B" "N�o"
/Q54_5
	"A" "Sim"
	"B" "N�o"
/Q54_6
	"A" "Sim"
	"B" "N�o"
/Q54_7
	"A" "Sim"
	"B" "N�o"
/Q54_8
	"A" "Sim"
	"B" "N�o"
/Q55
	"A" "Sozinho(a)"
	"B" "Meus amigos da escola, minha turma "
	"C" "Meus amigos de fora da escola"
	"D" "Meus irm�os/minha fam�lia/marido/esposa/filhos"
	"E" "S� com o namorado(a)"
/Q56
	"A" "Assisto a programas de TV."
	"B" "Leio livros/revistas, escuto m�sica. "
	"C" "Vou ao shopping."
	"D" "Vou � igreja."
	"E" "Saio com amigos. "
	"F" "Acesso a Internet. "
	"G" "Nenhum desses itens."
/Q57_1
	"A" "Sim"
	"B" "N�o"
/Q57_2
	"A" "Sim"
	"B" "N�o"
/Q57_3
	"A" "Sim"
	"B" "N�o"
/Q57_4
	"A" "Sim"
	"B" "N�o"
/Q57_5
	"A" "Sim"
	"B" "N�o"
/Q57_6
	"A" "Sim"
	"B" "N�o"
/Q57_7
	"A" "Sim"
	"B" "N�o"
/Q58_1
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_2
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_3
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_4
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_5
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_6
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_7
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_8
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_9
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q58_10
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q59_1
	"A" "Amizade "
	"B" "Sinceridade "
	"C" "Honestidade"
	"D" "Igualdade"
	"E" "Solidariedade"
/Q59_2
	"A" "Amizade "
	"B" "Sinceridade "
	"C" "Honestidade"
	"D" "Igualdade"
	"E" "Solidariedade"
/Q60_1
	"A" "Lealdade "
	"B" "�tica "
	"C" "Liberdade "
	"D" "Independ�ncia "
	"E" "Justi�a"
	"F" "Deus/minha religi�o"
/Q60_2
	"A" "Lealdade "
	"B" "�tica "
	"C" "Liberdade "
	"D" "Independ�ncia "
	"E" "Justi�a"
	"F" "Deus/minha religi�o"
/Q61_1
	"A" "Trabalho / profiss�o "
	"B" "Fam�lia"
	"C" "Estudos / aprender coisas novas / ter cultura "
	"D" "Divers�o / tempo livre"
	"E" "Namorado(a) / companheiro(a) "
	"F" "Dinheiro"
	"G" "Seguran�a material"
/Q61_2
	"A" "Trabalho / profiss��o "
	"B" "Fam�lia"
	"C" "Estudos / aprender coisas novas / ter cultura "
	"D" "Divers�o / tempo livre"
	"E" "Namorado(a) / companheiro(a) "
	"F" "Dinheiro"
	"G" "Seguran�a material"
/Q62_1
	"A" "Conseguir trabalho / emprego "
	"B" "Meu futuro em geral"
	"C" "Terminar meus estudos / os exames / provas "
	"D" "Dinheiro"
	"E" "Estar bem com meus amigos"
	"F" "Conseguir entrar na faculdade / universidade"
	"G" "A falta de liberdade, a depend�ncia de minha fam�lia"
	"H" "Casar / constituir fam�lia / ter filhos"
/Q62_2
	"A" "Conseguir trabalho / emprego "
	"B" "Meu futuro em geral"
	"C" "Terminar meus estudos / os exames / provas "
	"D" "Dinheiro"
	"E" "Estar bem com meus amigos"
	"F" "Conseguir entrar na faculdade / universidade"
	"G" "A falta de liberdade, a depend�ncia de minha fam�lia"
	"H" "Casar / constituir fam�lia / ter filhos"
/Q63_1
	"A" "O meio ambiente"
	"B" "A Aids e as doen�as perigosas e sem cura"
	"C" "O racismo e o desrespeito �s pessoas de outra ra�a ou religi�o"
	"D" "A pobreza, as favelas, os meninos de rua "
	"E" "As drogas e a viol�ncia"
	"F" "A situa��o do pa�s"
/Q63_2
	"A" "O meio ambiente"
	"B" "A Aids e as doen�as perigosas e sem cura"
	"C" "O racismo e o desrespeito �s pessoas de outra ra�a ou religi�o"
	"D" "A pobreza, as favelas, os meninos de rua "
	"E" "As drogas e a viol�ncia"
	"F" "A situa��o do pa�s"
/Q64_1
	"A" "Concorda"
	"B" "Discorda"
/Q64_2
	"A" "Concorda"
	"B" "Discorda"
/Q64_3
	"A" "Concorda"
	"B" "Discorda"
/Q64_4
	"A" "Concorda"
	"B" "Discorda"
/Q64_5
	"A" "Concorda"
	"B" "Discorda"
/Q64_6
	"A" "Concorda"
	"B" "Discorda"
/Q64_7
	"A" "Concorda"
	"B" "Discorda"
/Q64_8
	"A" "Concorda"
	"B" "Discorda"
/Q64_9
	"A" "Concorda"
	"B" "Discorda"
/Q64_10
	"A" "Concorda"
	"B" "Discorda"
/Q64_11
	"A" "Concorda"
	"B" "Discorda"
/Q64_12
	"A" "Concorda"
	"B" "Discorda"
/Q64_13
	"A" "Concorda"
	"B" "Discorda"
/Q65_1
	"A" "Obten��o de um certificado de conclus�o de curso/ obten��o de um diploma"
	"B" "Forma��o b�sica necess�ria para obter um emprego melhor"
	"C" "Condi��es de melhorar minha posi��o no emprego atual"
	"D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
	"E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer v�rias pessoas"
	"G" "Atender � expectativa de meus pais sobre meus estudos"
/Q65_2
	"A" "Obten��o de um certificado de conclus�o de curso/ obten��o de um diploma"
	"B" "Forma��o b�sica necess�ria para obter um emprego melhor"
	"C" "Condi��es de melhorar minha posi��o no emprego atual"
	"D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
	"E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer v�rias pessoas"
	"G" "Atender � expectativa de meus pais sobre meus estudos"
/Q65_3
	"A" "Obten��o de um certificado de conclus�o de curso/ obten��o de um diploma"
	"B" "Forma��o b�sica necess�ria para obter um emprego melhor"
	"C" "Condi��es de melhorar minha posi��o no emprego atual"
	"D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
	"E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer v�rias pessoas"
	"G" "Atender � expectativa de meus pais sobre meus estudos"
/Q66
	"A" "J� conclui o ensino m�dio (2� Grau)"
	"B" "Prestar vestibular e continuar os estudos no ensino superior"
	"C" "Procurar um emprego"
	"D" "Prestar vestibular e continuar a trabalhar"
	"E" "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho"
	"F" "Trabalhar por conta pr�pria / trabalhar em neg�cio da fam�lia"
	"G" "Ainda n�o decidiu"
	"H" "Outro plano"
/Q67
	"A" "Gostaria de ter um diploma universit�rio para conseguir um bom emprego"
	"B" "Gostaria de prestar um concurso e trabalhar no setor p�blico"
	"C" "Gostaria de ganhar dinheiro em meu pr�prio neg�cio"
	"D" "Gostaria de ter um emprego "
	"E" "N�o planejei"
	"F" "Outro plano"
/Q68
	"A" "Ainda n�o escolhi"
	"B" "Profiss�o ligada �s Engenharias / Ci�ncias Tecnol�gicas"
	"C" "Profiss�o ligada �s Ci�ncias Humanas"
	"D" "Profiss�o ligada �s Artes"
	"E" "Profiss�o ligadas �s Ci�ncias Biol�gicas e de Sa�de"
	"F" "Professor(a) de Ensino Fundamental e M�dio (1� e 2� graus)"
	"G" "N�o vou seguir nenhuma profiss�o"
/Q70
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas n�o estou estudando no momento atual "
	"C" "N�o"
/Q71_1
	"A" "Sim"
	"B" "N�o"
/Q71_2
	"A" "Sim"
	"B" "N�o"
/Q71_3
	"A" "Sim"
	"B" "N�o"
/Q71_4
	"A" "Sim"
	"B" "N�o"
/Q71_5
	"A" "Sim"
	"B" "N�o"
/Q71_6
	"A" "Sim"
	"B" "N�o"
/Q72_1
	"A" "Sim"
	"B" "N�o"
/Q72_2
	"A" "Sim"
	"B" "N�o"
/Q72_3
	"A" "Sim"
	"B" "N�o"
/Q72_4
	"A" "Sim"
	"B" "N�o"
/Q72_5
	"A" "Sim"
	"B" "N�o"
/Q72_6
	"A" "Sim"
	"B" "N�o"
/Q72_7
	"A" "Sim"
	"B" "N�o"
/Q73_1
	"A" "Sim"
	"B" "N�o"
/Q73_2
	"A" "Sim"
	"B" "N�o"
/Q73_3
	"A" "Sim"
	"B" "N�o"
/Q73_4
	"A" "Sim"
	"B" "N�o"
/Q73_5
	"A" "Sim"
	"B" "N�o"
/Q73_6
	"A" "Sim"
	"B" "N�o"
.