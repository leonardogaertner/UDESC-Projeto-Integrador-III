/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2009.csv no diretório C:\ do computador.	                  */
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
NU_INSCRICAO     "Número de inscrição no ENEM 2009. "
NU_ANO     " Ano do Enem "
TP_FAIXA_ETARIA         		"Faixa Etária"
TP_SEXO     " Sexo do inscrito "
TP_ST_CONCLUSAO     " Situação em relação ao ensino médio "
TP_ENSINO     " Tipo de instituição onde o estudante concluiu ou concluirá o ensino médio "
CO_MUNICIPIO_ESC     " Código do Município da escola em que estudou: "
NO_MUNICIPIO_ESC     " Nome do município da escola "
CO_UF_ESC     "Código da Unidade da Federação da escola"
SG_UF_ESC     " Sigla da Unidade da Federação da escola "
TP_DEPENDENCIA_ADM_ESC     " Dependência administrativa "
TP_LOCALIZACAO_ESC     " Localização Zona da escola "
TP_SIT_FUNC_ESC     " Situação de funcionamento "
CO_MUNICIPIO_PROVA     " Código do Município da cidade de prova: "
NO_MUNICIPIO_PROVA     " Nome do Município da cidade de prova "
CO_UF_PROVA     "Código da Unidade da Federação do local da prova"
SG_UF_PROVA     " Sigla da Unidade da Federação da cidade de prova "
TP_PRESENCA_CN     " Presença à prova objetiva de Ciências da Natureza "
TP_PRESENCA_CH     " Presença à prova objetiva de Ciências Humanas "
TP_PRESENCA_LC     " Presença à prova objetiva de Linguagens e Códigos "
TP_PRESENCA_MT     " Presença à prova objetiva de Matemática "
NU_NOTA_CN     " Nota da prova de Ciências da Natureza "
NU_NOTA_CH     " Nota da prova de Ciências Humanas "
NU_NOTA_LC     " Nota da prova de Linguagens e Códigos "
NU_NOTA_MT     " Nota da prova de Matemática "
TX_RESPOSTAS_CN     " Vetor com as respostas da parte objetiva da prova de Ciências da Natureza "
TX_RESPOSTAS_CH     " Vetor com as respostas da parte objetiva da prova de Ciências Humanas "
TX_RESPOSTAS_LC     " Vetor com as respostas da parte objetiva da prova de Linguagens e Códigos "
TX_RESPOSTAS_MT     " Vetor com as respostas da parte objetiva da prova de Matemática "
CO_PROVA_CN     " Código do tipo de prova de Ciencias da Natureza "
CO_PROVA_CH     " Código do tipo de prova de Ciências Humanas "
CO_PROVA_LC     " Código do tipo de prova de Linguagens e Códigos "
CO_PROVA_MT     " Código do tipo de prova de Matemática "
TX_GABARITO_CN     " Vetor com o gabarito da parte objetiva da prova  de Ciências da Natureza "
TX_GABARITO_CH     " Vetor com o gabarito da parte objetiva da prova  de Ciências Humanas "
TX_GABARITO_LC     " Vetor com o gabarito da parte objetiva da prova  de Linguagens e Códigos "
TX_GABARITO_MT     " Vetor com o gabarito da parte objetiva da prova  de Matemática "
TP_STATUS_REDACAO     " Presença à redação "
NU_NOTA_COMP1     " Nota da competência 1 "
NU_NOTA_COMP2     " Nota da competência 2 "
NU_NOTA_COMP3     " Nota da competência 3 "
NU_NOTA_COMP4     " Nota da competência 4 "
NU_NOTA_COMP5     " Nota da competência 5 "
NU_NOTA_REDACAO     " Nota da prova de redação "
IN_CERTIFICADO     " Indicador de que o inscrito solicitará certificação no Ensino Médio "
IN_QSE     "Resposta ao Questionário Socioeconômico"
Q1     "Qual o seu sexo?"
Q2     "Qual a sua idade?"
Q3     "Como você se considera"
Q4     "Se indicou indígena, qual(is) língua(s) você domina"
Q5     "Qual a sua religião?"
Q6     "Qual seu estado civil?"
Q7     "Onde e como mora atualmente?"
Q8     "Mora sozinho(a)"
Q9     "Mora com o pai e/ou mãe"
Q10     "Mora com esposo(a) / companheiro(a)"
Q11     "Mora com filhos(as)"
Q12     "Mora com irmãos(ãs)"
Q13     "Mora com outros parentes, amigos(as) ou colegas"
Q14     "Outra situação"
Q15     "Quantidade de pessoas que moram em sua casa"
Q16     "Quantos filhos tem"
Q17     "Até quando seu pai estudou"
Q18     "Até quando sua mãe estudou"
Q19     "Área que o pai trabalha ou trabalhou, na maior parte da vida"
Q20     "Área que sua mãe trabalha ou trabalhou, na maior parte da vida"
Q21     "Renda familiar (somando a do respondente e com a das pessoas que moram com ele)"
Q22     "Tem TV e quantas"
Q23     "Tem Videocassete e/ou DVD e quantos"
Q24     "Tem Rádio e quantos"
Q25     "Tem Microcomputador e quantos"
Q26     " Tem Automóvel e quantos"
Q27     "Tem Máquina de lavar roupa e quantos"
Q28     "Tem Geladeira e quantas"
Q29     "Tem Telefone fixo e quantos"
Q30     "Tem Telefone celular e quantos"
Q31     "Tem Acesso à Internet e quantos"
Q32     "Tem TV por assinatura e quantas"
Q33     "Tem casa própria"
Q34     "Se a casa é em rua calçada ou asfaltada"
Q35     "Se a casa tem água corrente de torneira"
Q36     "Se a casa tem eletricidade"
Q37     "Se a casa é situada em zona rural"
Q38     "Se a casa é situada em comunidade indígena"
Q39     "Se a casa é situada em comunidade quilombola"
Q40     "Motivo para fazer o Enem"
Q41     "Se está participando do ENEM para conseguir a certificação do ensino médio, principal motivo que o levou aescolher esta forma de certificação"
Q42     "Trabalha, ou já trabalhou, ganhando algum salário ou rendimento"
Q43     "Trabalhou ou teve alguma atividade remunerada durante os estudos"
Q44     "Quantas horas trabalhava, durante os estudos"
Q45     "Com que finalidade você trabalhava enquanto estudava"
Q46     "Com que idade você começou a exercer atividade remunerada enquanto estudava"
Q47     "Se você está trabalhando atualmente, qual a sua renda ou seu salário mensal?"
Q48     "Você está trabalhando atualmente em alguma atividade para o qual se preparou"
Q49     "Em que trabalha atualmente"
Q50     "Quanto tempo está trabalhando na atividade"
Q51     "Os conhecimentos no ensino médio foram adequados ao que o mercado de trabalho solicita"
Q52     "Os conhecimentos no ensino médio tiveram relação com a profissão que escolheu / que exerce"
Q53     "Os conhecimentos no ensino médio foram bem desenvolvidos, com aulas práticas, laboratórios, etc"
Q54     "Os conhecimentos no ensino médio proporcionaram cultura e conhecimento"
Q55     "Avaliação de ter estudado e trabalhado, simultaneamente, durante o ensino médio"
Q56     "A escola que freqüenta ou freqüentou durante o ensino médio levou em conta que trabalhava ao mesmo tempo que estudava"
Q57     "Como prova de consideração por parte da escola  pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o horário flexível"
Q58     "Como prova de consideração por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha menor carga de trabalho ou de tarefas extraclasse"
Q59     "Como prova de consideração por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha programa de recuperação de notas"
Q60     "Como prova de consideração por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha abono de faltas"
Q61     "Como prova de consideração por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha aulas mais dinâmicas, com didática difenciada"
Q62     "Como prova de consideração por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha aulas de revisão da matéria aos (às) interessados(as)"
Q63     "Como prova de consideração por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha fornecimento de refeição aos (às) alunos(as)"
Q64     "A escola deve oferecer horário flexível para o aluno que trabalha"
Q65     "A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha"
Q66     "A escola deve oferecer programa de recuperação de notas para o aluno que trabalha"
Q67     "A escola deve oferecer abono de faltas para o aluno que trabalha"
Q68     "A escola deve oferecer aulas mais dinâmicas, com didática diferenciada para o aluno que trabalha"
Q69     "A escola deve oferecer aulas de revisão da matéria  aos alunos interessados que trabalham"
Q70     "A escola deve oferecer atendimento extraclasse  aos alunos que trabalham"
Q71     "A escola deve oferecer fornecimento de refeição para o aluno que trabalha"
Q72     "Anos que levou para concluir o ensino fundamental (1º grau)"
Q73     "Em que tipo de escola cursou o ensino fundamental (1ª grau)"
Q74     "Em que ano concluiu ou concluirá o ensino médio (2º grau)"
Q75     "Quantos anos levou para cursar o ensino médio (2º grau)"
Q76     "Em que turno cursou ou esta cursando o ensino médio"
Q77     "Em que tipo de escola cursou ou está cursando o ensino médio (2º grau)"
Q78     "Em que modalidade de ensino concluiu ou vai concluir o ensino médio (2º grau)"
Q79     "Fez curso de língua estrangeira"
Q80     "Fez curso de computação ou informática"
Q81     "Fez curso preparatório para o vestibular (cursinho)"
Q82     "Fez outros cursos"
Q83     "Com que freqüência lê jornais"
Q84     "Com que freqüência lê revistas de informação geral"
Q85     "Com que freqüência lê revistas de divulgação científica, tecnológica, filosófica ou artística"
Q86     "Com que freqüência lê revistas de humor, quadrinhos ou jogos"
Q87     "Com que freqüência lê revistas para adolescentes ou sobre TV, cinema, música, celebridades"
Q88     "Com que freqüência lê revistas sobre comportamento, moda, estilo e decoração"
Q89     "Com que freqüência lê revistas sobre automóveis, esporte e lazer"
Q90     "Com que freqüência lê revistas sobre saúde"
Q91     "Com que freqüência lê revistas sobre religião"
Q92     "Com que freqüência lê revistas sobre educação e estudos"
Q93     "Com que freqüência lê livros de ficção"
Q94     "Com que freqüência lê livros de não ficção e biografias"
Q95     "Com que freqüência lê dicionários, enciclopédias e manuais"
Q96     "Com que freqüência lê sites e matérias na Internet"
Q97     "Avaliação da escola em que fez o ensino médio quanto ao conhecimento que os(as) professores(as) têm das matérias e a maneira de transmiti-lo"
Q98     "Avaliação da escola em que fez o ensino médio quanto à dedicação dos(as) professores(as) para prepararaulas e atender aos alunos"
Q99     "Avaliação da escola em que fez o ensino médio quanto às iniciativas da escola para realizar excursões,passeios culturais, estudos do meio ambiente"
Q100     "Avaliação da escola em que fez o ensino médio quanto à biblioteca"
Q101     "Avaliação da escola em que fez o ensino médio quanto às condições das salas de aula"
Q102     "Avaliação da escola em que fez o ensino médio quanto às condições dos laboratórios"
Q103     "Avaliação da escola em que fez o ensino médio quanto ao acesso a computadores e outros recursos de informática"
Q104     "Avaliação da escola em que fez o ensino médio quanto ao ensino de língua estrangeira"
Q105     "Avaliação da escola em que fez o ensino médio quanto ao interesse dos(as) alunos(as)"
Q106     "Avaliação da escola em que fez o ensino médio quanto ao trabalho de grupo"
Q107     "Avaliação da escola em que fez o ensino médio quanto às práticas de esportes"
Q108     "Avaliação da escola em que fez o ensino médio quanto à atenção e respeito dos(as) funcionários(as) e dos(as) professores(as)"
Q109     "Avaliação da escola em que fez o ensino médio quanto à direção"
Q110     "Avaliação da escola em que fez o ensino médio quanto à organização dos horários de aulas"
Q111     "Avaliação da escola em que fez o ensino médio quanto à localização"
Q112     "Avaliação da escola em que fez o ensino médio quanto à segurança (iluminação, policiamento, etc)"
Q113     "Avaliação da escola em que fez o ensino médio quanto ao respeito à diversidade"
Q114     "Avaliação da escola em que fez o ensino médio quanto a acessibilidade física e os recursos e os materiaispara estudantes com deficiência (rampas, corrimãos, lupas, etc)"
Q115     "Avaliação da escola em que fez o ensino médio quanto a atenção às questões ambientais"
Q116     "A escola em que estuda ou estudou realiza palestras / debates"
Q117     "A escola em que estuda ou estudou realiza jogos / esportes / campeonatos"
Q118     "A escola em que estuda ou estudou realiza dança/música/coral/teatro"
Q119     "A escola em que estuda ou estudou realiza estudos do meio ambiente / passeios"
Q120     "A escola em que estuda ou estudou realiza feira de ciências / feira cultural"
Q121     "A escola em que estuda ou estudou realiza festas/gincanas"
Q122     "Atendimento educacional extraclasse"
Q123     "De acordo com os ensinamentos no ensino médio, como considera o preparo para conseguir um emprego, exerceralguma atividade profissional"
Q124     "Os(as) professores(as) têm autoridade, firmeza"
Q125     "Os(as) professores(as) são distantes, têm pouco envolvimento"
Q126     "Os(as) professores(as) têm respeito pelos estudantes"
Q127     "Os(as) professores(as) são indiferentes, ignoram sua existência"
Q128     "Os(as) professores(as) são preocupados(as) e dedicados(as)"
Q129     "Os(as) professores(as) são autoritários(as), rígidos(as), abusam do poder"
Q130     "Os(as) professores(as) valorizam as diferenças e ensinam a respeitá-las"
Q131     "Avaliação sobre a escola quanto à liberdade de expressar as idéias"
Q132     "Avaliação sobre a escola quanto ao respeito aos estudantes, sem discriminá-los"
Q133     "Avaliação sobre a escola quanto à amizade e respeito entre alunos(as) e trabalhadores da escola (funcionários(as), professores(as))"
Q134     "Avaliação sobre a escola quanto a levar em conta suas opiniões"
Q135     "Avaliação sobre a escola quanto à discussão dos problemas da atualidade nas aulas"
Q136     "Avaliação sobre a escola quanto à convivência entre estudantes"
Q137     "Avaliação sobre a escola quanto à organização para apoiar a resolução de problemas de relacionamento entreestudantes"
Q138     "Avaliação sobre a escola quanto à iniciativa para apoiar a resolução de problemas de relacionamento entreestudantes e professores(as)"
Q139     "Avaliação sobre a escola quanto à levar em conta seus problemas pessoais e familiares"
Q140     "Avaliação sobre a escola quanto à realização de Projetos e Palestras contra drogas"
Q141     "Avaliação sobre a escola quanto à realização de projetos e palestras sobre promoção da saúde e prevenção aAids e a doenças sexualmente transmissíveis"
Q142     "Avaliação da escola quanto à realização de projetos e palestras sobre direitos humanos e violência"
Q143     "Avaliação da escola quanto à adoção de medidas para garantir a acessibilidade a estudantes com deficiências físicas ou mentais"
Q144     "Avaliação sobre a escola quanto à capacidade de relacionar os conteúdos das matérias com o cotidiano"
Q145     "Avaliação sobre a escola quanto ao reconhecimento e valorização da identidade étnica dos estudantes"
Q146     "Avaliação da escola quanto à levar em conta a opinião/participação dos pais"
Q147     "Nota para a formação que obteve no ensino médio"
Q148     "Considera-se racista"
Q149     "Parentes racistas"
Q150     "Amigos(as) ou colegas de escola e/ou trabalho racistas"
Q151     "Vizinhos e/ou conhecidos  racistas"
Q152     "Professores(as) ou funcionários da escola"
Q153     "Pessoas em geral (nas ruas, nos ambientes públicos, etc)"
Q154     "Acredita possuir algum preconceito contra pessoas mais pobres / participantes de programas sociais dogoverno (Bolsa família, etc)"
Q155     "Acredita possuir algum preconceito contra negros(as), indígenas, orientais, ciganos(as), ou de outrasetnias"
Q156     "Acredita possuir algum preconceito contra mulheres"
Q157     "Acredita possuir algum preconceito contra homossexuais ou gays, lésbicas, bissexuais, travestis, transexuais"
Q158     "Acredita possuir algum preconceito contra pessoas muito religiosas"
Q159     "Acredita possuir algum preconceito contra pessoas de outra religião"
Q160     "Acredita possuir algum preconceito contra pessoas sem religião"
Q161     "Acredita possuir algum preconceito contra pessoas de outras cidades, do interior, da zona rural ou deoutras regiões do país ou do exterior"
Q162     "Acredita possuir algum preconceito contra pessoas idosas"
Q163     "Acredita possuir algum preconceito contra pessoas com deficiência física ou mental"
Q164     "Acredita possuir algum preconceito contra pessoas muito gordas ou muito magras"
Q165     "Acredita possuir algum preconceito contra moradores(as) de favela ou de periferia"
Q166     "Acredita possuir algum preconceito contra meninos(as) em situação de rua"
Q167     "Acredita possuir algum preconceito contra jovens infratores(as) / jovens em conflito com a lei"
Q168     "Acredita possuir algum preconceito contra usuários(as) de drogas"
Q169     "Já sofreu discriminação econômica"
Q170     "Já sofreu discriminação étnica, racial ou de cor"
Q171     "Já sofreu discriminação de gênero (ou por ser mulher ou por ser homem)"
Q172     "Já sofreu discriminação por ser ou ter sido identificado como homossexual (gay, lésbica, bissexual, travesti ou transexual"
Q173     "Já sofreu discriminação religiosa"
Q174     "Já sofreu discriminação por não ter religião"
Q175     "Já sofreu discriminação por causa do local de seu nascimento (em outra cidade, no interior, em outra região, no exterior, etc)"
Q176     "Já sofreu discriminação por causa da idade"
Q177     "Já sofreu discriminação por ser pessoa com deficiência física ou mental"
Q178     "Já sofreu discriminação por causa de sua aparência física (gordo/a, magro/a, alto/a, baixo/a, etc)"
Q179     "Já sofreu discriminação por causa do lugar de sua moradia"
Q180     "Já presenciou discriminação econômica"
Q181     "Já presenciou discriminação étnica, racial ou de cor"
Q182     "Já presenciou discriminação contra mulheres"
Q183     "Já presenciou discriminação contra homossexuais (gay, lésbica, bissexual, travesti ou transexual)"
Q184     "Já presenciou discriminação religiosa"
Q185     "Já presenciou discriminação por causa do local de seu nascimento (em outra cidade, no interior, em outra região, no exterior, etc)"
Q186     "Já presenciou discriminação contra jovens menores de 18 anos"
Q187     "Já presenciou discriminação contra pessoas idosas"
Q188     "Já presenciou discriminação por ser pessoa com deficiência"
Q189     "Já presenciou discriminação por causa de sua aparência física"
Q190     "Já presenciou discriminação por causa do lugar de sua moradia"
Q191     "Se incomodaria se tivesse como parente ou colega de escola  uma pessoa de outra classe social"
Q192     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra cor ou etnia"
Q193     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra religião"
Q194     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa com posições políticas diferentes dasua"
Q195     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra origem geográfica"
Q196     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa homossexual (gay, lésbica, bissexual, travesti ou transexual)"
Q197     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa muito mais nova ou mais velha"
Q198     "Se incomodaria se tivesse como parente ou colega de escola uma pessoa com deficiência física ou mental"
Q199     "O quanto você se interessa pela política"
Q200     "O quanto você se interessa pela globalização"
Q201     "O quanto você se interessa por esportes"
Q202     "O quanto você se interessa por religião"
Q203     "O quanto você se interessa pelas questões do meio ambiente, poluição"
Q204     "O quanto você se interessa pelas questões sobre desigualdade social, pobreza, desemprego, miséria"
Q205     "O quanto você se interessa pelas questões sobre artes, teatro, cinema"
Q206     "O quanto você se interessa sobre a questão das drogas"
Q207     "O quanto você se interessa sobre a questão do acesso e qualidade dos serviços públicos de saúde e educação"
Q208     "O quanto você se interessa pelas questões sobre sexualidade (prazer, sexo seguro, gravidez, doenças sexualmente transmissíveis, etc)"
Q209     "O quanto você se interessa pelas questões sobre racismo contra negros, indígenas, orientais, ciganos,judeus, etc"
Q210     "O quanto você se interessa pelas questões sobre discriminação e violência contra mulheres"
Q211     "O quanto você se interessa pelas questões sobre discriminação e violência contra homossexuais (gay, lésbica, bissexual, travesti ou transexual)"
Q212     "O quanto você se interessa pelas questões sobre discriminação e violência contra crianças e adolescentes"
Q213     "O quanto você se interessa pelas questões sobre discriminação e violência contra pessoas idosas"
Q214     "O quanto você se interessa pelas questões sobre discriminação e violência contra pessoas com deficiência"
Q215     "A primeira contribuição para a sua vida pessoal que obteve ao realizar o Ensino Médio foi"
Q216     "A segunda contribuição para a sua vida pessoal que obteve ao realizar o Ensino Médio foi"
Q217     "A terceira contribuição para a sua vida pessoal que obteve ao realizar o Ensino Médio foi"
Q218     "A principal decisão que vai tomar quando concluir ou obter a certificação do ensino médio (2º grau)"
Q219     "E a médio prazo, daqui a uns 4 ou 5 anos já planejou o que gostaria que acontecesse"
Q220     "Que profissão escolheu seguir"
Q221     "Meus pais ajudaram a tomar minha decisão sobre minha profissão"
Q222     "A escola ajudou a tomar minha decisão sobre minha profissão"
Q223     "Meus amigos ajudaram a tomar minha decisão sobre minha profissão"
Q224     "Informações gerais, revistas, jornais, TV ajudaram a tomar minha decisão sobre minha profissão"
Q225     "Meu trabalho ajudou a tomar minha decisão sobre minha profissão"
Q226     "Estímulo financeiro ajudou a tomar minha decisão sobre minha profissão"
Q227     "Facilidade de obter emprego ajudou a tomar minha decisão sobre minha profissão"
Q228     "Continuou os estudos depois de ter concluído o ensino médio (2º grau)"
Q229     "Frequentou ou está freqüentando um curso profissionalizante"
Q230     "Frequentou ou está freqüentando um curso preparatório para vestibular"
Q231     "Frequentou ou está freqüentando um curso superior"
Q232     "Frequentou ou está freqüentando um curso de língua estrangeira"
Q233     "Frequentou ou está freqüentando um curso de computação ou informática"
Q234     "Frequentou ou está freqüentando um curso preparatório para outros concursos públicos"
Q235     "Frequentou ou está freqüentando outro curso"
Q236     "O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino médio"
Q237     "O curso preparatório para vestibular fez mais falta para minha vida, depois que terminei o ensino médio"
Q238     "O curso superior fez mais falta para minha vida, depois que terminei o ensino médio"
Q239     "O curso de língua estrangeira fez mais falta para minha vida, depois que terminei o ensino médio"
Q240     "O curso de computação ou informática fez mais falta para minha vida, depois que terminei o ensino médio"
Q241     "Como realiza ou realizou o Curso de Educação de Jovens e Adultos - EJA"
Q242     "Período em que cursa a EJA"
Q243     "Já havia cursado antes a EJA e depois parou"
Q244     "Parou de frequentar a EJA porque o horário de trabalho era difícil/não tinha tempo de estudar"
Q245     "Parou de frequentar a EJA porque estudava no curso da empresa e fui demitido"
Q246     "Parou de frequentar a EJA porque teve problemas ligados à saúde ou acidentes ou pessoas da família"
Q247     "Parou de frequentar a EJA porque mudou de cidade"
Q248     "Parou de frequentar a EJA porque casou/teve filhos"
Q249     "Parou de frequentar a EJA porque não tinha interesse/desistiu"
Q250     "Parou de frequentar a EJA porque sentiu-se discriminado/sofreu agressão"
Q251     "Não frequentou"
Q252     "Frequentou alguma vez escola regular"
Q253     "Se já frequentou escola regular, em que série ou ano escolar deixou a escola"
Q254     "Quanto tempo levou para cursar a 1ª Série do Ensino Médio"
Q255     "Quanto tempo levou para cursar a 2ª Série do Ensino Médio"
Q256     "Quanto tempo levou para cursar a 3ª Série do Ensino Médio"
Q257     "Em que tipo de escola cursou a 1ª Séire do Ensino Médio"
Q258     "Em que tipo de escola cursou a 2ª Séire do Ensino Médio"
Q259     "Em que tipo de escola cursou a 3ª Séire do Ensino Médio"
Q260     "Quantos anos tinha quando deixou de frequentar a escola regular"
Q261     "Nunca frequentou uma escola regular porque não conseguiu vaga em escola pública / a família não tinhacondições de pagar os estudos"
Q262     "Nunca frequentou uma escola regular porque não havia escola perto de casa"
Q263     "Nunca frequentou uma escola regular porque não gostava de estudar / não tinha interesse"
Q264     "Nunca frequentou uma escola regular por motivos ligados ao trabalho: horário de trabalho era difícil /nãotinha tempo de estudar"
Q265     "Nunca frequentou uma escola regular porque parou de estudar porque casou / teve filhos / teve que cuidar da família"
Q266     "Nunca frequentou uma escola regular porque não tinha apoio da família"
Q267     "Nunca frequentou uma escola regular por problemas ligados à saúde: sofreu acidente/ficou doente/aconteceualgum acidente com pessoas da família"
Q268     "Nunca frequentou uma escola regular porque sofreu discriminação"
Q269     "Deixou de frequentar uma escola regular porque foi reprovado"
Q270     "Deixou de frequentar uma escola regular porque não conseguiu vaga em escola pública / a família não tinhacondições de pagar os estudos"
Q271     "Deixou de frequentar uma escola regular porque não havia escola perto de casa"
Q272     "Deixou de frequentar uma escola regular porque a escola a escola que frequentava era muito ruim (tinhamuita bagunça, não tinha professores, as aulas não eram boas, etc)"
Q273     "Deixou de frequentar uma escola regular porque não gostava de estudar / não tinha interesse"
Q274     "Deixou de frequentar uma escola regular por motivos ligados ao trabalho: horário de trabalho era difícil /não tinha tempo de estudar"
Q275     "Deixou de frequentar uma escola regular porque parou de estudar porque casou / teve filhos / teve quecuidar da família"
Q276     "Deixou de frequentar uma escola regular porque não tinha apoio da família"
Q277     "Deixou de frequentar uma escola regular por problemas ligados à saúde: sofreu acidente/ficou doente/aconteceu algum acidente com pessoas da família"
Q278     "Deixou de frequentar uma escola regular porque sofreu discriminação na escola"
Q279     "Deixou de frequentar uma escola regular porque sofreu agressão (física ou verbal) na escola"
Q280     "Não voltou a estudar"
Q281     "Voltou a estudar ou a cursar a EJA para conseguir o primeiro emprego"
Q282     "Voltou a estudar ou a cursar a EJA para conseguir um emprego melhor"
Q283     "Voltou a estudar ou a cursar a EJA para melhorar de posição no emprego atual"
Q284     "Voltou a estudar ou a cursar a EJA para prestar vestibular e fazer uma faculdade"
Q285     "Voltou a estudar ou a cursar a EJA para fazer algum curso profissionalizante"
Q286     "Voltou a estudar ou a cursar a EJA para adquirir mais conhecimento, ficar atualizado"
Q287     "Voltou a estudar ou a cursar a EJA para ser alguém na vida, ter mais chances"
Q288     "Depois que voltou ou começou a estudar aumentou seus conhecimentos, adquiriu mais informações, tem mais preparo"
Q289     "Depois que voltou ou começou a estudar melhorou sua autoestima, sua satisfação pessoal"
Q290     "Depois que voltou ou começou a estudar teve reconhecimento no trabalho"
Q291     "Depois que voltou ou começou a estudar surgiram novas oportunidades de trabalho"
Q292     "Depois que voltou ou começou a estudar sua vida ficou pior, mais cansativa, mais corrida"
Q293     "Não mudou nada depois que voltou ou começou a estudar"
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
  1  "Já concluiu"
  2  "Concluirá em 2009"
  3  "Concluirá após 2009"
  4  "Não concluiu o Ensino Médio"
/TP_ENSINO
  1  "Ensino Regular"
  2  "Ensino de Jovens e Adultos"
  3  "Ensino profissionalizante"
  4  "Ensino Especial"
/IN_CERTIFICADO
  1  "Sim"
  0  "Não"
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
  0  "Faltou à prova"
  1  "Presente na prova"
  2  "Eliminado na prova"
/TP_PRESENCA_CH
  0  "Faltou à prova"
  1  "Presente na prova"
  2  "Eliminado na prova"
/TP_PRESENCA_LC
  0  "Faltou à prova"
  1  "Presente na prova"
  2  "Eliminado na prova"
/TP_PRESENCA_MT
  0  "Faltou à prova"
  1  "Presente na prova"
  2  "Eliminado na prova"
/CO_PROVA_CN
  49  "AZUL"
  50  "AMARELO"
  51  "BRANCA"
  52  "ROSA"
  65  "AZUL (REAPLICAÇÃO/PPL)"
  66  "AMARELO (REAPLICAÇÃO/PPL)"
  67  "BRANCA (REAPLICAÇÃO/PPL)"
  68  "ROSA (REAPLICAÇÃO/PPL)"
  81  "BRANCA (ADAPTADA LEDOR)"
/CO_PROVA_CH
  53  "AZUL"
  54  "AMARELO"
  55  "BRANCA"
  56  "ROSA"
  69  "AZUL (REAPLICAÇÃO/PPL)"
  70  "AMARELO (REAPLICAÇÃO/PPL)"
  71  "BRANCA (REAPLICAÇÃO/PPL)"
  72  "ROSA (REAPLICAÇÃO/PPL)"
  82  "BRANCA (ADAPTADA LEDOR)"
/CO_PROVA_LC
  57  "AMARELO"
  58  "CINZA"
  59  "AZUL"
  60  "ROSA"
  73  "AMARELO (REAPLICAÇÃO/PPL)"
  74  "CINZA (REAPLICAÇÃO/PPL)"
  75  "AZUL (REAPLICAÇÃO/PPL)"
  76  "ROSA (REAPLICAÇÃO/PPL)"
  83  "CINZA (ADAPTADA LEDOR)"
/CO_PROVA_MT
  61  "AMARELO"
  62  "CINZA"
  63  "AZUL"
  64  "ROSA"
  77  "AMARELO (REAPLICAÇÃO/PPL)"
  78  "CINZA (REAPLICAÇÃO/PPL)"
  79  "AZUL (REAPLICAÇÃO/PPL)"
  80  "ROSA (REAPLICAÇÃO/PPL)"
  84  "CINZA (ADAPTADA LEDOR)"
/TP_STATUS_REDACAO
  "B"  "Entregou a redação em branco"
  "F"  "Faltou à prova"
  "N"  "Redação anulada"
  "P"  "Presente à prova"
/IN_QSE
  0   "Não respondeu o questionário socioecômico"
  1   "Respondeu o questionário socioecômico"
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
  "E"  "Indígena"
/Q4
  "A"  "Minha língua materna é o português"
  "B"  "Uma língua indígena e o português"
  "C"  "Mais de uma língua indígena e o português"
  "D"  "Uma língua indígena, o português e o espanhol"
  "E"  "Mais de uma língua indígena, o português e outra(s) língua(s) estrangeira(s)"
/Q5
  "A"  "Católica"
  "B"  "Protestante ou Evangélica"
  "C"  "Espírita"
  "D"  "Umbanda ou Candomblé"
  "E"  "Outra"
  "F"  "Sem religião"
/Q6
  "A"  "Solteiro(a)"
  "B"  "Casado(a) / mora com um(a) companheiro(a)"
  "C"  "Separado(a) / divorciado(a) / desquitado(a)"
  "D"  "Viúvo(a)"
/Q7
  "A"  "Em casa ou apartamento, com sua família"
  "B"  "Em casa ou apartamento, sozinho(a)"
  "C"  "Em quarto ou cômodo alugado, sozinho(a)"
  "D"  "Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc"
  "E"  "Outra situação"
/Q8
  "A"  "Sim"
  "B"  "Não"
/Q9
  "A"  "Sim"
  "B"  "Não"
/Q10
  "A"  "Sim"
  "B"  "Não"
/Q11
  "A"  "Sim"
  "B"  "Não"
/Q12
  "A"  "Sim"
  "B"  "Não"
/Q13
  "A"  "Sim"
  "B"  "Não"
/Q14
  "A"  "Sim"
  "B"  "Não"
/Q15
  "A"  "Duas pessoas"
  "B"  "Três"
  "C"  "Quatro"
  "D"  "Cinco"
  "E"  "Mais de seis"
  "F"  "Moro sozinho(a)"
/Q16
  "A"  "Um filho"
  "B"  "Dois filhos"
  "C"  "Três filhos"
  "D"  "Quatro ou mais filhos"
  "E"  "Não tenho filhos"
/Q17
  "A"  "Não estudou"
  "B"  "Da 1ª a 4ª série do ensino fundamental (antigo primário)"
  "C"  "Da 5ª a 8ª do ensino fundamental (antigo ginásio)"
  "D"  "Ensino Médio (2º grau) incompleto"
  "E"  "Ensino Médio (2º grau) completo"
  "F"  "Ensino Superior incompleto"
  "G"  "Ensino Superior completo"
  "H"  "Pós-graduação"
  "I"  "Não sei"
/Q18
  "A"  "Não estudou"
  "B"  "Da 1ª a 4ª série do ensino fundamental (antigo primário)"
  "C"  "Da 5ª a 8ª do ensino fundamental (antigo ginásio)"
  "D"  "Ensino Médio (2º grau) incompleto"
  "E"  "Ensino Médio (2º grau) completo"
  "F"  "Ensino Superior incompleto"
  "G"  "Ensino Superior completo"
  "H"  "Pós-graduação"
  "I"  "Não sei"
/Q19
  "A"  "Na agricultura, no campo, em fazenda ou na pesca"
  "B"  "Na indústria"
  "C"  "Na construção civil"
  "D"  "No comércio, banco, transporte, hotelaria ou outros serviços"
  "E"  "Funcionário público do governo federal, estadual ou municipal"
  "F"  "Profissional liberal, professor ou técnico de nível superior"
  "G"  "Trabalhador fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador de carros, catador de lixo, etc)"
  "H"  "Trabalha em casa em serviços (alfaiataria, cozinha, aulas particulares, artesanato, carpintaria, marcenaria, etc)"
  "I"  "Trabalhador doméstico em casa de outras pessoas (faxineiro, cozinheiro, mordomo, motorista particular, jardineiro, vigia, acompanhante de idosos/as, etc)"
  "J"  "No lar (sem remuneração)"
  "K"  "Não trabalha"
  "L"  "Não sei"
/Q20
  "A"  "Na agricultura, no campo, em fazenda ou na pesca"
  "B"  "Na indústria"
  "C"  "Na construção civil"
  "D"  "No comércio, banco, transporte, hotelaria ou outros serviços"
  "E"  "FuncionáriA público do governo federal, estadual ou municipal"
  "F"  "Profissional liberal, professora ou técnica de nível superior"
  "G"  "Trabalhadora fora de casa em atividades informais (feirante, ambulante, guardadora de carros, catadora de lixo, etc)"
  "H"  "Trabalha em casa em serviços (costura, cozinha, aulas particulares, artesanato, etc)"
  "I"  "Trabalhador doméstico em casa de outras pessoas (cozinheira, arrumadeira, governanta, babá, lavadeira, faxineira, acompanhante de idosos/as, etc)"
  "J"  "No lar (sem remuneração)"
  "K"  "Outro"
  "L"  "Não trabalha"
  "M"  "Não sei"
/Q21
  "A"  "Até 1 salário mínimo (até R$ 465,00 inclusive)"
  "B"  "De 1 a 2 salários mínimos (R$ 465,00 a R$ 930,00 inclusive)"
  "C"  "De 2 a 5 salários mínimos (R$ 930,00 a R$ 2.325,00 inclusive)"
  "D"  "De 5 a 10 salários mínimos (R$ 2.325,00 a R$ 4.650,00 inclusive)"
  "E"  "De 10 a 30 salários mínimos (R$ 4.650,00 a R$ 13.950,00 inclusive)"
  "F"  "De 30 a 50 salários mínimos (R$ 13.950,00 a R$ 23.250,00 inclusive)"
  "G"  "Mais de 50 salários mínimos (mais de R$ 23.250,00)"
  "H"  "Nenhuma renda"
/Q22
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q23
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q24
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q25
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q26
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q27
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q28
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q29
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q30
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q31
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q32
  "A"  "1"
  "B"  "2"
  "C"  "3 ou mais"
  "D"  "Não tem"
/Q33
  "A"  "Sim "
  "B"  "Não"
/Q34
  "A"  "Sim "
  "B"  "Não"
/Q35
  "A"  "Sim "
  "B"  "Não"
/Q36
  "A"  "Sim "
  "B"  "Não"
/Q37
  "A"  "Sim "
  "B"  "Não"
/Q38
  "A"  "Sim "
  "B"  "Não"
/Q39
  "A"  "Sim "
  "B"  "Não"
/Q40
  "A"  "Para  testar seus conhecimentos / capacidade de raciocínio"
  "B"  "Para entrar na faculdade / conseguir pontos para o vestibular/conseguir bolsa do governo"
  "C"  "Para ter um bom emprego / saber se está preparado(a) para o futuro profissional"
  "D"  "Para obter minha certificação do Ensino Médio"
  "E"  "Não sei"
  "F"  "Nenhuma das anteriores"
/Q41
  "A"  "Porque não encontrei outro modo de conseguir o certificado de conclusão do ensino médio"
  "B"  "Porque era a melhor alternativa para conseguir o certificado de conclusão do ensino médio."
  "C"  "Porque achei que era uma boa forma de avaliar meus conhecimentos"
  "D"  "Os(as) professores(as) do meu curso recomendaram"
  "E"  "Quero continuar meus estudos na educação superior"
  "F"  "Porque era a melhor maneira para conciliar estudo e trabalho"
  "G"  "Porque não quero e não gosto de estudar no curso regular"
/Q42
  "A"  "Trabalho, estou empregado com carteira de trabalho assinada"
  "B"  "Trabalho, mas não tenho carteira de trabalho assinada"
  "C"  "Trabalho por conta própria, não tenho carteira de trabalho assinada"
  "D"  "Já trabalhei, mas não estou trabalhando"
  "E"  "Nunca trabalhei"
  "F"  "Nunca trabalhei, mas estou procurando trabalho"
/Q43
  "A"  "Sim, todo o tempo"
  "B"  "Sim, menos de 1 ano"
  "C"  "Sim, de 1 a 2 anos"
  "D"  "Sim, de 2 a 3 anos"
  "E"  "Sim, mais de 3 anos"
  "F"  "Não"
/Q44
  "A"  "Sem jornada fixa, até 10 horas semanais"
  "B"  "De 11 a 20 horas semanais"
  "C"  "De 21 a 30 horas semanais"
  "D"  "De 31 a 40 horas semanais"
  "E"  "Mais de 40 horas semanais"
/Q45
  "A"  "Para ajudar meus pais nas despesas com a casa, sustentar a família"
  "B"  "Para meu sustento e o de minha família (esposo/a, filhos/as, etc)"
  "C"  "Para ser independente (ter meu sustento, ganhar meu próprio dinheiro)"
  "D"  "Para adquirir experiência"
  "E"  "Para ajudar minha comunidade"
  "F"  "Outra finalidade"
  "G"  "Nunca trabalhei enquanto estudava"
/Q46
  "A"  "Antes dos 14 anos"
  "B"  "Entre 14 e 16 anos"
  "C"  "Entre 17 e 18 anos"
  "D"  "Após 18 anos"
  "E"  "Nunca trabalhei enquanto estudava"
/Q47
  "A"  "Até 1 salário mínimo (até R$ 465,00 inclusive)"
  "B"  "De 1 a 2 salários mínimos (R$ 465,00 a R$ 930,00 inclusive)"
  "C"  "De 2 a 5 salários mínimos (R$ 930,00 a R$ 2.325,00 inclusive)"
  "D"  "De 5 a 10 salários mínimos (R$ 2.325,00 a R$ 4.650,00 inclusive)"
  "E"  "De 10 a 30 salários mínimos (R$ 4.650,00 a R$ 13.950,00 inclusive)"
  "F"  "De 30 a 50 salários mínimos (R$ 13.950,00 a R$ 23.250,00 inclusive)"
  "G"  "Mais de 50 salários mínimos (mais de R$ 23.250,00)"
  "H"  "Não estou trabalhando"
/Q48
  "A"  "Sim"
  "B"  "Não"
/Q49
  "A"  "Na agricultura, no campo, em fazenda ou na pesca"
  "B"  "Na indústria"
  "C"  "Na construção civil"
  "D"  "No comércio, banco, transporte, hotelaria ou outros serviços"
  "E"  "Funcionário(a) público do governo federal, estadual ou municipal"
  "F"  "Profissional liberal, professor(a) ou técnico(a) de nível superior"
  "G"  "Trabalhador(a) fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador(a) de carros, catador(a) de lixo, etc)"
  "H"  "Trabalha em casa em serviços (costura, cozinha, aulas particulares, artesanato, carpintaria, etc)"
  "I"  "Trabalhador doméstico em casa de outras pessoas (cozinheiro(a), mordomo/governanta, jardineiro,babá, lavadeira, faxineiro(a), acompanhante de idosos/as, etc)"
  "J"  "No lar (sem remuneração)"
  "K"  "Outro"
  "L"  "Não trabalha"
  "M"  "Não sei"
/Q50
  "A"  "Menos de 1 ano"
  "B"  "Entre 1 e 2 anos"
  "C"  "Entre 2 e 4 anos"
  "D"  "Mais de 4 anos"
/Q51
  "A"  "Sim"
  "B"  "Não"
/Q52
  "A"  "Sim"
  "B"  "Não"
/Q53
  "A"  "Sim"
  "B"  "Não"
/Q54
  "A"  "Sim"
  "B"  "Não"
/Q55
  "A"  "Atrapalhou os estudos"
  "B"  "Possibilitou crescimento pessoal"
  "C"  "Atrapalhou os estudos, mas possibilitou crescimento pessoal"
  "D"  "Não atrapalhou os estudos"
  "E"  "Não trabalho / não trabalhei"
/Q56
  "A"  "Sim"
  "B"  "Não"
  "C"  "Não sei"
/Q57
  "A"  "Sim"
  "B"  "Não"
/Q58
  "A"  "Sim"
  "B"  "Não"
/Q59
  "A"  "Sim"
  "B"  "Não"
/Q60
  "A"  "Sim"
  "B"  "Não"
/Q61
  "A"  "Sim"
  "B"  "Não"
/Q62
  "A"  "Sim"
  "B"  "Não"
/Q63
  "A"  "Sim"
  "B"  "Não"
/Q64
  "A"  "Sim"
  "B"  "Não"
/Q65
  "A"  "Sim"
  "B"  "Não"
/Q66
  "A"  "Sim"
  "B"  "Não"
/Q67
  "A"  "Sim"
  "B"  "Não"
/Q68
  "A"  "Sim"
  "B"  "Não"
/Q69
  "A"  "Sim"
  "B"  "Não"
/Q70
  "A"  "Sim"
  "B"  "Não"
/Q71
  "A"  "Sim"
  "B"  "Não"
/Q72
  "A"  "Menos de 8 anos"
  "B"  "8 anos"
  "C"  "9 anos"
  "D"  "10 anos"
  "E"  "11 anos"
  "F"  "Mais de 11 anos"
  "G"  "Não cursei"
/Q73
  "A"  "Somente em escola pública"
  "B"  "Parte em escola pública e parte em escola particular"
  "C"  "Somente em escola particular"
  "D"  "Somente em escola indígena ou em escola situada em comunidade quilombola"
  "E"  "Parte na escola indígena e parte em escola não-indígena"
  "F"  "Parte em escola situada em comunidade quilombola e parte em escola fora de área quilombola"
  "G"  "Não frenquentei a escola"
/Q74
  "A"  "Vai concluir após 2009"
  "B"  "Vai concluir no segundo semestre de 2009"
  "C"  "No primeiro semestre de 2009"
  "D"  "Em 2008"
  "E"  "Em 2007"
  "F"  "Em 2006"
  "G"  "Em 2005"
  "H"  "Em 2004"
  "I"  "Entre 2003 e 2002"
  "J"  "Antes de 2002"
  "K"  "Não cursei o ensino médio"
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
  "A"  "Somente em escola pública"
  "B"  "Maior parte em escola pública"
  "C"  "Somente em escola particular"
  "D"  "Maior parte em escola particular"
  "E"  "Somente em escola indígena"
  "F"  "Maior parte em escola não-indígena"
  "G"  "Somente em escola situada em comunidade quilombola"
  "H"  "Maior parte em escola situada em comunidade não quilombola"
/Q78
  "A"  "Ensino regular"
  "B"  "Educação para jovens e adultos (antigo supletivo)"
  "C"  "Ensino técnico / ensino profissional"
/Q79
  "A"  "Sim"
  "B"  "Não"
/Q80
  "A"  "Sim"
  "B"  "Não"
/Q81
  "A"  "Sim"
  "B"  "Não"
/Q82
  "A"  "Sim"
  "B"  "Não"
/Q83
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q84
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q85
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q86
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q87
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q88
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q89
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q90
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q91
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q92
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q93
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q94
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q95
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
  "C"  "Nunca"
/Q96
  "A"  "Freqüentemente (todo dia ou quase todo dia)"
  "B"  "Às vezes"
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
  "B"  "Não"
/Q117
  "A"  "Sim "
  "B"  "Não"
/Q118
  "A"  "Sim "
  "B"  "Não"
/Q119
  "A"  "Sim "
  "B"  "Não"
/Q120
  "A"  "Sim "
  "B"  "Não"
/Q121
  "A"  "Sim "
  "B"  "Não"
/Q122
  "A"  "Sim "
  "B"  "Não"
/Q123
  "A"  "Eu me considero preparado(a) para entrar no mercado de trabalho"
  "B"  "Apesar de ter freqüentado uma boa escola, eu me considero despreparado(a), pois não aprendi o suficiente para conseguir um emprego"
  "C"  "Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola, que não me preparou o suficiente"
  "D"  "Não sei"
/Q124
  "A"  "Sim"
  "B"  "Não"
/Q125
  "A"  "Sim"
  "B"  "Não"
/Q126
  "A"  "Sim"
  "B"  "Não"
/Q127
  "A"  "Sim"
  "B"  "Não"
/Q128
  "A"  "Sim"
  "B"  "Não"
/Q129
  "A"  "Sim"
  "B"  "Não"
/Q130
  "A"  "Sim"
  "B"  "Não"
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
  "L"  "Não sei"
  "M"  "Não cursei"
/Q148
  "A"  "Sim"
  "B"  "Não"
/Q149
  "A"  "Sim"
  "B"  "Não"
/Q150
  "A"  "Sim"
  "B"  "Não"
/Q151
  "A"  "Sim"
  "B"  "Não"
/Q152
  "A"  "Sim"
  "B"  "Não"
/Q153
  "A"  "Sim"
  "B"  "Não"
/Q154
  "A"  "Sim"
  "B"  "Não"
/Q155
  "A"  "Sim"
  "B"  "Não"
/Q156
  "A"  "Sim"
  "B"  "Não"
/Q157
  "A"  "Sim"
  "B"  "Não"
/Q158
  "A"  "Sim"
  "B"  "Não"
/Q159
  "A"  "Sim"
  "B"  "Não"
/Q160
  "A"  "Sim"
  "B"  "Não"
/Q161
  "A"  "Sim"
  "B"  "Não"
/Q162
  "A"  "Sim"
  "B"  "Não"
/Q163
  "A"  "Sim"
  "B"  "Não"
/Q164
  "A"  "Sim"
  "B"  "Não"
/Q165
  "A"  "Sim"
  "B"  "Não"
/Q166
  "A"  "Sim"
  "B"  "Não"
/Q167
  "A"  "Sim"
  "B"  "Não"
/Q168
  "A"  "Sim"
  "B"  "Não"
/Q169
  "A"  "Sim"
  "B"  "Não"
/Q170
  "A"  "Sim"
  "B"  "Não"
/Q171
  "A"  "Sim"
  "B"  "Não"
/Q172
  "A"  "Sim"
  "B"  "Não"
/Q173
  "A"  "Sim"
  "B"  "Não"
/Q174
  "A"  "Sim"
  "B"  "Não"
/Q175
  "A"  "Sim"
  "B"  "Não"
/Q176
  "A"  "Sim"
  "B"  "Não"
/Q177
  "A"  "Sim"
  "B"  "Não"
/Q178
  "A"  "Sim"
  "B"  "Não"
/Q179
  "A"  "Sim"
  "B"  "Não"
/Q180
  "A"  "Sim"
  "B"  "Não"
/Q181
  "A"  "Sim"
  "B"  "Não"
/Q182
  "A"  "Sim"
  "B"  "Não"
/Q183
  "A"  "Sim"
  "B"  "Não"
/Q184
  "A"  "Sim"
  "B"  "Não"
/Q185
  "A"  "Sim"
  "B"  "Não"
/Q186
  "A"  "Sim"
  "B"  "Não"
/Q187
  "A"  "Sim"
  "B"  "Não"
/Q188
  "A"  "Sim"
  "B"  "Não"
/Q189
  "A"  "Sim"
  "B"  "Não"
/Q190
  "A"  "Sim"
  "B"  "Não"
/Q191
  "A"  "Sim"
  "B"  "Não"
/Q192
  "A"  "Sim"
  "B"  "Não"
/Q193
  "A"  "Sim"
  "B"  "Não"
/Q194
  "A"  "Sim"
  "B"  "Não"
/Q195
  "A"  "Sim"
  "B"  "Não"
/Q196
  "A"  "Sim"
  "B"  "Não"
/Q197
  "A"  "Sim"
  "B"  "Não"
/Q198
  "A"  "Sim"
  "B"  "Não"
/Q199
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q200
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q201
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q202
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q203
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q204
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q205
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q206
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q207
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q208
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q209
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q210
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q211
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q212
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q213
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q214
  "A"  "Muito"
  "B"  "Pouco"
  "C"  "Não me interesso"
/Q215
  "A"  "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
  "B"  "Formação básica necessária para obter um emprego melhor"
  "C"  "Condições de melhorar minha posição no emprego atual"
  "D"  "Obtenção de cultura geral / ampliação de minha formação pessoal"
  "E"  "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
  "F"  "Atender à expectativa de meus pais sobre meus estudos"
  "G"  "Formação humana e cidadã para ser uma pessoa melhor e mais respeitosa das diferenças"
/Q216
  "A"  "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
  "B"  "Formação básica necessária para obter um emprego melhor"
  "C"  "Condições de melhorar minha posição no emprego atual"
  "D"  "Obtenção de cultura geral / ampliação de minha formação pessoal"
  "E"  "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
  "F"  "Atender à expectativa de meus pais sobre meus estudos"
  "G"  "Formação humana e cidadã para ser uma pessoa melhor e mais respeitosa das diferenças"
/Q217
  "A"  "Obtenção de um certificado de conclusão de curso / obtenção de um diploma"
  "B"  "Formação básica necessária para obter um emprego melhor"
  "C"  "Condições de melhorar minha posição no emprego atual"
  "D"  "Obtenção de cultura geral / ampliação de minha formação pessoal"
  "E"  "Formação básica necessária para continuar os estudos em uma universidade / faculdade"
  "F"  "Atender à expectativa de meus pais sobre meus estudos"
  "G"  "Formação humana e cidadã para ser uma pessoa melhor e mais respeitosa das diferenças"
/Q218
  "A"  "Já conclui o ensino médio"
  "B"  "Prestar vestibular e continuar os estudos no ensino superior"
  "C"  "Procurar um emprego"
  "D"  "Prestar vestibular e continuar a trabalhar"
  "E"  "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho"
  "F"  "Trabalhar por conta própria / trabalhar em negócio da família"
  "G"  "Trabalhar em atividade ligada à comunidade indígena"
  "H"  "Trabalhar em atividade ligada à comunidade quilombola"
  "I"  "Ainda não decidiu"
/Q219
  "A"  "Gostaria de ter um diploma universitário para conseguir um bom emprego"
  "B"  "Gostaria de prestar um concurso e trabalhar no setor público"
  "C"  "Gostaria de ganhar dinheiro em meu próprio negócio"
  "D"  "Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade indígena"
  "E"  "Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade quilombola"
  "F"  "Não planejei"
/Q220
  "A"  "Ainda não escolhi"
  "B"  "Profissão ligada às Engenharias / Ciências Tecnológicas / Matemáticas"
  "C"  "Profissão ligada às Ciências Humanas"
  "D"  "Profissão ligada às Artes"
  "E"  "Profissão ligadas às Ciências Biológicas e de Saúde"
  "F"  "Professor(a) de Ensino Fundamental, Médio ou Superior"
  "G"  "Não vou seguir nenhuma profissão"
/Q221
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "Não ajudou"
/Q222
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "Não ajudou"
/Q223
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "Não ajudou"
/Q224
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "Não ajudou"
/Q225
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "Não ajudou"
/Q226
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "Não ajudou"
/Q227
  "A"  "Ajudou muito"
  "B"  "Ajudou pouco"
  "C"  "Não ajudou"
/Q228
  "A"  "Sim, estou estudando no momento atual"
  "B"  "Sim, mas não estou estudando no momento atual"
  "C"  "Não"
/Q229
  "A"  "Sim "
  "B"  "Não"
/Q230
  "A"  "Sim "
  "B"  "Não"
/Q231
  "A"  "Sim "
  "B"  "Não"
/Q232
  "A"  "Sim "
  "B"  "Não"
/Q233
  "A"  "Sim "
  "B"  "Não"
/Q234
  "A"  "Sim "
  "B"  "Não"
/Q235
  "A"  "Sim "
  "B"  "Não"
/Q236
  "A"  "Sim "
  "B"  "Não"
/Q237
  "A"  "Sim "
  "B"  "Não"
/Q238
  "A"  "Sim "
  "B"  "Não"
/Q239
  "A"  "Sim "
  "B"  "Não"
/Q240
  "A"  "Sim "
  "B"  "Não"
/Q241
  "A"  "Frequenta curso presencial em escola pública"
  "B"  "Frequenta curso presencial em escola particular"
  "C"  "Frequenta curso presencial na empresa em que trabalha"
  "D"  "Frequenta tele-sala"
  "E"  "Frequenta curso promovido por instituição religiosa ou filantrópica"
  "F"  "Faz curso a distância (via rádio,  televisão, internet, correio, com apostilas)"
  "G"  "Não frequenta"
/Q242
  "A"  "Diurno"
  "B"  "Noturno"
  "C"  "A distância"
  "D"  "Não curso"
/Q243
  "A"  "Sim"
  "B"  "Não"
/Q244
  "A"  "Sim"
  "B"  "Não"
/Q245
  "A"  "Sim"
  "B"  "Não"
/Q246
  "A"  "Sim"
  "B"  "Não"
/Q247
  "A"  "Sim"
  "B"  "Não"
/Q248
  "A"  "Sim"
  "B"  "Não"
/Q249
  "A"  "Sim"
  "B"  "Não"
/Q250
  "A"  "Sim"
  "B"  "Não"
/Q251
  "A"  "Sim"
  "B"  "Não"
/Q252
  "A"  "Sim"
  "B"  "Não"
/Q253
  "A"  "1ª série do Ensino Fundamental"
  "B"  "2ª série do Ensino Fundamental"
  "C"  "3ª série do Ensino Fundamental"
  "D"  "4ª série do Ensino Fundamental"
  "E"  "5ª série do Ensino Fundamental"
  "F"  "6ª série do Ensino Fundamental"
  "G"  "7ª série do Ensino Fundamental"
  "H"  "8ª série do Ensino Fundamental"
  "I"  "1ª série do Ensino Médio"
  "J"  "2ª série do Ensino Médio"
  "L"  "3ª série do Ensino Médio"
  "M"  "Não frequentou"
/Q254
  "A"  "Não cursou/não frequentou"
  "B"  "1 ano"
  "C"  "2 ano"
  "D"  "Mais de 2 anos"
/Q255
  "A"  "Não cursou/não frequentou"
  "B"  "3 ano"
  "C"  "4 ano"
  "D"  "Mais de 2 anos"
/Q256
  "A"  "Não cursou/não frequentou"
  "B"  "5 ano"
  "C"  "6 ano"
  "D"  "Mais de 2 anos"
/Q257
  "A"  "Escola da Prefeitura (Municipal)"
  "B"  "Escola estadual ou federal"
  "C"  "Escola particular"
  "D"  "Escola de igreja ou instituição filantrópica"
  "E"  "Não cursou"
/Q258
  "A"  "Escola da Prefeitura (Municipal)"
  "B"  "Escola estadual ou federal"
  "C"  "Escola particular"
  "D"  "Escola de igreja ou instituição filantrópica"
  "E"  "Não cursou"
/Q259
  "A"  "Escola da Prefeitura (Municipal)"
  "B"  "Escola estadual ou federal"
  "C"  "Escola particular"
  "D"  "Escola de igreja ou instituição filantrópica"
  "E"  "Não cursou"
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
  "B"  "Não"
/Q262
  "A"  "Sim"
  "B"  "Não"
/Q263
  "A"  "Sim"
  "B"  "Não"
/Q264
  "A"  "Sim"
  "B"  "Não"
/Q265
  "A"  "Sim"
  "B"  "Não"
/Q266
  "A"  "Sim"
  "B"  "Não"
/Q267
  "A"  "Sim"
  "B"  "Não"
/Q268
  "A"  "Sim"
  "B"  "Não"
/Q269
  "A"  "Sim"
  "B"  "Não"
/Q270
  "A"  "Sim"
  "B"  "Não"
/Q271
  "A"  "Sim"
  "B"  "Não"
/Q272
  "A"  "Sim"
  "B"  "Não"
/Q273
  "A"  "Sim"
  "B"  "Não"
/Q274
  "A"  "Sim"
  "B"  "Não"
/Q275
  "A"  "Sim"
  "B"  "Não"
/Q276
  "A"  "Sim"
  "B"  "Não"
/Q277
  "A"  "Sim"
  "B"  "Não"
/Q278
  "A"  "Sim"
  "B"  "Não"
/Q279
  "A"  "Sim"
  "B"  "Não"
/Q280
  "A"  "Sim"
  "B"  "Não"
/Q281
  "A"  "Sim"
  "B"  "Não"
/Q282
  "A"  "Sim"
  "B"  "Não"
/Q283
  "A"  "Sim"
  "B"  "Não"
/Q284
  "A"  "Sim"
  "B"  "Não"
/Q285
  "A"  "Sim"
  "B"  "Não"
/Q286
  "A"  "Sim"
  "B"  "Não"
/Q287
  "A"  "Sim"
  "B"  "Não"
/Q288
  "A"  "Sim"
  "B"  "Não"
/Q289
  "A"  "Sim"
  "B"  "Não"
/Q290
  "A"  "Sim"
  "B"  "Não"
/Q291
  "A"  "Sim"
  "B"  "Não"
/Q292
  "A"  "Sim"
  "B"  "Não"
/Q293
  "A"  "Sim"
  "B"  "Não"
.