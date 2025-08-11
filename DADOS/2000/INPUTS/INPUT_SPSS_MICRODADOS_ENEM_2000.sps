/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_2000.csv no diretório C:\ do computador.	                  */
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
Q1 "Sexo"
Q2 "Ano em que nasceu"
Q3 "Como se considera"
Q4 "Qual o estado civil"
Q5 "Como mora"
Q6 "Mora sozinho(a)"
Q7 "Mora com o pai"
Q8 "Mora com a mãe"
Q9 "Mora com mulher, marido, companheiro ou companheira."
Q10 "Mora com filhos"
Q11 "Mora com irmãos"
Q12 "Mora com outros parentes"
Q13 "Mora com amigos ou colegas"
Q14 "Outra situação."
Q15 "Quantidade de pessoas que moram na casa"
Q16 "Quantos filhos tem"
Q17 "O grau de escolaridade do pai do candidato"
Q18 "O grau de escolaridade de mãe do candidato"
Q19 "Área que o pai trabalha ou trabalhou, na maior parte da vida"
Q20 "Qual a posição do pai neste trabalho, na maior parte do tempo"
Q21 "Área que a mãe trabalha ou trabalhou, na maior parte da vida"
Q22 "Qual a posição da mãe neste trabalho, na maior parte do tempo"
Q23 "Renda  total (Todos que moram na mesma casa)"
Q24 "Quais e quantos dos itens abaixo há em sua casa? Automóvel"
Q25 "Quais e quantos dos itens abaixo há em sua casa? TV em cores"
Q26 "Quais e quantos dos itens abaixo há em sua casa?  Microcomputador"
Q27 "Quais e quantos dos itens abaixo há em sua casa? Videocassete"
Q28 "Quais e quantos dos itens abaixo há em sua casa? Máquina de lavar roupa"
Q29 "Quais e quantos dos itens abaixo há em sua casa? Aspirador de pó"
Q30 "Quais e quantos dos itens abaixo há em sua casa? Geladeira"
Q31 "Quais e quantos dos itens abaixo há em sua casa? Freezer"
Q32 "Quais e quantos dos itens abaixo há em sua casa? Telefone"
Q33 "Tem casa própria"
Q34 "Tem casa em rua urbanizada (com calçamento ou asfaltada)"
Q35 "Se a casa tem água corrente de torneira"
Q36 "Se a casa tem eletricidade"
Q37 "Tem empregada doméstica mensalista"
Q38 "Trabalha, ou já trabalhou, ganhando algum salário ou rendimento"
Q39 "Trabalhou ou teve alguma atividade remunerada durante o ensino médio (2º grau)"
Q40 "Quantas horas trabalhava, durante o ensino médio (2º grau)"
Q41 "Com que finalidade trabalhava, enquanto estudava no ensino médio (antigo 2º grau)"
Q42 "Com que idade começou a exercer atividade remunerada"
Q43 "Se estiver trabalhando atualmente, qual a renda ou salário mensal"
Q44 "Por que trabalha atualmente"
Q45 "Em que trabalha atualmente"
Q46 "Qual a sua posição no trabalho"
Q47 "Trabalha na ocupação para a qual se preparou nos estudos"
Q48 "Quanto tempo está trabalhando nessa atividade"
Q49 "Anos que levou para concluir o ensino fundamental (1º grau)"
Q50 "Em que tipo de escola cursou o ensino fundamental (1ª grau)"
Q51 "Em que ano concluiu ou concluirá o ensino médio (2º grau)"
Q52 "Quantos anos levou para cursar o ensino médio (2º grau)"
Q53 "Em que turno cursou ou esta cursando o ensino médio (2º grau)"
Q54 "Em que  tipo escola cursou ou está cursando o ensino médio (2º grau)"
Q55 "Em que modalidade de ensino concluiu ou vai concluir o ensino médio (2º grau)"
Q56 "Fez curso de língua estrangeira fora da escola durante o ensino médio (2º grau)"
Q57 "Fez curso de computação ou informática fora da escola durante o ensino médio (2º grau)"
Q58 "Fez curso preparatório para o vestibular (cursinho) fora da escola durante o ensino médio (2º grau)"
Q59 "Fez artes plásticas em geral fora da escola durante o ensino médio (2º grau)"
Q60 "Fez atividades artistica em geral fora da escola durante o ensino médio (2º grau)"
Q61 "Fez atividade esportiva fora da escola durante o ensino médio (2º grau)"
Q62 "Outro(s) curso(s) ou outra(s) atividade(s)"
Q63 "Com que freqüência lê jornais"
Q64 "Com que freqüência lê revistas de informação geral"
Q65 "Com que freqüência lê revistas de humor / quadrinhos"
Q66 "Com que freqüência lê revistas de divulgação científica (Ciência Hoje, Galileu, etc)"
Q67 "Com que freqüência lê romances, livros de ficção"
Q68 "Qual a sua avaliação da escola que fez o ensino médio quanto ao conhecimento que os(as) professores(as) têm das matérias e a maneira de transmiti-lo"
Q69 "Qual a sua avaliação da escola que fez o ensino médio quanto ao  dedicação dos professores para preparar aulas e atender aos alunos"
Q70 "Qual a sua avaliação da escola que fez o ensino médio quanto as iniciativas da escola para realizar excursões, trabalhos em equipe, projetos e outras atividades fora da rotina"
Q71 "Qual a sua avaliação da escola que fez o ensino médio quanto aos recursos pedagógicos: laboratórios, bibliotecas, TV, vídeos etc. disponíveis"
Q72 "Qual a sua avaliação da escola que fez o ensino médio quanto as condições físicas da escola – condição das salas, banheiros, limpeza"
Q73 "Qual a sua avaliação da escola que fez o ensino médio quanto ao  acesso a computadores e outros recursos de informática"
Q74 "Qual a sua avaliação da escola que fez o ensino médio quanto ao  ensino de língua estrangeira"
Q75 "Nos próximos três anos pretende: Continuar estudando"
Q76 "Nos próximos três anos pretende: conseguir um emprego"
Q77 "Nos próximos três anos pretende: melhorar a posição no emprego atual"
Q78 "Nos próximos três anos pretende: fazer um concurso público"
Q79 "Nos próximos três anos pretende: trabalhar por conta própria, abrir meu próprio negócio."
Q80 "Nos próximos três anos pretende: constituir família"
Q81 "Nos próximos três anos pretende: mudar para outra cidade ou estado do Brasil."
Q82 "Nos próximos três anos pretende: mudar para o Exterior"
Q83 "Você tem: interesse  em acompanhar a politica nacional"
Q84 "Você tem: interesse em acompanhar a politica internacional"
Q85 "Você tem: interesse em acompanhar esportes"
Q86 "Você tem: interesse em acompanhar a economia"
Q87 "Você tem: interesse em acompanhar a moda"
Q88 "Você tem: interesse em acompanhar atividades culturais, como teatro, pintura, arte, etc"
Q89 "Você tem: interesse em acompanhar questões sobre comportamento sexual, como a AIDS, a gravidez indesejada etc"
Q90 "Você tem: interesse em mudar para o exterior"
Q91 "Você tem: interesse em acompanhar questões sobre o meio ambiente"
Q92 "Você tem: interesse em questões relativas aos direitos de minorias"
Q93 "Você tem: interesse em questões sociais, como pobreza, o desemprego, a violência etc."
Q94 "Você participa: igreja ou grupo religioso"
Q95 "Você participa:  partido político ou movimento social."
Q96 "Você participa: sindicato ou associação profissional."
Q97 "Você participa: grupo de bairro ou associação comunitária"
Q98 "Você participa:  clube recreativo ou associação esportiva."
Q99 "Você participa:  grêmio estudantil"
Q100 "Qual a sua opinião  em relação ao Brasil, nos últimos anos"
Q101 "Qual a sua opinião  em relação a sua situação e a de sua família, nos últimos anos"
Q102 "Para ter uma boa vida no futuro você considera importante ter sido um um bom(a) aluno(a) na escola ou na faculdade"
Q103 "Para ter uma boa vida no futuro você considera importante ter cursado uma boa escola ou facudade"
Q104 "Para ter uma boa vida no futuro você considera importante ter conhecimentos profissionais práticos e úteis"
Q105 "Para ter uma boa vida no futuro você considera importante ter cultura geral (conhecer lígua, ler livros etc)"
Q106 "Para ter uma boa vida no futuro você considera importante ter amigos influentes"
Q107 "Para ter uma boa vida no futuro você considera importante  vir de uma família rica"
Q108 "Para ter uma boa vida no futuro você considera importante ser esperto(a)"
Q109 "Para ter uma boa vida no futuro você considera importante ter sorte na vida"
Q110 "Para ter uma boa vida no futuro você considera importante ser honesto(a) e justo(a)"
Q111 "Para ter uma boa vida no futuro você considera importante ser trabalhador"
Q112 "Para ter uma boa vida no futuro você considera importante ser gerneroso(a) e solidário(a) ckom os outros"
Q113 "Para ter uma boa vida no futuro você considera importante ser fé e seguir os ensinamentos religiosos"
Q114 "Você continuou os estudos depois de ter concluído o ensino médio (2º grau)"
Q115 "Está freqüentando um curso profissionalizante"
Q116 "Está freqüentando um curso preparatório para vestibular"
Q117 "Está freqüentando um curso superior"
Q118 "Está freqüentando um curso de língua estrangeira"
Q119 "Está freqüentando um curso de computação ou informática"
Q120 "Está freqüentando outro curso"
Q121 "Fez curso profissionalizante"
Q122 "Fez curso preparatório para vestibular, mas não ingressei no curso superior"
Q123 "Fez curso superior e se formou"
Q124 "Fez curso superior mas não se formou"
Q125 "Fez curso de língua estrangeira"
Q126 "Fez curso de computação ou informática"
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
 	1 "Já concluiu"
 	2 "Concluirá em 2000"
	3 "Concluirá após 2000"
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
	"D" "Desconsiderada"
 	"F" "Faltou à prova"
 	"N" "Redação anulada"
 	"P" "Presente à prova"
/IN_QSE
 	1 "Respondeu o questionário socioecômico"
 	0 "Não respondeu o questionário socioecômico"
/Q1
	"A" "Masculino"
	"B" "Feminino"
/Q2
	"A" "Após 1983."
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
	"D" "Amarelo(a) (De origem asiática)"
	"E" "Indígena."
/Q4
	"A" "Solteiro(a)"
	"B" "Casado(a) / mora com um(a) companheiro(a) "
	"C" "Separado(a) / divorciado(a) / desquitado(a) "
	"D" "Viúvo(a)"
/Q5
	"A" "Em casa ou apartamento, com sua família "
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
	"A" "Sim"
	"B" "Não"
/Q15
	"A" "Moro sozinho "
	"B" "Duas pessoas "
	"C" "Três pessoas "
	"D" "Quatro pessoas "
	"E" "Cinco pessoas "
	"F" "Seis pessoas"
	"G" "Mais de seis pessoas."
/Q16
	"A" "Não tenho filhos "
	"B" "Um filho"
	"C" "Dois filhos "
	"D" "Três filhos"
	"E" "Quatro ou mais filhos"
/Q17
	"A" "Não estudou"
	"B" "Da primeira à quarta série do ensino fundamental (antigo primário)"
	"C" "Da quinta à oitava série do ensino fundamental (antigo ginásio)"
	"D" "Ensino Médio (2º grau) incompleto "
	"E" "Ensino Médio (2º grau) completo "
	"F" "Ensino Superior incompleto "
	"G" "Ensino Superior completo"
	"H" "Pós-graduação (mestrado, especialização, doutorado)"
	"I" "Não sei"
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
	"A" "Na agricultura, no campo, em fazenda ou na pesca"
	"B" "Na indústria"
	"C" "No comércio, banco, transporte ou outros serviços"
	"D" "Como empregado em casa de família"
	"E" "Como funcionário do governo federal, do estado ou município, ou militar"
	"F" "Profissional liberal, professor ou técnico de nível superior"
	"G" "No lar"
	"H" "Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa"
	"I" "Não trabalha"
	"J" "Não sei"
/Q20
	"A" "Gerente, administrador ou diretor de empresa privada"
	"B" "Funcionário público (federal, estadual, municipal), com funções de direção"
	"C" "Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando"
	"D" "Empregado no setor privado, com carteira assinada"
	"E" "Funcionário público (federal, estadual ou municipal), sem função de direção"
	"F" "Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando"
	"G" "Trabalho temporário, informal, sem carteira assinada"
	"H" "Trabalha por conta própria"
	"I" "Aposentado"
	"J" "Não trabalha"
	"K" "Outra situação"
/Q21
	"A" "Na agricultura, no campo, em fazenda ou na pesca"
	"B" "Na indústria"
	"C" "No comércio, banco, transporte ou outros serviços"
	"D" "Como empregado em casa de família"
	"E" "Como funcionário do governo federal, do estado ou município, ou militar"
	"F" "Profissional liberal, professor ou técnico de nível superior"
	"G" "No lar"
	"H" "Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa"
	"I" "Não trabalha"
	"J" "Não sei"
/Q22
	"A" "Gerente, administradora ou diretora de empresa privada"
	"B" "Funcionária pública (federal, estadual ou municipal), com funções de direção"
	"C" "Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando"
	"D" "Empregada no setor privado, com carteira assinada"
	"E" "Funcionária pública (federal, estadual e municipal), sem função de direção"
	"F" "Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando"
	"G" "Trabalho temporário, informal, sem carteira assinada"
	"H" "Trabalha por conta própria"
	"I" "Desempregada"
	"J" "Aposentada"
	"K" "Outra situação"
/Q23
	"A" "Até 1 salário mínimo (R$ 151,00)"
	"B" "De 1 a 2 salários mínimos (de R$ 151,01 a R$ 302,00)"
	"C" "De 2 a 5 salários mínimos (de R$ 302,01 a R$ 755,00)"
	"D" "De 5 a 10 salários mínimos (de R$ 755,01 a R$ 1.510,00)"
	"E" "De 10 a 30 salários mínimos (de R$ 1.510,01 a R$ 4.530,00)"
	"F" "De 30 a 50 salários mínimos (de R$ 4.530,01 a R$ 7.550,00)"
	"G" "Mais de 50 salários mínimos (mais de R$ 7.550,00)"
	"H" "Nenhuma renda"
/Q24
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q25
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q26
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q27
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q28
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q29
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q30
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q31
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q32
	"A" "1"
	"B" "2"
	"C" "3 ou +"
	"D" "Não tem"
/Q33
	"A" "Sim"
	"B" "Não"
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
	"B" "Nunca trabalhei"
	"C" "Nunca trabalhei, mas estou procurando trabalho"
/Q39
	"A" "Sim, menos de 1 ano"
	"B" "Sim, de 1 a 2 anos"
	"C" "Sim, de 2 a 3 anos"
	"D" "Sim, todo o tempo"
	"E" "Não"
/Q40
	"A" "Sem jornada fixa, até 10 horas semanais"
	"B" "De 11 a 20 horas semanais"
	"C" "De 21 a 30 horas semanais"
	"D" "De 31 a 40 horas semanais"
	"E" "Mais de 40 horas semanais"
/Q41
	"A" "Para ajudar meus pais "
	"B" "Para meu próprio sustento "
	"C" "Para as duas finalidades"
	"D" "Para outra(s) finalidade(s)"
/Q42
	"A" "Antes dos 14 anos "
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Após 18 anos"
/Q43
	"A" "Até 1 salário mínimo (R$ 151,00)"
	"B" "De 1 a 2 salários mínimos (de R$ 151,01 a R$ 302,00)"
	"C" "De 2 a 5 salários mínimos (de R$ 302,01 a R$ 755,00)"
	"D" "De 5 a 10 salários mínimos (de R$ 755,01 a R$ 1.510,00)"
	"E" "De 10 a 30 salários mínimos (de R$ 1.510,01 a R$ 4.530,00)"
	"F" "De 30 a 50 salários mínimos (de R$ 4.530,01 a R$ 7.550,00)"
	"G" "Mais de 50 salários mínimos (mais de R$ 7.550,00)"
	"H" "Não estou trabalhando"
/Q44
	"A" "Para ajudar meus pais "
	"B" "Para meu próprio sustento "
	"C" "Para as duas finalidades"
	"D" "Para outra(s) finalidade(s)"
/Q45
	"A" "Na agricultura (campo, fazenda, pesca). "
	"B" "Na indústria."
	"C" "No comércio, banco, transporte ou outros serviços."
	"D" "Como empregado(a) em casa de família."
	"E" "Como funcionário(a) do governo federal, do estado ou do município, ou militar."
	"F" "Como profissional liberal, professor(a) ou técnico(a) de nível superior."
	"G" "No lar."
	"H" "Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa"
	"I" "Não trabalha"
/Q46
	"A" "Gerente, administrador(a) ou diretor(a) de empresa privada."
	"B" "Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção."
	"C" "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando"
	"D" "Empregado(a) no setor privado, com carteira assinada"
	"E" "Funcionário(a) público(a) (federal, estadual ou municipal), sem função de direção."
	"F" "Trabalho temporário, informal, sem carteira assinada"
	"G" "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando."
	"H" "Trabalho por conta própria Aposentado(a)."
	"I" "Não trabalho"
	"J" "Outra situação."
/Q47
	"A" "Sim"
	"B" "Não, porque não consegui trabalho na minha profissão"
	"C" "Não me preparei para um trabalho em específico/minha formação foi geral"
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
	"A" "Somente em escola pública"
	"B" "Parte em escola pública e parte em escola particular "
	"C" "Somente em escola particular"
/Q51
	"A" "Vou concluí-lo no segundo semestre de 2000. "
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
	"A" "Somente em escola pública"
	"B" "Parte em escola pública e parte em escola particular "
	"C" "Somente em escola particular"
/Q55
	"A" "Ensino regular"
	"B" "Ensino supletivo"
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
	"E" "Péssimo"
/Q69
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "Péssimo"
/Q70
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "Péssimo"
/Q71
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "Péssimo"
/Q72
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "Péssimo"
/Q73
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "Péssimo"
/Q74
	"A" "Excelente "
	"B" "Bom "
	"C" "Mais ou menos "
	"D" "Ruim "
	"E" "Péssimo"
/Q75
	"A" "Sim"
	"B" "Não"
/Q76
	"A" "Sim"
	"B" "Não"
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
	"A" "Sim"
	"B" "Não"
/Q83
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q84
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q85
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q86
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q87
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q88
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q89
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q90
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q91
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q92
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q93
	"A" "Muito "
	"B" "Pouco"
	"C" "Não me interesso"
/Q94
	"A" "Com frequência "
	"B" "Ás vezes"
	"C" "Não participo"
/Q95
	"A" "Com frequência "
	"B" "Ás vezes"
	"C" "Não participo"
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
	"A" "Melhorou "
	"B" "Piorou"
	"C" "Nem melhorou nem piorou"
/Q101
	"A" "Melhorou "
	"B" "Piorou"
	"C" "Nem melhorou nem piorou"
/Q102
	"A" "Importante"
	"B" "Sem importância"
/Q103
	"A" "Importante"
	"B" "Sem importância"
/Q104
	"A" "Importante"
	"B" "Sem importância"
/Q105
	"A" "Importante"
	"B" "Sem importância"
/Q106
	"A" "Importante"
	"B" "Sem importância"
/Q107
	"A" "Importante"
	"B" "Sem importância"
/Q108
	"A" "Importante"
	"B" "Sem importância"
/Q109
	"A" "Importante"
	"B" "Sem importância"
/Q110
	"A" "Importante"
	"B" "Sem importância"
/Q111
	"A" "Importante"
	"B" "Sem importância"
/Q112
	"A" "Importante"
	"B" "Sem importância"
/Q113
	"A" "Importante"
	"B" "Sem importância"
/Q114
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas não estou estudando no momento atual "
	"C" "Não"
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
/Q127
	"A" "Sim"
	"B" "Não"
.