/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2003.csv no diretório C:\ do computador.	                  */
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
NU_INSCRICAO "Número de inscrição no ENEM."
NU_ANO	"Ano do Enem"
TP_FAIXA_ETARIA	"Faixa etária do inscrito"
TP_SEXO	"Sexo do inscrito"
CO_MUNICIPIO_RESIDENCIA   " Código do Município em que o inscrito mora:"
NO_MUNICIPIO_RESIDENCIA   " Nome do município em que o inscrito mora"
CO_UF_RESIDENCIA   " Código da Unidade da Federação da residencia do inscrito"
SG_UF_RESIDENCIA   " Sigla da Unidade da Federação da residencia do inscrito"
TP_ST_CONCLUSAO   " Situação de conclusão do Ensino Médio"
CO_MUNICIPIO_ESC   " Código do Município da escola em que estudou:"
NO_MUNICIPIO_ESC   " Nome do município da escola"
CO_UF_ESC   " Código da Unidade da Federação da escola"
SG_UF_ESC   " Sigla da UF da escola"
TP_DEPENDENCIA_ADM_ESC   " Dependência administrativa"
TP_LOCALIZACAO_ESC   " Localização/Zona da escola"
TP_SIT_FUNC_ESC   " Condição de funcionamento"
TP_PRESENCA   " Presença a prova objetiva"
CO_PROVA   " Tipo de prova"
VL_PERC_COMP1   " Nota da competência 1"
VL_PERC_COMP2   " Nota da competência 2"
VL_PERC_COMP3   " Nota da competência 3"
VL_PERC_COMP4   " Nota da competência 4"
VL_PERC_COMP5   " Nota da competência 5"
NU_NOTA_OBJETIVA   " Nota da prova objetiva"
TX_RESPOSTAS_OBJETIVA   " Vetor com as respostas da parte objetiva da prova"
TX_GABARITO_OBJETIVA   " Vetor com o gabarito da parte objetiva da prova"
TP_STATUS_REDACAO   " Presença à redação"
NU_NOTA_COMP1   " Nota da competência 1"
NU_NOTA_COMP2   " Nota da competência 2"
NU_NOTA_COMP3   " Nota da competência 3"
NU_NOTA_COMP4   " Nota da competência 4"
NU_NOTA_COMP5   " Nota da competência 5"
NU_NOTA_REDACAO   " Nota da prova de redação"
IN_QSE   " Resposta ao Questionário Socioeconômico"
Q1 "Sexo"
Q2 "Ano em que nasceu"
Q3 "Como se considera"
Q4 "Qual o estado civil"
Q5 "Onde e como mora atualmente"
Q6 "Mora sozinho(a)"
Q7 "Mora com o pai"
Q8 "Mora com a mãe"
Q9 "Mora com esposa / marido / companheiro(a)"
Q10 "Mora com filho(s)"
Q11 "Mora com irmão(s)"
Q12 "Mora com outro(s) parente(s)"
Q13 "Mora com amigo(s) ou colega(s)"
Q14 "Quantidade de pessoas que moram na casa"
Q15 "Quantos filhos tem"
Q16 "Até quando o pai estudou"
Q17 "Até quando a mãe estudou"
Q18 "Área que o pai trabalha ou trabalhou, na maior parte da vida"
Q19 "Qual a posição do pai neste trabalho, na maior parte do tempo"
Q20 "Área que a mãe trabalha ou trabalhou, na maior parte da vida"
Q21 "Qual a posição da mãe neste trabalho, na maior parte do tempo"
Q22 "Renda familiar (somando a do respondente e com a das pessoas que moram com ele)"
Q23 "Tem TV e quantas"
Q24 "Tem Videocassete e/ou DVD e quantos"
Q25 "Tem Rádio e quantos"
Q26 "Tem Microcomputador e quantos"
Q27 "Tem Automóvel e quantos"
Q28 "Tem Máquina de lavar roupa e quantos"
Q29 "Tem Geladeira e quantas"
Q30 "Tem Telefone fixo e quantos"
Q31 "Tem Telefone celular e quantos"
Q32 "Tem Acesso à Internet e quantos"
Q33 "Tem TV por assinatura e quantas"
Q34 "Tem casa própria"
Q35 "Se a casa é em rua calçada ou asfaltada"
Q36 "Se a casa tem água corrente de torneira"
Q37 "Se a casa tem eletricidade"
Q38 "Motivo para fazer o Enem"
Q39 "O motivo mais importante para se ter um trabalho"
Q40 "Trabalha, ou já trabalhou, ganhando algum salário ou rendimento"
Q41 "Trabalhou ou teve alguma atividade remunerada durante o ensino médio (2º grau)"
Q42 "Quantas horas trabalhava, durante o ensino médio (2º grau)"
Q43 "Com que finalidade trabalhava"
Q44 "Com que idade começou a exercer atividade remunerada"
Q45 "Se estiver trabalhando atualmente, qual a renda ou salário mensal"
Q46 "Trabalha em alguma atividade para o qual se preparou"
Q47 "Em que trabalha atualmente"
Q48 "Qual a posição no trabalho"
Q49 "Quanto tempo está trabalhando na atividade"
Q50 "Os conhecimentos no ensino médio foram adequados ao que o mercado de trabalho solicita"
Q51 "Os conhecimentos no ensino médio tiveram relação com a profissão que escolheu / que exerce"
Q52 "Os conhecimentos no ensino médio foram bem desenvolvidos, com aulas práticas, laboratórios, etc"
Q53 "Os conhecimentos no ensino médio proporcionaram cultura e conhecimento"
Q54 "Avaliação de ter estudado e trabalhado, simultaneamente, durante o ensino médio"
Q55 "A escola que freqüenta ou freqüentou durante o ensino médio levou em conta que trabalhava ao mesmo tempo que estudava"
Q56 "Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o horário flexível"
Q57 "Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse"
Q58 "Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recuperação de notas"
Q59 "Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas"
Q60 "Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais dinâmicas, com didática diferenciada"
Q61 "Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revisão da matéria aos  interessados"
Q62 "Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refeição aos alunos"
Q63 "A escola deve oferecer horário flexível para o aluno que trabalha"
Q64 "A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha"
Q65 "A escola deve oferecer programa de recuperação de notas para o aluno que trabalha"
Q66 "A escola deve oferecer abono de faltas para o aluno que trabalha"
Q67 "A escola deve oferecer aulas mais dinâmicas, com didática diferenciada para o aluno que trabalha"
Q68 "A escola deve oferecer aulas de revisão da matéria  aos alunos que interessados que trabalham"
Q69 "A escola deve oferecer fornecimento de refeição para o aluno que trabalha"
Q70 "Anos que levou para concluir o ensino fundamental (1º grau)"
Q71 "Em que tipo de escola cursou o ensino fundamental (1ª grau)"
Q72 "Em que ano concluiu ou concluirá o ensino médio (2º grau)"
Q73 "Quantos anos levou para cursas o ensino médio (2º grau)"
Q74 "Em que turno cursou ou esta cursando o ensino médio (2º grau)"
Q75 "Em que  tipo escola cursou ou está cursando o ensino médio (2º grau)"
Q76 "Em que modalidade de ensino concluiu ou vai concluir o ensino médio (2º grau)"
Q77 "Fez curso de língua estrangeira fora da escola durante o ensino médio (2º grau)"
Q78 "Fez curso de computação ou informática fora da escola durante o ensino médio (2º grau)"
Q79 "Fez curso preparatório para o vestibular (cursinho) fora da escola durante o ensino médio (2º grau)"
Q80 "Fez artes plásticas ou atividades artísticas em geral fora da escola durante o ensino médio (2º grau)"
Q81 "Fez esportes, atividades físicas fora da escola durante o ensino médio (2º grau)"
Q82 "Com que freqüência lê jornais"
Q83 "Com que freqüência lê revistas de informação geral (Veja, Isto é, Época, etc)"
Q84 "Com que freqüência lê revistas de humor / quadrinhos"
Q85 "Com que freqüência lê revistas de divulgação científica (Ciência Hoje, Galileu, etc)"
Q86 "Com que freqüência lê romances, livros de ficção"
Q87 "Avaliação da escola que fez o ensino médio quanto o conhecimento que os(as) professores(as) têm das matérias e a maneira de transmiti-lo"
Q88 "Avaliação da escola que fez o ensino médio quanto a dedicação dos professores para preparar aulas e atender aos alunos"
Q89 "Avaliação da escola que fez o ensino médio quanto as iniciativas da escola para realizar excursões, estudos do meio"
Q90 "Avaliação da escola que fez o ensino médio quanto a biblioteca  da escola"
Q91 "Avaliação da escola que fez o ensino médio quanto as condições das salas de aula"
Q92 "Avaliação da escola que fez o ensino médio quanto as condições dos laboratórios"
Q93 "Avaliação da escola que fez o ensino médio quanto o acesso a computadores e outros recursos de informática"
Q94 "Avaliação da escola que fez o ensino médio quanto o ensino de língua estrangeira"
Q95 "Avaliação da escola que fez o ensino médio quanto o interesse dos alunos"
Q96 "Avaliação da escola que fez o ensino médio quanto o trabalho de grupo"
Q97 "Avaliação da escola que fez o ensino médio quanto a práticas de esportes"
Q98 "Avaliação da escola que fez o ensino médio quanto a atenção e o respeito dos funcionários"
Q99 "Avaliação da escola que fez o ensino médio quanto a direção dela"
Q100 "Avaliação da escola que fez o ensino médio quanto a organização dos horários de aulas"
Q101 "Avaliação da escola que fez o ensino médio quanto a localização dela"
Q102 "Avaliação da escola que fez o ensino médio quanto a segurança (iluminação, policiamento, etc)"
Q103 "A escola em que estuda ou estudou realiza palestras / debates"
Q104 "A escola em que estuda ou estudou realiza jogos / esportes / campeonatos"
Q105 "A escola em que estuda ou estudou realiza teatro"
Q106 "A escola em que estuda ou estudou realiza coral"
Q107 "A escola em que estuda ou estudou realiza dança / música"
Q108 "A escola em que estuda ou estudou realiza estudos do meio / passeios"
Q109 "A escola em que estuda ou estudou realiza feira de ciências / feira cultural"
Q110 "A escola em que estuda ou estudou realiza festas / gincanas"
Q111 "De acordo com os ensinamentos no ensino médio, como considera o preparo para conseguir um emprego, exercer alguma atividade"
Q112 "Os(as) professores(as) têm autoridade, firmeza"
Q113 "Os(as) professores(as) são distantes, têm pouco envolvimento"
Q114 "Os(as) professores(as) têm respeito"
Q115 "Os(as) professores(as) são indiferentes, ignoram sua existência"
Q116 "Os(as) professores(as) são preocupados(as) e dedicados(as)"
Q117 "Os(as) professores(as) são autoritários(as), rígidos(as), abusam do poder"
Q118 "Avaliação sobre a escola quanto a liberdade de expressar a idéias"
Q119 "Avaliação sobre a escola quanto o respeito aos alunos"
Q120 "Avaliação sobre a escola quanto a amizade e respeito entre alunos(as) e funcionários(as)"
Q121 "Avaliação sobre a escola quanto a levar em conta suas opiniões"
Q122 "Avaliação sobre a escola quanto a discussão dos problemas da atualidade nas aulas"
Q123 "Avaliação sobre a escola quanto a convivência entre alunos"
Q124 "Avaliação sobre a escola quanto a organização para apoiar a resolução de problemas de relacionamento entre alunos"
Q125 "Avaliação sobre a escola quanto a iniciativa para apoiar a resolução de problemas de relacionamento entre alunos e professores"
Q126 "Avaliação sobre a escola quanto a levar em conta seus problemas pessoais e familiares"
Q127 "Avaliação sobre a escola quanto a realização de Programas e Palestras contra drogas"
Q128 "Avaliação sobre a escola quanto a capacidade relacionar os conteúdos das matérias com o cotidiano"
Q129 "Avaliação sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu"
Q130 "Nota para a formação que obteve no ensino médio"
Q131 "O que o candidato acha que mais faz falta em sua formação pessoal para enfrentar a vida"
Q132 "Religião do candidato"
Q133 "Frequência que vai à Igreja"
Q134 "Pessoas com quem o candidato mais passa seu tempo livre ,depois da escola ou do trabalho,nos fins de semana?"
Q135 "O que o candidato faz com maior freqüência no tempo livre, depois da escola, do trabalho ou nos finais de semana?"
Q136 "Participa de um Grêmio estudantil"
Q137 "Participa de um Sindicato ou Associação Profissional"
Q138 "Participa de um Grupo de bairro ou associação comunitária"
Q139 "Participa de uma Igreja ou grupo religioso"
Q140 "Participa de um partido político"
Q141 "Participa de uma Ong ou movimento social"
Q142 "Participa de um clube recreativo ou associação esportiva"
Q143 "O quanto você se interessa pela política nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da República, etc"
Q144 "O quanto você se interessa pela política dos outros países"
Q145 "O quanto você se interessa pela economia nacional, a questão da inflação,  o plano real"
Q146 "O quanto você se interessa a política da sua cidade, o prefeito, os vereadores"
Q147 "O quanto você se interessa por esportes"
Q148 "O quanto você se interessa pelas questões sobre o meio ambiente, poluição, etc"
Q149 "O quanto você se interessa pelas questões sociais como a desigualdade, a pobreza, o desemprego, a miséria"
Q150 "O quanto você se interessa pelas questões sobre artes, teatro, cinema"
Q151 "O quanto você se interessa sobre a questão das drogas e suas conseqüências"
Q152 "O quanto você se interessa sobre assuntos sobre seu ídolo (cantor/a, artista, ou conjunto musical)"
Q153 "Qual dos pontos te preocupa em 1º lugar no momento"
Q154 "Qual dos pontos te preocupa em 2º lugar no momento"
Q155 "É a mais importante contribuição que obteve ao realizar o ensino médio(2º grau)"
Q156 "É a segunda mais importante contribuição que obteve ao realizar o ensino médio(2º grau)"
Q157 "É a terceira mais importante contribuição que obteve ao realizar o ensino médio(2º grau)"
Q158 "A principal decisão que vai tomar quando concluir o ensino médio (2º grau)"
Q159 "E a médio prazo, daqui a uns 4 ou 5 anos já planejou o que gostaria que acontecesse"
Q160 "Que profissão escolheu seguir"
Q161 "Meus pais ajudaram a tomar minha decisão sobre minha profissão"
Q162 "A escola ajudou a tomar minha decisão sobre minha profissão"
Q163 "Meus amigos ajudaram a tomar minha decisão sobre minha profissão"
Q164 "Informações gerais, revistas, jornais, TV ajudaram a tomar minha decisão sobre minha profissão"
Q165 "Meu trabalho ajudou a tomar minha decisão sobre minha profissão"
Q166 "Estímulo financeiro ajudou a tomar minha decisão sobre minha profissão"
Q167 "Facilidade de obter emprego ajudou a tomar minha decisão sobre minha profissão"
Q168 "Minha identificação com a profissão me ajudou a tomar minha decisão sobre minha profissão"
Q169 "Continuou os estudos depois de ter concluído o ensino médio (2º grau)"
Q170 "Está freqüentando um curso profissionalizante"
Q171 "Está freqüentando um curso preparatório para vestibular"
Q172 "Está freqüentando um curso superior"
Q173 "Está freqüentando um curso de língua estrangeira"
Q174 "Está freqüentando um curso de computação ou informática"
Q175 "Está freqüentando outro curso"
Q176 "Concluiu curso profissionalizante"
Q177 "Concluiu curso preparatório para vestibular, mas não ingressei no curso superior"
Q178 "Concluiu curso superior"
Q179 "Fiz curso superior mas não me formei"
Q180 "Concluiu curso de língua estrangeira"
Q181 "Concluiu curso de computação ou informática"
Q182 "Concluiu outro curso"
Q183 "O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino médio"
Q184 "O curso preparatório para vestibular fez mais falta para minha vida, depois que terminei o ensino médio"
Q185 "O curso superior fez mais falta para minha vida, depois que terminei o ensino médio"
Q186 "O curso de língua estrangeira fez mais falta para minha vida, depois que terminei o ensino médio"
Q187 "O curso de computação ou informática fez mais falta para minha vida, depois que terminei o ensino médio"
Q188 "Outro curso fez mais falta para minha vida, depois que terminei o ensino médio"
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
 	1 "Já concluiu"
 	2 "Concluirá em 2003"
	3 "Concluirá após 2003"
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
 	0 "Faltou à prova"
 	1 "Presente à prova"
/CO_PROVA
	"A" "Amarela"
	"B" "Branca"
	"R" "Rosa"
	"V" "Verde"
/TP_STATUS_REDACAO
	"B" "Entregou a redação em branco"
 	"F" "Faltou à prova"
 	"N" "Redação anulada"
 	"P" "Presente à prova"
/IN_QSE
 	1 "Respondeu o questionário socioecômico"
 	0 "Não respondeu o questionário socioecômico"
/Q1
	"A" "Feminino"
	"B" "Masculino"
/Q2
	"A" "Após 1986."
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
	"E" "Indígena."
/Q4
	"A" "Solteiro(a)"
	"B" "Casado(a) / mora com um(a) companheiro(a)"
	"C" "Separado(a) / divorciado(a) / desquitado(a)"
	"D" "Viúvo(a)"
/Q5
	"A" "Em casa ou apartamento, com sua família"
	"B" "Em casa ou apartamento, sozinho(a)"
	"C" "Em quarto ou cômodo alugado, sozinho(a)"
	"D" "Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc"
	"E" "Outra situação"
/Q6
	"A" "Sim"
	"B" "Não"
/Q7
	"A" "Sim"
	"B" "Não"
/Q8
	"A" "Sim"
	"B" "Não"
/Q9
	"A" "Sim"
	"B" "Não"
/Q10
	"A" "Sim"
	"B" "Não"
/Q11
	"A" "Sim"
	"B" "Não"
/Q12
	"A" "Sim"
	"B" "Não"
/Q13
	"A" "Sim"
	"B" "Não"
/Q14
	"A" "Duas pessoas"
	"B" "Três pessoas"
	"C" "Quatro pessoas"
	"D" "Cinco pessoas"
	"E" "Seis pessoas"
	"F" "Mais de 6 pessoas"
	"G" "Moro sozinho"
/Q15
	"A" "Um filho"
	"B" "Dois filhos"
	"C" "Três filhos"
	"D" "Quatro ou mais filhos"
	"E" "Não tenho filhos"
/Q16
	"A" "Não estudou"
	"B" "Da 1ª a 4ª série do ensino fundamental (antigo primário)"
	"C" "Da 5ª a 8ª do ensino fundamental (antigo ginásio)"
	"D" "Ensino Médio (2º grau) incompleto"
	"E" "Ensino Médio (2º grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "Pós-graduação"
	"I" "Não sei"
/Q17
	"A" "Não estudou"
	"B" "Da 1ª a 4ª série do ensino fundamental (antigo primário)"
	"C" "Da 5ª a 8ª do ensino fundamental (antigo ginásio)"
	"D" "Ensino Médio (2º grau) incompleto"
	"E" "Ensino Médio (2º grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "Pós-graduação"
	"I" "Não sei"
/Q18
	"A" "Na agricultura, no campo, em fazenda ou na pesca"
	"B" "Na indústria"
	"C" "No comércio, banco, transporte ou outros serviços"
	"D" "Funcionário público do governo federal, estadual, ou do município, ou militar"
	"E" "Profissional liberal, professor ou técnico de nível superior"
	"F" "Trabalhador do setor informal (sem carteira assinada)"
	"G" "Trabalha em casa em serviços (costura, cozinha, aulas particulares, etc)"
	"H" "No lar"
	"I" "Não trabalha"
	"J" "Não sei"
/Q19
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcionário público (federal, estadual ou municipal), com funções de direção"
	"C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcionário público (federal, estadual ou municipal), sem função de direção"
	"F" "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando"
	"G" "Trabalho temporário, informal, sem carteira assinada"
	"H" "Trabalho por conta própria"
	"I" "Desempregado"
	"J" "Aposentado"
	"K" "Outra situação"
/Q20
	"A" "Na agricultura, no campo, em fazenda ou na pesca"
	"B" "Na indústria"
	"C" "No comércio, banco, transporte ou outros serviços"
	"D" "Funcionário público do governo federal, estadual, ou do município, ou militar"
	"E" "Profissional liberal, professor ou técnico de nível superior"
	"F" "Trabalhador do setor informal (sem carteira assinada)"
	"G" "Trabalha em casa em serviços (costura, cozinha, aulas particulares, etc)"
	"H" "No lar"
	"I" "Não trabalha"
	"J" "Não sei"
/Q21
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcionário público (federal, estadual ou municipal), com funções de direção"
	"C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcionário público (federal, estadual ou municipal), sem função de direção"
	"F" "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando"
	"G" "Trabalho temporário, informal, sem carteira assinada"
	"H" "Trabalho por conta própria"
	"I" "Desempregado"
	"J" "Aposentado"
	"K" "Outra situação"
/Q22
	"A" "Até 1 salário mínimo (até R$ 240,00)."
	"B" "De 1 a 2 salários mínimos (R$ 240,00 a R$ 480,00 inclusive)"
	"C" "De 2 a 5 salários mínimos (R$ 480,00 a R$ 1.200,00 inclusive)."
	"D" "De 5 a 10 salários mínimos (R$ 1.200,00 a R$ 2.400,00 inclusive)."
	"E" "De 10 a 30 salários mínimos (R$ 2.400,00 a R$ 7.200,00 inclusive)."
	"F" "De 30 a 50 salários mínimos (R$ 7.200,00 a R$ 12.000,00 inclusive)."
	"G" "Mais de 50 salários mínimos (mais de R$ 12.000,00)."
	"H" "Nenhuma renda."
/Q23
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q24
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q25
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q26
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q27
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q28
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q29
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q30
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q31
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q32
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q33
	"A" "1"
	"B" "2"
	"C" "3 ou mais"
	"D" "Não tem"
/Q34
	"A" "Sim"
	"B" "Não"
/Q35
	"A" "Sim"
	"B" "Não"
/Q36
	"A" "Sim"
	"B" "Não"
/Q37
	"A" "Sim"
	"B" "Não"
/Q38
	"A" "Para testar seus conhecimentos / capacidade de raciocínio"
	"B" "Para entrar na faculdade / conseguir pontos para o vestibular"
	"C" "Para ter um bom emprego / saber se está preparado(a) para o futuro profissional"
	"D" "Não sei"
/Q39
	"A" "Para ter mais responsabilidade"
	"B" "Independência financeira"
	"C" "Adquirir experiência"
	"D" "Crescer profissionalmente"
	"E" "Sentir-me útil"
	"F" "Para fazer amigos, conhecer pessoas"
	"G" "Não acho importante ter um trabalho"
/Q40
	"A" "Sim"
	"B" "Nunca trabalhei"
	"C" "Nunca trabalhei, mas estou procurando trabalho"
/Q41
	"A" "Sim, todo o tempo"
	"B" "Sim, menos de 1 ano"
	"C" "Sim, de 1 a 2 anos"
	"D" "Sim, de 2 a 3 anos"
	"E" "Não"
/Q42
	"A" "Sem jornada fixa, até 10 horas semanais"
	"B" "De 11 a 20 horas semanais"
	"C" "De 21 a 30 horas semanais"
	"D" "De 31 a 40 horas semanais"
	"E" "Mais de 40 horas semanais"
/Q43
	"A" "Para ajudar meus pais nas despesas com a casa, sustentar a família"
	"B" "Para ser independente (ter meu sustento, ganhar meu próprio dinheiro)"
	"C" "Para adquirir experiência"
	"D" "Para ajudar minha comunidade"
	"E" "Outra finalidade"
/Q44
	"A" "Antes dos 14 anos"
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Após 18 anos"
/Q45
	"A" "Até 1 salário mínimo (até R$ 240,00)."
	"B" "De 1 a 2 salários mínimos (R$ 240,00 a R$ 480,00 inclusive)"
	"C" "De 2 a 5 salários mínimos (R$ 480,00 a R$ 1.200,00 inclusive)."
	"D" "De 5 a 10 salários mínimos (R$ 1.200,00 a R$ 2.400,00 inclusive)."
	"E" "De 10 a 30 salários mínimos (R$ 2.400,00 a R$ 7.200,00 inclusive)."
	"F" "De 30 a 50 salários mínimos (R$ 7.200,00 a R$ 12.000,00 inclusive)."
	"G" "Mais de 50 salários mínimos (mais de R$ 12.000,00)."
	"H" "Nenhuma renda."
/Q46
	"A" "Sim"
	"B" "Não"
/Q47
	"A" "Na agricultura (campo, fazenda, pesca)."
	"B" "Na indústria."
	"C" "No comércio, banco, transporte ou outros serviços."
	"D" "Como empregado(a) em casa de família."
	"E" "Como funcionário(a) do governo federal, do estado ou do município, ou militar."
	"F" "Como profissional liberal, professor(a) ou técnico(a) de nível superior."
	"G" "No lar."
	"H" "Trabalho em casa em serviços (costura, comida, aulas particulares, etc.)."
	"I" "Não trabalha"
/Q48
	"A" "Gerente, administrador(a) ou diretor(a) de empresa privada."
	"B" "Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção."
	"C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando."
	"D" "Empregado(a) no setor privado, com carteira assinada"
	"E" "Funcionário(a) público(a) (federal, estadual ou municipal), sem função de direção."
	"F" "Trabalho temporário, informal, sem carteira assinada."
	"G" "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando."
	"H" "Trabalho por conta própria."
	"I" "Aposentado(a)"
	"J" "Outra situação."
/Q49
	"A" "Menos de 1 ano"
	"B" "Entre 1 e 2 anos"
	"C" "Entre 2 e 4 anos"
	"D" "Mais de 4 anos"
/Q50
	"A" "Sim"
	"B" "Não"
/Q51
	"A" "Sim"
	"B" "Não"
/Q52
	"A" "Sim"
	"B" "Não"
/Q53
	"A" "Sim"
	"B" "Não"
/Q54
	"A" "Atrapalhou os estudos"
	"B" "Possibilitou crescimento pessoal"
	"C" "Atrapalhou os estudos, mas possibilitou crescimento pessoal"
	"D" "Não atrapalhou os estudos"
	"E" "Não trabalho / não trabalhei"
/Q55
	"A" "Sim"
	"B" "Não"
	"C" "Não sei"
/Q56
	"A" "Sim"
	"B" "Não"
/Q57
	"A" "Sim"
	"B" "Não"
/Q58
	"A" "Sim"
	"B" "Não"
/Q59
	"A" "Sim"
	"B" "Não"
/Q60
	"A" "Sim"
	"B" "Não"
/Q61
	"A" "Sim"
	"B" "Não"
/Q62
	"A" "Sim"
	"B" "Não"
/Q63
	"A" "Sim"
	"B" "Não"
/Q64
	"A" "Sim"
	"B" "Não"
/Q65
	"A" "Sim"
	"B" "Não"
/Q66
	"A" "Sim"
	"B" "Não"
/Q67
	"A" "Sim"
	"B" "Não"
/Q68
	"A" "Sim"
	"B" "Não"
/Q69
	"A" "Sim"
	"B" "Não"
/Q70
	"A" "Menos de 8 anos "
	"B" "8 anos"
	"C" "9 anos"
	"D" "10 anos"
	"E" "11 anos"
	"F" "Mais de 11 anos"
/Q71
	"A" "Somente em escola pública"
	"B" "Parte em escola pública e parte em escola particular"
	"C" "Somente em escola particular"
/Q72
	"A" "Vou concluí-lo após 2003."
	"B" "Vou concluí-lo no segundo semestre de 2003."
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
	"A" "Somente em escola pública"
	"B" "Maior parte em escola pública"
	"C" "Somente em escola particular"
	"D" "Maior parte em escola particular"
/Q76
	"A" "Ensino regular"
	"B" "Educação para jovens e adultos (antigo supletivo)"
	"C" "Ensino técnico / ensino profissional"
/Q77
	"A" "Sim"
	"B" "Não"
/Q78
	"A" "Sim"
	"B" "Não"
/Q79
	"A" "Sim"
	"B" "Não"
/Q80
	"A" "Sim"
	"B" "Não"
/Q81
	"A" "Sim"
	"B" "Não"
/Q82
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "Às vezes"
	"C" "Nunca"
/Q83
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "Às vezes"
	"C" "Nunca"
/Q84
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "Às vezes"
	"C" "Nunca"
/Q85
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "Às vezes"
	"C" "Nunca"
/Q86
	"A" "Frequentemente (todo dia ou quase todo dia)"
	"B" "Às vezes"
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
	"B" "Não"
/Q104
	"A" "Sim"
	"B" "Não"
/Q105
	"A" "Sim"
	"B" "Não"
/Q106
	"A" "Sim"
	"B" "Não"
/Q107
	"A" "Sim"
	"B" "Não"
/Q108
	"A" "Sim"
	"B" "Não"
/Q109
	"A" "Sim"
	"B" "Não"
/Q110
	"A" "Sim"
	"B" "Não"
/Q111
	"A" "Eu me considero preparado(a) para entrar no mercado de trabalho"
	"B" "Apesar de ter freqüentado uma boa escola, eu me considero despreparado(a), pois não aprendi o suficiente para conseguir um emprego"
	"C" "Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola, que não me preparou o suficiente"
	"D" "Não sei"
/Q112
	"A" "Sim"
	"B" "Não"
/Q113
	"A" "Sim"
	"B" "Não"
/Q114
	"A" "Sim"
	"B" "Não"
/Q115
	"A" "Sim"
	"B" "Não"
/Q116
	"A" "Sim"
	"B" "Não"
/Q117
	"A" "Sim"
	"B" "Não"
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
	"L" "Não sei"
/Q131
	"A" "Autoconfiança."
	"B" "Clareza de objetivos."
	"C" "Capacidade de solução de problemas."
	"D" "Liderança."
	"E" "Saber me relacionar com pessoas, trabalhar em grupo."
	"F" "Não me falta nada."
/Q132
	"A" "Evangélica"
	"B" "Umbanda ou Candomblé."
	"C" "Espírita kardecista."
	"D" "Católica."
	"E" "Outra religião."
	"F" "Acredita em Deus, mas não tem religião."
	"G" "É ateu / não acredita em Deus."
/Q133
	"A" "Mais de uma vez por semana."
	"B" "1 vez por semana."
	"C" "1 vez por mês."
	"D" "Somente em ocasiões especiais."
	"E" "Nunca."
/Q134
	"A" "Sozinho(a)"
	"B" "Meus amigos da escola, minha turma"
	"C" "Meus amigos de fora da escola"
	"D" "Meus irmãos/minha família/marido/esposa/filhos"
	"E" "Só com o namorado(a)"
/Q135
	"A" "Assisto a programas de TV."
	"B" "Leio livros/revistas, escuto música."
	"C" "Vou ao shopping."
	"D" "Vou à igreja."
	"E" "Saio com amigos."
	"F" "Acesso à Internet."
	"G" "Nenhum desses itens."
/Q136
	"A" "Sim"
	"B" "Não"
/Q137
	"A" "Sim"
	"B" "Não"
/Q138
	"A" "Sim"
	"B" "Não"
/Q139
	"A" "Sim"
	"B" "Não"
/Q140
	"A" "Sim"
	"B" "Não"
/Q141
	"A" "Sim"
	"B" "Não"
/Q142
	"A" "Sim"
	"B" "Não"
/Q143
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q144
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q145
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q146
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q147
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q148
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q149
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q150
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q151
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q152
	"A" "Muito"
	"B" "Pouco"
	"C" "Não me interesso"
/Q153
	"A" "O meio ambiente"
	"B" "A Aids e as doenças sem cura"
	"C" "O racismo e o desrespeito às pessoas de outra raça ou religião"
	"D" "A pobreza, as favelas, os meninos de rua"
	"E" "As drogas e a violência"
	"F" "A situação econômica do país"
/Q154
	"A" "O meio ambiente"
	"B" "A Aids e as doenças sem cura"
	"C" "O racismo e o desrespeito às pessoas de outra raça ou religião"
	"D" "A pobreza, as favelas, os meninos de rua"
	"E" "As drogas e a violência"
	"F" "A situação econômica do país"
/Q155
	"A" "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
	"B" "Formação básica necessária para obter um emprego melhor"
	"C" "Condições de melhorar minha posição no emprego atual"
	"D" "Obtenção de cultura geral / ampliação de minha formação pessoal"
	"E" "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer várias pessoas"
	"G" "Atender à expectativa de meus pais sobre meus estudos"
/Q156
	"A" "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
	"B" "Formação básica necessária para obter um emprego melhor"
	"C" "Condições de melhorar minha posição no emprego atual"
	"D" "Obtenção de cultura geral / ampliação de minha formação pessoal"
	"E" "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer várias pessoas"
	"G" "Atender à expectativa de meus pais sobre meus estudos"
/Q157
	"A" "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
	"B" "Formação básica necessária para obter um emprego melhor"
	"C" "Condições de melhorar minha posição no emprego atual"
	"D" "Obtenção de cultura geral / ampliação de minha formação pessoal"
	"E" "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
	"F" "Fazer muitos amigos / conhecer várias pessoas"
	"G" "Atender à expectativa de meus pais sobre meus estudos"
/Q158
	"A" "Já conclui o ensino médio"
	"B" "Prestar vestibular e continuar os estudos no ensino superior"
	"C" "Procurar um emprego"
	"D" "Prestar vestibular e continuar a trabalhar"
	"E" "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho"
	"F" "Trabalhar por conta própria / trabalhar em negócio da família"
	"G" "Trabalhar em atividade ligada à comunidade indígena"
	"H" "Ainda não decidiu"
/Q159
	"A" "Gostaria de ter um diploma universitário para conseguir um bom emprego"
	"B" "Gostaria de prestar um concurso e trabalhar no setor público"
	"C" "Gostaria de ganhar dinheiro em meu próprio negócio"
	"D" "Gostaria de ter um emprego"
	"E" "Não planejei"
	"F" "Outro plano"
/Q160
	"A" "Ainda não escolhi"
	"B" "Profissão ligada às Engenharias / Ciências Tecnológicas"
	"C" "Profissão ligada às Ciências Humanas"
	"D" "Profissão ligada às Artes"
	"E" "Profissão ligadas às Ciências Biológicas e de Saúde"
	"F" "Professor(a) de Ensino Fundamental e Médio (1º e 2º graus)"
	"G" "Não vou seguir nenhuma profissão"
/Q161
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "Não ajudou"
/Q162
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "Não ajudou"
/Q163
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "Não ajudou"
/Q164
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "Não ajudou"
/Q165
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "Não ajudou"
/Q166
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "Não ajudou"
/Q167
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "Não ajudou"
/Q168
	"A" "Ajudou muito"
	"B" "Ajudou pouco"
	"C" "Não ajudou"
/Q169
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas não estou estudando no momento atual"
	"C" "Não"
/Q170
	"A" "Sim"
	"B" "Não"
/Q171
	"A" "Sim"
	"B" "Não"
/Q172
	"A" "Sim"
	"B" "Não"
/Q173
	"A" "Sim"
	"B" "Não"
/Q174
	"A" "Sim"
	"B" "Não"
/Q175
	"A" "Sim"
	"B" "Não"
/Q176
	"A" "Sim"
	"B" "Não"
/Q177
	"A" "Sim"
	"B" "Não"
/Q178
	"A" "Sim"
	"B" "Não"
/Q179
	"A" "Sim"
	"B" "Não"
/Q180
	"A" "Sim"
	"B" "Não"
/Q181
	"A" "Sim"
	"B" "Não"
/Q182
	"A" "Sim"
	"B" "Não"
/Q183
	"A" "Sim"
	"B" "Não"
/Q184
	"A" "Sim"
	"B" "Não"
/Q185
	"A" "Sim"
	"B" "Não"
/Q186
	"A" "Sim"
	"B" "Não"
/Q187
	"A" "Sim"
	"B" "Não"
/Q188
	"A" "Sim"
	"B" "Não"
.