/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_1999.csv no diretório C:\ do computador.	                  */
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
NU_INSCRICAO "Número de inscrição no ENEM."
NU_ANO	"Ano do Enem"
TP_FAIXA_ETARIA	"Faixa etária do inscrito"
TP_SEXO	"Sexo do inscrito"
CO_MUNICIPIO_RESIDENCIA   " Código do Município em que o inscrito mora:"
NO_MUNICIPIO_RESIDENCIA   " Nome do município em que o inscrito mora"
CO_UF_RESIDENCIA   " Código da Unidade da Federação da residencia do inscrito"
SG_UF_RESIDENCIA   " Sigla da Unidade da Federação da residencia do inscrito"
TP_ST_CONCLUSAO   " Situação de conclusão do Ensino Médio"
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
Q1 "Seu sexo"
Q2 "Ano em que você nasceu"
Q3 "Como  você se considera"
Q4 "Qual o seu estado civil"
Q5 "Como você mora"
Q6 "Quem mora com você?: moro sozinho(a)"
Q7 "Quem mora com você?:  pai"
Q8 "Quem mora com você?:  mãe"
Q9 "Quem mora com você?: mulher, marido, companheiro ou companheira."
Q10 "Quem mora com você?:  filhos"
Q11 "Quem mora com você?:  irmãos"
Q12 "Quem mora com você?: outros parentes"
Q13 "Quem mora com você?:  amigos ou colegas"
Q14 "Quem mora com você?:  pessoas"
Q15 "Quem mora com você?: Outra situação."
Q16 "Quantas pessoas moram em sua casa?"
Q17 "Quantos filhos tem"
Q18 "Até quanto seu pai estudou?"
Q19 "Até quanto sua mãe estudou?"
Q20 "Em que seu pai trabalha ou trabalhou, na maior parte da vida?"
Q21 "Qual a posição do seu pai neste trabalho, na maior parte do tempo"
Q22 "Em que sua mãe trabalha ou trabalhou, na maior parte da vida?"
Q23 "Qual a posição da sua mãe neste trabalho, na maior parte do tempo?"
Q24 "Qual a renda total do seu domicílio?"
Q25 "Quais e quanto itens  sua casa tem?: automóvel"
Q26 "Quais e quanto itens  sua casa tem?: TV em cores"
Q27 "Quais e quanto itens  sua casa tem?: microcomputador"
Q28 "Quais e quanto itens  sua casa tem?: videocassete"
Q29 "Quais e quanto itens  sua casa tem?:  máquina de lavar roupa"
Q30 "Quais e quanto itens  sua casa tem?: aspirador de pó"
Q31 "Quais e quanto itens  sua casa tem?: geladeira"
Q32 "Quais e quanto itens  sua casa tem?: Freezer"
Q33 "Quais e quanto itens  sua casa tem?:Telefone"
Q34 "Quais e quanto itens  sua casa tem?: tem casa própria"
Q35 "Quais e quanto itens  sua casa tem?: mora de aluguel"
Q36 "Quais e quanto itens  sua casa tem?: está em rua urbanizada (com calçamento ou asfaltada)"
Q37 "Quais e quanto itens  sua casa tem?:  tem água corrente de torneira"
Q38 "Quais e quanto itens  sua casa tem?:  tem eletricidade"
Q39 "Quais e quanto itens  sua casa tem?: empregada doméstica mensalista"
Q40 "Você trabalha, ou já trabalhou, ganhando algum salário ou rendimento?"
Q41 "Você trabalhou ou teve alguma atividade remunerada durante o ensino médio (2º grau)?"
Q42 "Quantas horas você trabalhava por dia, durante seus estudos no ensino médio (2º grau)?"
Q43 "Com que finalidade você trabalhava, enquanto estudava no ensino médio (antigo 2º grau)?"
Q44 "Se você trabalhava durante seus estudos no ensino médio, com que idade começou a exercer atividade remunerada"
Q45 "Se estiver trabalhando atualmente, qual a renda ou salário mensal"
Q46 "Por que trabalha atualmente:"
Q47 "Em que você trabalha atualmente?"
Q48 "Qual a sua posição no trabalho"
Q49 "Você está atualmente trabalhando em alguma atividade para o qual se preparou nos estudos?"
Q50 "Quanto tempo você está trabalhando na atividade?"
Q51 "Anos que levou para concluir o ensino fundamental (1º grau)"
Q52 "Em que tipo de escola cursou o ensino fundamental (1ª grau)"
Q53 "Em que ano concluiu ou concluirá o ensino médio (2º grau)"
Q54 "Quantos anos você levou para cursar o ensino médio (2º grau)?"
Q55 "Em que turno você cursou ou esta cursando o ensino médio (2º grau)"
Q56 "Em que  tipo escola cursou ou está cursando o ensino médio (2º grau)"
Q57 "Em que modalidade de ensino você concluiu ou vai concluir o ensino médio (2º grau)"
Q58 "Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): curso e língua estrangeira."
Q59 "Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): curso de computação ou informática"
Q60 "Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): curso preparatório para o vestibular (cursinho)"
Q61 "Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): artes plásticas em geral"
Q62 "Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): atividades artística"
Q63 "Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): atividade esportiva"
Q64 "A partir dos conhecimentos adquiridos no ensino médio (2º grau), o  candidato se considera apto a exercer uma profissão?"
Q65 "Com que frequência você lê jornais?"
Q66 "Com que frequência lê revistas de informação geral"
Q67 "Com que frequência lê revistas de humor / quadrinhos"
Q68 "Com que frequência lê revistas de divulgação científica (Ciência Hoje, Galileu, etc.)"
Q69 "Com que frequência lê romances, livros de ficção"
Q70 "Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a: conhecimento que os professores tem da matéria"
Q71 "Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  dedicação dos professores – pontualidade, preparação das aulas, etc."
Q72 "Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  capacidade da escola  em motivar os estudantes com pesquisa, excursões, trabalhos de equipe, projetos e outras atividades fora da rotina"
Q73 "Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a: recursos pedagógicos: laboratórios, bibliotecas, TV, vídeos etc."
Q74 "Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  condições físicas da escola - condição das salas, banheiros, limpeza"
Q75 "Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  acesso a computadores e outros recursos de informática"
Q76 "Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  ensino de língua estrangeira"
Q77 "O que você pretende fazer nos próximos 3 anos: continuar estudando"
Q78 "O que você pretende fazer nos próximos 3 anos: conseguir um emprego"
Q79 "O que você pretende fazer nos próximos 3 anos: melhorar a posição no emprego atual"
Q80 "O que você pretende fazer nos próximos 3 anos: fazer um concurso público"
Q81 "O que você pretende fazer nos próximos 3 anos: trabalhar por conta própria, abrir meu próprio negócio."
Q82 "O que você pretende fazer nos próximos 3 anos: constituir família"
Q83 "O que você pretende fazer nos próximos 3 anos: mudar para outra cidade ou estado do Brasil."
Q84 "O que você pretende fazer nos próximos 3 anos: mudar para o Exterior"
Q85 "O quanto você se interessa e acompanha: politica nacional"
Q86 "O quanto você se interessa e acompanha: a politica internacional"
Q87 "O quanto você se interessa e acompanha: esportes"
Q88 "O quanto você se interessa e acompanha: a economia"
Q89 "O quanto você se interessa e acompanha: a moda"
Q90 "O quanto você se interessa e acompanha: atividades culturais, como teatro, pintura, arte, etc."
Q91 "O quanto você se interessa e acompanha: música popular"
Q92 "O quanto você se interessa e acompanha: questões sobre comportamento sexual, como a AIDS, a gravidez indesejada etc."
Q93 "O quanto você se interessa e acompanha: questões sobre o meio ambiente"
Q94 "O quanto você se interessa e acompanha: questões relativas aos direitos de minorias"
Q95 "O quanto você se interessa e acompanha: questões sociais, como pobreza, o desemprego, a violência etc."
Q96 "Você participa de:  igreja ou grupo religioso"
Q97 "Você participa de: partido político ou movimento social."
Q98 "Você participa de:  sindicato ou associação profissional."
Q99 "Você participa de:  grupo de bairro ou associação comunitária"
Q100 "Você participa de:  clube recreativo ou associação esportiva."
Q101 "Você participa de:  grêmio estudantil"
Q102 "Para ter um bom futuro na vida você considera importante: ter sido um bom(a) aluno(a) na escola ou na faculdade"
Q103 "Para ter um bom futuro na vida você considera importante:  ter cursado uma boa escola ou faculdade"
Q104 "Para ter um bom futuro na vida você considera importante:  ter conhecimentos profissionais práticos e úteis"
Q105 "Para ter um bom futuro na vida você considera importante: ter cultura geral (conhecer língua, ler livros etc.)"
Q106 "Para ter um bom futuro na vida você considera importante:  ter amigos influentes"
Q107 "Para ter um bom futuro na vida você considera importante:  vir de uma família rica"
Q108 "O candidato do ENEM considera importante ser esperto"
Q109 "Para ter um bom futuro na vida você considera importante:  ter sorte na vida"
Q110 "Para ter um bom futuro na vida você considera importante:  ser honesto e justo"
Q111 "Para ter um bom futuro na vida você considera importante:  ser trabalhador"
Q112 "Para ter um bom futuro na vida você considera importante:  ser generoso(a) e solidário(a) com os outros"
Q113 "Para ter um bom futuro na vida você considera importante:  ter fé e seguir os ensinamentos religiosos"
Q114 "Você acha que o Brasil nos últimos anos:"
Q115 "Você acha que, nos últimos anos, sua situação e da sua família"
Q116 "Você continuou os estudos depois de ter concluído o ensino médio (2º grau)"
Q117 "Se você está estudando no momento atual, está desenvolvendo: um curso profissionalizante"
Q118 "Se você está estudando no momento atual, está desenvolvendo: curso preparatório para vestibular"
Q119 "Se você está estudando no momento atual, está desenvolvendo: curso superior"
Q120 "Se você está estudando no momento atual, está desenvolvendo: curso de língua estrangeira"
Q121 "Se você está estudando no momento atual, está desenvolvendo: um curso de computação ou informática"
Q122 "Se você está estudando no momento atual, está desenvolvendo: outro curso"
Q123 "Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso profissionalizante"
Q124 "Se você não está estuando no momento atual, mas continou seus estudos depois de ter concluido o ensino médio (2° Grau), desenvolveu: curso preparatório para vestibular, mas não ingressei no curso superior"
Q125 "Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso superior e se formou"
Q126 "Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso superior mas não se formou"
Q127 "Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso de língua estrangeira"
Q128 "Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso de computação ou informática"
Q129 "Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: outro curso"
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
 	1 "Já concluiu"
 	2 "Concluirá em 1999"
	3 "Concluirá após 1999"
	4 "Não concluí e não estou cursando o Ensino Médio"
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
	"A" "Após 1981"
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
	"D" "Amarelo(a) (De origem asiática)"
	"E" "Indígena."
/Q4
	"A" "Solteiro(a)"
	"B" "Casado(a) / mora com um(a) companheiro(a)"
	"C" "Separado(a) / divorciado(a) / desquitado(a)"
	"D" "Viúvo(a)"
/Q5
	"A" "Em casa ou apartamento, com sua família "
	"B" "Em casa ou apartamento, sozinho(a)"
	"C" "Em quarto ou cômodo alugado, sozinho(a)"
	"D" "Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc."
	"E" "Outra situação"
/Q6
	"A" "Sim"
	"B" "Não"
/Q7
	"A" "Sim"
	"B" "Não"
/Q8	"A" "Sim"
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
/Q13	"A" "Sim"
	"B" "Não"
/Q14
	"A" "Sim"
	"B" "Não"
/Q15
	"A" "Sim"
	"B" "Não"
/Q16
	"A" "Moro sozinho "
	"B" "Duas pessoas "
	"C" "Três pessoas "
	"D" "Quatro pessoas "
	"E" "Cinco pessoas "
	"F" "Seis pessoas"
	"G" "Mais de seis pessoas."
/Q17
	"A" "Não tenho filhos "
	"B" "Um filho"
	"C" "Dois filhos "
	"D" "Três filhos"
	"E" "Quatro ou mais filhos"
/Q18
	"A" "Não estudou"
	"B" "Da primeira à quarta série do ensino fundamental (antigo primário)"
	"C" "Da quinta à oitava série do ensino fundamental (antigo ginásio)"
	"D" "Ensino Médio (2º grau) incompleto "
	"E" "Ensino Médio (2º grau) completo "
	"F" "Ensino Superior incompleto "
	"G" "Ensino Superior completo"
	"H" "Pós-graduação (mestrado, especialização, doutorado)"
	"I" "Não sei"
/Q19
	"A" "Não estudou"
	"B" "Da primeira à quarta série do ensino fundamental (antigo primário)"
	"C" "Da quinta à oitava série do ensino fundamental (antigo ginásio)"
	"D" "Ensino Médio (2º grau) incompleto "
	"E" "Ensino Médio (2º grau) completo "
	"F" "Ensino Superior incompleto "
	"G" "Ensino Superior completo"
	"H" "Pós-graduação (mestrado, especialização, doutorado)"
	"I" "Não sei"
/Q20
	"A" "Na agricultura, no campo, em fazenda, na pesca "
	"B" "Na indústria"
	"C" "No comércio, bancos, transporte ou outros serviços"
	"D" "Como empregado em casa de família"
	"E" "Como funcionário do governo federal, do estado ou município, ou militar"
	"F" "Profissional liberal, professor ou técnico de nível superior"
	"G" "No lar"
	"H" "Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa"
	"I" "Não trabalha"
	"J" "Não sei"
/Q21
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcionário público (federal, estadual, municipal), com funções de direção"
	"C" "Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcionário público (federal, estadual ou municipal), sem função de direção"
	"F" "Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando"
	"G" "Trabalho temporário, informal, sem carteira assinada "
	"H" "Trabalha por conta própria"
	"I" "Desempregado"
	"J" "Aposentado "
	"K" "Não trabalha"
	"L" "Outra situação"
/Q22
	"A" "Na agricultura, no campo, em fazenda, na pesca "
	"B" "Na indústria"
	"C" "No comércio, bancos, transporte e outros serviços"
	"D" "Como empregada em casa de família"
	"E" "Como funcionária do governo federal, do estado ou município, ou militar"
	"F" "Como profissional liberal, professor ou técnico de nível superior"
	"G" "No lar"
	"H" "Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa"
	"I" "Não trabalha"
	"J" "Não sei"
/Q23
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcionário público (federal, estadual ou municipal), com funções de direção"
	"C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcionário público (federal, estadual ou municipal), sem função de direção"
	"F" "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando"
	"G" "Trabalho temporário, informal, sem carteira assinada "
	"H" "Trabalho por conta própria"
	"I" "Desempregado "
	"J" "Aposentado "
	"K" "Não trabalha"
	"L" "Outra situação"
/Q24
	"A" "Até 1 salário mínimo (até R$ 136,00)"
	"B" "De 1 a 2 salários mínimos (R$ 137,00 a R$ 272,00)"
	"C" "De 2 a 5 salários mínimos (R$ 273,00 a R$ 680,00)"
	"D" "De 5 a 10 salários mínimos (R$ 681,00 a R$ 1.360,00)"
	"E" "De 10 a 30 salários mínimos (R$ 1.361,00 a R$ 4.080,00)"
	"F" "De 30 a 50 salários mínimos (R$ 4.081,00 a R$ 6.800,00)"
	"G" "Mais de 50 salários mínimos (mais de R$ 6.800,00)"
	"H" "Nenhuma renda"
/Q25
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "Não tem"
/Q26
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "Não tem"
/Q27
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "Não tem"
/Q28
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "Não tem"
/Q29
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "Não tem"
/Q30
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "Não tem"
/Q31
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "Não tem"
/Q32
	"A" "1"
	"B" "2"
	"C" "3 ou + "
	"D" "Não tem"
/Q33
	"A" "1"
	"B" "2"
	"C" "3 ou + "
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
	"A" "Sim"
	"B" "Não"
/Q39
	"A" "Sim"
	"B" "Não"
/Q40
	"A" "Sim"
	"B" "Nunca trabalhou"
	"C" "Nunca trabalhou, mas está procurando trabalho"
/Q41
	"A" "Sim, todo o tempo"
	"B" "Sim, pelo menos durante um ano "
	"C" "Sim, mas só eventualmente"
	"D" "Não"
/Q42
	"A" "Sem jornada fixa, até 10 horas semanais "
	"B" "De 11 a 20 horas semanais"
	"C" "De 21 a 30 horas semanais"
	"D" "De 31 a 40 horas semanais"
/Q43
	"A" "Para ajudar meus pais "
	"B" "Para meu próprio sustento"
	"C" "Para as duas finalidades"
/Q44
	"A" "Antes dos 14 anos "
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Após 18 anos"
/Q45
	"A" "Até 1 salário mínimo (até R$ 136,00)"
	"B" "De 1 a 2 salários mínimos (R$ 137,00 a R$ 272,00)"
	"C" "De 2 a 5 salários mínimos (R$ 273,00 a R$ 680,00)"
	"D" "De 5 a 10 salários mínimos (R$ 681,00 a R$ 1.360,00)"
	"E" "De 10 a 30 salários mínimos (R$ 1.361,00 a R$ 4.080,00)"
	"F" "De 30 a 50 salários mínimos (R$ 4.081,00 a R$ 6.800,00)"
	"G" "Mais de 50 salários mínimos (mais de R$ 6.800,00)"
	"H" "Não estou trabalhando"
/Q46
	"A" "Para ajudar meus pais "
	"B" "Para meu próprio sustento"
	"C" "Para as duas finalidades"
/Q47
	"A" "Na agricultura (campo, fazenda, pesca). "
	"B" "Na indústria."
	"C" "No comércio, banco, transporte ou outros serviços."
	"D" "Como empregado(a) em casa de família."
	"E" "Como funcionário(a) do governo federal, do estado ou do município, ou militar."
	"F" "Como profissional liberal, professor(a) ou técnico(a) de nível superior."
	"G" "No lar."
	"H" "Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa"
	"I" "Não trabalha"
/Q48
	"A" "Gerente, administrador(a) ou diretor(a) de empresa privada."
	"B" "Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção."
	"C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
	"D" "Empregado(a) no setor privado, com carteira assinada"
	"E" "Funcionário(a) público(a) (federal, estadual ou municipal), sem função de direção."
	"F" "Trabalho temporário, informal, sem carteira assinada"
	"G" "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando."
	"H" "Trabalho por conta própria "
	"I" "Desempregado(a) "
	"J" "Aposentado(a)"
	"K" "Não trabalha"
	"L" "Outra situação"
/Q49
	"A" "Sim"
	"B" "Não, porque não consegui trabalho na minha profissão"
	"C" "Não me preparei para um trabalho em específico/minha formação foi geral"
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
	"A" "Somente em escola pública"
	"B" "Parte em escola pública e parte em escola particular "
	"C" "Somente em escola particular"
/Q53
	"A" "Vou concluí-lo no segundo semestre de 1999 "
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
	"A" "Somente em escola pública"
	"B" "Parte em escola pública e parte em escola particular "
	"C" "Somente em escola particular"
/Q57
	"A" "Ensino regular"
	"B" "Ensino supletivo"
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
	"B" "Mais ou menos "
	"C" "Pouco"
	"D" "Não"
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
	"E" "Péssimo"
/Q71
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "Péssimo"
/Q72
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "Péssimo"
/Q73
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "Péssimo"
/Q74
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "Péssimo"
/Q75
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "Péssimo"
/Q76
	"A" "Excelente"
	"B" "Bom"
	"C" "Mais ou menos"
	"D" "Ruim"
	"E" "Péssimo"
/Q77
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "Não"
/Q78
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "Não"
/Q79
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "Não"
/Q80
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "Não"
/Q81
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "Não"
/Q82
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "Não"
/Q83
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "Não"
/Q84
	"A" "Com certeza "
	"B" "Provavelmente"
	"C" "Não"
/Q85
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q86
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q87
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q88
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q89
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q90
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q91
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q92
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q93
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q94
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q95
	"A" "Muito"
	"B" "Um pouco"
	"C" "Não me interesso"
/Q96
	"A" "Com frequência "
	"B" "Ás vezes"
	"C" "Não participo"
/Q97
	"A" "Com frequência "
	"B" "Ás vezes"
	"C" "Não participo"
/Q98
	"A" "Com frequência "
	"B" "Ás vezes"
	"C" "Não participo"
/Q99
	"A" "Com frequência "
	"B" "Ás vezes"
	"C" "Não participo"
/Q100
	"A" "Com frequência "
	"B" "Ás vezes"
	"C" "Não participo"
/Q101
	"A" "Com frequência "
	"B" "Ás vezes"
	"C" "Não participo"
/Q102
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q103
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q104
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q105
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q106
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q107
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q108
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q109
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q110
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q111
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q112
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q113
	"A" "Muito importante "
	"B" "Importante"
	"C" "Sem importância"
/Q114
	"A" "Melhorou muito "
	"B" "Melhorou um pouco "
	"C" "Não melhorou "
	"D" "Piorou"
	"E" "Piorou muito"
/Q115
	"A" "Melhorou muito "
	"B" "Melhorou um pouco "
	"C" "Não melhorou "
	"D" "Piorou"
	"E" "Piorou muito"
/Q116
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas não estou estudando no momento atual "
	"C" "Não"
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
	"A" "Sim"
	"B" "Não"
/Q124
	"A" "Sim"
	"B" "Não"
/Q125
	"A" "Sim"
	"B" "Não"
/Q126
	"A" "Sim"
	"B" "Não"
/Q127	"A" "Sim"
	"B" "Não"
/Q128
	"A" "Sim"
	"B" "Não"
/Q129
	"A" "Sim"
	"B" "Não"
.