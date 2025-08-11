/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_1999                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_1999     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_1999.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_1999.csv" /*local do arquivo*/
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
TP_ST_CONCLUSAO F8.0
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
.
CACHE.
EXECUTE.
DATASET NAME ENEM_1999 WINDOW=FRONT.

VARIABLE LABELS
NU_INSCRICAO "N�mero de inscri��o no ENEM."
NU_ANO	"Ano do Enem"
TP_FAIXA_ETARIA	"Faixa et�ria do inscrito"
TP_SEXO	"Sexo do inscrito"
CO_MUNICIPIO_RESIDENCIA   " C�digo do Munic�pio em que o inscrito mora:"
NO_MUNICIPIO_RESIDENCIA   " Nome do munic�pio em que o inscrito mora"
CO_UF_RESIDENCIA   " C�digo da Unidade da Federa��o da residencia do inscrito"
SG_UF_RESIDENCIA   " Sigla da Unidade da Federa��o da residencia do inscrito"
TP_ST_CONCLUSAO   " Situa��o de conclus�o do Ensino M�dio"
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
Q1 "Seu sexo"
Q2 "Ano em que voc� nasceu"
Q3 "Como  voc� se considera"
Q4 "Qual o seu estado civil"
Q5 "Como voc� mora"
Q6 "Quem mora com voc�?: moro sozinho(a)"
Q7 "Quem mora com voc�?:  pai"
Q8 "Quem mora com voc�?:  m�e"
Q9 "Quem mora com voc�?: mulher, marido, companheiro ou companheira."
Q10 "Quem mora com voc�?:  filhos"
Q11 "Quem mora com voc�?:  irm�os"
Q12 "Quem mora com voc�?: outros parentes"
Q13 "Quem mora com voc�?:  amigos ou colegas"
Q14 "Quem mora com voc�?:  pessoas"
Q15 "Quem mora com voc�?: Outra situa��o."
Q16 "Quantas pessoas moram em sua casa?"
Q17 "Quantos filhos tem"
Q18 "At� quanto seu pai estudou?"
Q19 "At� quanto sua m�e estudou?"
Q20 "Em que seu pai trabalha ou trabalhou, na maior parte da vida?"
Q21 "Qual a posi��o do seu pai neste trabalho, na maior parte do tempo"
Q22 "Em que sua m�e trabalha ou trabalhou, na maior parte da vida?"
Q23 "Qual a posi��o da sua m�e neste trabalho, na maior parte do tempo?"
Q24 "Qual a renda total do seu domic�lio?"
Q25 "Quais e quanto itens  sua casa tem?: autom�vel"
Q26 "Quais e quanto itens  sua casa tem?: TV em cores"
Q27 "Quais e quanto itens  sua casa tem?: microcomputador"
Q28 "Quais e quanto itens  sua casa tem?: videocassete"
Q29 "Quais e quanto itens  sua casa tem?:  m�quina de lavar roupa"
Q30 "Quais e quanto itens  sua casa tem?: aspirador de p�"
Q31 "Quais e quanto itens  sua casa tem?: geladeira"
Q32 "Quais e quanto itens  sua casa tem?: Freezer"
Q33 "Quais e quanto itens  sua casa tem?:Telefone"
Q34 "Quais e quanto itens  sua casa tem?: tem casa pr�pria"
Q35 "Quais e quanto itens  sua casa tem?: mora de aluguel"
Q36 "Quais e quanto itens  sua casa tem?: est� em rua urbanizada (com cal�amento ou asfaltada)"
Q37 "Quais e quanto itens  sua casa tem?:  tem �gua corrente de torneira"
Q38 "Quais e quanto itens  sua casa tem?:  tem eletricidade"
Q39 "Quais e quanto itens  sua casa tem?: empregada dom�stica mensalista"
Q40 "Voc� trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento?"
Q41 "Voc� trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)?"
Q42 "Quantas horas voc� trabalhava por dia, durante seus estudos no ensino m�dio (2� grau)?"
Q43 "Com que finalidade voc� trabalhava, enquanto estudava no ensino m�dio (antigo 2� grau)?"
Q44 "Se voc� trabalhava durante seus estudos no ensino m�dio, com que idade come�ou a exercer atividade remunerada"
Q45 "Se estiver trabalhando atualmente, qual a renda ou sal�rio mensal"
Q46 "Por que trabalha atualmente:"
Q47 "Em que voc� trabalha atualmente?"
Q48 "Qual a sua posi��o no trabalho"
Q49 "Voc� est� atualmente trabalhando em alguma atividade para o qual se preparou nos estudos?"
Q50 "Quanto tempo voc� est� trabalhando na atividade?"
Q51 "Anos que levou para concluir o ensino fundamental (1� grau)"
Q52 "Em que tipo de escola cursou o ensino fundamental (1� grau)"
Q53 "Em que ano concluiu ou concluir� o ensino m�dio (2� grau)"
Q54 "Quantos anos voc� levou para cursar o ensino m�dio (2� grau)?"
Q55 "Em que turno voc� cursou ou esta cursando o ensino m�dio (2� grau)"
Q56 "Em que  tipo escola cursou ou est� cursando o ensino m�dio (2� grau)"
Q57 "Em que modalidade de ensino voc� concluiu ou vai concluir o ensino m�dio (2� grau)"
Q58 "Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): curso e l�ngua estrangeira."
Q59 "Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): curso de computa��o ou inform�tica"
Q60 "Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): curso preparat�rio para o vestibular (cursinho)"
Q61 "Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): artes pl�sticas em geral"
Q62 "Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): atividades art�stica"
Q63 "Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): atividade esportiva"
Q64 "A partir dos conhecimentos adquiridos no ensino m�dio (2� grau), o  candidato se considera apto a exercer uma profiss�o?"
Q65 "Com que frequ�ncia voc� l� jornais?"
Q66 "Com que frequ�ncia l� revistas de informa��o geral"
Q67 "Com que frequ�ncia l� revistas de humor / quadrinhos"
Q68 "Com que frequ�ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc.)"
Q69 "Com que frequ�ncia l� romances, livros de fic��o"
Q70 "Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a: conhecimento que os professores tem da mat�ria"
Q71 "Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  dedica��o dos professores � pontualidade, prepara��o das aulas, etc."
Q72 "Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  capacidade da escola  em motivar os estudantes com pesquisa, excurs�es, trabalhos de equipe, projetos e outras atividades fora da rotina"
Q73 "Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a: recursos pedag�gicos: laborat�rios, bibliotecas, TV, v�deos etc."
Q74 "Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  condi��es f�sicas da escola - condi��o das salas, banheiros, limpeza"
Q75 "Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  acesso a computadores e outros recursos de inform�tica"
Q76 "Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  ensino de l�ngua estrangeira"
Q77 "O que voc� pretende fazer nos pr�ximos 3 anos: continuar estudando"
Q78 "O que voc� pretende fazer nos pr�ximos 3 anos: conseguir um emprego"
Q79 "O que voc� pretende fazer nos pr�ximos 3 anos: melhorar a posi��o no emprego atual"
Q80 "O que voc� pretende fazer nos pr�ximos 3 anos: fazer um concurso p�blico"
Q81 "O que voc� pretende fazer nos pr�ximos 3 anos: trabalhar por conta pr�pria, abrir meu pr�prio neg�cio."
Q82 "O que voc� pretende fazer nos pr�ximos 3 anos: constituir fam�lia"
Q83 "O que voc� pretende fazer nos pr�ximos 3 anos: mudar para outra cidade ou estado do Brasil."
Q84 "O que voc� pretende fazer nos pr�ximos 3 anos: mudar para o Exterior"
Q85 "O quanto voc� se interessa e acompanha: politica nacional"
Q86 "O quanto voc� se interessa e acompanha: a politica internacional"
Q87 "O quanto voc� se interessa e acompanha: esportes"
Q88 "O quanto voc� se interessa e acompanha: a economia"
Q89 "O quanto voc� se interessa e acompanha: a moda"
Q90 "O quanto voc� se interessa e acompanha: atividades culturais, como teatro, pintura, arte, etc."
Q91 "O quanto voc� se interessa e acompanha: m�sica popular"
Q92 "O quanto voc� se interessa e acompanha: quest�es sobre comportamento sexual, como a AIDS, a gravidez indesejada etc."
Q93 "O quanto voc� se interessa e acompanha: quest�es sobre o meio ambiente"
Q94 "O quanto voc� se interessa e acompanha: quest�es relativas aos direitos de minorias"
Q95 "O quanto voc� se interessa e acompanha: quest�es sociais, como pobreza, o desemprego, a viol�ncia etc."
Q96 "Voc� participa de:  igreja ou grupo religioso"
Q97 "Voc� participa de: partido pol�tico ou movimento social."
Q98 "Voc� participa de:  sindicato ou associa��o profissional."
Q99 "Voc� participa de:  grupo de bairro ou associa��o comunit�ria"
Q100 "Voc� participa de:  clube recreativo ou associa��o esportiva."
Q101 "Voc� participa de:  gr�mio estudantil"
Q102 "Para ter um bom futuro na vida voc� considera importante: ter sido um bom(a) aluno(a) na escola ou na faculdade"
Q103 "Para ter um bom futuro na vida voc� considera importante:  ter cursado uma boa escola ou faculdade"
Q104 "Para ter um bom futuro na vida voc� considera importante:  ter conhecimentos profissionais pr�ticos e �teis"
Q105 "Para ter um bom futuro na vida voc� considera importante: ter cultura geral (conhecer l�ngua, ler livros etc.)"
Q106 "Para ter um bom futuro na vida voc� considera importante:  ter amigos influentes"
Q107 "Para ter um bom futuro na vida voc� considera importante:  vir de uma fam�lia rica"
Q108 "O candidato do ENEM considera importante ser esperto"
Q109 "Para ter um bom futuro na vida voc� considera importante:  ter sorte na vida"
Q110 "Para ter um bom futuro na vida voc� considera importante:  ser honesto e justo"
Q111 "Para ter um bom futuro na vida voc� considera importante:  ser trabalhador"
Q112 "Para ter um bom futuro na vida voc� considera importante:  ser generoso(a) e solid�rio(a) com os outros"
Q113 "Para ter um bom futuro na vida voc� considera importante:  ter f� e seguir os ensinamentos religiosos"
Q114 "Voc� acha que o Brasil nos �ltimos anos:"
Q115 "Voc� acha que, nos �ltimos anos, sua situa��o e da sua fam�lia"
Q116 "Voc� continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)"
Q117 "Se voc� est� estudando no momento atual, est� desenvolvendo: um curso profissionalizante"
Q118 "Se voc� est� estudando no momento atual, est� desenvolvendo: curso preparat�rio para vestibular"
Q119 "Se voc� est� estudando no momento atual, est� desenvolvendo: curso superior"
Q120 "Se voc� est� estudando no momento atual, est� desenvolvendo: curso de l�ngua estrangeira"
Q121 "Se voc� est� estudando no momento atual, est� desenvolvendo: um curso de computa��o ou inform�tica"
Q122 "Se voc� est� estudando no momento atual, est� desenvolvendo: outro curso"
Q123 "Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso profissionalizante"
Q124 "Se voc� n�o est� estuando no momento atual, mas continou seus estudos depois de ter concluido o ensino m�dio (2� Grau), desenvolveu: curso preparat�rio para vestibular, mas n�o ingressei no curso superior"
Q125 "Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso superior e se formou"
Q126 "Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso superior mas n�o se formou"
Q127 "Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso de l�ngua estrangeira"
Q128 "Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso de computa��o ou inform�tica"
Q129 "Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: outro curso"
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
/TP_ST_CONCLUSAO
 	0 "Nenhum dos anteriores"
 	1 "J� concluiu"
 	2 "Concluir� em 1999"
	3 "Concluir� ap�s 1999"
	4 "N�o conclu� e n�o estou cursando o Ensino M�dio"
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
	"A" "Ap�s 1981"
	"B" "1981"
	"C" "1980"
	"D" "1979"
	"E" "1978"
	"F" "1977"
	"G" "Entre 1973 e 1976"
	"H" "Antes de 1973"
/Q3
	"A" "Branco(a)."
	"B" "Pardo(a) / mulato(a)."
	"C" "Negro(a)."
	"D" "Amarelo(a) (De origem asi�tica)"
	"E" "Ind�gena."
/Q4
	"A" "Solteiro(a)"
	"B" "Casado(a) / mora com um(a) companheiro(a)"
	"C" "Separado(a) / divorciado(a) / desquitado(a)"
	"D" "Vi�vo(a)"
/Q5
	"A" "Em casa ou apartamento, com sua fam�lia "
	"B" "Em casa ou apartamento, sozinho(a)"
	"C" "Em quarto ou c�modo alugado, sozinho(a)"
	"D" "Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc."
	"E" "Outra situa��o"
/Q6
	"A" "Sim"
	"B" "N�o"
/Q7
	"A" "Sim"
	"B" "N�o"
/Q8	"A" "Sim"
	"B" "N�o"
/Q9
	"A" "Sim"
	"B" "N�o"
/Q10
	"A" "Sim"
	"B" "N�o"
/Q11
	"A" "Sim"
	"B" "N�o"
/Q12
	"A" "Sim"
	"B" "N�o"
/Q13	"A" "Sim"
	"B" "N�o"
/Q14
	"A" "Sim"
	"B" "N�o"
/Q15
	"A" "Sim"
	"B" "N�o"
/Q16
	"A" "Moro sozinho "
	"B" "Duas pessoas "
	"C" "Tr�s pessoas "
	"D" "Quatro pessoas "
	"E" "Cinco pessoas "
	"F" "Seis pessoas"
	"G" "Mais de seis pessoas."
/Q17
	"A" "N�o tenho filhos "
	"B" "Um filho"
	"C" "Dois filhos "
	"D" "Tr�s filhos"
	"E" "Quatro ou mais filhos"
/Q18
	"A" "N�o estudou"
	"B" "Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto "
	"E" "Ensino M�dio (2� grau) completo "
	"F" "Ensino Superior incompleto "
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o (mestrado, especializa��o, doutorado)"
	"I" "N�o sei"
/Q19
	"A" "N�o estudou"
	"B" "Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto "
	"E" "Ensino M�dio (2� grau) completo "
	"F" "Ensino Superior incompleto "
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o (mestrado, especializa��o, doutorado)"
	"I" "N�o sei"
/Q20
	"A" "Na agricultura, no campo, em fazenda, na pesca "
	"B" "Na ind�stria"
	"C" "No com�rcio, bancos, transporte ou outros servi�os"
	"D" "Como empregado em casa de fam�lia"
	"E" "Como funcion�rio do governo federal, do estado ou munic�pio, ou militar"
	"F" "Profissional liberal, professor ou t�cnico de n�vel superior"
	"G" "No lar"
	"H" "Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa"
	"I" "N�o trabalha"
	"J" "N�o sei"
/Q21
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcion�rio p�blico (federal, estadual, municipal), com fun��es de dire��o"
	"C" "Militar (guarda civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o"
	"F" "Militar (guarda civil, pol�cia estadual ou For�as Armadas), sem posto de comando"
	"G" "Trabalho tempor�rio, informal, sem carteira assinada "
	"H" "Trabalha por conta pr�pria"
	"I" "Desempregado"
	"J" "Aposentado "
	"K" "N�o trabalha"
	"L" "Outra situa��o"
/Q22
	"A" "Na agricultura, no campo, em fazenda, na pesca "
	"B" "Na ind�stria"
	"C" "No com�rcio, bancos, transporte e outros servi�os"
	"D" "Como empregada em casa de fam�lia"
	"E" "Como funcion�ria do governo federal, do estado ou munic�pio, ou militar"
	"F" "Como profissional liberal, professor ou t�cnico de n�vel superior"
	"G" "No lar"
	"H" "Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa"
	"I" "N�o trabalha"
	"J" "N�o sei"
/Q23
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcion�rio p�blico (federal, estadual ou municipal), com fun��es de dire��o"
	"C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o"
	"F" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando"
	"G" "Trabalho tempor�rio, informal, sem carteira assinada "
	"H" "Trabalho por conta pr�pria"
	"I" "Desempregado "
	"J" "Aposentado "
	"K" "N�o trabalha"
	"L" "Outra situa��o"
/Q24
	"A" "At� 1 sal�rio m�nimo (at� R$ 136,00)"
	"B" "De 1 a 2 sal�rios m�nimos (R$ 137,00 a R$ 272,00)"
	"C" "De 2 a 5 sal�rios m�nimos (R$ 273,00 a R$ 680,00)"
	"D" "De 5 a 10 sal�rios m�nimos (R$ 681,00 a R$ 1.360,00)"
	"E" "De 10 a 30 sal�rios m�nimos (R$ 1.361,00 a R$ 4.080,00)"
	"F" "De 30 a 50 sal�rios m�nimos (R$ 4.081,00 a R$ 6.800,00)"
	"G" "Mais de 50 sal�rios m�nimos (mais de R$ 6.800,00)"
	"H" "Nenhuma renda"
/Q25
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q26
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q27
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q28
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q29
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q30
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q31
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q32
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q33
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "N�o tem"
/Q34
	"A" "Sim"
	"B" "N�o"
/Q35
	"A" "Sim"
	"B" "N�o"
/Q36
	"A" "Sim"
	"B" "N�o"
/Q37
	"A" "Sim"
	"B" "N�o"
/Q38
	"A" "Sim"
	"B" "N�o"
/Q39
	"A" "Sim"
	"B" "N�o"
/Q40
	"A" "Sim"
	"B" "Nunca trabalhou"
	"C" "Nunca trabalhou, mas est� procurando trabalho"
/Q41
	"A" "Sim, todo o tempo"
	"B" "Sim, pelo menos durante um ano "
	"C" "Sim, mas s� eventualmente"
	"D" "N�o"
/Q42
	"A" "Sem jornada fixa, at� 10 horas semanais "
	"B" "De 11 a 20 horas semanais"
	"C" "De 21 a 30 horas semanais"
	"D" "De 31 a 40 horas semanais"
/Q43
	"A" "Para ajudar meus pais "
	"B" "Para meu pr�prio sustento"
	"C" "Para as duas finalidades"
/Q44
	"A" "Antes dos 14 anos "
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Ap�s 18 anos"
/Q45
	"A" "At� 1 sal�rio m�nimo (at� R$ 136,00)"
	"B" "De 1 a 2 sal�rios m�nimos (R$ 137,00 a R$ 272,00)"
	"C" "De 2 a 5 sal�rios m�nimos (R$ 273,00 a R$ 680,00)"
	"D" "De 5 a 10 sal�rios m�nimos (R$ 681,00 a R$ 1.360,00)"
	"E" "De 10 a 30 sal�rios m�nimos (R$ 1.361,00 a R$ 4.080,00)"
	"F" "De 30 a 50 sal�rios m�nimos (R$ 4.081,00 a R$ 6.800,00)"
	"G" "Mais de 50 sal�rios m�nimos (mais de R$ 6.800,00)"
	"H" "N�o estou trabalhando"
/Q46
	"A" "Para ajudar meus pais "
	"B" "Para meu pr�prio sustento"
	"C" "Para as duas finalidades"
/Q47
	"A" "Na agricultura (campo, fazenda, pesca). "
	"B" "Na ind�stria."
	"C" "No com�rcio, banco, transporte ou outros servi�os."
	"D" "Como empregado(a) em casa de fam�lia."
	"E" "Como funcion�rio(a) do governo federal, do estado ou do munic�pio, ou militar."
	"F" "Como profissional liberal, professor(a) ou t�cnico(a) de n�vel superior."
	"G" "No lar."
	"H" "Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa"
	"I" "N�o trabalha"
/Q48
	"A" "Gerente, administrador(a) ou diretor(a) de empresa privada."
	"B" "Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), com fun��es de dire��o."
	"C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregado(a) no setor privado, com carteira assinada"
	"E" "Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), sem fun��o de dire��o."
	"F" "Trabalho tempor�rio, informal, sem carteira assinada"
	"G" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando."
	"H" "Trabalho por conta pr�pria "
	"I" "Desempregado(a) "
	"J" "Aposentado(a)"
	"K" "N�o trabalha"
	"L" "Outra situa��o"
/Q49
	"A" "Sim"
	"B" "N�o, porque n�o consegui trabalho na minha profiss�o"
	"C" "N�o me preparei para um trabalho em espec�fico/minha forma��o foi geral"
/Q50
	"A" "Menos de 1 ano "
	"B" "Entre 1 e 2 anos"
	"C" "Entre 2 e 4 anos"
	"D" "Mais de 4 anos"
/Q51
	"A" "Menos de 8 anos "
	"B" "8 anos"
	"C" "9 anos"
	"D" "10 anos"
	"E" "11 anos"
	"F" "Mais de 11 anos"
/Q52
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular "
	"C" "Somente em escola particular"
/Q53
	"A" "Vou conclu�-lo no segundo semestre de 1999 "
	"B" "No primeiro semestre de 1999"
	"C" "1998"
	"D" "1997"
	"E" "1996"
	"F" "Entre 1992 e1995"
	"G" "Antes de 1992"
/Q54
	"A" "Menos de 3 anos "
	"B" "3 anos"
	"C" "4 anos"
	"D" "5 anos"
	"E" "6 anos"
	"F" "Mais de 6 anos"
/Q55
	"A" "Somente no turno diurno"
	"B" "Parte no turno diurno e parte no turno noturno "
	"C" "Somente no turno noturno"
/Q56
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular "
	"C" "Somente em escola particular"
/Q57
	"A" "Ensino regular"
	"B" "Ensino supletivo"
/Q58
	"A" "Sim"
	"B" "N�o"
/Q59
	"A" "Sim"
	"B" "N�o"
/Q60
	"A" "Sim"
	"B" "N�o"
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
	"B" "Mais ou menos "
	"C" "Pouco"
	"D" "N�o"
/Q65
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "Eventualmente"
	"C" "Nunca"
/Q66
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "De vez em quando"
	"C" "Nunca"
/Q67
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "De vez em quando"
	"C" "Nunca"
/Q68
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "De vez em quando"
	"C" "Nunca"
/Q69
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "De vez em quando"
	"C" "Nunca"
/Q70
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "P�ssimo"
/Q71
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "P�ssimo"
/Q72
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "P�ssimo"
/Q73
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "P�ssimo"
/Q74
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "P�ssimo"
/Q75
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "P�ssimo"
/Q76
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "P�ssimo"
/Q77
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "N�o"
/Q78
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "N�o"
/Q79
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "N�o"
/Q80
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "N�o"
/Q81
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "N�o"
/Q82
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "N�o"
/Q83
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "N�o"
/Q84
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "N�o"
/Q85
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q86
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q87
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q88
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q89
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q90
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q91
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q92
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q93
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q94
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q95
	"A" "Muito"
	"B" "Um pouco"
	"C" "N�o me interesso"
/Q96
	"A" "Com frequ�ncia "
	"B" "�s vezes"
	"C" "N�o participo"
/Q97
	"A" "Com frequ�ncia "
	"B" "�s vezes"
	"C" "N�o participo"
/Q98
	"A" "Com frequ�ncia "
	"B" "�s vezes"
	"C" "N�o participo"
/Q99
	"A" "Com frequ�ncia "
	"B" "�s vezes"
	"C" "N�o participo"
/Q100
	"A" "Com frequ�ncia "
	"B" "�s vezes"
	"C" "N�o participo"
/Q101
	"A" "Com frequ�ncia "
	"B" "�s vezes"
	"C" "N�o participo"
/Q102
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q103
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q104
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q105
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q106
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q107
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q108
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q109
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q110
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q111
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q112
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q113
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem import�ncia"
/Q114
	"A" "Melhorou muito "
	"B" "Melhorou um pouco "
	"C" "N�o melhorou "
	"D" "Piorou"
	"E" "Piorou muito"
/Q115
	"A" "Melhorou muito "
	"B" "Melhorou um pouco "
	"C" "N�o melhorou "
	"D" "Piorou"
	"E" "Piorou muito"
/Q116
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas n�o estou estudando no momento atual "
	"C" "N�o"
/Q117
	"A" "Sim"
	"B" "N�o"
/Q118
	"A" "Sim"
	"B" "N�o"
/Q119
	"A" "Sim"
	"B" "N�o"
/Q120
	"A" "Sim"
	"B" "N�o"
/Q121
	"A" "Sim"
	"B" "N�o"
/Q122
	"A" "Sim"
	"B" "N�o"
/Q123
	"A" "Sim"
	"B" "N�o"
/Q124
	"A" "Sim"
	"B" "N�o"
/Q125
	"A" "Sim"
	"B" "N�o"
/Q126
	"A" "Sim"
	"B" "N�o"
/Q127	"A" "Sim"
	"B" "N�o"
/Q128
	"A" "Sim"
	"B" "N�o"
/Q129
	"A" "Sim"
	"B" "N�o"
.