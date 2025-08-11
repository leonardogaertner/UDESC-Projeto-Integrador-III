/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2006                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2006     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2006.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_2006.csv" /*local do arquivo*/
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
TP_ENSINO F8.0
CO_MUNICIPIO_ESC F8.0
NO_MUNICIPIO_ESC A50
CO_UF_ESC F8.0
SG_UF_ESC A2
TP_DEPENDENCIA_ADM_ESC F8.0
TP_LOCALIZACAO_ESC F8.0
TP_SIT_FUNC_ESC F8.0
TP_PRESENCA F8.0
CO_PROVA F8.0
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
Q189 A1
Q190 A1
Q191 A1
Q192 A1
Q193 A1
Q194 A1
Q195 A1
Q196 A1
Q197 A1
Q198 A1
Q199 A1
Q200 A1
Q201 A1
Q202 A1
Q203 A1
Q204 A1
Q205 A1
Q206 A1
Q207 A1
Q208 A1
Q209 A1
Q210 A1
Q211 A1
Q212 A1
Q213 A1
Q214 A1
Q215 A1
Q216 A1
Q217 A1
Q218 A1
Q219 A1
Q220 A1
Q221 A1
Q222 A1
Q223 A1
.
CACHE.
EXECUTE.
DATASET NAME ENEM_06 WINDOW=FRONT.


VARIABLE LABELS
NU_INSCRICAO "N�mero de inscri��o no ENEM."
NU_ANO	"Ano do Enem"
TP_FAIXA_ETARIA "Faixa Et�ria"
TP_SEXO	"Sexo do inscrito"
CO_MUNICIPIO_RESIDENCIA   " C�digo do Munic�pio em que o inscrito mora:"
NO_MUNICIPIO_RESIDENCIA   " Nome do munic�pio em que o inscrito mora"
CO_UF_RESIDENCIA   " C�digo da Unidade da Federa��o da residencia do inscrito"
SG_UF_RESIDENCIA   " Sigla da Unidade da Federa��o da residencia do inscrito"
TP_ST_CONCLUSAO   " Situa��o de conclus�o do Ensino M�dio"
TP_ENSINO   " Aluno do ensino m�dio ou da educa��o de jovens e adultos"
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
Q1   " Sexo"
Q2   " Ano em que nasceu"
Q3   " Como se considera"
Q4   " Se indicou ind�gena, qual(is) l�ngua(s) voc� domina"
Q5   " Qual o estado civil"
Q6   " Onde e como mora atualmente"
Q7   " Mora sozinho(a)"
Q8   " Mora com o pai"
Q9   " Mora com a m�e"
Q10   " Mora com esposa / marido / companheiro(a)"
Q11   " Mora com filho(s)"
Q12   " Mora com irm�o(s)"
Q13   " Mora com outro(s) parente(s)"
Q14   " Mora com amigo(s) ou colega(s)"
Q15   " Quantidade de pessoas que moram em sua casa"
Q16   " Quantos filhos tem"
Q17   " At� quando seu pai estudou"
Q18   " At� quando sua m�e estudou"
Q19   " �rea que o pai trabalha ou trabalhou, na maior parte da vida"
Q20   " Qual a posi��o do seu pai neste trabalho, na maior parte do tempo"
Q21   " �rea que sua m�e trabalha ou trabalhou, na maior parte da vida"
Q22   " Qual a posi��o de sua m�e neste trabalho, na maior parte do tempo"
Q23   " Renda familiar (somando a do respondente e com a das pessoas que moram com ele)"
Q24   " Tem TV e quantas"
Q25   " Tem Videocassete e/ou DVD e quantos"
Q26   " Tem R�dio e quantos"
Q27   " Tem Microcomputador e quantos"
Q28   " Tem Autom�vel e quantos"
Q29   " Tem M�quina de lavar roupa e quantos"
Q30   " Tem Geladeira e quantas"
Q31   " Tem Telefone fixo e quantos"
Q32   " Tem Telefone celular e quantos"
Q33   " Tem Acesso � Internet e quantos"
Q34   " Tem TV por assinatura e quantas"
Q35   " Tem casa pr�pria"
Q36   " Se a casa � em rua cal�ada ou asfaltada"
Q37   " Se a casa tem �gua corrente de torneira"
Q38   " Se a casa tem eletricidade"
Q39   " Se a casa � situada em comunidade ind�gena"
Q40   " Motivo para fazer o Enem"
Q41   " O motivo mais importante para se ter um trabalho?"
Q42   " Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento"
Q43   " Trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)"
Q44   " Quantas horas trabalhava, durante o ensino m�dio (2� grau)"
Q45   " Com que finalidade voc� trabalhava enquanto estudava o ensino m�dio (2� grau)"
Q46   " Com que idade voc� come�ou a exercer atividade remunerada enquanto estudava o ensino m�dio (2� grau)"
Q47   " Se voc� est� trabalhando atualmente, qual a sua renda ou seu sal�rio mensal?"
Q48   " Voc� est� trabalha atualmente em alguma atividade para o qual se preparou"
Q49   " Em que trabalha atualmente"
Q50   " Qual a sua posi��o neste trabalho"
Q51   " Quanto tempo est� trabalhando na atividade"
Q52   " Os conhecimentos no ensino m�dio foram adequados ao que o mercado de trabalho solicita"
Q53   " Os conhecimentos no ensino m�dio tiveram rela��o com a profiss�o que escolheu / que exerce"
Q54   " Os conhecimentos no ensino m�dio foram bem desenvolvidos, com aulas pr�ticas, laborat�rios, etc"
Q55   " Os conhecimentos no ensino m�dio proporcionaram cultura e conhecimento"
Q56   " Avalia��o de ter estudado e trabalhado, simultaneamente, durante o ensino m�dio"
Q57   " A escola que freq�enta ou freq�entou durante o ensino m�dio levou em conta que trabalhava ao mesmo tempo que estudava"
Q58   " Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o hor�rio flex�vel"
Q59   " Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse"
Q60   " Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recupera��o de notas"
Q61   " Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas"
Q62   " Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais din�micas, com did�tica difenciada"
Q63   " Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revis�o da mat�ria aos (�s) interessados(as)"
Q64   " Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refei��o aos (�s) alunos(as)"
Q65   " A escola deve oferecer hor�rio flex�vel para o aluno que trabalha"
Q66   " A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha"
Q67   " A escola deve oferecer programa de recupera��o de notas para o aluno que trabalha"
Q68   " A escola deve oferecer abono de faltas para o aluno que trabalha"
Q69   " A escola deve oferecer aulas mais din�micas, com did�tica diferenciada para o aluno que trabalha"
Q70   " A escola deve oferecer aulas de revis�o da mat�ria aos alunos que interessados que trabalham"
Q71   " A escola deve oferecer fornecimento de refei��o para o aluno que trabalha"
Q72   " Anos que levou para concluir o ensino fundamental (1� grau)"
Q73   " Em que tipo de escola cursou o ensino fundamental (1� grau)"
Q74   " Em que ano concluiu ou concluir� o ensino m�dio (2� grau)"
Q75   " Quantos anos levou para cursas o ensino m�dio (2� grau)"
Q76   " Em que turno cursou ou esta cursando o ensino m�dio"
Q77   " Em que escola cursou ou est� cursando o ensino m�dio (2� grau)"
Q78   " Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)"
Q79   " Fez curso de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)"
Q80   " Fez curso de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)"
Q81   " Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)"
Q82   " Fez artes pl�sticas ou atividades art�sticas em geral fora da escola durante o ensino m�dio (2� grau)"
Q83   " Fez esportes, atividades f�sicas fora da escola durante o ensino m�dio (2� grau)"
Q84   " Fez outro curso fora da escola durante o ensino m�dio (2� grau)"
Q85   " Com que freq��ncia l� jornais"
Q86   " Com que freq��ncia l� revistas de informa��o geral (Veja, Isto �, �poca, etc)"
Q87   " Com que freq��ncia l� revistas de humor / quadrinhos"
Q88   " Com que freq��ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc)"
Q89   " Com que freq��ncia l� romances, livros de fic��o"
Q90   " Avalia��o da escola que fez o ensino m�dio quanto o conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo"
Q91   " Avalia��o da escola que fez o ensino m�dio quanto a dedica��o dos(as) professores(as) para preparar aulas e atender aos alunos"
Q92   " Avalia��o da escola que fez o ensino m�dio quanto as iniciativas da escola para realizar excurs�es, estudos do meio ambiente"
Q93   " Avalia��o da escola que fez o ensino m�dio quanto a biblioteca"
Q94   " Avalia��o da escola que fez o ensino m�dio quanto as condi��es das salas de aula"
Q95   " Avalia��o da escola que fez o ensino m�dio quanto as condi��es dos laborat�rios"
Q96   " Avalia��o da escola que fez o ensino m�dio quanto o acesso a computadores e outros recursos de inform�tica"
Q97   " Avalia��o da escola que fez o ensino m�dio quanto o ensino de l�ngua estrangeira"
Q98   " Avalia��o da escola que fez o ensino m�dio quanto o interesse dos(as) alunos(as)"
Q99   " Avalia��o da escola que fez o ensino m�dio quanto o trabalho de grupo"
Q100   " Avalia��o da escola que fez o ensino m�dio quanto a pr�ticas de esportes"
Q101   " Avalia��o da escola que fez o ensino m�dio quanto a aten��o e o respeito dos(as) funcion�rios(as)"
Q102   " Avalia��o da escola que fez o ensino m�dio quanto a dire��o dela"
Q103   " Avalia��o da escola que fez o ensino m�dio quanto a organiza��o dos hor�rios de aulas"
Q104   " Avalia��o da escola que fez o ensino m�dio quanto a localiza��o dela"
Q105   " Avalia��o da escola que fez o ensino m�dio quanto a seguran�a (ilumina��o, policiamento, etc)"
Q106   " Avalia��o da escola que fez o ensino m�dio quanto a aten��o � identifica��o �tnica dos(as) alunos(as)"
Q107   " A escola em que estuda ou estudou realiza palestras / debates"
Q108   " A escola em que estuda ou estudou realiza jogos / esportes / campeonatos"
Q109   " A escola em que estuda ou estudou realiza teatro"
Q110   " A escola em que estuda ou estudou realiza coral"
Q111   " A escola em que estuda ou estudou realiza dan�a / m�sica"
Q112   " A escola em que estuda ou estudou realiza estudos do meio ambiente / passeios"
Q113   " A escola em que estuda ou estudou realiza feira de ci�ncias / feira cultural"
Q114   " A escola em que estuda ou estudou realiza festas / gincanas"
Q115   " De acordo com os ensinamentos no ensino m�dio, como considera o preparo para conseguir um emprego, exercer alguma atividade"
Q116   " Os(as) professores(as) t�m autoridade, firmeza"
Q117   " Os(as) professores(as) s�o distantes, t�m pouco envolvimento"
Q118   " Os(as) professores(as) t�m respeito"
Q119   " Os(as) professores(as) s�o indiferentes, ignoram sua exist�ncia"
Q120   " Os(as) professores(as) s�o preocupados(as) e dedicados(as)"
Q121   " Os(as) professores(as) s�o autorit�rios(as), r�gidos(as), abusam do poder"
Q122   " Os(as) professores(as) valorizam a identidade �tnica dos(as) alunos(as)"
Q123   " Avalia��o sobre a escola quanto a liberdade de expressar a id�ias"
Q124   " Avalia��o sobre a escola quanto o respeito aos alunos e alunas"
Q125   " Avalia��o sobre a escola quanto a amizade e respeito entre alunos(as) e funcion�rios(as)"
Q126   " Avalia��o sobre a escola quanto a levar em conta suas opini�es"
Q127   " Avalia��o sobre a escola quanto a discuss�o dos problemas da atualidade nas aulas"
Q128   " Avalia��o sobre a escola quanto a conviv�ncia entre alunos(as)"
Q129   " Avalia��o sobre a escola quanto a organiza��o para apoiar a resolu��o de problemas de relacionamento entre alunos(as)"
Q130   " Avalia��o sobre a escola quanto a iniciativa para apoiar a resolu��o de problemas de relacionamento entre alunos(as) e professores(as)"
Q131   " Avalia��o sobre a escola quanto a levar em conta seus problemas pessoais e familiares"
Q132   " Avalia��o sobre a escola quanto a realiza��o de Programas e Palestras contra drogas"
Q133   " Avalia��o sobre a escola quanto a capacidade relacionar os conte�dos das mat�rias com o cotidiano"
Q134   " Avalia��o sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu"
Q135   " Avalia��o sobre a escola quanto o reconhecimento e valoriza��o da identidade �tnica dos(as) alunos(as)"
Q136   " Nota para a forma��o que obteve no ensino m�dio"
Q137   " Considera-se racista"
Q138   " Parentes racistas"
Q139   " Amigos(as) racistas"
Q140   " Colegas de escola e/ou de trabalho racistas"
Q141   " Vizinhos e/ou conhecidos em geral racistas"
Q142   " J� sofreu discrimina��o econ�mica"
Q143   " J� sofreu discrimina��o �tnica, racial ou de cor"
Q144   " J� sofreu discrimina��o de g�nero (ou por ser mulher ou por ser homem)"
Q145   " J� sofreu discrimina��o por ser (ou parecer ser) homossexuais"
Q146   " J� sofreu discrimina��o religiosa"
Q147   " J� sofreu discrimina��o por causa do local de origem"
Q148   " J� sofreu discrimina��o por causa da idade"
Q149   " J� sofreu discrimina��o por ser portador de necessidades especiais"
Q150   " J� sofreu discrimina��o por outro(s) motivo(s)"
Q151   " J� presenciou discrimina��o econ�mica"
Q152   " J� presenciou discrimina��o �tnica, racial ou de cor"
Q153   " J� presenciou discrimina��o de g�nero (ou por ser mulher ou por ser homem)"
Q154   " J� presenciou discrimina��o contra homossexuais"
Q155   " J� presenciou discrimina��o religiosa"
Q156   " J� presenciou discrimina��o por causa do local de origem"
Q157   " J� presenciou discrimina��o por causa da idade"
Q158   " J� presenciou discrimina��o por ser portador de necessidades especiais"
Q159   " J� presenciou discrimina��o por outro(s) motivo(s)"
Q160   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra classe social"
Q161   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra cor ou etnia"
Q162   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra religi�o"
Q163   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa com posi��es pol�tico-ideol�gicas diferentes"
Q164   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra origem geogr�fica"
Q165   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa homossexual"
Q166   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa muito mais nova ou mais velha"
Q167   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa com necessidades especiais"
Q168   " Participa de um Gr�mio estudantil"
Q169   " Participa de um Sindicato ou Associa��o Profissional"
Q170   " Participa de um Grupo de bairro ou associa��o comunit�ria"
Q171   " Participa de uma Igreja ou grupo religioso"
Q172   " Participa de um partido pol�tico"
Q173   " Participa de uma Ong ou movimento social"
Q174   " Participa de um clube recreativo ou associa��o esportiva"
Q175   " O quanto voc� se interessa pela pol�tica nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da Rep�blica, etc"
Q176   " O quanto voc� se interessa pela pol�tica dos outros pa�ses"
Q177   " O quanto voc� se interessa pela economia nacional, a quest�o da infla��o"
Q178   " O quanto voc� se interessa a pol�tica da sua cidade, o prefeito, os vereadores"
Q179   " O quanto voc� se interessa por esportes"
Q180   " O quanto voc� se interessa pelas quest�es sobre o meio ambiente, polui��o, etc"
Q181   " O quanto voc� se interessa pelas quest�es sociais como a desigualdade, a pobreza, o desemprego, a mis�ria"
Q182   " O quanto voc� se interessa pelas quest�es sobre artes, teatro, cinema"
Q183   " O quanto voc� se interessa sobre a quest�o das drogas e suas conseq��ncias"
Q184   " O quanto voc� se interessa sobre assuntos sobre seu �dolo (cantor/a, artista, ou conjunto musical)"
Q185   " O quanto voc� se interessa sobre quest�es sociais como acesso aos servidores p�blicos de sa�de e educa��o"
Q186   " O quanto voc� se interessa sobre sexualidade"
Q187   " Qual dos pontos te preocupa em 1� lugar no momento"
Q188   " Qual dos pontos te preocupa em 2� lugar no momento"
Q189   " � a mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q190   " � a segunda mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q191   " � a terceira mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q191   " � a terceira mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)"
Q192   " A principal decis�o que vai tomar quando concluir o ensino m�dio (2� grau)"
Q193   " E a m�dio prazo, daqui a uns 4 ou 5 anos j� planejou o que gostaria que acontecesse"
Q194   " Que profiss�o escolheu seguir"
Q195   " Meus pais ajudaram a tomar minha decis�o sobre minha profiss�o"
Q196   " A escola ajudou a tomar minha decis�o sobre minha profiss�o"
Q197   " Meus amigos ajudaram a tomar minha decis�o sobre minha profiss�o"
Q198   " Informa��es gerais, revistas, jornais, TV ajudaram a tomar minha decis�o sobre minha profiss�o"
Q199   " Meu trabalho ajudou a tomar minha decis�o sobre minha profiss�o"
Q200   " Est�mulo financeiro ajudou a tomar minha decis�o sobre minha profiss�o"
Q201   " Facilidade de obter emprego ajudou a tomar minha decis�o sobre minha profiss�o"
Q202   " Minha identifica��o com a profiss�o me ajudou a tomar minha decis�o sobre minha profiss�o"
Q203   " Querer ajudar minha comunidade ind�gena ajudou a tomar minha decis�o sobre minha profiss�o"
Q204   " Continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)"
Q205   " Est� freq�entando um curso profissionalizante"
Q206   " Est� freq�entando um curso preparat�rio para vestibular"
Q207   " Est� freq�entando um curso superior"
Q208   " Est� freq�entando um curso de l�ngua estrangeira"
Q209   " Est� freq�entando um curso de computa��o ou inform�tica"
Q210   " Est� freq�entando outro curso"
Q211   " Concluiu curso profissionalizante"
Q212   " Concluiu curso preparat�rio para vestibular, mas n�o ingressei no curso superior"
Q213   " Concluiu curso superior"
Q214   " Fiz curso superior mas n�o me formei"
Q215   " Concluiu curso de l�ngua estrangeira"
Q216   " Concluiu curso de computa��o ou inform�tica"
Q217   " Concluiu outro curso"
Q218   " O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q219   " O curso preparat�rio para vestibular fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q220   " O curso superior fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q221   " O curso de l�ngua estrangeira fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q222   " O curso de computa��o ou inform�tica fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q223   " Outro curso fez mais falta para minha vida, depois que terminei o ensino m�dio"
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
/TP_SEXO
	 "M" "Masculino"
	 "F" "Feminino"
/TP_ST_CONCLUSAO
 	0 "Nenhum dos anteriores"
 	1 "J� concluiu"
 	2 "Concluir� em 2006"
	3 "Concluir� ap�s 2006"
	4 "N�o conclu� e n�o estou cursando o Ensino M�dio"
/TP_ENSINO
 	0 "Outro"
 	1 "Ensino Regular"
	2 "Educa��o Especial"
 	3 "Educa��o de Jovens e Adultos"
	4 "Educa��o Profissional"
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
 	1 "Amarela"
 	2 "Azul"
 	3 "Branca"
 	4 "Rosa"
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
 "A" "Ap�s 1989"
 "B" "Em 1989"
 "C" "Em 1988"
 "D" "Em 1987"
 "E" "Em 1986"
 "F" "Em 1985"
 "G" "Em 1984"
 "H" "Entre 1980 e 1983"
 "I" "Antes de 1980"
/Q3
 "A" "Branco(a)"
 "B" "Pardo(a)"
 "C" "Preto(a)"
 "D" "Amarelo(a)"
 "E" "Ind�gena"
/Q4
 "A" "Minha l�ngua materna � o portugu�s"
 "B" "Falo uma l�ngua ind�gena e o portugu�s"
 "C" "Falo mais de uma l�ngua ind�gena e o portugu�s"
 "D" "Falo uma l�ngua ind�gena, o portugu�s e o espanhol"
 "E" "Falo mais de uma l�ngua ind�gena, o portugu�s e o espanhol"
 "F" "Al�m do portugu�s, falo franc�s e ingl�s"
 "G" "Al�m do portugu�s, falo o creole"
/Q5
 "A" "Solteiro(a)"
 "B" "Casado(a) / mora com um(a) companheiro(a)"
 "C" "Separado(a) / divorciado(a) / desquitado(a)"
 "D" "Vi�vo(a)"
/Q6
 "A" "Em casa ou apartamento, com sua fam�lia"
 "B" "Em casa ou apartamento, sozinho(a)"
 "C" "Em quarto ou c�modo alugado, sozinho(a)"
 "D" "Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc"
 "E" "Outra situa��o"
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
 "A" "Duas pessoas"
 "B" "Tr�s pessoas"
 "C" "Quatro pessoas"
 "D" "Cinco pessoas"
 "E" "Seis pessoas"
 "F" "Mais de 6 pessoas"
 "G" "Moro sozinho"
/Q16
 "A" "Um filho "
 "B" "Dois filhos"
 "C" "Tr�s filhos"
 "D" "Quatro ou mais filhos"
 "E" "N�o tenho filhos"
/Q17
 "A" "N�o estudou"
 "B" "Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)"
 "C" "Da 5� a 8� do ensino fundamental (antigo gin�sio)"
 "D" "Ensino M�dio (2� grau) incompleto"
 "E" " Ensino M�dio (2� grau) completo"
 "F" "Ensino Superior incompleto"
 "G" "Ensino Superior completo"
 "H" "P�s-gradua��o"
 "I" "N�o sei"
/Q18
 "A" "N�o estudou"
 "B" "Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)"
 "C" "Da 5� a 8� do ensino fundamental (antigo gin�sio)"
 "D" "Ensino M�dio (2� grau) incompleto"
 "E" "Ensino M�dio (2� grau) completo"
 "F" "Ensino Superior incompleto"
 "G" "Ensino Superior completo"
 "H" "P�s-gradua��o"
 "I" "N�o sei"
/Q19
 "A" "Na agricultura, no campo, em fazenda ou na pesca"
 "B" "Na ind�stria"
 "C" "No com�rcio, banco, transporte ou outros servi�os"
 "D" "Funcion�rio p�blico do governo federal, estadual, ou do munic�pio, ou militar"
 "E" "Profissional liberal, professor ou t�cnico de n�vel superior"
 "F" "Trabalhador do setor informal (sem carteira assinada)"
 "G" "Trabalha em casa em servi�os (costura, cozinha, aulas particulares,etc) "
 "H" "No lar"
 "I" "N�o trabalha"
 "J" "N�o sei"
/Q20
 "A" "Gerente, administrador ou diretor de empresa privada"
 "B" "Funcion�rio p�blico (federal, estadual, ou municipal), com fun��es de dire��o"
 "C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
 "D" "Empregado no setor privado, com carteira assinada"
 "E" "Funcion�rio p�blico (federal, estadual, ou municipal), sem fun��o de dire��o"
 "F" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando"
 "G" "Trabalho tempor�rio, informal, sem carteira assinada"
 "H" "Trabalho por conta pr�pria"
 "I" " Desempregado"
 "J" "Aposentado"
 "K" "Outra situa��o"
/Q21
 "A" "Na agricultura, no campo, em fazenda ou na pesca"
 "B" "Na ind�stria"
 "C" "No com�rcio, banco, transporte ou outros servi�os"
 "D" "Funcion�rio p�blico do governo federal, estadual, ou do munic�pio, ou militar"
 "E" "Profissional liberal, professor ou t�cnico de n�vel superior"
 "F" "Trabalhador do setor informal (sem carteira assinada)"
 "G" "Trabalha em casa em servi�os (costura, cozinha, aulas particulares,etc) "
 "H" "No lar"
 "I" "N�o trabalha"
 "J" "N�o sei"
/Q22
 "A" "Gerente, administrador ou diretor de empresa privada"
 "B" "Funcion�rio p�blico (federal, estadual, ou municipal), com fun��es de dire��o"
 "C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
 "D" "Empregado no setor privado, com carteira assinada"
 "E" "Funcion�rio p�blico (federal, estadual, ou municipal), sem fun��o de dire��o"
 "F" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando"
 "G" "Trabalho tempor�rio, informal, sem carteira assinada"
 "H" "Trabalho por conta pr�pria"
 "I" "Desempregado"
 "J" "Aposentado"
 "K" "Outra situa��o"
/Q23
"A" "At� 1 sal�rio m�nimo (at� R$ 300,00 inclusive)."
"B" "De 1 a 2 sal�rios m�nimos (R$ 300,00 a R$ 600,00 inclusive)"
"C" "De 2 a 5 sal�rios m�nimos (R$ 600,00 a R$ 1.500,00 inclusive)."
"D" "De 5 a 10 sal�rios m�nimos (R$ 1.500,00 a R$ 3.000,00 inclusive)."
"E" "De 10 a 30 sal�rios m�nimos (R$ 3.000,00 a R$ 9.000,00 inclusive)."
"F" "De 30 a 50 sal�rios m�nimos (R$ 9.000,00 a R$ 15.000,00 inclusive)."
"G" "Mais de 50 sal�rios m�nimos (mais de R$ 15.000,00)."
"H" "Nenhuma renda."
/Q24
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q25
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q26
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q27
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q28
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q29
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q30
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q31 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q32 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q33
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
/Q34
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "N�o tem"
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
 "A" "Para testar seus conhecimentos / capacidade de racioc�nio"
 "B" "Para entrar na faculdade / conseguir pontos para o vestibular"
 "C" "Para ter um bom emprego / saber se est� preparado(a) para o futuro profissional"
 "D" "N�o sei"
/Q41
 "A" "Para ter mais responsabilidade"
 "B" "Independ�ncia financeira "
 "C" "Adquirir experi�ncia"
 "D" "Crescer profissionalmente "
 "E" "Sentir-me �til"
 "F" "Para fazer amigos, conhecer pessoas"
 "G" "N�o acho importante ter um trabalho"
 "H" "Para ajudar minha comunidade ind�gena"
/Q42
 "A" "Sim"
 "B" "Nunca trabalhei"
 "C" "Nunca trabalhei, mas estou procurando trabalho"
/Q43
 "A" "Sim, todo o tempo "
 "B" "Sim, menos de 1 ano"
 "C" "Sim, de 1 a 2 anos"
 "D" "Sim, de 2 a 3 anos"
 "E" "N�o"
/Q44
 "A" "Sem jornada fixa, at� 10 horas semanais"
 "B" "De 11 a 20 horas semanais"
 "C" "De 21 a 30 horas semanais"
 "D" "De 31 a 40 horas semanais "
 "E" "Mais de 40 horas semanais"
/Q45
 "A" "Para ajudar meus pais nas despesas com a casa, sustentar a fam�lia"
 "B" "Para ser independente (ter meu sustento, ganhar meu pr�prio dinheiro)"
 "C" "Para adquirir experi�ncia"
 "D" "Para ajudar minha comunidade "
 "E" "Outra finalidade"
/Q46
 "A" "Antes dos 14 anos "
 "B" "Entre 14 e 16 anos"
 "C" "Entre 17 e 18 anos"
 "D" "Ap�s 18 anos"
/Q47
 "A" "At� 1 sal�rio m�nimo (at� R$ 300,00 inclusive)."
"B" "De 1 a 2 sal�rios m�nimos (R$ 300,00 a R$ 600,00 inclusive)"
"C" "De 2 a 5 sal�rios m�nimos (R$ 600,00 a R$ 1.500,00 inclusive)."
"D" "De 5 a 10 sal�rios m�nimos (R$ 1.500,00 a R$ 3.000,00 inclusive)."
"E" "De 10 a 30 sal�rios m�nimos (R$ 3.000,00 a R$ 9.000,00 inclusive)."
"F" "De 30 a 50 sal�rios m�nimos (R$ 9.000,00 a R$ 15.000,00 inclusive)."
"G" "Mais de 50 sal�rios m�nimos (mais de R$ 15.000,00)."
"H" "Nenhuma renda."
/Q48
 "A" "Sim"
 "B" "N�o"
/Q49
 "A" "Na agricultura, no campo, em fazenda ou na pesca"
 "B" "Na ind�stria"
 "C" "No com�rcio, banco, transporte ou outros servi�os"
 "D" "Como trabalhador(a) dom�stico(a)"
 "E" "Como funcion�ria do governo federal, do estado ou do munic�pio ou militar"
 "F" "Como profissional liberal, professor ou t�cnica de n�vel superior"
 "G" "No lar"
 "H" "Trabalho em casa em servi�os (costura, cozinha, aulas particulares)"
 "I" "N�o trabalha"
/Q50
 "A" "Gerente, administrador(a) ou diretor(a) de empresa privada"
 "B" "Funcion�rio p�blico (federal, estadual, ou municipal), com fun��es de dire��o"
 "C" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
 "D" "Empregado no setor privado, com carteira assinada"
 "E" "Funcion�rio p�blico (federal, estadual, ou municipal), sem fun��o de dire��o"
 "F" "Trabalho tempor�rio, informal, sem carteira assinada"
 "G" "Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando"
 "H" "Trabalho por conta pr�pria"
 "I" " Aposentado(a)"
 "J"  "Outra situa��o"
/Q51
 "A" "Menos de 1 ano "
 "B" "Entre 1 e 2 anos"
 "C" "Entre 2 e 4 anos"
 "D" "Mais de 4 anos"
/Q52
 "A" "Sim"
 "B" "N�o"
/Q53
 "A" "Sim"
 "B" "N�o"
/Q54
 "A" "Sim"
 "B" "N�o"
/Q55
 "A" "Sim"
 "B" "N�o"
/Q56
 "A" "Atrapalhou os estudos"
 "B" "Possibilitou crescimento pessoal"
 "C" "Atrapalhou os estudos, mas possibilitou crescimento pessoal"
 "D" "N�o atrapalhou os estudos"
 "E" "N�o trabalho / n�o trabalhei"
/Q57
 "A" "Sim "
 "B" "N�o"
 "C" "N�o sei"
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
 "A" "Sim"
 "B" "N�o"
/Q71
 "A" "Sim"
 "B" "N�o"
/Q72
 "A" "Menos de 8 anos"
 "B" "8 anos"
 "C" "9� anos"
 "D" "10� anos"
 "E" "11� anos"
 "F" "Mais de 11 anos"
/Q73
 "A" "Somente em escola p�blica"
 "B" "Parte em escola p�blica e parte em escola particular"
 "C" "Somente em escola particular "
 "D" "Somente em escola ind�gena"
 "E" "Parte na escola ind�gena e parte em escola n�o-ind�gena"
/Q74
 "A" "Vai concluir ap�s 2006"
 "B" "Vai concluir no segundo semestre de 2006"
 "C" "No primeiro semestre de 2006"
 "D" "Em 2005"
 "E" "Em 2004"
 "F" "Em 2003"
 "G" "Em 2002"
 "H" "Em 2001"
 "I" "Entre 1999 e 2000"
 "J" "Antes de 1999"
/Q75
 "A" "Menos de 3 anos "
 "B" "3 anos"
 "C" "4� anos"
 "D" "5� anos"
 "E" "6� anos"
 "F" "Mais de 6 anos"
/Q76
 "A" "Somente no turno diurno"
 "B" "Maior parte no turno diurno "
 "C" "Somente no turno noturno"
 "D" "Maior parte no turno noturno"
/Q77
 "A" "Somente em escola p�blica "
 "B" "Maior parte em escola p�blica "
 "C" "Somente em escola particular"
 "D" "Maior parte em escola particular "
 "E" "Somente em escola ind�gena"
 "F" "Maior parte em escola n�o-ing�gena"
/Q78
 "A" "Ensino regular"
 "B" "Educa��o para jovens e adultos (antigo supletivo)"
 "C" "Ensino t�cnico / ensino profissional"
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
 "A" "Sim"
 "B" "N�o"
/Q84
 "A" "Sim"
 "B" "N�o"
/Q85
 "A" "Freq�entemente (todo dia ou quase todo dia) "
 "B" "�s vezes"
 "C" "Nunca"
/Q86
 "A" "Freq�entemente (todo dia ou quase todo dia) "
 "B" "�s vezes"
 "C" "Nunca"
/Q87
 "A" "Freq�entemente (todo dia ou quase todo dia) "
 "B" "�s vezes"
 "C" "Nunca"
/Q88
 "A" "Freq�entemente (todo dia ou quase todo dia) "
 "B" "�s vezes"
 "C" "Nunca"
/Q89
 "A" "Freq�entemente (todo dia ou quase todo dia) "
 "B" "�s vezes"
 "C" "Nunca"
/Q90
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q91
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q92
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q93
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q94
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q95
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q96
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q97
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q98
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q99
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q100
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q101
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q102
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q103
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q104
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q105
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q106
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
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
 "A" "Sim"
 "B" "N�o"
/Q115
 "A" "Eu me considero preparado(a) para entrar no mercado de trabalho"
 "B" "Apesar de ter freq�entado uma boa escola, eu me considero despreparado(a), pois n�o aprendi o suficiente para conseguir um emprego"
 "C" "Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola, que n�o me preparou o suficiente"
 "D" "N�o sei"
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
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q124
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q125
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q126
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q127
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q128
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q129
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q130
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q131
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q132
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q133
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q134
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q135
 "A" "Insuficiente a regular "
 "B" "Regular a bom"
 "C" "Bom a excelente"
/Q136
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
 "A" "Sim"
 "B" "N�o"
/Q144
 "A" "Sim"
 "B" "N�o"
/Q145
 "A" "Sim"
 "B" "N�o"
/Q146
 "A" "Sim"
 "B" "N�o"
/Q147
 "A" "Sim"
 "B" "N�o"
/Q148
 "A" "Sim"
 "B" "N�o"
/Q149
 "A" "Sim"
 "B" "N�o"
/Q150
 "A" "Sim"
 "B" "N�o"
/Q151
 "A" "Sim"
 "B" "N�o"
/Q152
 "A" "Sim"
 "B" "N�o"
/Q153
 "A" "Sim"
 "B" "N�o"
/Q154
 "A" "Sim"
 "B" "N�o"
/Q155
 "A" "Sim"
 "B" "N�o"
/Q156
 "A" "Sim"
 "B" "N�o"
/Q157
 "A" "Sim"
 "B" "N�o"
/Q158
 "A" "Sim"
 "B" "N�o"
/Q159
 "A" "Sim"
 "B" "N�o"
/Q160
 "A" "Sim"
 "B" "N�o"
/Q161
 "A" "Sim"
 "B" "N�o"
/Q162
 "A" "Sim"
 "B" "N�o"
/Q163
 "A" "Sim"
 "B" "N�o"
/Q164
 "A" "Sim"
 "B" "N�o"
/Q165
 "A" "Sim"
 "B" "N�o"
/Q166
 "A" "Sim"
 "B" "N�o"
/Q167
 "A" "Sim"
 "B" "N�o"
/Q168
 "A" "Sim"
 "B" "N�o"
/Q169
 "A" "Sim"
 "B" "N�o"
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
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q176
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q177
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q178
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q179
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q180
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q181
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q182
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q183
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q184
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q185
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q186
 "A" "Muito"
 "B" "Pouco"
 "C" "N�o me interesso"
/Q187
 "A" "O meio ambiente"
 "B" "A aids e as doen�as sexualmente transmiss�veis"
 "C" "O racismo e a discrimina��o �tnico-racial"
 "D" "A discrimina��o de g�nero"
 "E" "A discrimina��o contra homossexuais"
 "F" "A discrimina��o et�ria"
 "G" "A discrimina��o religiosa e os conflitos religiosos"
 "H" "A desigualdade social no Brasil"
 "I" "A pobreza, as favelas, os meninos de rua"
 "J" "As drogas e a viol�ncia"
 "K" "A situa��o econ�mica do pa�s"
 "L" "A precariedade dos servi�os p�blicos de sa�de e de educa��o"
/Q188
 "A" "O meio ambiente"
 "B" "A aids e as doen�as sexualmente transmiss�veis"
 "C" "O racismo e a discrimina��o �tnico-racial"
 "D" "A discrimina��o de g�nero"
 "E" "A discrimina��o contra homossexuais"
 "F" "A discrimina��o et�ria"
 "G" "A discrimina��o religiosa e os conflitos religiosos"
 "H" "A desigualdade social no Brasil"
 "I" "A pobreza, as favelas, os meninos de rua"
 "J" "As drogas e a viol�ncia"
 "K" "A situa��o econ�mica do pa�s"
 "L" "A precariedade dos servi�os p�blicos de sa�de e de educa��o"
/Q189
 "A" "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
 "B" "Forma��o b�sica necess�ria para obter um emprego melhor"
 "C" "Condi��es de melhorar minha posi��o no emprego atual"
 "D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
 "E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
 "F" "Fazer muitos amigos / conhecer v�rias pessoas"
 "G" "Atender � expectativa de meus pais sobre meus estudos"
 "H" "Ajudar minha comunidade ind�gena"
/Q190
 "A" "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
 "B" "Forma��o b�sica necess�ria para obter um emprego melhor"
 "C" "Condi��es de melhorar minha posi��o no emprego atual"
 "D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
 "E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
 "F" "Fazer muitos amigos / conhecer v�rias pessoas"
 "G" "Atender � expectativa de meus pais sobre meus estudos"
 "H" "Ajudar minha comunidade ind�gena"
/Q191
 "A" "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
 "B" "Forma��o b�sica necess�ria para obter um emprego melhor"
 "C" "Condi��es de melhorar minha posi��o no emprego atual"
 "D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
 "E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
 "F" "Fazer muitos amigos / conhecer v�rias pessoas"
 "G" "Atender � expectativa de meus pais sobre meus estudos"
 "H" "Ajudar minha comunidade ind�gena"
/Q191
 "A" "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
 "B" "Forma��o b�sica necess�ria para obter um emprego melhor"
 "C" "Condi��es de melhorar minha posi��o no emprego atual"
 "D" "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
 "E" "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
 "F" "Fazer muitos amigos / conhecer v�rias pessoas"
 "G" "Atender � expectativa de meus pais sobre meus estudos"
 "H" "Ajudar minha comunidade ind�gena"
/Q192
 "A" "J� conclui o ensino m�dio"
 "B" "Prestar vestibular e continuar os estudos no ensino superior"
 "C" "Procurar um emprego"
 "D" "Prestar vestibular e continuar a trabalhar"
 "E" "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho "
 "F" "Trabalhar por conta pr�pria / trabalhar em neg�cio da fam�lia"
 "G" "Trabalhar em atividade ligada � comunidade ind�gena"
 "H" "Ainda n�o decidiu"
 "I" "Outro plano"
/Q193
 "A" "Gostaria de ter um diploma universit�rio para conseguir um bom emprego"
 "B" "Gostaria de prestar um concurso e trabalhar no setor p�blico"
 "C" "Gostaria de ganhar dinheiro em meu pr�prio neg�cio"
 "D" "Gostaria de ter um emprego"
 "E" "Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade ind�gena"
 "F" "N�o planejei"
 "G" "Outro plano"
/Q194
 "A" "Ainda n�o escolhi"
 "B" "Profiss�o ligada �s Engenharias / Ci�ncias Tecnol�gicas"
 "C" "Profiss�o ligada �s Ci�ncias Humanas"
 "D" "Profiss�o ligada �s Artes "
 "E" "Profiss�o ligadas �s Ci�ncias Biol�gicas e de Sa�de"
 "F" "Professor(a) de Ensino Fundamental e M�dio (1� e 2� graus)"
 "G" "N�o vou seguir nenhuma profiss�o"
/Q195
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q196
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q197
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q198
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q199
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q200
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q201
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q202
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q203
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "N�o ajudou"
/Q204
 "A" "Sim, estou estudando no momento atual"
 "B" "Sim, mas n�o estou estudando no momento atual"
 "C" "N�o"
/Q205
 "A" "Sim"
 "B" "N�o"
/Q206
 "A" "Sim"
 "B" "N�o"
/Q207
 "A" "Sim"
 "B" "N�o"
/Q208
 "A" "Sim"
 "B" "N�o"
/Q209
 "A" "Sim"
 "B" "N�o"
/Q210
 "A" "Sim"
 "B" "N�o"
/Q211
 "A" "Sim"
 "B" "N�o"
/Q212
 "A" "Sim"
 "B" "N�o"
/Q213
 "A" "Sim"
 "B" "N�o"
/Q214
 "A" "Sim"
 "B" "N�o"
/Q215
 "A" "Sim"
 "B" "N�o"
/Q216
 "A" "Sim"
 "B" "N�o"
/Q217
 "A" "Sim"
 "B" "N�o"
/Q218
 "A" "Sim"
 "B" "N�o"
/Q219
 "A" "Sim"
 "B" "N�o"
/Q220
 "A" "Sim"
 "B" "N�o"
/Q221
 "A" "Sim"
 "B" "N�o"
/Q222
 "A" "Sim"
 "B" "N�o"
/Q223
 "A" "Sim"
 "B" "N�o"
.