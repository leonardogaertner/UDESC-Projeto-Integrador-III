/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_2009                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_2009     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2009.csv no diret�rio C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_2009.csv" /*local do arquivo*/
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
TP_ST_CONCLUSAO F1.0
TP_ENSINO F1.0
CO_MUNICIPIO_ESC F7.0
NO_MUNICIPIO_ESC A150
CO_UF_ESC F2
SG_UF_ESC A2
TP_DEPENDENCIA_ADM_ESC F1.0
TP_LOCALIZACAO_ESC F1.0
TP_SIT_FUNC_ESC F1.0
CO_MUNICIPIO_PROVA F7.0
NO_MUNICIPIO_PROVA A150
CO_UF_PROVA F2
SG_UF_PROVA A2
TP_PRESENCA_CN F1.0
TP_PRESENCA_CH F1.0
TP_PRESENCA_LC F1.0
TP_PRESENCA_MT F1.0
NU_NOTA_CN COMMA9.2
NU_NOTA_CH COMMA9.2
NU_NOTA_LC COMMA9.2
NU_NOTA_MT COMMA9.2
TX_RESPOSTAS_CN A45
TX_RESPOSTAS_CH A45
TX_RESPOSTAS_LC A45
TX_RESPOSTAS_MT A45
CO_PROVA_CN F2.0
CO_PROVA_CH F2.0
CO_PROVA_LC F2.0
CO_PROVA_MT F2.0
TX_GABARITO_CN A45
TX_GABARITO_CH A45
TX_GABARITO_LC A45
TX_GABARITO_MT A45
TP_STATUS_REDACAO A1
NU_NOTA_COMP1 COMMA9.2
NU_NOTA_COMP2 COMMA9.2
NU_NOTA_COMP3 COMMA9.2
NU_NOTA_COMP4 COMMA9.2
NU_NOTA_COMP5 COMMA9.2
NU_NOTA_REDACAO COMMA9.2
IN_CERTIFICADO F1.0
IN_QSE F1.0
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
Q224 A1
Q225 A1
Q226 A1
Q227 A1
Q228 A1
Q229 A1
Q230 A1
Q231 A1
Q232 A1
Q233 A1
Q234 A1
Q235 A1
Q236 A1
Q237 A1
Q238 A1
Q239 A1
Q240 A1
Q241 A1
Q242 A1
Q243 A1
Q244 A1
Q245 A1
Q246 A1
Q247 A1
Q248 A1
Q249 A1
Q250 A1
Q251 A1
Q252 A1
Q253 A1
Q254 A1
Q255 A1
Q256 A1
Q257 A1
Q258 A1
Q259 A1
Q260 A1
Q261 A1
Q262 A1
Q263 A1
Q264 A1
Q265 A1
Q266 A1
Q267 A1
Q268 A1
Q269 A1
Q270 A1
Q271 A1
Q272 A1
Q273 A1
Q274 A1
Q275 A1
Q276 A1
Q277 A1
Q278 A1
Q279 A1
Q280 A1
Q281 A1
Q282 A1
Q283 A1
Q284 A1
Q285 A1
Q286 A1
Q287 A1
Q288 A1
Q289 A1
Q290 A1
Q291 A1
Q292 A1
Q293 A1
.
CACHE.
EXECUTE.
DATASET NAME ENEM_09 WINDOW=FRONT.


VARIABLE LABELS
NU_INSCRICAO     "N�mero de inscri��o no ENEM 2009. "
NU_ANO     " Ano do Enem "
TP_FAIXA_ETARIA         		"Faixa Et�ria"
TP_SEXO     " Sexo do inscrito "
TP_ST_CONCLUSAO     " Situa��o em rela��o ao ensino m�dio "
TP_ENSINO     " Tipo de institui��o onde o estudante concluiu ou concluir� o ensino m�dio "
CO_MUNICIPIO_ESC     " C�digo do Munic�pio da escola em que estudou: "
NO_MUNICIPIO_ESC     " Nome do munic�pio da escola "
CO_UF_ESC     "C�digo da Unidade da Federa��o da escola"
SG_UF_ESC     " Sigla da Unidade da Federa��o da escola "
TP_DEPENDENCIA_ADM_ESC     " Depend�ncia administrativa "
TP_LOCALIZACAO_ESC     " Localiza��o Zona da escola "
TP_SIT_FUNC_ESC     " Situa��o de funcionamento "
CO_MUNICIPIO_PROVA     " C�digo do Munic�pio da cidade de prova: "
NO_MUNICIPIO_PROVA     " Nome do Munic�pio da cidade de prova "
CO_UF_PROVA     "C�digo da Unidade da Federa��o do local da prova"
SG_UF_PROVA     " Sigla da Unidade da Federa��o da cidade de prova "
TP_PRESENCA_CN     " Presen�a � prova objetiva de Ci�ncias da Natureza "
TP_PRESENCA_CH     " Presen�a � prova objetiva de Ci�ncias Humanas "
TP_PRESENCA_LC     " Presen�a � prova objetiva de Linguagens e C�digos "
TP_PRESENCA_MT     " Presen�a � prova objetiva de Matem�tica "
NU_NOTA_CN     " Nota da prova de Ci�ncias da Natureza "
NU_NOTA_CH     " Nota da prova de Ci�ncias Humanas "
NU_NOTA_LC     " Nota da prova de Linguagens e C�digos "
NU_NOTA_MT     " Nota da prova de Matem�tica "
TX_RESPOSTAS_CN     " Vetor com as respostas da parte objetiva da prova de Ci�ncias da Natureza "
TX_RESPOSTAS_CH     " Vetor com as respostas da parte objetiva da prova de Ci�ncias Humanas "
TX_RESPOSTAS_LC     " Vetor com as respostas da parte objetiva da prova de Linguagens e C�digos "
TX_RESPOSTAS_MT     " Vetor com as respostas da parte objetiva da prova de Matem�tica "
CO_PROVA_CN     " C�digo do tipo de prova de Ciencias da Natureza "
CO_PROVA_CH     " C�digo do tipo de prova de Ci�ncias Humanas "
CO_PROVA_LC     " C�digo do tipo de prova de Linguagens e C�digos "
CO_PROVA_MT     " C�digo do tipo de prova de Matem�tica "
TX_GABARITO_CN     " Vetor com o gabarito da parte objetiva da prova  de Ci�ncias da Natureza "
TX_GABARITO_CH     " Vetor com o gabarito da parte objetiva da prova  de Ci�ncias Humanas "
TX_GABARITO_LC     " Vetor com o gabarito da parte objetiva da prova  de Linguagens e C�digos "
TX_GABARITO_MT     " Vetor com o gabarito da parte objetiva da prova  de Matem�tica "
TP_STATUS_REDACAO     " Presen�a � reda��o "
NU_NOTA_COMP1     " Nota da compet�ncia 1 "
NU_NOTA_COMP2     " Nota da compet�ncia 2 "
NU_NOTA_COMP3     " Nota da compet�ncia 3 "
NU_NOTA_COMP4     " Nota da compet�ncia 4 "
NU_NOTA_COMP5     " Nota da compet�ncia 5 "
NU_NOTA_REDACAO     " Nota da prova de reda��o "
IN_CERTIFICADO     " Indicador de que o inscrito solicitar� certifica��o no Ensino M�dio "
IN_QSE     "Resposta ao Question�rio Socioecon�mico"
Q1     "Qual o seu sexo?"
Q2     "Qual a sua idade?"
Q3     "Como voc� se considera"
Q4     "Se indicou ind�gena, qual(is) l�ngua(s) voc� domina"
Q5     "Qual a sua religi�o?"
Q6     "Qual seu estado civil?"
Q7     "Onde e como mora atualmente?"
Q8     "Mora sozinho(a)"
Q9     "Mora com o pai e/ou m�e"
Q10     "Mora com esposo(a) / companheiro(a)"
Q11     "Mora com filhos(as)"
Q12     "Mora com irm�os(�s)"
Q13     "Mora com outros parentes, amigos(as) ou colegas"
Q14     "Outra situa��o"
Q15     "Quantidade de pessoas que moram em sua casa"
Q16     "Quantos filhos tem"
Q17     "At� quando seu pai estudou"
Q18     "At� quando sua m�e estudou"
Q19     "�rea que o pai trabalha ou trabalhou, na maior parte da vida"
Q20     "�rea que sua m�e trabalha ou trabalhou, na maior parte da vida"
Q21     "Renda familiar (somando a do respondente e com a das pessoas que moram com ele)"
Q22     "Tem TV e quantas"
Q23     "Tem Videocassete e/ou DVD e quantos"
Q24     "Tem R�dio e quantos"
Q25     "Tem Microcomputador e quantos"
Q26     " Tem Autom�vel e quantos"
Q27     "Tem M�quina de lavar roupa e quantos"
Q28     "Tem Geladeira e quantas"
Q29     "Tem Telefone fixo e quantos"
Q30     "Tem Telefone celular e quantos"
Q31     "Tem Acesso � Internet e quantos"
Q32     "Tem TV por assinatura e quantas"
Q33     "Tem casa pr�pria"
Q34     "Se a casa � em rua cal�ada ou asfaltada"
Q35     "Se a casa tem �gua corrente de torneira"
Q36     "Se a casa tem eletricidade"
Q37     "Se a casa � situada em zona rural"
Q38     "Se a casa � situada em comunidade ind�gena"
Q39     "Se a casa � situada em comunidade quilombola"
Q40     "Motivo para fazer o Enem"
Q41     "Se est� participando do ENEM para conseguir a certifica��o do ensino m�dio, principal motivo que o levou aescolher esta forma de certifica��o"
Q42     "Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento"
Q43     "Trabalhou ou teve alguma atividade remunerada durante os estudos"
Q44     "Quantas horas trabalhava, durante os estudos"
Q45     "Com que finalidade voc� trabalhava enquanto estudava"
Q46     "Com que idade voc� come�ou a exercer atividade remunerada enquanto estudava"
Q47     "Se voc� est� trabalhando atualmente, qual a sua renda ou seu sal�rio mensal?"
Q48     "Voc� est� trabalhando atualmente em alguma atividade para o qual se preparou"
Q49     "Em que trabalha atualmente"
Q50     "Quanto tempo est� trabalhando na atividade"
Q51     "Os conhecimentos no ensino m�dio foram adequados ao que o mercado de trabalho solicita"
Q52     "Os conhecimentos no ensino m�dio tiveram rela��o com a profiss�o que escolheu / que exerce"
Q53     "Os conhecimentos no ensino m�dio foram bem desenvolvidos, com aulas pr�ticas, laborat�rios, etc"
Q54     "Os conhecimentos no ensino m�dio proporcionaram cultura e conhecimento"
Q55     "Avalia��o de ter estudado e trabalhado, simultaneamente, durante o ensino m�dio"
Q56     "A escola que freq�enta ou freq�entou durante o ensino m�dio levou em conta que trabalhava ao mesmo tempo que estudava"
Q57     "Como prova de considera��o por parte da escola  pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o hor�rio flex�vel"
Q58     "Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha menor carga de trabalho ou de tarefas extraclasse"
Q59     "Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha programa de recupera��o de notas"
Q60     "Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha abono de faltas"
Q61     "Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha aulas mais din�micas, com did�tica difenciada"
Q62     "Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha aulas de revis�o da mat�ria aos (�s) interessados(as)"
Q63     "Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha fornecimento de refei��o aos (�s) alunos(as)"
Q64     "A escola deve oferecer hor�rio flex�vel para o aluno que trabalha"
Q65     "A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha"
Q66     "A escola deve oferecer programa de recupera��o de notas para o aluno que trabalha"
Q67     "A escola deve oferecer abono de faltas para o aluno que trabalha"
Q68     "A escola deve oferecer aulas mais din�micas, com did�tica diferenciada para o aluno que trabalha"
Q69     "A escola deve oferecer aulas de revis�o da mat�ria  aos alunos interessados que trabalham"
Q70     "A escola deve oferecer atendimento extraclasse  aos alunos que trabalham"
Q71     "A escola deve oferecer fornecimento de refei��o para o aluno que trabalha"
Q72     "Anos que levou para concluir o ensino fundamental (1� grau)"
Q73     "Em que tipo de escola cursou o ensino fundamental (1� grau)"
Q74     "Em que ano concluiu ou concluir� o ensino m�dio (2� grau)"
Q75     "Quantos anos levou para cursar o ensino m�dio (2� grau)"
Q76     "Em que turno cursou ou esta cursando o ensino m�dio"
Q77     "Em que tipo de escola cursou ou est� cursando o ensino m�dio (2� grau)"
Q78     "Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)"
Q79     "Fez curso de l�ngua estrangeira"
Q80     "Fez curso de computa��o ou inform�tica"
Q81     "Fez curso preparat�rio para o vestibular (cursinho)"
Q82     "Fez outros cursos"
Q83     "Com que freq��ncia l� jornais"
Q84     "Com que freq��ncia l� revistas de informa��o geral"
Q85     "Com que freq��ncia l� revistas de divulga��o cient�fica, tecnol�gica, filos�fica ou art�stica"
Q86     "Com que freq��ncia l� revistas de humor, quadrinhos ou jogos"
Q87     "Com que freq��ncia l� revistas para adolescentes ou sobre TV, cinema, m�sica, celebridades"
Q88     "Com que freq��ncia l� revistas sobre comportamento, moda, estilo e decora��o"
Q89     "Com que freq��ncia l� revistas sobre autom�veis, esporte e lazer"
Q90     "Com que freq��ncia l� revistas sobre sa�de"
Q91     "Com que freq��ncia l� revistas sobre religi�o"
Q92     "Com que freq��ncia l� revistas sobre educa��o e estudos"
Q93     "Com que freq��ncia l� livros de fic��o"
Q94     "Com que freq��ncia l� livros de n�o fic��o e biografias"
Q95     "Com que freq��ncia l� dicion�rios, enciclop�dias e manuais"
Q96     "Com que freq��ncia l� sites e mat�rias na Internet"
Q97     "Avalia��o da escola em que fez o ensino m�dio quanto ao conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo"
Q98     "Avalia��o da escola em que fez o ensino m�dio quanto � dedica��o dos(as) professores(as) para prepararaulas e atender aos alunos"
Q99     "Avalia��o da escola em que fez o ensino m�dio quanto �s iniciativas da escola para realizar excurs�es,passeios culturais, estudos do meio ambiente"
Q100     "Avalia��o da escola em que fez o ensino m�dio quanto � biblioteca"
Q101     "Avalia��o da escola em que fez o ensino m�dio quanto �s condi��es das salas de aula"
Q102     "Avalia��o da escola em que fez o ensino m�dio quanto �s condi��es dos laborat�rios"
Q103     "Avalia��o da escola em que fez o ensino m�dio quanto ao acesso a computadores e outros recursos de inform�tica"
Q104     "Avalia��o da escola em que fez o ensino m�dio quanto ao ensino de l�ngua estrangeira"
Q105     "Avalia��o da escola em que fez o ensino m�dio quanto ao interesse dos(as) alunos(as)"
Q106     "Avalia��o da escola em que fez o ensino m�dio quanto ao trabalho de grupo"
Q107     "Avalia��o da escola em que fez o ensino m�dio quanto �s pr�ticas de esportes"
Q108     "Avalia��o da escola em que fez o ensino m�dio quanto � aten��o e respeito dos(as) funcion�rios(as) e dos(as) professores(as)"
Q109     "Avalia��o da escola em que fez o ensino m�dio quanto � dire��o"
Q110     "Avalia��o da escola em que fez o ensino m�dio quanto � organiza��o dos hor�rios de aulas"
Q111     "Avalia��o da escola em que fez o ensino m�dio quanto � localiza��o"
Q112     "Avalia��o da escola em que fez o ensino m�dio quanto � seguran�a (ilumina��o, policiamento, etc)"
Q113     "Avalia��o da escola em que fez o ensino m�dio quanto ao respeito � diversidade"
Q114     "Avalia��o da escola em que fez o ensino m�dio quanto a acessibilidade f�sica e os recursos e os materiaispara estudantes com defici�ncia (rampas, corrim�os, lupas, etc)"
Q115     "Avalia��o da escola em que fez o ensino m�dio quanto a aten��o �s quest�es ambientais"
Q116     "A escola em que estuda ou estudou realiza palestras / debates"
Q117     "A escola em que estuda ou estudou realiza jogos / esportes / campeonatos"
Q118     "A escola em que estuda ou estudou realiza dan�a/m�sica/coral/teatro"
Q119     "A escola em que estuda ou estudou realiza estudos do meio ambiente / passeios"
Q120     "A escola em que estuda ou estudou realiza feira de ci�ncias / feira cultural"
Q121     "A escola em que estuda ou estudou realiza festas/gincanas"
Q122     "Atendimento educacional extraclasse"
Q123     "De acordo com os ensinamentos no ensino m�dio, como considera o preparo para conseguir um emprego, exerceralguma atividade profissional"
Q124     "Os(as) professores(as) t�m autoridade, firmeza"
Q125     "Os(as) professores(as) s�o distantes, t�m pouco envolvimento"
Q126     "Os(as) professores(as) t�m respeito pelos estudantes"
Q127     "Os(as) professores(as) s�o indiferentes, ignoram sua exist�ncia"
Q128     "Os(as) professores(as) s�o preocupados(as) e dedicados(as)"
Q129     "Os(as) professores(as) s�o autorit�rios(as), r�gidos(as), abusam do poder"
Q130     "Os(as) professores(as) valorizam as diferen�as e ensinam a respeit�-las"
Q131     "Avalia��o sobre a escola quanto � liberdade de expressar as id�ias"
Q132     "Avalia��o sobre a escola quanto ao respeito aos estudantes, sem discrimin�-los"
Q133     "Avalia��o sobre a escola quanto � amizade e respeito entre alunos(as) e trabalhadores da escola (funcion�rios(as), professores(as))"
Q134     "Avalia��o sobre a escola quanto a levar em conta suas opini�es"
Q135     "Avalia��o sobre a escola quanto � discuss�o dos problemas da atualidade nas aulas"
Q136     "Avalia��o sobre a escola quanto � conviv�ncia entre estudantes"
Q137     "Avalia��o sobre a escola quanto � organiza��o para apoiar a resolu��o de problemas de relacionamento entreestudantes"
Q138     "Avalia��o sobre a escola quanto � iniciativa para apoiar a resolu��o de problemas de relacionamento entreestudantes e professores(as)"
Q139     "Avalia��o sobre a escola quanto � levar em conta seus problemas pessoais e familiares"
Q140     "Avalia��o sobre a escola quanto � realiza��o de Projetos e Palestras contra drogas"
Q141     "Avalia��o sobre a escola quanto � realiza��o de projetos e palestras sobre promo��o da sa�de e preven��o aAids e a doen�as sexualmente transmiss�veis"
Q142     "Avalia��o da escola quanto � realiza��o de projetos e palestras sobre direitos humanos e viol�ncia"
Q143     "Avalia��o da escola quanto � ado��o de medidas para garantir a acessibilidade a estudantes com defici�ncias f�sicas ou mentais"
Q144     "Avalia��o sobre a escola quanto � capacidade de relacionar os conte�dos das mat�rias com o cotidiano"
Q145     "Avalia��o sobre a escola quanto ao reconhecimento e valoriza��o da identidade �tnica dos estudantes"
Q146     "Avalia��o da escola quanto � levar em conta a opini�o/participa��o dos pais"
Q147     "Nota para a forma��o que obteve no ensino m�dio"
Q148     "Considera-se racista"
Q149     "Parentes racistas"
Q150     "Amigos(as) ou colegas de escola e/ou trabalho racistas"
Q151     "Vizinhos e/ou conhecidos  racistas"
Q152     "Professores(as) ou funcion�rios da escola"
Q153     "Pessoas em geral (nas ruas, nos ambientes p�blicos, etc)"
Q154     "Acredita possuir algum preconceito contra pessoas mais pobres / participantes de programas sociais dogoverno (Bolsa fam�lia, etc)"
Q155     "Acredita possuir algum preconceito contra negros(as), ind�genas, orientais, ciganos(as), ou de outrasetnias"
Q156     "Acredita possuir algum preconceito contra mulheres"
Q157     "Acredita possuir algum preconceito contra homossexuais ou gays, l�sbicas, bissexuais, travestis, transexuais"
Q158     "Acredita possuir algum preconceito contra pessoas muito religiosas"
Q159     "Acredita possuir algum preconceito contra pessoas de outra religi�o"
Q160     "Acredita possuir algum preconceito contra pessoas sem religi�o"
Q161     "Acredita possuir algum preconceito contra pessoas de outras cidades, do interior, da zona rural ou deoutras regi�es do pa�s ou do exterior"
Q162     "Acredita possuir algum preconceito contra pessoas idosas"
Q163     "Acredita possuir algum preconceito contra pessoas com defici�ncia f�sica ou mental"
Q164     "Acredita possuir algum preconceito contra pessoas muito gordas ou muito magras"
Q165     "Acredita possuir algum preconceito contra moradores(as) de favela ou de periferia"
Q166     "Acredita possuir algum preconceito contra meninos(as) em situa��o de rua"
Q167     "Acredita possuir algum preconceito contra jovens infratores(as) / jovens em conflito com a lei"
Q168     "Acredita possuir algum preconceito contra usu�rios(as) de drogas"
Q169     "J� sofreu discrimina��o econ�mica"
Q170     "J� sofreu discrimina��o �tnica, racial ou de cor"
Q171     "J� sofreu discrimina��o de g�nero (ou por ser mulher ou por ser homem)"
Q172     "J� sofreu discrimina��o por ser ou ter sido identificado como homossexual (gay, l�sbica, bissexual, travesti ou transexual"
Q173     "J� sofreu discrimina��o religiosa"
Q174     "J� sofreu discrimina��o por n�o ter religi�o"
Q175     "J� sofreu discrimina��o por causa do local de seu nascimento (em outra cidade, no interior, em outra regi�o, no exterior, etc)"
Q176     "J� sofreu discrimina��o por causa da idade"
Q177     "J� sofreu discrimina��o por ser pessoa com defici�ncia f�sica ou mental"
Q178     "J� sofreu discrimina��o por causa de sua apar�ncia f�sica (gordo/a, magro/a, alto/a, baixo/a, etc)"
Q179     "J� sofreu discrimina��o por causa do lugar de sua moradia"
Q180     "J� presenciou discrimina��o econ�mica"
Q181     "J� presenciou discrimina��o �tnica, racial ou de cor"
Q182     "J� presenciou discrimina��o contra mulheres"
Q183     "J� presenciou discrimina��o contra homossexuais (gay, l�sbica, bissexual, travesti ou transexual)"
Q184     "J� presenciou discrimina��o religiosa"
Q185     "J� presenciou discrimina��o por causa do local de seu nascimento (em outra cidade, no interior, em outra regi�o, no exterior, etc)"
Q186     "J� presenciou discrimina��o contra jovens menores de 18 anos"
Q187     "J� presenciou discrimina��o contra pessoas idosas"
Q188     "J� presenciou discrimina��o por ser pessoa com defici�ncia"
Q189     "J� presenciou discrimina��o por causa de sua apar�ncia f�sica"
Q190     "J� presenciou discrimina��o por causa do lugar de sua moradia"
Q191     "Se incomodaria se tivesse como parente ou colega de escola  uma pessoa de outra classe social"
Q192     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra cor ou etnia"
Q193     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra religi�o"
Q194     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa com posi��es pol�ticas diferentes dasua"
Q195     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra origem geogr�fica"
Q196     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa homossexual (gay, l�sbica, bissexual, travesti ou transexual)"
Q197     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa muito mais nova ou mais velha"
Q198     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa com defici�ncia f�sica ou mental"
Q199     "O quanto voc� se interessa pela pol�tica"
Q200     "O quanto voc� se interessa pela globaliza��o"
Q201     "O quanto voc� se interessa por esportes"
Q202     "O quanto voc� se interessa por religi�o"
Q203     "O quanto voc� se interessa pelas quest�es do meio ambiente, polui��o"
Q204     "O quanto voc� se interessa pelas quest�es sobre desigualdade social, pobreza, desemprego, mis�ria"
Q205     "O quanto voc� se interessa pelas quest�es sobre artes, teatro, cinema"
Q206     "O quanto voc� se interessa sobre a quest�o das drogas"
Q207     "O quanto voc� se interessa sobre a quest�o do acesso e qualidade dos servi�os p�blicos de sa�de e educa��o"
Q208     "O quanto voc� se interessa pelas quest�es sobre sexualidade (prazer, sexo seguro, gravidez, doen�as sexualmente transmiss�veis, etc)"
Q209     "O quanto voc� se interessa pelas quest�es sobre racismo contra negros, ind�genas, orientais, ciganos,judeus, etc"
Q210     "O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra mulheres"
Q211     "O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra homossexuais (gay, l�sbica, bissexual, travesti ou transexual)"
Q212     "O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra crian�as e adolescentes"
Q213     "O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra pessoas idosas"
Q214     "O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra pessoas com defici�ncia"
Q215     "A primeira contribui��o para a sua vida pessoal que obteve ao realizar o Ensino M�dio foi"
Q216     "A segunda contribui��o para a sua vida pessoal que obteve ao realizar o Ensino M�dio foi"
Q217     "A terceira contribui��o para a sua vida pessoal que obteve ao realizar o Ensino M�dio foi"
Q218     "A principal decis�o que vai tomar quando concluir ou obter a certifica��o do ensino m�dio (2� grau)"
Q219     "E a m�dio prazo, daqui a uns 4 ou 5 anos j� planejou o que gostaria que acontecesse"
Q220     "Que profiss�o escolheu seguir"
Q221     "Meus pais ajudaram a tomar minha decis�o sobre minha profiss�o"
Q222     "A escola ajudou a tomar minha decis�o sobre minha profiss�o"
Q223     "Meus amigos ajudaram a tomar minha decis�o sobre minha profiss�o"
Q224     "Informa��es gerais, revistas, jornais, TV ajudaram a tomar minha decis�o sobre minha profiss�o"
Q225     "Meu trabalho ajudou a tomar minha decis�o sobre minha profiss�o"
Q226     "Est�mulo financeiro ajudou a tomar minha decis�o sobre minha profiss�o"
Q227     "Facilidade de obter emprego ajudou a tomar minha decis�o sobre minha profiss�o"
Q228     "Continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)"
Q229     "Frequentou ou est� freq�entando um curso profissionalizante"
Q230     "Frequentou ou est� freq�entando um curso preparat�rio para vestibular"
Q231     "Frequentou ou est� freq�entando um curso superior"
Q232     "Frequentou ou est� freq�entando um curso de l�ngua estrangeira"
Q233     "Frequentou ou est� freq�entando um curso de computa��o ou inform�tica"
Q234     "Frequentou ou est� freq�entando um curso preparat�rio para outros concursos p�blicos"
Q235     "Frequentou ou est� freq�entando outro curso"
Q236     "O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q237     "O curso preparat�rio para vestibular fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q238     "O curso superior fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q239     "O curso de l�ngua estrangeira fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q240     "O curso de computa��o ou inform�tica fez mais falta para minha vida, depois que terminei o ensino m�dio"
Q241     "Como realiza ou realizou o Curso de Educa��o de Jovens e Adultos - EJA"
Q242     "Per�odo em que cursa a EJA"
Q243     "J� havia cursado antes a EJA e depois parou"
Q244     "Parou de frequentar a EJA porque o hor�rio de trabalho era dif�cil/n�o tinha tempo de estudar"
Q245     "Parou de frequentar a EJA porque estudava no curso da empresa e fui demitido"
Q246     "Parou de frequentar a EJA porque teve problemas ligados � sa�de ou acidentes ou pessoas da fam�lia"
Q247     "Parou de frequentar a EJA porque mudou de cidade"
Q248     "Parou de frequentar a EJA porque casou/teve filhos"
Q249     "Parou de frequentar a EJA porque n�o tinha interesse/desistiu"
Q250     "Parou de frequentar a EJA porque sentiu-se discriminado/sofreu agress�o"
Q251     "N�o frequentou"
Q252     "Frequentou alguma vez escola regular"
Q253     "Se j� frequentou escola regular, em que s�rie ou ano escolar deixou a escola"
Q254     "Quanto tempo levou para cursar a 1� S�rie do Ensino M�dio"
Q255     "Quanto tempo levou para cursar a 2� S�rie do Ensino M�dio"
Q256     "Quanto tempo levou para cursar a 3� S�rie do Ensino M�dio"
Q257     "Em que tipo de escola cursou a 1� S�ire do Ensino M�dio"
Q258     "Em que tipo de escola cursou a 2� S�ire do Ensino M�dio"
Q259     "Em que tipo de escola cursou a 3� S�ire do Ensino M�dio"
Q260     "Quantos anos tinha quando deixou de frequentar a escola regular"
Q261     "Nunca frequentou uma escola regular porque n�o conseguiu vaga em escola p�blica / a fam�lia n�o tinhacondi��es de pagar os estudos"
Q262     "Nunca frequentou uma escola regular porque n�o havia escola perto de casa"
Q263     "Nunca frequentou uma escola regular porque n�o gostava de estudar / n�o tinha interesse"
Q264     "Nunca frequentou uma escola regular por motivos ligados ao trabalho: hor�rio de trabalho era dif�cil /n�otinha tempo de estudar"
Q265     "Nunca frequentou uma escola regular porque parou de estudar porque casou / teve filhos / teve que cuidar da fam�lia"
Q266     "Nunca frequentou uma escola regular porque n�o tinha apoio da fam�lia"
Q267     "Nunca frequentou uma escola regular por problemas ligados � sa�de: sofreu acidente/ficou doente/aconteceualgum acidente com pessoas da fam�lia"
Q268     "Nunca frequentou uma escola regular porque sofreu discrimina��o"
Q269     "Deixou de frequentar uma escola regular porque foi reprovado"
Q270     "Deixou de frequentar uma escola regular porque n�o conseguiu vaga em escola p�blica / a fam�lia n�o tinhacondi��es de pagar os estudos"
Q271     "Deixou de frequentar uma escola regular porque n�o havia escola perto de casa"
Q272     "Deixou de frequentar uma escola regular porque a escola a escola que frequentava era muito ruim (tinhamuita bagun�a, n�o tinha professores, as aulas n�o eram boas, etc)"
Q273     "Deixou de frequentar uma escola regular porque n�o gostava de estudar / n�o tinha interesse"
Q274     "Deixou de frequentar uma escola regular por motivos ligados ao trabalho: hor�rio de trabalho era dif�cil /n�o tinha tempo de estudar"
Q275     "Deixou de frequentar uma escola regular porque parou de estudar porque casou / teve filhos / teve quecuidar da fam�lia"
Q276     "Deixou de frequentar uma escola regular porque n�o tinha apoio da fam�lia"
Q277     "Deixou de frequentar uma escola regular por problemas ligados � sa�de: sofreu acidente/ficou doente/aconteceu algum acidente com pessoas da fam�lia"
Q278     "Deixou de frequentar uma escola regular porque sofreu discrimina��o na escola"
Q279     "Deixou de frequentar uma escola regular porque sofreu agress�o (f�sica ou verbal) na escola"
Q280     "N�o voltou a estudar"
Q281     "Voltou a estudar ou a cursar a EJA para conseguir o primeiro emprego"
Q282     "Voltou a estudar ou a cursar a EJA para conseguir um emprego melhor"
Q283     "Voltou a estudar ou a cursar a EJA para melhorar de posi��o no emprego atual"
Q284     "Voltou a estudar ou a cursar a EJA para prestar vestibular e fazer uma faculdade"
Q285     "Voltou a estudar ou a cursar a EJA para fazer algum curso profissionalizante"
Q286     "Voltou a estudar ou a cursar a EJA para adquirir mais conhecimento, ficar atualizado"
Q287     "Voltou a estudar ou a cursar a EJA para ser algu�m na vida, ter mais chances"
Q288     "Depois que voltou ou come�ou a estudar aumentou seus conhecimentos, adquiriu mais informa��es, tem mais preparo"
Q289     "Depois que voltou ou come�ou a estudar melhorou sua autoestima, sua satisfa��o pessoal"
Q290     "Depois que voltou ou come�ou a estudar teve reconhecimento no trabalho"
Q291     "Depois que voltou ou come�ou a estudar surgiram novas oportunidades de trabalho"
Q292     "Depois que voltou ou come�ou a estudar sua vida ficou pior, mais cansativa, mais corrida"
Q293     "N�o mudou nada depois que voltou ou come�ou a estudar"
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
 "M"  "Masculino"
 "F"  "Feminino"
/TP_ST_CONCLUSAO
  1  "J� concluiu"
  2  "Concluir� em 2009"
  3  "Concluir� ap�s 2009"
  4  "N�o concluiu o Ensino M�dio"
/TP_ENSINO
  1  "Ensino Regular"
  2  "Ensino de Jovens e Adultos"
  3  "Ensino profissionalizante"
  4  "Ensino Especial"
/IN_CERTIFICADO
  1  "Sim"
  0  "N�o"
/TP_DEPENDENCIA_ADM_ESC
  1  "Federal"
  2  "Estadual"
  3  "Municipal"
  4  "Privada"
/TP_LOCALIZACAO_ESC
  1  "Urbana"
  2  "Rural"
/TP_SIT_FUNC_ESC
  1  "Em atividade"
  2  "Paralisada"
  3  "Extinta"
  4  "Escola extinta em anos anteriores"
/TP_PRESENCA_CN
  0  "Faltou � prova"
  1  "Presente na prova"
  2  "Eliminado na prova"
/TP_PRESENCA_CH
  0  "Faltou � prova"
  1  "Presente na prova"
  2  "Eliminado na prova"
/TP_PRESENCA_LC
  0  "Faltou � prova"
  1  "Presente na prova"
  2  "Eliminado na prova"
/TP_PRESENCA_MT
  0  "Faltou � prova"
  1  "Presente na prova"
  2  "Eliminado na prova"
/CO_PROVA_CN
  49  "AZUL"
  50  "AMARELO"
  51  "BRANCA"
  52  "ROSA"
  65  "AZUL (REAPLICA��O/PPL)"
  66  "AMARELO (REAPLICA��O/PPL)"
  67  "BRANCA (REAPLICA��O/PPL)"
  68  "ROSA (REAPLICA��O/PPL)"
  81  "BRANCA (ADAPTADA LEDOR)"
/CO_PROVA_CH
  53  "AZUL"
  54  "AMARELO"
  55  "BRANCA"
  56  "ROSA"
  69  "AZUL (REAPLICA��O/PPL)"
  70  "AMARELO (REAPLICA��O/PPL)"
  71  "BRANCA (REAPLICA��O/PPL)"
  72  "ROSA (REAPLICA��O/PPL)"
  82  "BRANCA (ADAPTADA LEDOR)"
/CO_PROVA_LC
  57  "AMARELO"
  58  "CINZA"
  59  "AZUL"
  60  "ROSA"
  73  "AMARELO (REAPLICA��O/PPL)"
  74  "CINZA (REAPLICA��O/PPL)"
  75  "AZUL (REAPLICA��O/PPL)"
  76  "ROSA (REAPLICA��O/PPL)"
  83  "CINZA (ADAPTADA LEDOR)"
/CO_PROVA_MT
  61  "AMARELO"
  62  "CINZA"
  63  "AZUL"
  64  "ROSA"
  77  "AMARELO (REAPLICA��O/PPL)"
  78  "CINZA (REAPLICA��O/PPL)"
  79  "AZUL (REAPLICA��O/PPL)"
  80  "ROSA (REAPLICA��O/PPL)"
  84  "CINZA (ADAPTADA LEDOR)"
/TP_STATUS_REDACAO
  "B"  "Entregou a reda��o em branco"
  "F"  "Faltou � prova"
  "N"  "Reda��o anulada"
  "P"  "Presente � prova"
/IN_QSE
  0   "N�o respondeu o question�rio socioec�mico"
  1   "Respondeu o question�rio socioec�mico"
/Q1
  "A"  "Feminino "
  "B"  "Masculino"
/Q2
  "A"  "Menos de 17 anos"
  "B"  "17 anos"
  "C"  "18 anos"
  "D"  "Entre 19 e 25 anos"
  "E"  "Entre 26 e 33 anos"
  "F"  "Entre 34 e 41 anos"
  "G"  "Entre 42 e 49 anos"
  "H"  "50 anos ou mais"
/Q3
  "A"  "Branco(a)"
  "B"  "Pardo(a)"
  "C"  "Preto(a)"
  "D"  "Amarelo(a)"
  "E"  "Ind�gena"
/Q4
  "A"  "Minha l�ngua materna � o portugu�s"
  "B"  "Uma l�ngua ind�gena e o portugu�s"
  "C"  "Mais de uma l�ngua ind�gena e o portugu�s"
  "D"  "Uma l�ngua ind�gena, o portugu�s e o espanhol"
  "E"  "Mais de uma l�ngua ind�gena, o portugu�s e outra(s) l�ngua(s) estrangeira(s)"
/Q5
  "A"  "Cat�lica"
  "B"  "Protestante ou Evang�lica"
  "C"  "Esp�rita"
  "D"  "Umbanda ou Candombl�"
  "E"  "Outra"
  "F"  "Sem religi�o"
/Q6
  "A"  "Solteiro(a)"
  "B"  "Casado(a) / mora com um(a) companheiro(a)"
  "C"  "Separado(a) / divorciado(a) / desquitado(a)"
  "D"  "Vi�vo(a)"
/Q7
  "A"  "Em casa ou apartamento, com sua fam�lia"
  "B"  "Em casa ou apartamento, sozinho(a)"
  "C"  "Em quarto ou c�modo alugado, sozinho(a)"
  "D"  "Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc"
  "E"  "Outra situa��o"
/Q8
  "A"  "Sim"
  "B"  "N�o"
/Q9
  "A"  "Sim"
  "B"  "N�o"
/Q10
  "A"  "Sim"
  "B"  "N�o"
/Q11
  "A"  "Sim"
  "B"  "N�o"
/Q12
  "A"  "Sim"
  "B"  "N�o"
/Q13
  "A"  "Sim"
  "B"  "N�o"
/Q14
  "A"  "Sim"
  "B"  "N�o"
/Q15
  "A"  "Duas pessoas"
  "B"  "Tr�s"
  "C"  "Quatro"
  "D"  "Cinco"
  "E"  "Mais de seis"
  "F"  "Moro sozinho(a)"
/Q16
  "A"  "Um filho"
  "B"  "Dois filhos"
  "C"  "Tr�s filhos"
  "D"  "Quatro ou mais filhos"
  "E"  "N�o tenho filhos"
/Q17
  "A"  "N�o estudou"
  "B"  "Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)"
  "C"  "Da 5� a 8� do ensino fundamental (antigo gin�sio)"
  "D"  "Ensino M�dio (2� grau) incompleto"
  "E"  "Ensino M�dio (2� grau) completo"
  "F"  "Ensino Superior incompleto"
  "G"  "Ensino Superior completo"
  "H"  "P�s-gradua��o"
  "I"  "N�o sei"
/Q18
  "A"  "N�o estudou"
  "B"  "Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)"
  "C"  "Da 5� a 8� do ensino fundamental (antigo gin�sio)"
  "D"  "Ensino M�dio (2� grau) incompleto"
  "E"  "Ensino M�dio (2� grau) completo"
  "F"  "Ensino Superior incompleto"
  "G"  "Ensino Superior completo"
  "H"  "P�s-gradua��o"
  "I"  "N�o sei"
/Q19
  "A"  "Na agricultura, no campo, em fazenda ou na pesca"
  "B"  "Na ind�stria"
  "C"  "Na constru��o civil"
  "D"  "No com�rcio, banco, transporte, hotelaria ou outros servi�os"
  "E"  "Funcion�rio p�blico do governo federal, estadual ou municipal"
  "F"  "Profissional liberal, professor ou t�cnico de n�vel superior"
  "G"  "Trabalhador fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador de carros, catador de lixo, etc)"
  "H"  "Trabalha em casa em servi�os (alfaiataria, cozinha, aulas particulares, artesanato, carpintaria, marcenaria, etc)"
  "I"  "Trabalhador dom�stico em casa de outras pessoas (faxineiro, cozinheiro, mordomo, motorista particular, jardineiro, vigia, acompanhante de idosos/as, etc)"
  "J"  "No lar (sem remunera��o)"
  "K"  "N�o trabalha"
  "L"  "N�o sei"
/Q20
  "A"  "Na agricultura, no campo, em fazenda ou na pesca"
  "B"  "Na ind�stria"
  "C"  "Na constru��o civil"
  "D"  "No com�rcio, banco, transporte, hotelaria ou outros servi�os"
  "E"  "Funcion�riA p�blico do governo federal, estadual ou municipal"
  "F"  "Profissional liberal, professora ou t�cnica de n�vel superior"
  "G"  "Trabalhadora fora de casa em atividades informais (feirante, ambulante, guardadora de carros, catadora de lixo, etc)"
  "H"  "Trabalha em casa em servi�os (costura, cozinha, aulas particulares, artesanato, etc)"
  "I"  "Trabalhador dom�stico em casa de outras pessoas (cozinheira, arrumadeira, governanta, bab�, lavadeira, faxineira, acompanhante de idosos/as, etc)"
  "J"  "No lar (sem remunera��o)"
  "K"  "Outro"
  "L"  "N�o trabalha"
  "M"  "N�o sei"
/Q21
  "A"  "At� 1 sal�rio m�nimo (at� R$ 465,00 inclusive)"
  "B"  "De 1 a 2 sal�rios m�nimos (R$ 465,00 a R$ 930,00 inclusive)"
  "C"  "De 2 a 5 sal�rios m�nimos (R$ 930,00 a R$ 2.325,00 inclusive)"
  "D"  "De 5 a 10 sal�rios m�nimos (R$ 2.325,00 a R$ 4.650,00 inclusive)"
  "E"  "De 10 a 30 sal�rios m�nimos (R$ 4.650,00 a R$ 13.950,00 inclusive)"
  "F"  "De 30 a 50 sal�rios m�nimos (R$ 13.950,00 a R$ 23.250,00 inclusive)"
  "G"  "Mais de 50 sal�rios m�nimos (mais de R$ 23.250,00)"
  "H"  "Nenhuma renda"
/Q22
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q23
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q24
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q25
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q26
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q27
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q28
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q29
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q30
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q31
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q32
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "N�o tem"
/Q33
  "A"  "Sim "
  "B"  "N�o"
/Q34
  "A"  "Sim "
  "B"  "N�o"
/Q35
  "A"  "Sim "
  "B"  "N�o"
/Q36
  "A"  "Sim "
  "B"  "N�o"
/Q37
  "A"  "Sim "
  "B"  "N�o"
/Q38
  "A"  "Sim "
  "B"  "N�o"
/Q39
  "A"  "Sim "
  "B"  "N�o"
/Q40
  "A"  "Para  testar seus conhecimentos / capacidade de racioc�nio"
  "B"  "Para entrar na faculdade / conseguir pontos para o vestibular/conseguir bolsa do governo"
  "C"  "Para ter um bom emprego / saber se est� preparado(a) para o futuro profissional"
  "D"  "Para obter minha certifica��o do Ensino M�dio"
  "E"  "N�o sei"
  "F"  "Nenhuma das anteriores"
/Q41
  "A"  "Porque n�o encontrei outro modo de conseguir o certificado de conclus�o do ensino m�dio"
  "B"  "Porque era a melhor alternativa para conseguir o certificado de conclus�o do ensino m�dio."
  "C"  "Porque achei que era uma boa forma de avaliar meus conhecimentos"
  "D"  "Os(as) professores(as) do meu curso recomendaram"
  "E"  "Quero continuar meus estudos na educa��o superior"
  "F"  "Porque era a melhor maneira para conciliar estudo e trabalho"
  "G"  "Porque n�o quero e n�o gosto de estudar no curso regular"
/Q42
  "A"  "Trabalho, estou empregado com carteira de trabalho assinada"
  "B"  "Trabalho, mas n�o tenho carteira de trabalho assinada"
  "C"  "Trabalho por conta pr�pria, n�o tenho carteira de trabalho assinada"
  "D"  "J� trabalhei, mas n�o estou trabalhando"
  "E"  "Nunca trabalhei"
  "F"  "Nunca trabalhei, mas estou procurando trabalho"
/Q43
  "A"  "Sim, todo o tempo"
  "B"  "Sim, menos de 1 ano"
  "C"  "Sim, de 1 a 2 anos"
  "D"  "Sim, de 2 a 3 anos"
  "E"  "Sim, mais de 3 anos"
  "F"  "N�o"
/Q44
  "A"  "Sem jornada fixa, at� 10 horas semanais"
  "B"  "De 11 a 20 horas semanais"
  "C"  "De 21 a 30 horas semanais"
  "D"  "De 31 a 40 horas semanais"
  "E"  "Mais de 40 horas semanais"
/Q45
  "A"  "Para ajudar meus pais nas despesas com a casa, sustentar a fam�lia"
  "B"  "Para meu sustento e o de minha fam�lia (esposo/a, filhos/as, etc)"
  "C"  "Para ser independente (ter meu sustento, ganhar meu pr�prio dinheiro)"
  "D"  "Para adquirir experi�ncia"
  "E"  "Para ajudar minha comunidade"
  "F"  "Outra finalidade"
  "G"  "Nunca trabalhei enquanto estudava"
/Q46
  "A"  "Antes dos 14 anos"
  "B"  "Entre 14 e 16 anos"
  "C"  "Entre 17 e 18 anos"
  "D"  "Ap�s 18 anos"
  "E"  "Nunca trabalhei enquanto estudava"
/Q47
  "A"  "At� 1 sal�rio m�nimo (at� R$ 465,00 inclusive)"
  "B"  "De 1 a 2 sal�rios m�nimos (R$ 465,00 a R$ 930,00 inclusive)"
  "C"  "De 2 a 5 sal�rios m�nimos (R$ 930,00 a R$ 2.325,00 inclusive)"
  "D"  "De 5 a 10 sal�rios m�nimos (R$ 2.325,00 a R$ 4.650,00 inclusive)"
  "E"  "De 10 a 30 sal�rios m�nimos (R$ 4.650,00 a R$ 13.950,00 inclusive)"
  "F"  "De 30 a 50 sal�rios m�nimos (R$ 13.950,00 a R$ 23.250,00 inclusive)"
  "G"  "Mais de 50 sal�rios m�nimos (mais de R$ 23.250,00)"
  "H"  "N�o estou trabalhando"
/Q48
  "A"  "Sim"
  "B"  "N�o"
/Q49
  "A"  "Na agricultura, no campo, em fazenda ou na pesca"
  "B"  "Na ind�stria"
  "C"  "Na constru��o civil"
  "D"  "No com�rcio, banco, transporte, hotelaria ou outros servi�os"
  "E"  "Funcion�rio(a) p�blico do governo federal, estadual ou municipal"
  "F"  "Profissional liberal, professor(a) ou t�cnico(a) de n�vel superior"
  "G"  "Trabalhador(a) fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador(a) de carros, catador(a) de lixo, etc)"
  "H"  "Trabalha em casa em servi�os (costura, cozinha, aulas particulares, artesanato, carpintaria, etc)"
  "I"  "Trabalhador dom�stico em casa de outras pessoas (cozinheiro(a), mordomo/governanta, jardineiro,bab�, lavadeira, faxineiro(a), acompanhante de idosos/as, etc)"
  "J"  "No lar (sem remunera��o)"
  "K"  "Outro"
  "L"  "N�o trabalha"
  "M"  "N�o sei"
/Q50
  "A"  "Menos de 1 ano"
  "B"  "Entre 1 e 2 anos"
  "C"  "Entre 2 e 4 anos"
  "D"  "Mais de 4 anos"
/Q51
  "A"  "Sim"
  "B"  "N�o"
/Q52
  "A"  "Sim"
  "B"  "N�o"
/Q53
  "A"  "Sim"
  "B"  "N�o"
/Q54
  "A"  "Sim"
  "B"  "N�o"
/Q55
  "A"  "Atrapalhou os estudos"
  "B"  "Possibilitou crescimento pessoal"
  "C"  "Atrapalhou os estudos, mas possibilitou crescimento pessoal"
  "D"  "N�o atrapalhou os estudos"
  "E"  "N�o trabalho / n�o trabalhei"
/Q56
  "A"  "Sim"
  "B"  "N�o"
  "C"  "N�o sei"
/Q57
  "A"  "Sim"
  "B"  "N�o"
/Q58
  "A"  "Sim"
  "B"  "N�o"
/Q59
  "A"  "Sim"
  "B"  "N�o"
/Q60
  "A"  "Sim"
  "B"  "N�o"
/Q61
  "A"  "Sim"
  "B"  "N�o"
/Q62
  "A"  "Sim"
  "B"  "N�o"
/Q63
  "A"  "Sim"
  "B"  "N�o"
/Q64
  "A"  "Sim"
  "B"  "N�o"
/Q65
  "A"  "Sim"
  "B"  "N�o"
/Q66
  "A"  "Sim"
  "B"  "N�o"
/Q67
  "A"  "Sim"
  "B"  "N�o"
/Q68
  "A"  "Sim"
  "B"  "N�o"
/Q69
  "A"  "Sim"
  "B"  "N�o"
/Q70
  "A"  "Sim"
  "B"  "N�o"
/Q71
  "A"  "Sim"
  "B"  "N�o"
/Q72
  "A"  "Menos de 8 anos"
  "B"  "8 anos"
  "C"  "9 anos"
  "D"  "10 anos"
  "E"  "11 anos"
  "F"  "Mais de 11 anos"
  "G"  "N�o cursei"
/Q73
  "A"  "Somente em escola p�blica"
  "B"  "Parte em escola p�blica e parte em escola particular"
  "C"  "Somente em escola particular"
  "D"  "Somente em escola ind�gena ou em escola situada em comunidade quilombola"
  "E"  "Parte na escola ind�gena e parte em escola n�o-ind�gena"
  "F"  "Parte em escola situada em comunidade quilombola e parte em escola fora de �rea quilombola"
  "G"  "N�o frenquentei a escola"
/Q74
  "A"  "Vai concluir ap�s 2009"
  "B"  "Vai concluir no segundo semestre de 2009"
  "C"  "No primeiro semestre de 2009"
  "D"  "Em 2008"
  "E"  "Em 2007"
  "F"  "Em 2006"
  "G"  "Em 2005"
  "H"  "Em 2004"
  "I"  "Entre 2003 e 2002"
  "J"  "Antes de 2002"
  "K"  "N�o cursei o ensino m�dio"
/Q75
  "A"  "Menos de 3 anos"
  "B"  "3 anos"
  "C"  "4 anos"
  "D"  "5 anos"
  "E"  "6 anos"
  "F"  "Mais de 6 anos"
/Q76
  "A"  "Somente no turno diurno"
  "B"  "Maior parte no turno diurno"
  "C"  "Somente no turno noturno"
  "D"  "Maior parte no turno noturno"
/Q77
  "A"  "Somente em escola p�blica"
  "B"  "Maior parte em escola p�blica"
  "C"  "Somente em escola particular"
  "D"  "Maior parte em escola particular"
  "E"  "Somente em escola ind�gena"
  "F"  "Maior parte em escola n�o-ind�gena"
  "G"  "Somente em escola situada em comunidade quilombola"
  "H"  "Maior parte em escola situada em comunidade n�o quilombola"
/Q78
  "A"  "Ensino regular"
  "B"  "Educa��o para jovens e adultos (antigo supletivo)"
  "C"  "Ensino t�cnico / ensino profissional"
/Q79
  "A"  "Sim"
  "B"  "N�o"
/Q80
  "A"  "Sim"
  "B"  "N�o"
/Q81
  "A"  "Sim"
  "B"  "N�o"
/Q82
  "A"  "Sim"
  "B"  "N�o"
/Q83
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q84
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q85
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q86
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q87
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q88
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q89
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q90
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q91
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q92
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q93
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q94
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q95
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q96
  "A"  "Freq�entemente (todo dia ou quase todo dia)"
  "B"  "�s vezes"
  "C"  "Nunca"
/Q97
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q98
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q99
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q100
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q101
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q102
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q103
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q104
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q105
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q106
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q107
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q108
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q109
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q110
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q111
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q112
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q113
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q114
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q115
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q116
  "A"  "Sim "
  "B"  "N�o"
/Q117
  "A"  "Sim "
  "B"  "N�o"
/Q118
  "A"  "Sim "
  "B"  "N�o"
/Q119
  "A"  "Sim "
  "B"  "N�o"
/Q120
  "A"  "Sim "
  "B"  "N�o"
/Q121
  "A"  "Sim "
  "B"  "N�o"
/Q122
  "A"  "Sim "
  "B"  "N�o"
/Q123
  "A"  "Eu me considero preparado(a) para entrar no mercado de trabalho"
  "B"  "Apesar de ter freq�entado uma boa escola, eu me considero despreparado(a), pois n�o aprendi o suficiente para conseguir um emprego"
  "C"  "Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola, que n�o me preparou o suficiente"
  "D"  "N�o sei"
/Q124
  "A"  "Sim"
  "B"  "N�o"
/Q125
  "A"  "Sim"
  "B"  "N�o"
/Q126
  "A"  "Sim"
  "B"  "N�o"
/Q127
  "A"  "Sim"
  "B"  "N�o"
/Q128
  "A"  "Sim"
  "B"  "N�o"
/Q129
  "A"  "Sim"
  "B"  "N�o"
/Q130
  "A"  "Sim"
  "B"  "N�o"
/Q131
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q132
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q133
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q134
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q135
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q136
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q137
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q138
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q139
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q140
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q141
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q142
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q143
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q144
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q145
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q146
  "A"  "Insuficiente a regular"
  "B"  "Regular a bom"
  "C"  "Bom a excelente"
/Q147
  "A"  "0"
  "B"  "1"
  "C"  "2"
  "D"  "3"
  "E"  "4"
  "F"  "5"
  "G"  "6"
  "H"  "7"
  "I"  "8"
  "J"  "9"
  "K"  "10"
  "L"  "N�o sei"
  "M"  "N�o cursei"
/Q148
  "A"  "Sim"
  "B"  "N�o"
/Q149
  "A"  "Sim"
  "B"  "N�o"
/Q150
  "A"  "Sim"
  "B"  "N�o"
/Q151
  "A"  "Sim"
  "B"  "N�o"
/Q152
  "A"  "Sim"
  "B"  "N�o"
/Q153
  "A"  "Sim"
  "B"  "N�o"
/Q154
  "A"  "Sim"
  "B"  "N�o"
/Q155
  "A"  "Sim"
  "B"  "N�o"
/Q156
  "A"  "Sim"
  "B"  "N�o"
/Q157
  "A"  "Sim"
  "B"  "N�o"
/Q158
  "A"  "Sim"
  "B"  "N�o"
/Q159
  "A"  "Sim"
  "B"  "N�o"
/Q160
  "A"  "Sim"
  "B"  "N�o"
/Q161
  "A"  "Sim"
  "B"  "N�o"
/Q162
  "A"  "Sim"
  "B"  "N�o"
/Q163
  "A"  "Sim"
  "B"  "N�o"
/Q164
  "A"  "Sim"
  "B"  "N�o"
/Q165
  "A"  "Sim"
  "B"  "N�o"
/Q166
  "A"  "Sim"
  "B"  "N�o"
/Q167
  "A"  "Sim"
  "B"  "N�o"
/Q168
  "A"  "Sim"
  "B"  "N�o"
/Q169
  "A"  "Sim"
  "B"  "N�o"
/Q170
  "A"  "Sim"
  "B"  "N�o"
/Q171
  "A"  "Sim"
  "B"  "N�o"
/Q172
  "A"  "Sim"
  "B"  "N�o"
/Q173
  "A"  "Sim"
  "B"  "N�o"
/Q174
  "A"  "Sim"
  "B"  "N�o"
/Q175
  "A"  "Sim"
  "B"  "N�o"
/Q176
  "A"  "Sim"
  "B"  "N�o"
/Q177
  "A"  "Sim"
  "B"  "N�o"
/Q178
  "A"  "Sim"
  "B"  "N�o"
/Q179
  "A"  "Sim"
  "B"  "N�o"
/Q180
  "A"  "Sim"
  "B"  "N�o"
/Q181
  "A"  "Sim"
  "B"  "N�o"
/Q182
  "A"  "Sim"
  "B"  "N�o"
/Q183
  "A"  "Sim"
  "B"  "N�o"
/Q184
  "A"  "Sim"
  "B"  "N�o"
/Q185
  "A"  "Sim"
  "B"  "N�o"
/Q186
  "A"  "Sim"
  "B"  "N�o"
/Q187
  "A"  "Sim"
  "B"  "N�o"
/Q188
  "A"  "Sim"
  "B"  "N�o"
/Q189
  "A"  "Sim"
  "B"  "N�o"
/Q190
  "A"  "Sim"
  "B"  "N�o"
/Q191
  "A"  "Sim"
  "B"  "N�o"
/Q192
  "A"  "Sim"
  "B"  "N�o"
/Q193
  "A"  "Sim"
  "B"  "N�o"
/Q194
  "A"  "Sim"
  "B"  "N�o"
/Q195
  "A"  "Sim"
  "B"  "N�o"
/Q196
  "A"  "Sim"
  "B"  "N�o"
/Q197
  "A"  "Sim"
  "B"  "N�o"
/Q198
  "A"  "Sim"
  "B"  "N�o"
/Q199
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q200
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q201
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q202
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q203
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q204
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q205
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q206
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q207
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q208
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q209
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q210
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q211
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q212
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q213
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q214
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "N�o me interesso"
/Q215
  "A"  "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
  "B"  "Forma��o b�sica necess�ria para obter um emprego melhor"
  "C"  "Condi��es de melhorar minha posi��o no emprego atual"
  "D"  "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
  "E"  "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
  "F"  "Atender � expectativa de meus pais sobre meus estudos"
  "G"  "Forma��o humana e cidad� para ser uma pessoa melhor e mais respeitosa das diferen�as"
/Q216
  "A"  "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
  "B"  "Forma��o b�sica necess�ria para obter um emprego melhor"
  "C"  "Condi��es de melhorar minha posi��o no emprego atual"
  "D"  "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
  "E"  "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
  "F"  "Atender � expectativa de meus pais sobre meus estudos"
  "G"  "Forma��o humana e cidad� para ser uma pessoa melhor e mais respeitosa das diferen�as"
/Q217
  "A"  "Obten��o de um certificado de conclus�o de curso / obten��o de um diploma"
  "B"  "Forma��o b�sica necess�ria para obter um emprego melhor"
  "C"  "Condi��es de melhorar minha posi��o no emprego atual"
  "D"  "Obten��o de cultura geral / amplia��o de minha forma��o pessoal"
  "E"  "Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade"
  "F"  "Atender � expectativa de meus pais sobre meus estudos"
  "G"  "Forma��o humana e cidad� para ser uma pessoa melhor e mais respeitosa das diferen�as"
/Q218
  "A"  "J� conclui o ensino m�dio"
  "B"  "Prestar vestibular e continuar os estudos no ensino superior"
  "C"  "Procurar um emprego"
  "D"  "Prestar vestibular e continuar a trabalhar"
  "E"  "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho"
  "F"  "Trabalhar por conta pr�pria / trabalhar em neg�cio da fam�lia"
  "G"  "Trabalhar em atividade ligada � comunidade ind�gena"
  "H"  "Trabalhar em atividade ligada � comunidade quilombola"
  "I"  "Ainda n�o decidiu"
/Q219
  "A"  "Gostaria de ter um diploma universit�rio para conseguir um bom emprego"
  "B"  "Gostaria de prestar um concurso e trabalhar no setor p�blico"
  "C"  "Gostaria de ganhar dinheiro em meu pr�prio neg�cio"
  "D"  "Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade ind�gena"
  "E"  "Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade quilombola"
  "F"  "N�o planejei"
/Q220
  "A"  "Ainda n�o escolhi"
  "B"  "Profiss�o ligada �s Engenharias / Ci�ncias Tecnol�gicas / Matem�ticas"
  "C"  "Profiss�o ligada �s Ci�ncias Humanas"
  "D"  "Profiss�o ligada �s Artes"
  "E"  "Profiss�o ligadas �s Ci�ncias Biol�gicas e de Sa�de"
  "F"  "Professor(a) de Ensino Fundamental, M�dio ou Superior"
  "G"  "N�o vou seguir nenhuma profiss�o"
/Q221
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "N�o ajudou"
/Q222
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "N�o ajudou"
/Q223
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "N�o ajudou"
/Q224
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "N�o ajudou"
/Q225
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "N�o ajudou"
/Q226
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "N�o ajudou"
/Q227
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "N�o ajudou"
/Q228
  "A"  "Sim, estou estudando no momento atual"
  "B"  "Sim, mas n�o estou estudando no momento atual"
  "C"  "N�o"
/Q229
  "A"  "Sim "
  "B"  "N�o"
/Q230
  "A"  "Sim "
  "B"  "N�o"
/Q231
  "A"  "Sim "
  "B"  "N�o"
/Q232
  "A"  "Sim "
  "B"  "N�o"
/Q233
  "A"  "Sim "
  "B"  "N�o"
/Q234
  "A"  "Sim "
  "B"  "N�o"
/Q235
  "A"  "Sim "
  "B"  "N�o"
/Q236
  "A"  "Sim "
  "B"  "N�o"
/Q237
  "A"  "Sim "
  "B"  "N�o"
/Q238
  "A"  "Sim "
  "B"  "N�o"
/Q239
  "A"  "Sim "
  "B"  "N�o"
/Q240
  "A"  "Sim "
  "B"  "N�o"
/Q241
  "A"  "Frequenta curso presencial em escola p�blica"
  "B"  "Frequenta curso presencial em escola particular"
  "C"  "Frequenta curso presencial na empresa em que trabalha"
  "D"  "Frequenta tele-sala"
  "E"  "Frequenta curso promovido por institui��o religiosa ou filantr�pica"
  "F"  "Faz curso a dist�ncia (via r�dio,  televis�o, internet, correio, com apostilas)"
  "G"  "N�o frequenta"
/Q242
  "A"  "Diurno"
  "B"  "Noturno"
  "C"  "A dist�ncia"
  "D"  "N�o curso"
/Q243
  "A"  "Sim"
  "B"  "N�o"
/Q244
  "A"  "Sim"
  "B"  "N�o"
/Q245
  "A"  "Sim"
  "B"  "N�o"
/Q246
  "A"  "Sim"
  "B"  "N�o"
/Q247
  "A"  "Sim"
  "B"  "N�o"
/Q248
  "A"  "Sim"
  "B"  "N�o"
/Q249
  "A"  "Sim"
  "B"  "N�o"
/Q250
  "A"  "Sim"
  "B"  "N�o"
/Q251
  "A"  "Sim"
  "B"  "N�o"
/Q252
  "A"  "Sim"
  "B"  "N�o"
/Q253
  "A"  "1� s�rie do Ensino Fundamental"
  "B"  "2� s�rie do Ensino Fundamental"
  "C"  "3� s�rie do Ensino Fundamental"
  "D"  "4� s�rie do Ensino Fundamental"
  "E"  "5� s�rie do Ensino Fundamental"
  "F"  "6� s�rie do Ensino Fundamental"
  "G"  "7� s�rie do Ensino Fundamental"
  "H"  "8� s�rie do Ensino Fundamental"
  "I"  "1� s�rie do Ensino M�dio"
  "J"  "2� s�rie do Ensino M�dio"
  "L"  "3� s�rie do Ensino M�dio"
  "M"  "N�o frequentou"
/Q254
  "A"  "N�o cursou/n�o frequentou"
  "B"  "1 ano"
  "C"  "2 ano"
  "D"  "Mais de 2 anos"
/Q255
  "A"  "N�o cursou/n�o frequentou"
  "B"  "3 ano"
  "C"  "4 ano"
  "D"  "Mais de 2 anos"
/Q256
  "A"  "N�o cursou/n�o frequentou"
  "B"  "5 ano"
  "C"  "6 ano"
  "D"  "Mais de 2 anos"
/Q257
  "A"  "Escola da Prefeitura (Municipal)"
  "B"  "Escola estadual ou federal"
  "C"  "Escola particular"
  "D"  "Escola de igreja ou institui��o filantr�pica"
  "E"  "N�o cursou"
/Q258
  "A"  "Escola da Prefeitura (Municipal)"
  "B"  "Escola estadual ou federal"
  "C"  "Escola particular"
  "D"  "Escola de igreja ou institui��o filantr�pica"
  "E"  "N�o cursou"
/Q259
  "A"  "Escola da Prefeitura (Municipal)"
  "B"  "Escola estadual ou federal"
  "C"  "Escola particular"
  "D"  "Escola de igreja ou institui��o filantr�pica"
  "E"  "N�o cursou"
/Q260
  "A"  "Menos de 10 anos"
  "B"  "Entre 10 e 14 anos (inclusive)"
  "C"  "Entre 15 e 18 anos (inclusive)"
  "D"  "Entre 19 e 24 anos (inclusive)"
  "E"  "Entre 25 e 30 anos (inclusive)"
  "F"  "Mais de 30 anos"
  "G"  "Nunca frequentei"
/Q261
  "A"  "Sim"
  "B"  "N�o"
/Q262
  "A"  "Sim"
  "B"  "N�o"
/Q263
  "A"  "Sim"
  "B"  "N�o"
/Q264
  "A"  "Sim"
  "B"  "N�o"
/Q265
  "A"  "Sim"
  "B"  "N�o"
/Q266
  "A"  "Sim"
  "B"  "N�o"
/Q267
  "A"  "Sim"
  "B"  "N�o"
/Q268
  "A"  "Sim"
  "B"  "N�o"
/Q269
  "A"  "Sim"
  "B"  "N�o"
/Q270
  "A"  "Sim"
  "B"  "N�o"
/Q271
  "A"  "Sim"
  "B"  "N�o"
/Q272
  "A"  "Sim"
  "B"  "N�o"
/Q273
  "A"  "Sim"
  "B"  "N�o"
/Q274
  "A"  "Sim"
  "B"  "N�o"
/Q275
  "A"  "Sim"
  "B"  "N�o"
/Q276
  "A"  "Sim"
  "B"  "N�o"
/Q277
  "A"  "Sim"
  "B"  "N�o"
/Q278
  "A"  "Sim"
  "B"  "N�o"
/Q279
  "A"  "Sim"
  "B"  "N�o"
/Q280
  "A"  "Sim"
  "B"  "N�o"
/Q281
  "A"  "Sim"
  "B"  "N�o"
/Q282
  "A"  "Sim"
  "B"  "N�o"
/Q283
  "A"  "Sim"
  "B"  "N�o"
/Q284
  "A"  "Sim"
  "B"  "N�o"
/Q285
  "A"  "Sim"
  "B"  "N�o"
/Q286
  "A"  "Sim"
  "B"  "N�o"
/Q287
  "A"  "Sim"
  "B"  "N�o"
/Q288
  "A"  "Sim"
  "B"  "N�o"
/Q289
  "A"  "Sim"
  "B"  "N�o"
/Q290
  "A"  "Sim"
  "B"  "N�o"
/Q291
  "A"  "Sim"
  "B"  "N�o"
/Q292
  "A"  "Sim"
  "B"  "N�o"
/Q293
  "A"  "Sim"
  "B"  "N�o"
.