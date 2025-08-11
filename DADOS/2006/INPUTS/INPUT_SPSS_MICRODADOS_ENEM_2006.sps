/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2006.csv no diretório C:\ do computador.	                  */
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
NU_INSCRICAO "Número de inscrição no ENEM."
NU_ANO	"Ano do Enem"
TP_FAIXA_ETARIA "Faixa Etária"
TP_SEXO	"Sexo do inscrito"
CO_MUNICIPIO_RESIDENCIA   " Código do Município em que o inscrito mora:"
NO_MUNICIPIO_RESIDENCIA   " Nome do município em que o inscrito mora"
CO_UF_RESIDENCIA   " Código da Unidade da Federação da residencia do inscrito"
SG_UF_RESIDENCIA   " Sigla da Unidade da Federação da residencia do inscrito"
TP_ST_CONCLUSAO   " Situação de conclusão do Ensino Médio"
TP_ENSINO   " Aluno do ensino médio ou da educação de jovens e adultos"
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
Q1   " Sexo"
Q2   " Ano em que nasceu"
Q3   " Como se considera"
Q4   " Se indicou indígena, qual(is) língua(s) você domina"
Q5   " Qual o estado civil"
Q6   " Onde e como mora atualmente"
Q7   " Mora sozinho(a)"
Q8   " Mora com o pai"
Q9   " Mora com a mãe"
Q10   " Mora com esposa / marido / companheiro(a)"
Q11   " Mora com filho(s)"
Q12   " Mora com irmão(s)"
Q13   " Mora com outro(s) parente(s)"
Q14   " Mora com amigo(s) ou colega(s)"
Q15   " Quantidade de pessoas que moram em sua casa"
Q16   " Quantos filhos tem"
Q17   " Até quando seu pai estudou"
Q18   " Até quando sua mãe estudou"
Q19   " Área que o pai trabalha ou trabalhou, na maior parte da vida"
Q20   " Qual a posição do seu pai neste trabalho, na maior parte do tempo"
Q21   " Área que sua mãe trabalha ou trabalhou, na maior parte da vida"
Q22   " Qual a posição de sua mãe neste trabalho, na maior parte do tempo"
Q23   " Renda familiar (somando a do respondente e com a das pessoas que moram com ele)"
Q24   " Tem TV e quantas"
Q25   " Tem Videocassete e/ou DVD e quantos"
Q26   " Tem Rádio e quantos"
Q27   " Tem Microcomputador e quantos"
Q28   " Tem Automóvel e quantos"
Q29   " Tem Máquina de lavar roupa e quantos"
Q30   " Tem Geladeira e quantas"
Q31   " Tem Telefone fixo e quantos"
Q32   " Tem Telefone celular e quantos"
Q33   " Tem Acesso à Internet e quantos"
Q34   " Tem TV por assinatura e quantas"
Q35   " Tem casa própria"
Q36   " Se a casa é em rua calçada ou asfaltada"
Q37   " Se a casa tem água corrente de torneira"
Q38   " Se a casa tem eletricidade"
Q39   " Se a casa é situada em comunidade indígena"
Q40   " Motivo para fazer o Enem"
Q41   " O motivo mais importante para se ter um trabalho?"
Q42   " Trabalha, ou já trabalhou, ganhando algum salário ou rendimento"
Q43   " Trabalhou ou teve alguma atividade remunerada durante o ensino médio (2º grau)"
Q44   " Quantas horas trabalhava, durante o ensino médio (2º grau)"
Q45   " Com que finalidade você trabalhava enquanto estudava o ensino médio (2º grau)"
Q46   " Com que idade você começou a exercer atividade remunerada enquanto estudava o ensino médio (2º grau)"
Q47   " Se você está trabalhando atualmente, qual a sua renda ou seu salário mensal?"
Q48   " Você está trabalha atualmente em alguma atividade para o qual se preparou"
Q49   " Em que trabalha atualmente"
Q50   " Qual a sua posição neste trabalho"
Q51   " Quanto tempo está trabalhando na atividade"
Q52   " Os conhecimentos no ensino médio foram adequados ao que o mercado de trabalho solicita"
Q53   " Os conhecimentos no ensino médio tiveram relação com a profissão que escolheu / que exerce"
Q54   " Os conhecimentos no ensino médio foram bem desenvolvidos, com aulas práticas, laboratórios, etc"
Q55   " Os conhecimentos no ensino médio proporcionaram cultura e conhecimento"
Q56   " Avaliação de ter estudado e trabalhado, simultaneamente, durante o ensino médio"
Q57   " A escola que freqüenta ou freqüentou durante o ensino médio levou em conta que trabalhava ao mesmo tempo que estudava"
Q58   " Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o horário flexível"
Q59   " Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse"
Q60   " Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recuperação de notas"
Q61   " Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas"
Q62   " Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais dinâmicas, com didática difenciada"
Q63   " Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revisão da matéria aos (às) interessados(as)"
Q64   " Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refeição aos (às) alunos(as)"
Q65   " A escola deve oferecer horário flexível para o aluno que trabalha"
Q66   " A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha"
Q67   " A escola deve oferecer programa de recuperação de notas para o aluno que trabalha"
Q68   " A escola deve oferecer abono de faltas para o aluno que trabalha"
Q69   " A escola deve oferecer aulas mais dinâmicas, com didática diferenciada para o aluno que trabalha"
Q70   " A escola deve oferecer aulas de revisão da matéria aos alunos que interessados que trabalham"
Q71   " A escola deve oferecer fornecimento de refeição para o aluno que trabalha"
Q72   " Anos que levou para concluir o ensino fundamental (1º grau)"
Q73   " Em que tipo de escola cursou o ensino fundamental (1ª grau)"
Q74   " Em que ano concluiu ou concluirá o ensino médio (2º grau)"
Q75   " Quantos anos levou para cursas o ensino médio (2º grau)"
Q76   " Em que turno cursou ou esta cursando o ensino médio"
Q77   " Em que escola cursou ou está cursando o ensino médio (2º grau)"
Q78   " Em que modalidade de ensino concluiu ou vai concluir o ensino médio (2º grau)"
Q79   " Fez curso de língua estrangeira fora da escola durante o ensino médio (2º grau)"
Q80   " Fez curso de computação ou informática fora da escola durante o ensino médio (2º grau)"
Q81   " Fez curso preparatório para o vestibular (cursinho) fora da escola durante o ensino médio (2º grau)"
Q82   " Fez artes plásticas ou atividades artísticas em geral fora da escola durante o ensino médio (2º grau)"
Q83   " Fez esportes, atividades físicas fora da escola durante o ensino médio (2º grau)"
Q84   " Fez outro curso fora da escola durante o ensino médio (2º grau)"
Q85   " Com que freqüência lê jornais"
Q86   " Com que freqüência lê revistas de informação geral (Veja, Isto é, Época, etc)"
Q87   " Com que freqüência lê revistas de humor / quadrinhos"
Q88   " Com que freqüência lê revistas de divulgação científica (Ciência Hoje, Galileu, etc)"
Q89   " Com que freqüência lê romances, livros de ficção"
Q90   " Avaliação da escola que fez o ensino médio quanto o conhecimento que os(as) professores(as) têm das matérias e a maneira de transmiti-lo"
Q91   " Avaliação da escola que fez o ensino médio quanto a dedicação dos(as) professores(as) para preparar aulas e atender aos alunos"
Q92   " Avaliação da escola que fez o ensino médio quanto as iniciativas da escola para realizar excursões, estudos do meio ambiente"
Q93   " Avaliação da escola que fez o ensino médio quanto a biblioteca"
Q94   " Avaliação da escola que fez o ensino médio quanto as condições das salas de aula"
Q95   " Avaliação da escola que fez o ensino médio quanto as condições dos laboratórios"
Q96   " Avaliação da escola que fez o ensino médio quanto o acesso a computadores e outros recursos de informática"
Q97   " Avaliação da escola que fez o ensino médio quanto o ensino de língua estrangeira"
Q98   " Avaliação da escola que fez o ensino médio quanto o interesse dos(as) alunos(as)"
Q99   " Avaliação da escola que fez o ensino médio quanto o trabalho de grupo"
Q100   " Avaliação da escola que fez o ensino médio quanto a práticas de esportes"
Q101   " Avaliação da escola que fez o ensino médio quanto a atenção e o respeito dos(as) funcionários(as)"
Q102   " Avaliação da escola que fez o ensino médio quanto a direção dela"
Q103   " Avaliação da escola que fez o ensino médio quanto a organização dos horários de aulas"
Q104   " Avaliação da escola que fez o ensino médio quanto a localização dela"
Q105   " Avaliação da escola que fez o ensino médio quanto a segurança (iluminação, policiamento, etc)"
Q106   " Avaliação da escola que fez o ensino médio quanto a atenção à identificação étnica dos(as) alunos(as)"
Q107   " A escola em que estuda ou estudou realiza palestras / debates"
Q108   " A escola em que estuda ou estudou realiza jogos / esportes / campeonatos"
Q109   " A escola em que estuda ou estudou realiza teatro"
Q110   " A escola em que estuda ou estudou realiza coral"
Q111   " A escola em que estuda ou estudou realiza dança / música"
Q112   " A escola em que estuda ou estudou realiza estudos do meio ambiente / passeios"
Q113   " A escola em que estuda ou estudou realiza feira de ciências / feira cultural"
Q114   " A escola em que estuda ou estudou realiza festas / gincanas"
Q115   " De acordo com os ensinamentos no ensino médio, como considera o preparo para conseguir um emprego, exercer alguma atividade"
Q116   " Os(as) professores(as) têm autoridade, firmeza"
Q117   " Os(as) professores(as) são distantes, têm pouco envolvimento"
Q118   " Os(as) professores(as) têm respeito"
Q119   " Os(as) professores(as) são indiferentes, ignoram sua existência"
Q120   " Os(as) professores(as) são preocupados(as) e dedicados(as)"
Q121   " Os(as) professores(as) são autoritários(as), rígidos(as), abusam do poder"
Q122   " Os(as) professores(as) valorizam a identidade étnica dos(as) alunos(as)"
Q123   " Avaliação sobre a escola quanto a liberdade de expressar a idéias"
Q124   " Avaliação sobre a escola quanto o respeito aos alunos e alunas"
Q125   " Avaliação sobre a escola quanto a amizade e respeito entre alunos(as) e funcionários(as)"
Q126   " Avaliação sobre a escola quanto a levar em conta suas opiniões"
Q127   " Avaliação sobre a escola quanto a discussão dos problemas da atualidade nas aulas"
Q128   " Avaliação sobre a escola quanto a convivência entre alunos(as)"
Q129   " Avaliação sobre a escola quanto a organização para apoiar a resolução de problemas de relacionamento entre alunos(as)"
Q130   " Avaliação sobre a escola quanto a iniciativa para apoiar a resolução de problemas de relacionamento entre alunos(as) e professores(as)"
Q131   " Avaliação sobre a escola quanto a levar em conta seus problemas pessoais e familiares"
Q132   " Avaliação sobre a escola quanto a realização de Programas e Palestras contra drogas"
Q133   " Avaliação sobre a escola quanto a capacidade relacionar os conteúdos das matérias com o cotidiano"
Q134   " Avaliação sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu"
Q135   " Avaliação sobre a escola quanto o reconhecimento e valorização da identidade étnica dos(as) alunos(as)"
Q136   " Nota para a formação que obteve no ensino médio"
Q137   " Considera-se racista"
Q138   " Parentes racistas"
Q139   " Amigos(as) racistas"
Q140   " Colegas de escola e/ou de trabalho racistas"
Q141   " Vizinhos e/ou conhecidos em geral racistas"
Q142   " Já sofreu discriminação econômica"
Q143   " Já sofreu discriminação étnica, racial ou de cor"
Q144   " Já sofreu discriminação de gênero (ou por ser mulher ou por ser homem)"
Q145   " Já sofreu discriminação por ser (ou parecer ser) homossexuais"
Q146   " Já sofreu discriminação religiosa"
Q147   " Já sofreu discriminação por causa do local de origem"
Q148   " Já sofreu discriminação por causa da idade"
Q149   " Já sofreu discriminação por ser portador de necessidades especiais"
Q150   " Já sofreu discriminação por outro(s) motivo(s)"
Q151   " Já presenciou discriminação econômica"
Q152   " Já presenciou discriminação étnica, racial ou de cor"
Q153   " Já presenciou discriminação de gênero (ou por ser mulher ou por ser homem)"
Q154   " Já presenciou discriminação contra homossexuais"
Q155   " Já presenciou discriminação religiosa"
Q156   " Já presenciou discriminação por causa do local de origem"
Q157   " Já presenciou discriminação por causa da idade"
Q158   " Já presenciou discriminação por ser portador de necessidades especiais"
Q159   " Já presenciou discriminação por outro(s) motivo(s)"
Q160   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra classe social"
Q161   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra cor ou etnia"
Q162   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra religião"
Q163   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa com posições político-ideológicas diferentes"
Q164   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra origem geográfica"
Q165   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa homossexual"
Q166   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa muito mais nova ou mais velha"
Q167   " Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa com necessidades especiais"
Q168   " Participa de um Grêmio estudantil"
Q169   " Participa de um Sindicato ou Associação Profissional"
Q170   " Participa de um Grupo de bairro ou associação comunitária"
Q171   " Participa de uma Igreja ou grupo religioso"
Q172   " Participa de um partido político"
Q173   " Participa de uma Ong ou movimento social"
Q174   " Participa de um clube recreativo ou associação esportiva"
Q175   " O quanto você se interessa pela política nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da República, etc"
Q176   " O quanto você se interessa pela política dos outros países"
Q177   " O quanto você se interessa pela economia nacional, a questão da inflação"
Q178   " O quanto você se interessa a política da sua cidade, o prefeito, os vereadores"
Q179   " O quanto você se interessa por esportes"
Q180   " O quanto você se interessa pelas questões sobre o meio ambiente, poluição, etc"
Q181   " O quanto você se interessa pelas questões sociais como a desigualdade, a pobreza, o desemprego, a miséria"
Q182   " O quanto você se interessa pelas questões sobre artes, teatro, cinema"
Q183   " O quanto você se interessa sobre a questão das drogas e suas conseqüências"
Q184   " O quanto você se interessa sobre assuntos sobre seu ídolo (cantor/a, artista, ou conjunto musical)"
Q185   " O quanto você se interessa sobre questões sociais como acesso aos servidores públicos de saúde e educação"
Q186   " O quanto você se interessa sobre sexualidade"
Q187   " Qual dos pontos te preocupa em 1º lugar no momento"
Q188   " Qual dos pontos te preocupa em 2º lugar no momento"
Q189   " É a mais importante contribuição que obteve ao realizar o ensino médio(2º grau)"
Q190   " É a segunda mais importante contribuição que obteve ao realizar o ensino médio(2º grau)"
Q191   " É a terceira mais importante contribuição que obteve ao realizar o ensino médio(2º grau)"
Q191   " É a terceira mais importante contribuição que obteve ao realizar o ensino médio(2º grau)"
Q192   " A principal decisão que vai tomar quando concluir o ensino médio (2º grau)"
Q193   " E a médio prazo, daqui a uns 4 ou 5 anos já planejou o que gostaria que acontecesse"
Q194   " Que profissão escolheu seguir"
Q195   " Meus pais ajudaram a tomar minha decisão sobre minha profissão"
Q196   " A escola ajudou a tomar minha decisão sobre minha profissão"
Q197   " Meus amigos ajudaram a tomar minha decisão sobre minha profissão"
Q198   " Informações gerais, revistas, jornais, TV ajudaram a tomar minha decisão sobre minha profissão"
Q199   " Meu trabalho ajudou a tomar minha decisão sobre minha profissão"
Q200   " Estímulo financeiro ajudou a tomar minha decisão sobre minha profissão"
Q201   " Facilidade de obter emprego ajudou a tomar minha decisão sobre minha profissão"
Q202   " Minha identificação com a profissão me ajudou a tomar minha decisão sobre minha profissão"
Q203   " Querer ajudar minha comunidade indígena ajudou a tomar minha decisão sobre minha profissão"
Q204   " Continuou os estudos depois de ter concluído o ensino médio (2º grau)"
Q205   " Está freqüentando um curso profissionalizante"
Q206   " Está freqüentando um curso preparatório para vestibular"
Q207   " Está freqüentando um curso superior"
Q208   " Está freqüentando um curso de língua estrangeira"
Q209   " Está freqüentando um curso de computação ou informática"
Q210   " Está freqüentando outro curso"
Q211   " Concluiu curso profissionalizante"
Q212   " Concluiu curso preparatório para vestibular, mas não ingressei no curso superior"
Q213   " Concluiu curso superior"
Q214   " Fiz curso superior mas não me formei"
Q215   " Concluiu curso de língua estrangeira"
Q216   " Concluiu curso de computação ou informática"
Q217   " Concluiu outro curso"
Q218   " O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino médio"
Q219   " O curso preparatório para vestibular fez mais falta para minha vida, depois que terminei o ensino médio"
Q220   " O curso superior fez mais falta para minha vida, depois que terminei o ensino médio"
Q221   " O curso de língua estrangeira fez mais falta para minha vida, depois que terminei o ensino médio"
Q222   " O curso de computação ou informática fez mais falta para minha vida, depois que terminei o ensino médio"
Q223   " Outro curso fez mais falta para minha vida, depois que terminei o ensino médio"
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
 	1 "Já concluiu"
 	2 "Concluirá em 2006"
	3 "Concluirá após 2006"
	4 "Não concluí e não estou cursando o Ensino Médio"
/TP_ENSINO
 	0 "Outro"
 	1 "Ensino Regular"
	2 "Educação Especial"
 	3 "Educação de Jovens e Adultos"
	4 "Educação Profissional"
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
 	1 "Amarela"
 	2 "Azul"
 	3 "Branca"
 	4 "Rosa"
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
 "A" "Após 1989"
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
 "E" "Indígena"
/Q4
 "A" "Minha língua materna é o português"
 "B" "Falo uma língua indígena e o português"
 "C" "Falo mais de uma língua indígena e o português"
 "D" "Falo uma língua indígena, o português e o espanhol"
 "E" "Falo mais de uma língua indígena, o português e o espanhol"
 "F" "Além do português, falo francês e inglês"
 "G" "Além do português, falo o creole"
/Q5
 "A" "Solteiro(a)"
 "B" "Casado(a) / mora com um(a) companheiro(a)"
 "C" "Separado(a) / divorciado(a) / desquitado(a)"
 "D" "Viúvo(a)"
/Q6
 "A" "Em casa ou apartamento, com sua família"
 "B" "Em casa ou apartamento, sozinho(a)"
 "C" "Em quarto ou cômodo alugado, sozinho(a)"
 "D" "Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc"
 "E" "Outra situação"
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
 "A" "Sim"
 "B" "Não"
/Q15
 "A" "Duas pessoas"
 "B" "Três pessoas"
 "C" "Quatro pessoas"
 "D" "Cinco pessoas"
 "E" "Seis pessoas"
 "F" "Mais de 6 pessoas"
 "G" "Moro sozinho"
/Q16
 "A" "Um filho "
 "B" "Dois filhos"
 "C" "Três filhos"
 "D" "Quatro ou mais filhos"
 "E" "Não tenho filhos"
/Q17
 "A" "Não estudou"
 "B" "Da 1ª a 4ª série do ensino fundamental (antigo primário)"
 "C" "Da 5ª a 8ª do ensino fundamental (antigo ginásio)"
 "D" "Ensino Médio (2º grau) incompleto"
 "E" " Ensino Médio (2º grau) completo"
 "F" "Ensino Superior incompleto"
 "G" "Ensino Superior completo"
 "H" "Pós-graduação"
 "I" "Não sei"
/Q18
 "A" "Não estudou"
 "B" "Da 1ª a 4ª série do ensino fundamental (antigo primário)"
 "C" "Da 5ª a 8ª do ensino fundamental (antigo ginásio)"
 "D" "Ensino Médio (2º grau) incompleto"
 "E" "Ensino Médio (2º grau) completo"
 "F" "Ensino Superior incompleto"
 "G" "Ensino Superior completo"
 "H" "Pós-graduação"
 "I" "Não sei"
/Q19
 "A" "Na agricultura, no campo, em fazenda ou na pesca"
 "B" "Na indústria"
 "C" "No comércio, banco, transporte ou outros serviços"
 "D" "Funcionário público do governo federal, estadual, ou do município, ou militar"
 "E" "Profissional liberal, professor ou técnico de nível superior"
 "F" "Trabalhador do setor informal (sem carteira assinada)"
 "G" "Trabalha em casa em serviços (costura, cozinha, aulas particulares,etc) "
 "H" "No lar"
 "I" "Não trabalha"
 "J" "Não sei"
/Q20
 "A" "Gerente, administrador ou diretor de empresa privada"
 "B" "Funcionário público (federal, estadual, ou municipal), com funções de direção"
 "C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
 "D" "Empregado no setor privado, com carteira assinada"
 "E" "Funcionário público (federal, estadual, ou municipal), sem função de direção"
 "F" "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando"
 "G" "Trabalho temporário, informal, sem carteira assinada"
 "H" "Trabalho por conta própria"
 "I" " Desempregado"
 "J" "Aposentado"
 "K" "Outra situação"
/Q21
 "A" "Na agricultura, no campo, em fazenda ou na pesca"
 "B" "Na indústria"
 "C" "No comércio, banco, transporte ou outros serviços"
 "D" "Funcionário público do governo federal, estadual, ou do município, ou militar"
 "E" "Profissional liberal, professor ou técnico de nível superior"
 "F" "Trabalhador do setor informal (sem carteira assinada)"
 "G" "Trabalha em casa em serviços (costura, cozinha, aulas particulares,etc) "
 "H" "No lar"
 "I" "Não trabalha"
 "J" "Não sei"
/Q22
 "A" "Gerente, administrador ou diretor de empresa privada"
 "B" "Funcionário público (federal, estadual, ou municipal), com funções de direção"
 "C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
 "D" "Empregado no setor privado, com carteira assinada"
 "E" "Funcionário público (federal, estadual, ou municipal), sem função de direção"
 "F" "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando"
 "G" "Trabalho temporário, informal, sem carteira assinada"
 "H" "Trabalho por conta própria"
 "I" "Desempregado"
 "J" "Aposentado"
 "K" "Outra situação"
/Q23
"A" "Até 1 salário mínimo (até R$ 300,00 inclusive)."
"B" "De 1 a 2 salários mínimos (R$ 300,00 a R$ 600,00 inclusive)"
"C" "De 2 a 5 salários mínimos (R$ 600,00 a R$ 1.500,00 inclusive)."
"D" "De 5 a 10 salários mínimos (R$ 1.500,00 a R$ 3.000,00 inclusive)."
"E" "De 10 a 30 salários mínimos (R$ 3.000,00 a R$ 9.000,00 inclusive)."
"F" "De 30 a 50 salários mínimos (R$ 9.000,00 a R$ 15.000,00 inclusive)."
"G" "Mais de 50 salários mínimos (mais de R$ 15.000,00)."
"H" "Nenhuma renda."
/Q24
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q25
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q26
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q27
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q28
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q29
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q30
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q31 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q32 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q33
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
/Q34
 "A" "1"
 "B" "2"
 "C" "3 ou mais "
 "D" "Não tem"
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
 "A" "Sim"
 "B" "Não"
/Q39
 "A" "Sim"
 "B" "Não"
/Q40
 "A" "Para testar seus conhecimentos / capacidade de raciocínio"
 "B" "Para entrar na faculdade / conseguir pontos para o vestibular"
 "C" "Para ter um bom emprego / saber se está preparado(a) para o futuro profissional"
 "D" "Não sei"
/Q41
 "A" "Para ter mais responsabilidade"
 "B" "Independência financeira "
 "C" "Adquirir experiência"
 "D" "Crescer profissionalmente "
 "E" "Sentir-me útil"
 "F" "Para fazer amigos, conhecer pessoas"
 "G" "Não acho importante ter um trabalho"
 "H" "Para ajudar minha comunidade indígena"
/Q42
 "A" "Sim"
 "B" "Nunca trabalhei"
 "C" "Nunca trabalhei, mas estou procurando trabalho"
/Q43
 "A" "Sim, todo o tempo "
 "B" "Sim, menos de 1 ano"
 "C" "Sim, de 1 a 2 anos"
 "D" "Sim, de 2 a 3 anos"
 "E" "Não"
/Q44
 "A" "Sem jornada fixa, até 10 horas semanais"
 "B" "De 11 a 20 horas semanais"
 "C" "De 21 a 30 horas semanais"
 "D" "De 31 a 40 horas semanais "
 "E" "Mais de 40 horas semanais"
/Q45
 "A" "Para ajudar meus pais nas despesas com a casa, sustentar a família"
 "B" "Para ser independente (ter meu sustento, ganhar meu próprio dinheiro)"
 "C" "Para adquirir experiência"
 "D" "Para ajudar minha comunidade "
 "E" "Outra finalidade"
/Q46
 "A" "Antes dos 14 anos "
 "B" "Entre 14 e 16 anos"
 "C" "Entre 17 e 18 anos"
 "D" "Após 18 anos"
/Q47
 "A" "Até 1 salário mínimo (até R$ 300,00 inclusive)."
"B" "De 1 a 2 salários mínimos (R$ 300,00 a R$ 600,00 inclusive)"
"C" "De 2 a 5 salários mínimos (R$ 600,00 a R$ 1.500,00 inclusive)."
"D" "De 5 a 10 salários mínimos (R$ 1.500,00 a R$ 3.000,00 inclusive)."
"E" "De 10 a 30 salários mínimos (R$ 3.000,00 a R$ 9.000,00 inclusive)."
"F" "De 30 a 50 salários mínimos (R$ 9.000,00 a R$ 15.000,00 inclusive)."
"G" "Mais de 50 salários mínimos (mais de R$ 15.000,00)."
"H" "Nenhuma renda."
/Q48
 "A" "Sim"
 "B" "Não"
/Q49
 "A" "Na agricultura, no campo, em fazenda ou na pesca"
 "B" "Na indústria"
 "C" "No comércio, banco, transporte ou outros serviços"
 "D" "Como trabalhador(a) doméstico(a)"
 "E" "Como funcionária do governo federal, do estado ou do município ou militar"
 "F" "Como profissional liberal, professor ou técnica de nível superior"
 "G" "No lar"
 "H" "Trabalho em casa em serviços (costura, cozinha, aulas particulares)"
 "I" "Não trabalha"
/Q50
 "A" "Gerente, administrador(a) ou diretor(a) de empresa privada"
 "B" "Funcionário público (federal, estadual, ou municipal), com funções de direção"
 "C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
 "D" "Empregado no setor privado, com carteira assinada"
 "E" "Funcionário público (federal, estadual, ou municipal), sem função de direção"
 "F" "Trabalho temporário, informal, sem carteira assinada"
 "G" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
 "H" "Trabalho por conta própria"
 "I" " Aposentado(a)"
 "J"  "Outra situação"
/Q51
 "A" "Menos de 1 ano "
 "B" "Entre 1 e 2 anos"
 "C" "Entre 2 e 4 anos"
 "D" "Mais de 4 anos"
/Q52
 "A" "Sim"
 "B" "Não"
/Q53
 "A" "Sim"
 "B" "Não"
/Q54
 "A" "Sim"
 "B" "Não"
/Q55
 "A" "Sim"
 "B" "Não"
/Q56
 "A" "Atrapalhou os estudos"
 "B" "Possibilitou crescimento pessoal"
 "C" "Atrapalhou os estudos, mas possibilitou crescimento pessoal"
 "D" "Não atrapalhou os estudos"
 "E" "Não trabalho / não trabalhei"
/Q57
 "A" "Sim "
 "B" "Não"
 "C" "Não sei"
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
 "A" "Sim"
 "B" "Não"
/Q71
 "A" "Sim"
 "B" "Não"
/Q72
 "A" "Menos de 8 anos"
 "B" "8 anos"
 "C" "9  anos"
 "D" "10  anos"
 "E" "11  anos"
 "F" "Mais de 11 anos"
/Q73
 "A" "Somente em escola pública"
 "B" "Parte em escola pública e parte em escola particular"
 "C" "Somente em escola particular "
 "D" "Somente em escola indígena"
 "E" "Parte na escola indígena e parte em escola não-indígena"
/Q74
 "A" "Vai concluir após 2006"
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
 "C" "4  anos"
 "D" "5  anos"
 "E" "6  anos"
 "F" "Mais de 6 anos"
/Q76
 "A" "Somente no turno diurno"
 "B" "Maior parte no turno diurno "
 "C" "Somente no turno noturno"
 "D" "Maior parte no turno noturno"
/Q77
 "A" "Somente em escola pública "
 "B" "Maior parte em escola pública "
 "C" "Somente em escola particular"
 "D" "Maior parte em escola particular "
 "E" "Somente em escola indígena"
 "F" "Maior parte em escola não-ingígena"
/Q78
 "A" "Ensino regular"
 "B" "Educação para jovens e adultos (antigo supletivo)"
 "C" "Ensino técnico / ensino profissional"
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
 "A" "Sim"
 "B" "Não"
/Q83
 "A" "Sim"
 "B" "Não"
/Q84
 "A" "Sim"
 "B" "Não"
/Q85
 "A" "Freqüentemente (todo dia ou quase todo dia) "
 "B" "Às vezes"
 "C" "Nunca"
/Q86
 "A" "Freqüentemente (todo dia ou quase todo dia) "
 "B" "Às vezes"
 "C" "Nunca"
/Q87
 "A" "Freqüentemente (todo dia ou quase todo dia) "
 "B" "Às vezes"
 "C" "Nunca"
/Q88
 "A" "Freqüentemente (todo dia ou quase todo dia) "
 "B" "Às vezes"
 "C" "Nunca"
/Q89
 "A" "Freqüentemente (todo dia ou quase todo dia) "
 "B" "Às vezes"
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
 "A" "Sim"
 "B" "Não"
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
 "A" "Eu me considero preparado(a) para entrar no mercado de trabalho"
 "B" "Apesar de ter freqüentado uma boa escola, eu me considero despreparado(a), pois não aprendi o suficiente para conseguir um emprego"
 "C" "Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola, que não me preparou o suficiente"
 "D" "Não sei"
/Q116
 "A" "Sim"
 "B" "Não"
/Q117
 "A" "Sim"
 "B" "Não"
/Q118
 "A" "Sim"
 "B" "Não"
/Q119
 "A" "Sim"
 "B" "Não"
/Q120
 "A" "Sim"
 "B" "Não"
/Q121
 "A" "Sim"
 "B" "Não"
/Q122
 "A" "Sim"
 "B" "Não"
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
 "L" "Não sei"
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
 "A" "Sim"
 "B" "Não"
/Q144
 "A" "Sim"
 "B" "Não"
/Q145
 "A" "Sim"
 "B" "Não"
/Q146
 "A" "Sim"
 "B" "Não"
/Q147
 "A" "Sim"
 "B" "Não"
/Q148
 "A" "Sim"
 "B" "Não"
/Q149
 "A" "Sim"
 "B" "Não"
/Q150
 "A" "Sim"
 "B" "Não"
/Q151
 "A" "Sim"
 "B" "Não"
/Q152
 "A" "Sim"
 "B" "Não"
/Q153
 "A" "Sim"
 "B" "Não"
/Q154
 "A" "Sim"
 "B" "Não"
/Q155
 "A" "Sim"
 "B" "Não"
/Q156
 "A" "Sim"
 "B" "Não"
/Q157
 "A" "Sim"
 "B" "Não"
/Q158
 "A" "Sim"
 "B" "Não"
/Q159
 "A" "Sim"
 "B" "Não"
/Q160
 "A" "Sim"
 "B" "Não"
/Q161
 "A" "Sim"
 "B" "Não"
/Q162
 "A" "Sim"
 "B" "Não"
/Q163
 "A" "Sim"
 "B" "Não"
/Q164
 "A" "Sim"
 "B" "Não"
/Q165
 "A" "Sim"
 "B" "Não"
/Q166
 "A" "Sim"
 "B" "Não"
/Q167
 "A" "Sim"
 "B" "Não"
/Q168
 "A" "Sim"
 "B" "Não"
/Q169
 "A" "Sim"
 "B" "Não"
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
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q176
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q177
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q178
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q179
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q180
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q181
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q182
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q183
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q184
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q185
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q186
 "A" "Muito"
 "B" "Pouco"
 "C" "Não me interesso"
/Q187
 "A" "O meio ambiente"
 "B" "A aids e as doenças sexualmente transmissíveis"
 "C" "O racismo e a discriminação étnico-racial"
 "D" "A discriminação de gênero"
 "E" "A discriminação contra homossexuais"
 "F" "A discriminação etária"
 "G" "A discriminação religiosa e os conflitos religiosos"
 "H" "A desigualdade social no Brasil"
 "I" "A pobreza, as favelas, os meninos de rua"
 "J" "As drogas e a violência"
 "K" "A situação econômica do país"
 "L" "A precariedade dos serviços públicos de saúde e de educação"
/Q188
 "A" "O meio ambiente"
 "B" "A aids e as doenças sexualmente transmissíveis"
 "C" "O racismo e a discriminação étnico-racial"
 "D" "A discriminação de gênero"
 "E" "A discriminação contra homossexuais"
 "F" "A discriminação etária"
 "G" "A discriminação religiosa e os conflitos religiosos"
 "H" "A desigualdade social no Brasil"
 "I" "A pobreza, as favelas, os meninos de rua"
 "J" "As drogas e a violência"
 "K" "A situação econômica do país"
 "L" "A precariedade dos serviços públicos de saúde e de educação"
/Q189
 "A" "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
 "B" "Formação básica necessária para obter um emprego melhor"
 "C" "Condições de melhorar minha posição no emprego atual"
 "D" "Obtenção de cultura geral / ampliação de minha formação pessoal"
 "E" "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
 "F" "Fazer muitos amigos / conhecer várias pessoas"
 "G" "Atender à expectativa de meus pais sobre meus estudos"
 "H" "Ajudar minha comunidade indígena"
/Q190
 "A" "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
 "B" "Formação básica necessária para obter um emprego melhor"
 "C" "Condições de melhorar minha posição no emprego atual"
 "D" "Obtenção de cultura geral / ampliação de minha formação pessoal"
 "E" "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
 "F" "Fazer muitos amigos / conhecer várias pessoas"
 "G" "Atender à expectativa de meus pais sobre meus estudos"
 "H" "Ajudar minha comunidade indígena"
/Q191
 "A" "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
 "B" "Formação básica necessária para obter um emprego melhor"
 "C" "Condições de melhorar minha posição no emprego atual"
 "D" "Obtenção de cultura geral / ampliação de minha formação pessoal"
 "E" "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
 "F" "Fazer muitos amigos / conhecer várias pessoas"
 "G" "Atender à expectativa de meus pais sobre meus estudos"
 "H" "Ajudar minha comunidade indígena"
/Q191
 "A" "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
 "B" "Formação básica necessária para obter um emprego melhor"
 "C" "Condições de melhorar minha posição no emprego atual"
 "D" "Obtenção de cultura geral / ampliação de minha formação pessoal"
 "E" "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
 "F" "Fazer muitos amigos / conhecer várias pessoas"
 "G" "Atender à expectativa de meus pais sobre meus estudos"
 "H" "Ajudar minha comunidade indígena"
/Q192
 "A" "Já conclui o ensino médio"
 "B" "Prestar vestibular e continuar os estudos no ensino superior"
 "C" "Procurar um emprego"
 "D" "Prestar vestibular e continuar a trabalhar"
 "E" "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho "
 "F" "Trabalhar por conta própria / trabalhar em negócio da família"
 "G" "Trabalhar em atividade ligada à comunidade indígena"
 "H" "Ainda não decidiu"
 "I" "Outro plano"
/Q193
 "A" "Gostaria de ter um diploma universitário para conseguir um bom emprego"
 "B" "Gostaria de prestar um concurso e trabalhar no setor público"
 "C" "Gostaria de ganhar dinheiro em meu próprio negócio"
 "D" "Gostaria de ter um emprego"
 "E" "Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade indígena"
 "F" "Não planejei"
 "G" "Outro plano"
/Q194
 "A" "Ainda não escolhi"
 "B" "Profissão ligada às Engenharias / Ciências Tecnológicas"
 "C" "Profissão ligada às Ciências Humanas"
 "D" "Profissão ligada às Artes "
 "E" "Profissão ligadas às Ciências Biológicas e de Saúde"
 "F" "Professor(a) de Ensino Fundamental e Médio (1º e 2º graus)"
 "G" "Não vou seguir nenhuma profissão"
/Q195
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q196
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q197
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q198
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q199
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q200
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q201
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q202
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q203
 "A" "Ajudou muito "
 "B" "Ajudou pouco"
 "C" "Não ajudou"
/Q204
 "A" "Sim, estou estudando no momento atual"
 "B" "Sim, mas não estou estudando no momento atual"
 "C" "Não"
/Q205
 "A" "Sim"
 "B" "Não"
/Q206
 "A" "Sim"
 "B" "Não"
/Q207
 "A" "Sim"
 "B" "Não"
/Q208
 "A" "Sim"
 "B" "Não"
/Q209
 "A" "Sim"
 "B" "Não"
/Q210
 "A" "Sim"
 "B" "Não"
/Q211
 "A" "Sim"
 "B" "Não"
/Q212
 "A" "Sim"
 "B" "Não"
/Q213
 "A" "Sim"
 "B" "Não"
/Q214
 "A" "Sim"
 "B" "Não"
/Q215
 "A" "Sim"
 "B" "Não"
/Q216
 "A" "Sim"
 "B" "Não"
/Q217
 "A" "Sim"
 "B" "Não"
/Q218
 "A" "Sim"
 "B" "Não"
/Q219
 "A" "Sim"
 "B" "Não"
/Q220
 "A" "Sim"
 "B" "Não"
/Q221
 "A" "Sim"
 "B" "Não"
/Q222
 "A" "Sim"
 "B" "Não"
/Q223
 "A" "Sim"
 "B" "Não"
.