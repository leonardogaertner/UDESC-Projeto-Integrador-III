/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2000                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2000     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2000.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_2000.csv" /*local do arquivo*/
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
.
CACHE.
EXECUTE.
DATASET NAME ENEM_2000 WINDOW=FRONT.

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
Q1 "Sexo"
Q2 "Ano em que nasceu"
Q3 "Como se considera"
Q4 "Qual o estado civil"
Q5 "Como mora"
Q6 "Mora sozinho(a)"
Q7 "Mora com o pai"
Q8 "Mora com a m�e"
Q9 "Mora com mulher, marido, companheiro ou companheira."
Q10 "Mora com filhos"
Q11 "Mora com irm�os"
Q12 "Mora com outros parentes"
Q13 "Mora com amigos ou colegas"
Q14 "Outra situa��o."
Q15 "Quantidade de pessoas que moram na casa"
Q16 "Quantos filhos tem"
Q17 "O grau de escolaridade do pai do candidato"
Q18 "O grau de escolaridade de m�e do candidato"
Q19 "�rea que o pai trabalha ou trabalhou, na maior parte da vida"
Q20 "Qual a posi��o do pai neste trabalho, na maior parte do tempo"
Q21 "�rea que a m�e trabalha ou trabalhou, na maior parte da vida"
Q22 "Qual a posi��o da m�e neste trabalho, na maior parte do tempo"
Q23 "Renda  total (Todos que moram na mesma casa)"
Q24 "Quais e quantos dos itens abaixo h� em sua casa? Autom�vel"
Q25 "Quais e quantos dos itens abaixo h� em sua casa? TV em cores"
Q26 "Quais e quantos dos itens abaixo h� em sua casa?  Microcomputador"
Q27 "Quais e quantos dos itens abaixo h� em sua casa? Videocassete"
Q28 "Quais e quantos dos itens abaixo h� em sua casa? M�quina de lavar roupa"
Q29 "Quais e quantos dos itens abaixo h� em sua casa? Aspirador de p�"
Q30 "Quais e quantos dos itens abaixo h� em sua casa? Geladeira"
Q31 "Quais e quantos dos itens abaixo h� em sua casa? Freezer"
Q32 "Quais e quantos dos itens abaixo h� em sua casa? Telefone"
Q33 "Tem casa pr�pria"
Q34 "Tem casa em rua urbanizada (com cal�amento ou asfaltada)"
Q35 "Se a casa tem �gua corrente de torneira"
Q36 "Se a casa tem eletricidade"
Q37 "Tem empregada dom�stica mensalista"
Q38 "Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento"
Q39 "Trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)"
Q40 "Quantas horas trabalhava, durante o ensino m�dio (2� grau)"
Q41 "Com que finalidade trabalhava, enquanto estudava no ensino m�dio (antigo 2� grau)"
Q42 "Com que idade come�ou a exercer atividade remunerada"
Q43 "Se estiver trabalhando atualmente, qual a renda ou sal�rio mensal"
Q44 "Por que trabalha atualmente"
Q45 "Em que trabalha atualmente"
Q46 "Qual a sua posi��o no trabalho"
Q47 "Trabalha na ocupa��o para a qual se preparou nos estudos"
Q48 "Quanto tempo est� trabalhando nessa atividade"
Q49 "Anos que levou para concluir o ensino fundamental (1� grau)"
Q50 "Em que tipo de escola cursou o ensino fundamental (1� grau)"
Q51 "Em que ano concluiu ou concluir� o ensino m�dio (2� grau)"
Q52 "Quantos anos levou para cursar o ensino m�dio (2� grau)"
Q53 "Em que turno cursou ou esta cursando o ensino m�dio (2� grau)"
Q54 "Em que  tipo escola cursou ou est� cursando o ensino m�dio (2� grau)"
Q55 "Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)"
Q56 "Fez curso de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)"
Q57 "Fez curso de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)"
Q58 "Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)"
Q59 "Fez artes pl�sticas em geral fora da escola durante o ensino m�dio (2� grau)"
Q60 "Fez atividades artistica em geral fora da escola durante o ensino m�dio (2� grau)"
Q61 "Fez atividade esportiva fora da escola durante o ensino m�dio (2� grau)"
Q62 "Outro(s) curso(s) ou outra(s) atividade(s)"
Q63 "Com que freq��ncia l� jornais"
Q64 "Com que freq��ncia l� revistas de informa��o geral"
Q65 "Com que freq��ncia l� revistas de humor / quadrinhos"
Q66 "Com que freq��ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc)"
Q67 "Com que freq��ncia l� romances, livros de fic��o"
Q68 "Qual a sua avalia��o da escola que fez o ensino m�dio quanto ao conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo"
Q69 "Qual a sua avalia��o da escola que fez o ensino m�dio quanto ao  dedica��o dos professores para preparar aulas e atender aos alunos"
Q70 "Qual a sua avalia��o da escola que fez o ensino m�dio quanto as iniciativas da escola para realizar excurs�es, trabalhos em equipe, projetos e outras atividades fora da rotina"
Q71 "Qual a sua avalia��o da escola que fez o ensino m�dio quanto aos recursos pedag�gicos: laborat�rios, bibliotecas, TV, v�deos etc. dispon�veis"
Q72 "Qual a sua avalia��o da escola que fez o ensino m�dio quanto as condi��es f�sicas da escola � condi��o das salas, banheiros, limpeza"
Q73 "Qual a sua avalia��o da escola que fez o ensino m�dio quanto ao  acesso a computadores e outros recursos de inform�tica"
Q74 "Qual a sua avalia��o da escola que fez o ensino m�dio quanto ao  ensino de l�ngua estrangeira"
Q75 "Nos pr�ximos tr�s anos pretende: Continuar estudando"
Q76 "Nos pr�ximos tr�s anos pretende: conseguir um emprego"
Q77 "Nos pr�ximos tr�s anos pretende: melhorar a posi��o no emprego atual"
Q78 "Nos pr�ximos tr�s anos pretende: fazer um concurso p�blico"
Q79 "Nos pr�ximos tr�s anos pretende: trabalhar por conta pr�pria, abrir meu pr�prio neg�cio."
Q80 "Nos pr�ximos tr�s anos pretende: constituir fam�lia"
Q81 "Nos pr�ximos tr�s anos pretende: mudar para outra cidade ou estado do Brasil."
Q82 "Nos pr�ximos tr�s anos pretende: mudar para o Exterior"
Q83 "Voc� tem: interesse  em acompanhar a politica nacional"
Q84 "Voc� tem: interesse em acompanhar a politica internacional"
Q85 "Voc� tem: interesse em acompanhar esportes"
Q86 "Voc� tem: interesse em acompanhar a economia"
Q87 "Voc� tem: interesse em acompanhar a moda"
Q88 "Voc� tem: interesse em acompanhar atividades culturais, como teatro, pintura, arte, etc"
Q89 "Voc� tem: interesse em acompanhar quest�es sobre comportamento sexual, como a AIDS, a gravidez indesejada etc"
Q90 "Voc� tem: interesse em mudar para o exterior"
Q91 "Voc� tem: interesse em acompanhar quest�es sobre o meio ambiente"
Q92 "Voc� tem: interesse em quest�es relativas aos direitos de minorias"
Q93 "Voc� tem: interesse em quest�es sociais, como pobreza, o desemprego, a viol�ncia etc."
Q94 "Voc� participa: igreja ou grupo religioso"
Q95 "Voc� participa:  partido pol�tico ou movimento social."
Q96 "Voc� participa: sindicato ou associa��o profissional."
Q97 "Voc� participa: grupo de bairro ou associa��o comunit�ria"
Q98 "Voc� participa:  clube recreativo ou associa��o esportiva."
Q99 "Voc� participa:  gr�mio estudantil"
Q100 "Qual a sua opini�o  em rela��o ao Brasil, nos �ltimos anos"
Q101 "Qual a sua opini�o  em rela��o a sua situa��o e a de sua fam�lia, nos �ltimos anos"
Q102 "Para ter uma boa vida no futuro voc� considera importante ter sido um um bom(a) aluno(a) na escola ou na faculdade"
Q103 "Para ter uma boa vida no futuro voc� considera importante ter cursado uma boa escola ou facudade"
Q104 "Para ter uma boa vida no futuro voc� considera importante ter conhecimentos profissionais pr�ticos e �teis"
Q105 "Para ter uma boa vida no futuro voc� considera importante ter cultura geral (conhecer l�gua, ler livros etc)"
Q106 "Para ter uma boa vida no futuro voc� considera importante ter amigos influentes"
Q107 "Para ter uma boa vida no futuro voc� considera importante  vir de uma fam�lia rica"
Q108 "Para ter uma boa vida no futuro voc� considera importante ser esperto(a)"
Q109 "Para ter uma boa vida no futuro voc� considera importante ter sorte na vida"
Q110 "Para ter uma boa vida no futuro voc� considera importante ser honesto(a) e justo(a)"
Q111 "Para ter uma boa vida no futuro voc� considera importante ser trabalhador"
Q112 "Para ter uma boa vida no futuro voc� considera importante ser gerneroso(a) e solid�rio(a) ckom os outros"
Q113 "Para ter uma boa vida no futuro voc� considera importante ser f� e seguir os ensinamentos religiosos"
Q114 "Voc� continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)"
Q115 "Est� freq�entando um curso profissionalizante"
Q116 "Est� freq�entando um curso preparat�rio para vestibular"
Q117 "Est� freq�entando um curso superior"
Q118 "Est� freq�entando um curso de l�ngua estrangeira"
Q119 "Est� freq�entando um curso de computa��o ou inform�tica"
Q120 "Est� freq�entando outro curso"
Q121 "Fez curso profissionalizante"
Q122 "Fez curso preparat�rio para vestibular, mas n�o ingressei no curso superior"
Q123 "Fez curso superior e se formou"
Q124 "Fez curso superior mas n�o se formou"
Q125 "Fez curso de l�ngua estrangeira"
Q126 "Fez curso de computa��o ou inform�tica"
Q127 "Fez outro curso"
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
 	2 "Concluir� em 2000"
	3 "Concluir� ap�s 2000"
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
	"D" "Desconsiderada"
 	"F" "Faltou � prova"
 	"N" "Reda��o anulada"
 	"P" "Presente � prova"
/IN_QSE
 	1 "Respondeu o question�rio socioec�mico"
 	0 "N�o respondeu o question�rio socioec�mico"
/Q1
	"A" "Masculino"
	"B" "Feminino"
/Q2
	"A" "Ap�s 1983."
	"B" "1983"
	"C" "1982"
	"D" "1981"
	"E" "1980"
	"F" "1979"
	"G" "Entre 1975 e 1978"
	"H" "Antes de 1975"
/Q3
	"A" "Branco(a)."
	"B" "Pardo(a) / mulato(a). "
	"C" "Negro(a)."
	"D" "Amarelo(a) (De origem asi�tica)"
	"E" "Ind�gena."
/Q4
	"A" "Solteiro(a)"
	"B" "Casado(a) / mora com um(a) companheiro(a) "
	"C" "Separado(a) / divorciado(a) / desquitado(a) "
	"D" "Vi�vo(a)"
/Q5
	"A" "Em casa ou apartamento, com sua fam�lia "
	"B" "Em casa ou apartamento, sozinho(a)"
	"C" "Em quarto ou c�modo alugado, sozinho(a)"
	"D" "Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc"
	"E" "Outra situa��o"
/Q6
	"A" "Sim"
	"B" "N�o"
/Q7
	"A" "Sim"
	"B" "N�o"
/Q8
	"A" "Sim"
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
/Q13
	"A" "Sim"
	"B" "N�o"
/Q14
	"A" "Sim"
	"B" "N�o"
/Q15
	"A" "Moro sozinho "
	"B" "Duas pessoas "
	"C" "Tr�s pessoas "
	"D" "Quatro pessoas "
	"E" "Cinco pessoas "
	"F" "Seis pessoas"
	"G" "Mais de seis pessoas."
/Q16
	"A" "N�o tenho filhos "
	"B" "Um filho"
	"C" "Dois filhos "
	"D" "Tr�s filhos"
	"E" "Quatro ou mais filhos"
/Q17
	"A" "N�o estudou"
	"B" "Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto "
	"E" "Ensino M�dio (2� grau) completo "
	"F" "Ensino Superior incompleto "
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o (mestrado, especializa��o, doutorado)"
	"I" "N�o sei"
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
	"A" "Na agricultura, no campo, em fazenda ou na pesca"
	"B" "Na ind�stria"
	"C" "No com�rcio, banco, transporte ou outros servi�os"
	"D" "Como empregado em casa de fam�lia"
	"E" "Como funcion�rio do governo federal, do estado ou munic�pio, ou militar"
	"F" "Profissional liberal, professor ou t�cnico de n�vel superior"
	"G" "No lar"
	"H" "Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa"
	"I" "N�o trabalha"
	"J" "N�o sei"
/Q20
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcion�rio p�blico (federal, estadual, municipal), com fun��es de dire��o"
	"C" "Militar (guarda civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o"
	"F" "Militar (guarda civil, pol�cia estadual ou For�as Armadas), sem posto de comando"
	"G" "Trabalho tempor�rio, informal, sem carteira assinada"
	"H" "Trabalha por conta pr�pria"
	"I" "Aposentado"
	"J" "N�o trabalha"
	"K" "Outra situa��o"
/Q21
	"A" "Na agricultura, no campo, em fazenda ou na pesca"
	"B" "Na ind�stria"
	"C" "No com�rcio, banco, transporte ou outros servi�os"
	"D" "Como empregado em casa de fam�lia"
	"E" "Como funcion�rio do governo federal, do estado ou munic�pio, ou militar"
	"F" "Profissional liberal, professor ou t�cnico de n�vel superior"
	"G" "No lar"
	"H" "Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa"
	"I" "N�o trabalha"
	"J" "N�o sei"
/Q22
	"A" "Gerente, administradora ou diretora de empresa privada"
	"B" "Funcion�ria p�blica (federal, estadual ou municipal), com fun��es de dire��o"
	"C" "Militar (guarda civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregada no setor privado, com carteira assinada"
	"E" "Funcion�ria p�blica (federal, estadual e municipal), sem fun��o de dire��o"
	"F" "Militar (guarda civil, pol�cia estadual ou For�as Armadas), sem posto de comando"
	"G" "Trabalho tempor�rio, informal, sem carteira assinada"
	"H" "Trabalha por conta pr�pria"
	"I" "Desempregada"
	"J" "Aposentada"
	"K" "Outra situa��o"
/Q23
	"A" "At� 1 sal�rio m�nimo (R$ 151,00)"
	"B" "De 1 a 2 sal�rios m�nimos (de R$ 151,01 a R$ 302,00)"
	"C" "De 2 a 5 sal�rios m�nimos (de R$ 302,01 a R$ 755,00)"
	"D" "De 5 a 10 sal�rios m�nimos (de R$ 755,01 a R$ 1.510,00)"
	"E" "De 10 a 30 sal�rios m�nimos (de R$ 1.510,01 a R$ 4.530,00)"
	"F" "De 30 a 50 sal�rios m�nimos (de R$ 4.530,01 a R$ 7.550,00)"
	"G" "Mais de 50 sal�rios m�nimos (mais de R$ 7.550,00)"
	"H" "Nenhuma renda"
/Q24
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q25
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q26
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q27
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q28
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q29
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q30
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q31
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q32
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "N�o tem"
/Q33
	"A" "Sim"
	"B" "N�o"
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
	"B" "Nunca trabalhei"
	"C" "Nunca trabalhei, mas estou procurando trabalho"
/Q39
	"A" "Sim, menos de 1 ano"
	"B" "Sim, de 1 a 2 anos"
	"C" "Sim, de 2 a 3 anos"
	"D" "Sim, todo o tempo"
	"E" "N�o"
/Q40
	"A" "Sem jornada fixa, at� 10 horas semanais"
	"B" "De 11 a 20 horas semanais"
	"C" "De 21 a 30 horas semanais"
	"D" "De 31 a 40 horas semanais"
	"E" "Mais de 40 horas semanais"
/Q41
	"A" "Para ajudar meus pais "
	"B" "Para meu pr�prio sustento "
	"C" "Para as duas finalidades"
	"D" "Para outra(s) finalidade(s)"
/Q42
	"A" "Antes dos 14 anos "
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Ap�s 18 anos"
/Q43
	"A" "At� 1 sal�rio m�nimo (R$ 151,00)"
	"B" "De 1 a 2 sal�rios m�nimos (de R$ 151,01 a R$ 302,00)"
	"C" "De 2 a 5 sal�rios m�nimos (de R$ 302,01 a R$ 755,00)"
	"D" "De 5 a 10 sal�rios m�nimos (de R$ 755,01 a R$ 1.510,00)"
	"E" "De 10 a 30 sal�rios m�nimos (de R$ 1.510,01 a R$ 4.530,00)"
	"F" "De 30 a 50 sal�rios m�nimos (de R$ 4.530,01 a R$ 7.550,00)"
	"G" "Mais de 50 sal�rios m�nimos (mais de R$ 7.550,00)"
	"H" "N�o estou trabalhando"
/Q44
	"A" "Para ajudar meus pais "
	"B" "Para meu pr�prio sustento "
	"C" "Para as duas finalidades"
	"D" "Para outra(s) finalidade(s)"
/Q45
	"A" "Na agricultura (campo, fazenda, pesca). "
	"B" "Na ind�stria."
	"C" "No com�rcio, banco, transporte ou outros servi�os."
	"D" "Como empregado(a) em casa de fam�lia."
	"E" "Como funcion�rio(a) do governo federal, do estado ou do munic�pio, ou militar."
	"F" "Como profissional liberal, professor(a) ou t�cnico(a) de n�vel superior."
	"G" "No lar."
	"H" "Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa"
	"I" "N�o trabalha"
/Q46
	"A" "Gerente, administrador(a) ou diretor(a) de empresa privada."
	"B" "Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), com fun��es de dire��o."
	"C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
	"D" "Empregado(a) no setor privado, com carteira assinada"
	"E" "Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), sem fun��o de dire��o."
	"F" "Trabalho tempor�rio, informal, sem carteira assinada"
	"G" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando."
	"H" "Trabalho por conta pr�pria Aposentado(a)."
	"I" "N�o trabalho"
	"J" "Outra situa��o."
/Q47
	"A" "Sim"
	"B" "N�o, porque n�o consegui trabalho na minha profiss�o"
	"C" "N�o me preparei para um trabalho em espec�fico/minha forma��o foi geral"
/Q48
	"A" "Menos de 1 ano "
	"B" "Entre 1 e 2 anos"
	"C" "Entre 2 e 4 anos"
	"D" "Mais de 4 anos"
/Q49
	"A" "Menos de 8 anos "
	"B" "8 anos"
	"C" "9 anos"
	"D" "10 anos"
	"E" "11 anos"
	"F" "Mais de 11 anos"
/Q50
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular "
	"C" "Somente em escola particular"
/Q51
	"A" "Vou conclu�-lo no segundo semestre de 2000. "
	"B" "No primeiro semestre de 2000"
	"C" "1999"
	"D" "1998"
	"E" "1997"
	"F" "Entre 1993 e1996"
	"G" "Antes de 1993"
/Q52
	"A" "Menos de 3 anos "
	"B" "3 anos"
	"C" "4 anos"
	"D" "5 anos"
	"E" "6 anos"
	"F" "Mais de 6 anos"
/Q53
	"A" "Somente no turno diurno"
	"B" "Parte no turno diurno e parte no turno noturno "
	"C" "Somente no turno noturno"
/Q54
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular "
	"C" "Somente em escola particular"
/Q55
	"A" "Ensino regular"
	"B" "Ensino supletivo"
/Q56
	"A" "Sim"
	"B" "N�o"
/Q57
	"A" "Sim"
	"B" "N�o"
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
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "Eventualmente"
	"C" "Nunca"
/Q64
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "Eventualmente"
	"C" "Nunca"
/Q65
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "Eventualmente"
	"C" "Nunca"
/Q66
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "Eventualmente"
	"C" "Nunca"
/Q67
	"A" "Frequentemente (todo dia ou quase todo dia) "
	"B" "Eventualmente"
	"C" "Nunca"
/Q68
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "P�ssimo"
/Q69
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "P�ssimo"
/Q70
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "P�ssimo"
/Q71
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "P�ssimo"
/Q72
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "P�ssimo"
/Q73
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "P�ssimo"
/Q74
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "P�ssimo"
/Q75
	"A" "Sim"
	"B" "N�o"
/Q76
	"A" "Sim"
	"B" "N�o"
/Q77
	"A" "Sim"
	"B" "N�o"
/Q78
	"A" "Sim"
	"B" "N�o"
/Q79
	"A" "Sim"
	"B" "N�o"
/Q80
	"A" "Sim"
	"B" "N�o"
/Q81
	"A" "Sim"
	"B" "N�o"
/Q82
	"A" "Sim"
	"B" "N�o"
/Q83
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q84
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q85
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q86
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q87
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q88
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q89
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q90
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q91
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q92
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q93
	"A" "Muito "
	"B" "Pouco"
	"C" "N�o me interesso"
/Q94
	"A" "Com frequ�ncia "
	"B" "�s vezes"
	"C" "N�o participo"
/Q95
	"A" "Com frequ�ncia "
	"B" "�s vezes"
	"C" "N�o participo"
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
	"A" "Melhorou "
	"B" "Piorou"
	"C" "Nem melhorou nem piorou"
/Q101
	"A" "Melhorou "
	"B" "Piorou"
	"C" "Nem melhorou nem piorou"
/Q102
	"A" "Importante"
	"B" "Sem import�ncia"
/Q103
	"A" "Importante"
	"B" "Sem import�ncia"
/Q104
	"A" "Importante"
	"B" "Sem import�ncia"
/Q105
	"A" "Importante"
	"B" "Sem import�ncia"
/Q106
	"A" "Importante"
	"B" "Sem import�ncia"
/Q107
	"A" "Importante"
	"B" "Sem import�ncia"
/Q108
	"A" "Importante"
	"B" "Sem import�ncia"
/Q109
	"A" "Importante"
	"B" "Sem import�ncia"
/Q110
	"A" "Importante"
	"B" "Sem import�ncia"
/Q111
	"A" "Importante"
	"B" "Sem import�ncia"
/Q112
	"A" "Importante"
	"B" "Sem import�ncia"
/Q113
	"A" "Importante"
	"B" "Sem import�ncia"
/Q114
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas n�o estou estudando no momento atual "
	"C" "N�o"
/Q115
	"A" "Sim"
	"B" "N�o"
/Q116
	"A" "Sim"
	"B" "N�o"
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
/Q127
	"A" "Sim"
	"B" "N�o"
.