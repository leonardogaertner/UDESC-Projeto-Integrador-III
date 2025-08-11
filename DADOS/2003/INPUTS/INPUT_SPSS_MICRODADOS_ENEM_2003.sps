/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2003                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2003     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2003.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_2003.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
NU_INSCRICAO F8.0
NU_ANO F8.0
TP_FAIXA_ETARIA F2.0
TP_SEXO A1
CO_MUNICIPIO_RESIDENCIA F8.0
NO_MUNICIPIO_RESIDENCIA A50
CO_UF_RESIDENCIA F8.0
SG_UF_RESIDENCIA A2
TP_ST_CONCLUSAO F8.0
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
Q138 A1
Q139 A1
Q140 A1
Q141 A1
Q142 A1
Q143 A1
Q144 A1
Q145 A1
Q146 A1
Q147 A1
Q148 A1
Q149 A1
Q150 A1
Q151 A1
Q152 A1
Q153 A1
Q154 A1
Q155 A1
Q156 A1
Q157 A1
Q158 A1
Q159 A1
Q160 A1
Q161 A1
Q162 A1
Q163 A1
Q164 A1
Q165 A1
Q166 A1
Q167 A1
Q168 A1
Q169 A1
Q170 A1
Q171 A1
Q172 A1
Q173 A1
Q174 A1
Q175 A1
Q176 A1
Q177 A1
Q178 A1
Q179 A1
Q180 A1
Q181 A1
Q182 A1
Q183 A1
Q184 A1
Q185 A1
Q186 A1
Q187 A1
Q188 A1
.
CACHE.
EXECUTE.
DATASET NAME ENEM_03 WINDOW=FRONT.

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
Q6 "Mora sozinho(a)"
Q7 "Mora com o pai"
Q8 "Mora com a m�e"
Q9 "Mora com esposa / marido / companheiro(a)"
Q10 "Mora com filho(s)"
Q11 "Mora com irm�o(s)"
Q12 "Mora com outro(s) parente(s)"
Q13 "Mora com amigo(s) ou colega(s)"
Q14 "Quantidade de pessoas que moram na casa"
Q15 "Quantos filhos tem"
Q16 "At� quando o pai estudou"
Q17 "At� quando a m�e estudou"
Q18 "�rea que o pai trabalha ou trabalhou, na maior parte da vida"
Q19 "Qual a posi��o do pai neste trabalho, na maior parte do tempo"
Q20 "�rea que a m�e trabalha ou trabalhou, na maior parte da vida"
Q21 "Qual a posi��o da m�e neste trabalho, na maior parte do tempo"
Q22 "Renda familiar (somando a do respondente e com a das pessoas que moram com ele)"
Q23 "Tem TV e quantas"
Q24 "Tem Videocassete e/ou DVD e quantos"
Q25 "Tem R�dio e quantos"
Q26 "Tem Microcomputador e quantos"
Q27 "Tem Autom�vel e quantos"
Q28 "Tem M�quina de lavar roupa e quantos"
Q29 "Tem Geladeira e quantas"
Q30 "Tem Telefone fixo e quantos"
Q31 "Tem Telefone celular e quantos"
Q32 "Tem Acesso � Internet e quantos"
Q33 "Tem TV por assinatura e quantas"
Q34 "Tem casa pr�pria"
Q35 "Se a casa � em rua cal�ada ou asfaltada"
Q36 "Se a casa tem �gua corrente de torneira"
Q37 "Se a casa tem eletricidade"
Q38 "Motivo para fazer o Enem"
Q39 "O motivo mais importante para se ter um trabalho"
Q40 "Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento"
Q41 "Trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)"
Q42 "Quantas horas trabalhava, durante o ensino m�dio (2� grau)"
Q43 "Com que finalidade trabalhava"
Q44 "Com que idade come�ou a exercer atividade remunerada"
Q45 "Se estiver trabalhando atualmente, qual a renda ou sal�rio mensal"
Q46 "Trabalha em alguma atividade para o qual se preparou"
Q47 "Em que trabalha atualmente"
Q48 "Qual a posi��o no trabalho"
Q49 "Quanto tempo est� trabalhando na atividade"
Q50 "Os conhecimentos no ensino m�dio foram adequados ao que o mercado de trabalho solicita"
Q51 "Os conhecimentos no ensino m�dio tiveram rela��o com a profiss�o que escolheu / que exerce"
Q52 "Os conhecimentos no ensino m�dio foram bem desenvolvidos, com aulas pr�ticas, laborat�rios, etc"
Q53 "Os conhecimentos no ensino m�dio proporcionaram cultura e conhecimento"
Q54 "Avalia��o de ter estudado e trabalhado, simultaneamente, durante o ensino m�dio"
Q55 "A escola que freq�enta ou freq�entou durante o ensino m�dio levou em conta que trabalhava ao mesmo tempo que estudava"
Q56 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o hor�rio flex�vel"
Q57 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse"
Q58 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recupera��o de notas"
Q59 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas"
Q60 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais din�micas, com did�tica diferenciada"
Q61 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revis�o da mat�ria aos  interessados"
Q62 "Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refei��o aos alunos"
Q63 "A escola deve oferecer hor�rio flex�vel para o aluno que trabalha"
Q64 "A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha"
Q65 "A escola deve oferecer programa de recupera��o de notas para o aluno que trabalha"
Q66 "A escola deve oferecer abono de faltas para o aluno que trabalha"
Q67 "A escola deve oferecer aulas mais din�micas, com did�tica diferenciada para o aluno que trabalha"
Q68 "A escola deve oferecer aulas de revis�o da mat�ria  aos alunos que interessados que trabalham"
Q69 "A escola deve oferecer fornecimento de refei��o para o aluno que trabalha"
Q70 "Anos que levou para concluir o ensino fundamental (1� grau)"
Q71 "Em que tipo de escola cursou o ensino fundamental (1� grau)"
Q72 "Em que ano concluiu ou concluir� o ensino m�dio (2� grau)"
Q73 "Quantos anos levou para cursas o ensino m�dio (2� grau)"
Q74 "Em que turno cursou ou esta cursando o ensino m�dio (2� grau)"
Q75 "Em que  tipo escola cursou ou est� cursando o ensino m�dio (2� grau)"
Q76 "Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)"
Q77 "Fez curso de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)"
Q78 "Fez curso de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)"
Q79 "Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)"
Q80 "Fez artes pl�sticas ou atividades art�sticas em geral fora da escola durante o ensino m�dio (2� grau)"
Q81 "Fez esportes, atividades f�sicas fora da escola durante o ensino m�dio (2� grau)"
Q82 "Com que freq��ncia l� jornais"
Q83 "Com que freq��ncia l� revistas de informa��o geral (Veja, Isto �, �poca, etc)"
Q84 "Com que freq��ncia l� revistas de humor / quadrinhos"
Q85 "Com que freq��ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc)"
Q86 "Com que freq��ncia l� romances, livros de fic��o"
Q87 "Avalia��o da escola que fez o ensino m�dio quanto o conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo"
Q88 "Avalia��o da escola que fez o ensino m�dio quanto a dedica��o dos professores para preparar aulas e atender aos alunos"
Q89 "Avalia��o da escola que fez o ensino m�dio quanto as iniciativas da escola para realizar excurs�es, estudos do meio"
Q90 "Avalia��o da escola que fez o ensino m�dio quanto a biblioteca  da escola"
Q91 "Avalia��o da escola que fez o ensino m�dio quanto as condi��es das salas de aula"
Q92 "Avalia��o da escola que fez o ensino m�dio quanto as condi��es dos laborat�rios"
Q93 "Avalia��o da escola que fez o ensino m�dio quanto o acesso a computadores e outros recursos de inform�tica"
Q94 "Avalia��o da escola que fez o ensino m�dio quanto o ensino de l�ngua estrangeira"
Q95 "Avalia��o da escola que fez o ensino m�dio quanto o interesse dos alunos"
Q96 "Avalia��o da escola que fez o ensino m�dio quanto o trabalho de grupo"
Q97 "Avalia��o da escola que fez o ensino m�dio quanto a pr�ticas de esportes"
Q98 "Avalia��o da escola que fez o ensino m�dio quanto a aten��o e o respeito dos funcion�rios"
Q99 "Avalia��o da escola que fez o ensino m�dio quanto a dire��o dela"
Q100 "Avalia��o da escola que fez o ensino m�dio quanto a organiza��o dos hor�rios de aulas"
Q101 "Avalia��o da escola que fez o ensino m�dio quanto a localiza��o dela"
Q102 "Avalia��o da escola que fez o ensino m�dio quanto a seguran�a (ilumina��o, policiamento, etc)"
Q103 "A escola em que estuda ou estudou realiza palestras / debates"
Q104 "A escola em que estuda ou estudou realiza jogos / esportes / campeonatos"
Q105 "A escola em que estuda ou estudou realiza teatro"
Q106 "A escola em que estuda ou estudou realiza coral"
Q107 "A escola em que estuda ou estudou realiza dan�a / m�sica"
Q108 "A escola em que estuda ou estudou realiza estudos do meio / passeios"
Q109 "A escola em que estuda ou estudou realiza feira de ci�ncias / feira cultural"
Q110 "A escola em que estuda ou estudou realiza festas / gincanas"
Q111 "De acordo com os ensinamentos no ensino m�dio, como considera o preparo para conseguir um emprego, exercer alguma atividade"
Q112 "Os(as) professores(as) t�m autoridade, firmeza"
Q113 "Os(as) professores(as) s�o distantes, t�m pouco envolvimento"
Q114 "Os(as) professores(as) t�m respeito"
Q115 "Os(as) professores(as) s�o indiferentes, ignoram sua exist�ncia"
Q116 "Os(as) professores(as) s�o preocupados(as) e dedicados(as)"
Q117 "Os(as) professores(as) s�o autorit�rios(as), r�gidos(as), abusam do poder"
Q118 "Avalia��o sobre a escola quanto a liberdade de expressar a id�ias"
Q119 "Avalia��o sobre a escola quanto o respeito aos alunos"
Q120 "Avalia��o sobre a escola quanto a amizade e respeito entre alunos(as) e funcion�rios(as)"
Q121 "Avalia��o sobre a escola quanto a levar em conta suas opini�es"
Q122 "Avalia��o sobre a escola quanto a discuss�o dos problemas da atualidade nas aulas"
Q123 "Avalia��o sobre a escola quanto a conviv�ncia entre alunos"
Q124 "Avalia��o sobre a escola quanto a organiza��o para apoiar a resolu��o de problemas de relacionamento entre alunos"
Q125 "Avalia��o sobre a escola quanto a iniciativa para apoiar a resolu��o de problemas de relacionamento entre alunos e professores"
Q126 "Avalia��o sobre a escola quanto a levar em conta seus problemas pessoais e familiares"
Q127 "Avalia��o sobre a escola quanto a realiza��o de Programas e Palestras contra drogas"
Q128 "Avalia��o sobre a escola quanto a capacidade relacionar os conte�dos das mat�rias com o cotidiano"
Q129 "Avalia��o sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu"
Q130 "Nota para a forma��o que obteve no ensino m�dio"
Q131 "O que o candidato acha que mais faz falta em sua forma��o pessoal para enfrentar a vida"
Q132 "Religi�o do candidato"
Q133 "Frequ�ncia que vai � Igreja"
Q134 "Pessoas com quem o candidato mais passa seu tempo livre ,depois da escola ou do trabalho,nos fins de semana?"
Q135 "O que o candidato faz com maior freq��ncia no tempo livre, depois da escola, do trabalho ou nos finais de semana?"
Q136 "Participa de um Gr�mio estudantil"
Q137 "Participa de um Sindicato ou Associa��o Profissional"
Q138 "Participa de um Grupo de bairro ou associa��o comunit�ria"
Q139 "Participa de uma Igreja ou grupo religioso"
Q140 "Participa de um partido pol�tico"
Q141 "Participa de uma Ong ou movimento social"
Q142 "Participa de um clube recreativo ou associa��o esportiva"
Q143 "O quanto voc� se interessa pela pol�tica nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da Rep�blica, etc"
Q144 "O quanto voc� se interessa pela pol�tica dos outros pa�ses"
Q145 "O quanto voc� se interessa pela economia nacional, a quest�o da infla��o,  o plano real"
Q146 "O quanto voc� se interessa a pol�tica da sua cidade, o prefeito, os vereadores"
Q147 "O quanto voc� se interessa por esportes"
Q148 "O quanto voc� se interessa pelas quest�es sobre o meio ambiente, polui��o, etc"
Q149 "O quanto voc� se interessa pelas quest�es sociais como a desigualdade, a pobreza, o desemprego, a mis�ria"
Q150 "O quanto voc� se interessa pelas quest�es sobre artes, teatro, cinema"
Q151 "O quanto voc� se interessa sobre a quest�o das drogas e suas conseq��ncias"
Q152 "O quanto voc� se interessa sobre assuntos sobre seu �dolo (cantor/a, artista, ou conjunto musical)"
Q153 "Qual dos pontos te preocupa em 1� lugar no momento"
Q154 "Qual dos pontos te preocupa em 2� lugar no momento"
Q155 "� a mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q156 "� a segunda mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q157 "� a terceira mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q158 "A principal decis�o que vai tomar quando concluir o ensino m�dio (2� grau)"
Q159 "E a m�dio prazo, daqui a uns 4 ou 5 anos j� planejou o que gostaria que acontecesse"
Q160 "Que profiss�o escolheu seguir"
Q161 "Meus pais ajudaram a tomar minha decis�o sobre minha profiss�o"
Q162 "A escola ajudou a tomar minha decis�o sobre minha profiss�o"
Q163 "Meus amigos ajudaram a tomar minha decis�o sobre minha profiss�o"
Q164 "Informa��es gerais, revistas, jornais, TV ajudaram a tomar minha decis�o sobre minha profiss�o"
Q165 "Meu trabalho ajudou a tomar minha decis�o sobre minha profiss�o"
Q166 "Est�mulo financeiro ajudou a tomar minha decis�o sobre minha profiss�o"
Q167 "Facilidade de obter emprego ajudou a tomar minha decis�o sobre minha profiss�o"
Q168 "Minha identifica��o com a profiss�o me ajudou a tomar minha decis�o sobre minha profiss�o"
Q169 "Continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)"
Q170 "Est� freq�entando um curso profissionalizante"
Q171 "Est� freq�entando um curso preparat�rio para vestibular"
Q172 "Est� freq�entando um curso superior"
Q173 "Est� freq�entando um curso de l�ngua estrangeira"
Q174 "Est� freq�entando um curso de computa��o ou inform�tica"
Q175 "Est� freq�entando outro curso"
Q176 "Concluiu curso profissionalizante"
Q177 "Concluiu curso preparat�rio para vestibular, mas n�o ingressei no curso superior"
Q178 "Concluiu curso superior"
Q179 "Fiz curso superior mas n�o me formei"
Q180 "Concluiu curso de l�ngua estrangeira"
Q181 "Concluiu curso de computa��o ou inform�tica"
Q182 "Concluiu outro curso"
Q183 "O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q184 "O curso preparat�rio para vestibular fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q185 "O curso superior fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q186 "O curso de l�ngua estrangeira fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q187 "O curso de computa��o ou inform�tica fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q188 "Outro curso fez mais falta para minha vida, depois que terminei o ensino m�dio"
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
/TP_ST_CONCLUSAO
 	0 "Nenhum dos anteriores"
 	1 "J� concluiu"
 	2 "Concluir� em 2003"
	3 "Concluir� ap�s 2003"
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
	"A" "Ap�s 1986."
	"B" "Em 1986."
	"C" "Em 1985."
	"D" "Em 1984."
	"E" "Em 1983."
	"F" "Em 1982."
	"G" "Em 1981."
	"H" "Entre 1977 e 1980."
	"I" "Antes de 1977."
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
	"A" "Duas pessoas"
	"B" "Tr�s pessoas"
	"C" "Quatro pessoas"
	"D" "Cinco pessoas"
	"E" "Seis pessoas"
	"F" "Mais de 6 pessoas"
	"G" "Moro sozinho"
/Q15
	"A" "Um filho"
	"B" "Dois filhos"
	"C" "Tr�s filhos"
	"D" "Quatro ou mais filhos"
	"E" "N�o tenho filhos"
/Q16
	"A" "N�o estudou"
	"B" "Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da 5� a 8� do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto"
	"E" "Ensino M�dio (2� grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o"
	"I" "N�o sei"
/Q17
	"A" "N�o estudou"
	"B" "Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)"
	"C" "Da 5� a 8� do ensino fundamental (antigo gin�sio)"
	"D" "Ensino M�dio (2� grau) incompleto"
	"E" "Ensino M�dio (2� grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "P�s-gradua��o"
	"I" "N�o sei"
/Q18
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
/Q19
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
/Q20
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
/Q21
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
/Q22
	"A" "At� 1 sal�rio m�nimo (at� R$ 240,00)."
	"B" "De 1 a 2 sal�rios m�nimos (R$ 240,00 a R$ 480,00 inclusive)"
	"C" "De 2 a 5 sal�rios m�nimos (R$ 480,00 a R$ 1.200,00 inclusive)."
	"D" "De 5 a 10 sal�rios m�nimos (R$ 1.200,00 a R$ 2.400,00 inclusive)."
	"E" "De 10 a 30 sal�rios m�nimos (R$ 2.400,00 a R$ 7.200,00 inclusive)."
	"F" "De 30 a 50 sal�rios m�nimos (R$ 7.200,00 a R$ 12.000,00 inclusive)."
	"G" "Mais de 50 sal�rios m�nimos (mais de R$ 12.000,00)."
	"H" "Nenhuma renda."
/Q23
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q24
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q25
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q26
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q27
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q28
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q29
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q30
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q31
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q32
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "N�o tem"
/Q33
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
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
	"A" "Para testar seus conhecimentos / capacidade de racioc�nio"
	"B" "Para entrar na faculdade / conseguir pontos para o vestibular"
	"C" "Para ter um bom emprego / saber se est� preparado(a) para o futuro profissional"
	"D" "N�o sei"
/Q39
	"A" "Para ter mais responsabilidade"
	"B" "Independ�ncia financeira"
	"C" "Adquirir experi�ncia"
	"D" "Crescer profissionalmente"
	"E" "Sentir-me �til"
	"F" "Para fazer amigos, conhecer pessoas"
	"G" "N�o acho importante ter um trabalho"
/Q40
	"A" "Sim"
	"B" "Nunca trabalhei"
	"C" "Nunca trabalhei, mas estou procurando trabalho"
/Q41
	"A" "Sim, todo o tempo"
	"B" "Sim, menos de 1 ano"
	"C" "Sim, de 1 a 2 anos"
	"D" "Sim, de 2 a 3 anos"
	"E" "N�o"
/Q42
	"A" "Sem jornada fixa, at� 10 horas semanais"
	"B" "De 11 a 20 horas semanais"
	"C" "De 21 a 30 horas semanais"
	"D" "De 31 a 40 horas semanais"
	"E" "Mais de 40 horas semanais"
/Q43
	"A" "Para ajudar meus pais nas despesas com a casa, sustentar a fam�lia"
	"B" "Para ser independente (ter meu sustento, ganhar meu pr�prio dinheiro)"
	"C" "Para adquirir experi�ncia"
	"D" "Para ajudar minha comunidade"
	"E" "Outra finalidade"
/Q44
	"A" "Antes dos 14 anos"
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Ap�s 18 anos"
/Q45
	"A" "At� 1 sal�rio m�nimo (at� R$ 240,00)."
	"B" "De 1 a 2 sal�rios m�nimos (R$ 240,00 a R$ 480,00 inclusive)"
	"C" "De 2 a 5 sal�rios m�nimos (R$ 480,00 a R$ 1.200,00 inclusive)."
	"D" "De 5 a 10 sal�rios m�nimos (R$ 1.200,00 a R$ 2.400,00 inclusive)."
	"E" "De 10 a 30 sal�rios m�nimos (R$ 2.400,00 a R$ 7.200,00 inclusive)."
	"F" "De 30 a 50 sal�rios m�nimos (R$ 7.200,00 a R$ 12.000,00 inclusive)."
	"G" "Mais de 50 sal�rios m�nimos (mais de R$ 12.000,00)."
	"H" "Nenhuma renda."
/Q46
	"A" "Sim"
	"B" "N�o"
/Q47
	"A" "Na agricultura (campo, fazenda, pesca)."
	"B" "Na ind�stria."
	"C" "No com�rcio, banco, transporte ou outros servi�os."
	"D" "Como empregado(a) em casa de fam�lia."
	"E" "Como funcion�rio(a) do governo federal, do estado ou do munic�pio, ou militar."
	"F" "Como profissional liberal, professor(a) ou t�cnico(a) de n�vel superior."
	"G" "No lar."
	"H" "Trabalho em casa em servi�os (costura, comida, aulas particulares, etc.)."
	"I" "N�o trabalha"
/Q48
	"A" "Gerente, administrador(a) ou diretor(a) de empresa privada."
	"B" "Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), com fun��es de dire��o."
	"C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando."
	"D" "Empregado(a) no setor privado, com carteira assinada"
	"E" "Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), sem fun��o de dire��o."
	"F" "Trabalho tempor�rio, informal, sem carteira assinada."
	"G" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando."
	"H" "Trabalho por conta pr�pria."
	"I" "Aposentado(a)"
	"J" "Outra situa��o."
/Q49
	"A" "Menos de 1 ano"
	"B" "Entre 1 e 2 anos"
	"C" "Entre 2 e 4 anos"
	"D" "Mais de 4 anos"
/Q50
	"A" "Sim"
	"B" "N�o"
/Q51
	"A" "Sim"
	"B" "N�o"
/Q52
	"A" "Sim"
	"B" "N�o"
/Q53
	"A" "Sim"
	"B" "N�o"
/Q54
	"A" "Atrapalhou os estudos"
	"B" "Possibilitou crescimento pessoal"
	"C" "Atrapalhou os estudos, mas possibilitou crescimento pessoal"
	"D" "N�o atrapalhou os estudos"
	"E" "N�o trabalho / n�o trabalhei"
/Q55
	"A" "Sim"
	"B" "N�o"
	"C" "N�o sei"
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
	"A" "Sim"
	"B" "N�o"
/Q69
	"A" "Sim"
	"B" "N�o"
/Q70
	"A" "Menos de 8 anos "
	"B" "8 anos"
	"C" "9 anos"
	"D" "10 anos"
	"E" "11 anos"
	"F" "Mais de 11 anos"
/Q71
	"A" "Somente em escola p�blica"
	"B" "Parte em escola p�blica e parte em escola particular"
	"C" "Somente em escola particular"
/Q72
	"A" "Vou conclu�-lo ap�s 2003."
	"B" "Vou conclu�-lo no segundo semestre de 2003."
	"C" "No primeiro semestre de 2003."
	"D" "Em 2002."
	"E" "Em 2001."
	"F" "Em 2000."
	"G" "Em 1999."
	"H" "Em 1998."
	"I" "Entre 1996 e 1997."
	"J" "Antes de 1996."
/Q73
	"A" "Menos de 3 anos"
	"B" "3 anos"
	"C" "4 anos"
	"D" "5 anos"
	"E" "6 anos"
	"F" "Mais de 6 anos"
/Q74
	"A" "Somente no turno diurno"
	"B" "Maior parte no turno diurno"
	"C" "Somente no turno noturno"
	"D" "Maior parte no turno noturno"
/Q75
	"A" "Somente em escola p�blica"
	"B" "Maior parte em escola p�blica"
	"C" "Somente em escola particular"
	"D" "Maior parte em escola particular"
/Q76
	"A" "Ensino regular"
	"B" "Educa��o para jovens e adultos (antigo supletivo)"
	"C" "Ensino t�cnico / ensino profissional"
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
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q83
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q84
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q85
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q86
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "�s vezes"
	"C" "Nunca"
/Q87
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q88
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q89
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q90
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q91
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q92
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q93
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q94
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q95
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q96
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q97
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q98
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q99
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q100
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q101
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q102
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
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
	"A" "Eu me considero preparado(a) para entrar no mercado de trabalho"
	"B" "Apesar de ter freq�entado uma boa escola, eu me considero despreparado(a), pois n�o aprendi o suficiente para conseguir um emprego"
	"C" "Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola, que n�o me preparou o suficiente"
	"D" "N�o sei"
/Q112
	"A" "Sim"
	"B" "N�o"
/Q113
	"A" "Sim"
	"B" "N�o"
/Q114
	"A" "Sim"
	"B" "N�o"
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
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q119
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q120
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q121
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q122
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q123
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q124
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q125
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q126
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q127
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q128
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q129
	"A" "Insuficiente a regular"
	"B" "Regular a bom"
	"C" "Bom a excelente"
/Q130
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
/Q131
	"A" "Autoconfian�a."
	"B" "Clareza de objetivos."
	"C" "Capacidade de solu��o de problemas."
	"D" "Lideran�a."
	"E" "Saber me relacionar com pessoas, trabalhar em grupo."
	"F" "N�o me falta nada."
/Q132
	"A" "Evang�lica"
	"B" "Umbanda ou Candombl�."
	"C" "Esp�rita kardecista."
	"D" "Cat�lica."
	"E" "Outra religi�o."
	"F" "Acredita em Deus, mas n�o tem religi�o."
	"G" "� ateu / n�o acredita em Deus."
/Q133
	"A" "Mais de uma vez por semana."
	"B" "1 vez por semana."
	"C" "1 vez por m�s."
	"D" "Somente em ocasi�es especiais."
	"E" "Nunca."
/Q134
	"A" "Sozinho(a)"
	"B" "Meus amigos da escola, minha turma"
	"C" "Meus amigos de fora da escola"
	"D" "Meus irm�os/minha fam�lia/marido/esposa/filhos"
	"E" "S� com o namorado(a)"
/Q135
	"A" "Assisto a programas de TV."
	"B" "Leio livros/revistas, escuto m�sica."
	"C" "Vou ao shopping."
	"D" "Vou � igreja."
	"E" "Saio com amigos."
	"F" "Acesso � Internet."
	"G" "Nenhum desses itens."
/Q136
	"A" "Sim"
	"B" "N�o"
/Q137
	"A" "Sim"
	"B" "N�o"
/Q138
	"A" "Sim"
	"B" "N�o"
/Q139
	"A" "Sim"
	"B" "N�o"
/Q140
	"A" "Sim"
	"B" "N�o"
/Q141
	"A" "Sim"
	"B" "N�o"
/Q142
	"A" "Sim"
	"B" "N�o"
/Q143
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q144
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q145
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q146
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q147
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q148
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q149
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q150
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q151
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q152
	"A" "Muito"
	"B" "Pouco"
	"C" "N�o me interesso"
/Q153
	"A" "O meio ambiente"
	"B" "A Aids e as doen�as sem cura"
	"C" "O racismo e o desrespeito �s pessoas de outra ra�a ou religi�o"
	"D" "A pobreza, as favelas, os meninos de rua"
	"E" "As drogas e a viol�ncia"
	"F" "A situa��o econ�mica do pa�s"
/Q154
	"A" "O meio ambiente"
	"B" "A Aids e as doen�as sem cura"
	"C" "O racismo e o desrespeito �s pessoas de outra ra�a ou religi�o"
	"D" "A pobreza, as favelas, os meninos de rua"
	"E" "As drogas e a viol�ncia"
	"F" "A situa��o econ�mica do pa�s"
/Q155
	"A" "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
	"B" "Forma��o b�sica necess�ria para obter um emprego melhor"
	"C" "Condi��es de melhorar minha posi��o no emprego atual"
	"D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
	"E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer v�rias pessoas"
	"G" "Atender � expectativa de meus pais sobre meus estudos"
/Q156
	"A" "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
	"B" "Forma��o b�sica necess�ria para obter um emprego melhor"
	"C" "Condi��es de melhorar minha posi��o no emprego atual"
	"D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
	"E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer v�rias pessoas"
	"G" "Atender � expectativa de meus pais sobre meus estudos"
/Q157
	"A" "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
	"B" "Forma��o b�sica necess�ria para obter um emprego melhor"
	"C" "Condi��es de melhorar minha posi��o no emprego atual"
	"D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
	"E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer v�rias pessoas"
	"G" "Atender � expectativa de meus pais sobre meus estudos"
/Q158
	"A" "J� conclui o ensino m�dio"
	"B" "Prestar vestibular e continuar os estudos no ensino superior"
	"C" "Procurar um emprego"
	"D" "Prestar vestibular e continuar a trabalhar"
	"E" "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho"
	"F" "Trabalhar por conta pr�pria / trabalhar em neg�cio da fam�lia"
	"G" "Trabalhar em atividade ligada � comunidade ind�gena"
	"H" "Ainda n�o decidiu"
/Q159
	"A" "Gostaria de ter um diploma universit�rio para conseguir um bom emprego"
	"B" "Gostaria de prestar um concurso e trabalhar no setor p�blico"
	"C" "Gostaria de ganhar dinheiro em meu pr�prio neg�cio"
	"D" "Gostaria de ter um emprego"
	"E" "N�o planejei"
	"F" "Outro plano"
/Q160
	"A" "Ainda n�o escolhi"
	"B" "Profiss�o ligada �s Engenharias / Ci�ncias Tecnol�gicas"
	"C" "Profiss�o ligada �s Ci�ncias Humanas"
	"D" "Profiss�o ligada �s Artes"
	"E" "Profiss�o ligadas �s Ci�ncias Biol�gicas e de Sa�de"
	"F" "Professor(a) de Ensino Fundamental e M�dio (1� e 2� graus)"
	"G" "N�o vou seguir nenhuma profiss�o"
/Q161
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "N�o ajudou"
/Q162
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "N�o ajudou"
/Q163
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "N�o ajudou"
/Q164
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "N�o ajudou"
/Q165
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "N�o ajudou"
/Q166
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "N�o ajudou"
/Q167
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "N�o ajudou"
/Q168
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "N�o ajudou"
/Q169
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas n�o estou estudando no momento atual"
	"C" "N�o"
/Q170
	"A" "Sim"
	"B" "N�o"
/Q171
	"A" "Sim"
	"B" "N�o"
/Q172
	"A" "Sim"
	"B" "N�o"
/Q173
	"A" "Sim"
	"B" "N�o"
/Q174
	"A" "Sim"
	"B" "N�o"
/Q175
	"A" "Sim"
	"B" "N�o"
/Q176
	"A" "Sim"
	"B" "N�o"
/Q177
	"A" "Sim"
	"B" "N�o"
/Q178
	"A" "Sim"
	"B" "N�o"
/Q179
	"A" "Sim"
	"B" "N�o"
/Q180
	"A" "Sim"
	"B" "N�o"
/Q181
	"A" "Sim"
	"B" "N�o"
/Q182
	"A" "Sim"
	"B" "N�o"
/Q183
	"A" "Sim"
	"B" "N�o"
/Q184
	"A" "Sim"
	"B" "N�o"
/Q185
	"A" "Sim"
	"B" "N�o"
/Q186
	"A" "Sim"
	"B" "N�o"
/Q187
	"A" "Sim"
	"B" "N�o"
/Q188
	"A" "Sim"
	"B" "N�o"
.