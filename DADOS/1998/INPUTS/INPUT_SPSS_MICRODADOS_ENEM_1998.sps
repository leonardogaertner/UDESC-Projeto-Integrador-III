/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica                                          */ 
/*                                   			                                    */
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)			*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_MICRODADOS_ENEM_1998                                                  */
/*----------------------------------------------------------------------------------------------------------------------------*/
/*DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE DADOS		*/
/* MICRODADOS_ENEM_1998     					*/
/*****************************************************************************************************/
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir os microdados é necessário salvar este programa e o arquivo                    */
/* MICRODADOS_ENEM_1998.csv no diretório C:\ do computador.	                  */
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
  /FILE="C:\MICRODADOS_ENEM_1998.csv" /*local do arquivo*/
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
.
CACHE.
EXECUTE.
DATASET NAME ENEM_1998 WINDOW=FRONT.

VARIABLE LABELS
NU_INSCRICAO "Número de inscrição no ENEM."
NU_ANO	"Ano do Enem"
TP_FAIXA_ETARIA	"Faixa etária do inscrito"
TP_SEXO	"Sexo do inscrito"
CO_MUNICIPIO_RESIDENCIA   " Código do Município em que o inscrito mora:"
NO_MUNICIPIO_RESIDENCIA   " Nome do município em que o inscrito mora"
CO_UF_RESIDENCIA   " Código da Unidade da Federação da residencia do inscrito"
SG_UF_RESIDENCIA   " Sigla da Unidade da Federação da residencia do inscrito"
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
Q3 "Entre que meses nasceu"
Q4 "Como se considera"
Q5 "Qual o estado civil"
Q6 "Com quem  mora"
Q7 "Quantidade de pessoas que moram no domicílio incluindo o candidato"
Q8 "Quantidade de irmãos do candidato do ENEM"
Q9 "Quantidade de filhos do candidato do ENEM"
Q10 "O grau de escolaridade do pai do candidato"
Q11 "Qual a profissão ou ocupação do pai"
Q12 "O grau de escolaridade da mãe do candidato"
Q13 "Qual a profissão ou ocupação da mãe"
Q14 "Anos que levou para concluir o ensino fundamental (1º grau)"
Q15 "Tipo de escola que cursou o ensino fundamental (1º grau)"
Q16 "Dependência administrativa do estabelecimento que o candidato do ENEM concluiu o ensino fundamental (1º grau)"
Q17 "Modalidade de ensino que o candidato concluiu o ensino fundamental"
Q18 "Ano de conclusão do ensino médio (2º grau)"
Q19 "Anos que levou para concluir o ensino médio (2º grau)"
Q20 "Turno que cursou o ensino médio (2º grau)"
Q21 "Turno que concluirá ou concluiu o ensino médio (2º grau)"
Q22 "Tipo de estabelecimento que concluirá ou conclui o ensino médio (2º grau)"
Q23 "Tipo de escola que cursou o ensino médio (2ºgrau)"
Q24 "Modalidade de ensino que o candidato concluiu o ensino médio (2º grau)"
Q25 "Fez curso/atividade: de língua estrangeira fora da escola durante o ensino médio (2º grau)"
Q26 "Fez curso/atividade: de computação ou informática fora da escola durante o ensino médio (2º grau)"
Q27 "Fez curso/atividade: de instrumento musical fora da escola durante o ensino médio (2º grau)"
Q28 "Fez curso/atividade: ginastica, esportes fora da escola durante o ensino médio (2º grau)"
Q29 "Fez curso/atividade: artes plásticas em geral fora da escola durante o ensino médio (2º grau)"
Q30 "Fez curso preparatório para o vestibular (cursinho) fora da escola durante o ensino médio (2º grau)"
Q31 "Fez outra atividade ou curso l fora da escola durante o ensino médio (2º grau)"
Q32 "Com que frequência lê jornais"
Q33 "Com que frequência lê revistas de informação geral"
Q34 "Com que frequência lê revistas de humor / quadrinhos"
Q35 "Com que frequência lê revistas científicas (Ciência Hoje, Super Interessante, etc.)"
Q36 "Com que frequência lê romances, livros de ficção"
Q37 "O quanto é importante para o candidato ser um sucesso na sua carreira ou no seu trabalho"
Q38 "O quanto é importante para o candidato ter um bom trabalho ou uma boa profissão"
Q39 "O quanto é importante para o candidato  ter um diploma universitário"
Q40 "O quanto é importante para o candidato conseguir um emprego"
Q41 "O quanto é importante para o candidato ganhar um bom salário"
Q42 "O quanto é importante para o candidato construir uma família, ter filhos? (se ainda não tem sua própria família)"
Q43 "O quanto é importante para o candidato encontrar um(a) parceiro(a) e casar? (se ainda não é casado  ou casada)"
Q44 "Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de conseguir um emprego"
Q45 "Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de utilizar no trabalho ou na profissão as habilidades que   desenvolveu no ensino médio (2º grau)"
Q46 "Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de ganhar um bom salário"
Q47 "Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de  ser um sucesso no trabalho ou na profissão"
Q48 "Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de trabalhar por conta própria/abrir seu próprio negócio"
Q49 "Em relação a sua experiência educacional em todo o período do ensino médio (2° grau), o candidato do ENEM se sente:"
Q50 "Você continuará seus estudos ou seu trabalho utilizando o conhecimento teórico e prático recebido no ensino médio (2º grau)"
Q51 "Ao terminar o ensino médio (2° grau) o candidato do ENEM se considera capacitado(a) para desenvolver uma carreira ou um trabalho na sociedade moderna utilizando os conhecimentos de informática adquiridos na escola;"
Q52 "Ao terminar o ensino médio (2° grau) o candidato do ENEM se considera capacitado(a) para desenvolver uma carreira ou um trabalho na sociedade moderna utilizando os de língua estrangeira adquiridos na escola:"
Q53 "Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende procurar um emprego e trabalhar"
Q54 "Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende prestar vestibular e continuar os estudos no ensino superior"
Q55 "Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende fazer curso(s) profissionalizante(s) e me preparar para o trabalho"
Q56 "Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende trabalhar por conta própria/trabalhar em negócio da família"
Q57 "Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende constituir uma família/encontrar um(a) companheiro(a) e casar/casar e ter filhos"
Q58 "Você considera que conhece suficientemente a atividade de trabalho que você escolheu"
Q59 "Você considera que desenvolveu no ensino médio (2º grau) as habilidades e técnicas necessárias para trabalhar na atividade que você escolheu"
Q60 "O quanto é importante para o candidato estar formando ou ter-se formado no ensino médio (2º grau)"
Q61 "A obtenção de um certificado de conclusão de curso/obtenção de um diploma foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?"
Q62 "Formação básica necessária para obter um emprego melhor  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?"
Q63 "Formação básica necessária para obter um emprego melhor  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?"
Q64 "À aquisição de cultura geral/ampliação de minha formação pessoal  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?"
Q65 "À formação básica necessária para continuar os estudos em uma universidade/faculdade  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?"
Q66 "Fazer muitos amigos/conhecer várias pessoas foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?"
Q67 "Atender a expectativa de meus pais em relação a meus estudos  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?"
Q68 "Você tem amigos que usam drogas"
Q69 "Você se interessa  em acompanhar a politica ?"
Q70 "Você se interessa  em  acompanhar esportes?"
Q71 "Você se interessa  em  acompanhar assuntos econômicos?"
Q72 "Você se interessa  em acompanhar assuntos de moda?"
Q73 "Você se interessa  em acompanhar atividades culturais, como teatro, pintura, arte, etc.?"
Q74 "Você se interessa  em  acompanhar questões sobre comportamento sexual, como a AIDS, a gravidez indesejada etc."
Q75 "Você se interessa  em acompanhar questões sobre o meio ambiente?"
Q76 "Você se interessa  em  questões sociais, como pobreza, o desemprego, a violência etc."
Q77 "Você frequenta ou participa: igreja ou grupo religioso"
Q78 "Você frequenta ou participa:  partido político ou movimento social."
Q79 "Você frequenta ou participa: sindicato ou associação profissional."
Q80 "Você frequenta ou participa:  grupo de bairro ou associação comunitária"
Q81 "Você frequenta ou participa: clube recreativo ou associação esportiva."
Q82 "Você frequenta ou participa:  grêmio estudantil"
Q83 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Estudar."
Q84 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Trabalhar."
Q85 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Conviver com os amigos."
Q86 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Estar com a família."
Q87 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Ter um envolvimento amoroso, namorar."
Q88 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Programas culturais, ir ao teatro, ao cinema, etc."
Q89 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Escutar rádio, assistir televisão."
Q90 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Ir a festas, bares."
Q91 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Ler livros de ficção, romances."
Q92 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Fazer algum trabalho para a comunidade, ajudar as pessoas."
Q93 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Praticar esportes, fazer ginástica, cuidar do físico."
Q94 "Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Ter uma atividade política, participar de movimentos ou partidos."
Q95 "Trabalha, ou já trabalhou, ganhando algum salário ou rendimento durante o ensino médio (2° grau)"
Q96 "Caso o candidato tenha trabalhado durante o ensino médio (2° grau), com que idade ele começou a exercer atividade remunerada"
Q97 "Você está trabalhando atualmente?"
Q98 "Se você está trabalhando atualmente, qual é a sua renda ou o seu salário mensal?"
Q99 "Você continuou seus estudos depois de ter concluído o ensino médio (2º Grau)"
Q100 "Se você está estudando no momento atual, você está desenvolvendo/frequentando: curso de especialização/curso técnico"
Q101 "Se você está estudando no momento atual, você está desenvolvendo/frequentando:  curso preparatório para vestibular"
Q102 "Se você está estudando no momento atual, você está desenvolvendo/frequentando: curso superior/universidade/faculdade"
Q103 "Se você está estudando no momento atual, você está desenvolvendo/frequentando: curso de línguas"
Q104 "Se você está estudando no momento atual, você está desenvolvendo/frequentando: curso de computação"
Q105 "Se você está estudando no momento atual, você está desenvolvendo/frequentando: outro curso"
Q106 "Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo: curso de especialização/curso técnico"
Q107 "Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo: curso preparatório para vestibular, mas não ingressei no  curso superior"
Q108 "Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo: Ingressou no curso superior/universidade/faculdade e me formei"
Q109 "Ingressou no curso superior/universidade/faculdade, mas não  me formei"
Q110 "Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo:  curso de língua estrangeira"
Q111 "Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo:  curso de computação ou informática"
Q112 "Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo: outro curso"
Q113 "Você está trabalhando?"
Q114 "Se está trabalhando, qual é a sua atividade"
Q115 "Está atualmente trabalhando na ocupação para a qual você se preparou nos estudos"
Q116 "Há quanto tempo está trabalhando nessa atividade"
Q117 "Se está trabalhando atualmente, qual é a renda ou o seu salário mensal"
Q118 "Se não está trabalhando atualmente, qual é o principal motivo"
Q119 "Você participa com sua renda mensal no sustento econômico de sua família"
Q120 "Se você tem família qual a renda total mensal aproximada, no seu domicílio?"
Q121 "Sua família tem Automóvel"
Q122 "Sua família tem TV em cores"
Q123 "Sua família tem Microcomputador"
Q124 "Sua família tem Videocassete"
Q125 "Sua família tem Máquina de lavar roupa"
Q126 "Sua família tem aspirador de pó"
Q127 "Sua família tem geladeira"
Q128 "Sua família tem freezer"
Q129 "Sua família tem  casa própria"
Q130 "Sua família tem  empregada mensalista"
Q131 "Sua família tem bicicleta"
Q132 "Sua família tem motocicleta"
Q133 "Sua família tem automóvel"
Q134 "Sua família tem instrumento musical"
Q135 "Sua família tem mesa de estudos própria"
Q136 "Sua família tem calculadora de bolso"
Q137 "Sua família tem microcomputador"
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
/TP_PRESENCA
 	0 "Faltou à prova"
 	1 "Presente à prova"
/CO_PROVA
	"A" "Amarela"
	"B" "Branca"
	"G" "Grafite"
	"Z" "Azul"
/TP_STATUS_REDACAO
 	"F" "Faltou à prova"
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
	"A" "Janeiro e Julho"
	"B" "Agosto a Dezembro"
/Q4
	"A" "Branco(a)."
	"B" "Pardo(a)"
	"C" "Negro(a)."
	"D" "Amarelo(a)"
	"E" "Indígena."
/Q5
	"A" "Solteiro(a)"
	"B" "Casado(a) / mora com um(a) companheiro(a)"
	"C" "Separado(a) / divorciado(a) / desquitado(a)"
	"D" "Viúvo(a)"
/Q6
	"A" "Com o pai e mãe"
	"B" "Só com o pai"
	"C" "Só com a mãe"
	"D" "Com parentes/amigos"
	"E" "Com pai e mãe em nova união"
	"F" "Sozinho(a)"
	"G" "Outra situação"
/Q7
	"A" "Uma pessoa"
	"B" "Duas pessoas"
	"C" "Três pessoas"
	"D" "Quatro pessoas"
	"E" "Cinco pessoas"
	"F" "Seis pessoas"
	"G" "Mais de seis pessoas"
/Q8
	"A" "Não tenho irmãos"
	"B" "Um irmão"
	"C" "Dois irmãos"
	"D" "Três irmãos"
	"E" "Quatro ou mais irmãos"
/Q9
	"A" "Não tenho filhos"
	"B" "Um filho"
	"C" "Dois filhos"
	"D" "Três filhos"
	"E" "Quatro ou mais filhos"
/Q10
	"A" "Nunca frequentou a escola"
	"B" "Da primeira à quarta série do ensino fundamental (antigo primário)"
	"C" "Da quinta à oitava série do ensino fundamental (antigo ginásio)"
	"D" "Ensino Médio (2º grau) incompleto"
	"E" "Ensino Médio (2º grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "Pós-graduação"
/Q11
	"A" "Trabalhador do setor de produção industrial (com registro ou carteira assinada)"
	"B" "Trabalhador do setor primário/agricultura/pecuária/pesca (com registro ou carteira assinada)"
	"C" "Trabalhador do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)"
	"D" "Funcionário do setor público"
	"E" "Gerente, administrador ou diretor de empresa privada"
	"F" "Trabalha no próprio negócio/empresa ou comércio próprio"
	"G" "Profissional liberal, professor, técnico de nível superior"
	"H" "Trabalhador do setor informal (sem carteira assinada)"
	"I" "Desempregado"
	"J" "Aposentado"
	"L" "Não sei"
/Q12
	"A" "Nunca frequentou a escola"
	"B" "Da primeira à quarta série do ensino fundamental (antigo primário)"
	"C" "Da quinta à oitava série do ensino fundamental (antigo ginásio)"
	"D" "Ensino Médio (2º grau) incompleto"
	"E" "Ensino Médio (2º grau) completo"
	"F" "Ensino Superior incompleto"
	"G" "Ensino Superior completo"
	"H" "Pós-graduação"
/Q13
	"A" "Trabalhadora do setor de produção industrial (com registro ou carteira assinada)"
	"B" "Trabalhadora do setor primário/agricultura/pecuária/pesca (com registro ou carteira assinada)"
	"C" "Trabalhadora do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)"
	"D" "Funcionária do setor público"
	"E" "Gerente, administradora ou diretora de empresa privada"
	"F" "Trabalha no próprio negócio/empresa ou comércio próprio"
	"G" "Profissional liberal, professora, técnica de nível superior"
	"H" "Trabalhadora do setor informal (sem carteira assinada)"
	"I" "Desempregada "
	"J" "Aposentada "
	"L" "Dona de casa"
	"M" "Não sei"
/Q14
	"A" "Menos de 8 anos "
	"B" "8 anos"
	"C" "9 anos"
	"D" "10 anos"
	"E" "11 anos"
	"F" "Mais de 11 anos"
/Q15
	"A" "Somente em escola pública"
	"B" "Parte em escola pública e parte em escola particular "
	"C" "Somente em escola particular"
/Q16
	"A" "Federal "
	"B" "Estadual "
	"C" "Municipal"
	"D" "Particular"
/Q17
	"A" "Ensino regular"
	"B" "Ensino supletivo"
/Q18
	"A" "Vou concluí-lo no segundo semestre de 1998 "
	"B" "Concluí-o no primeiro semestre de 1998 "
	"C" "Concluí-o em 1997"
	"D" "Concluí-o em 1996"
	"E" "Concluí-o em 1995"
	"F" "Concluí-o entre 1991 e 1994 "
	"G" "Concluí-o antes de 1991"
/Q19
	"A" "Menos de 3 anos "
	"B" "3 anos"
	"C" "4 anos"
	"D" "5 anos"
	"E" "6 anos"
	"F" "Mais de 6 anos"
/Q20
	"A" "Somente no turno diurno"
	"B" "Parte no turno diurno e parte no turno noturno "
	"C" "Somente no turno noturno"
/Q21
	"A" "Somente no turno diurno"
	"B" "Somente no turno noturno"
/Q22
	"A" "Federal "
	"B" "Estadual "
	"C" "Municipal"
	"D" "Particular"
/Q23
	"A" "Somente em escola pública"
	"B" "Parte em escola pública e parte em escola particular "
	"C" "Somente em escola particular"
/Q24
	"A" "Ensino regular"
	"B" "Ensino supletivo"
/Q25
	"A" "Sim"
	"B" "Não"
/Q26
	"A" "Sim"
	"B" "Não"
/Q27
	"A" "Sim"
	"B" "Não"
/Q28
	"A" "Sim"
	"B" "Não"
/Q29
	"A" "Sim"
	"B" "Não"
/Q30
	"A" "Sim"
	"B" "Não"
/Q31
	"A" "Sim"
	"B" "Não"
/Q32
	"A" "Sempre "
	"B" "Ás vezes"
	"C" "Não"
/Q33
	"A" "Sempre "
	"B" "Ás vezes"
	"C" "Não"
/Q34
	"A" "Sempre "
	"B" "Ás vezes"
	"C" "Não"
/Q35
	"A" "Sempre "
	"B" "Ás vezes"
	"C" "Não"
/Q36
	"A" "Sempre "
	"B" "Ás vezes"
	"C" "Não"
/Q37
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q38
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q39
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q40
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q41
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q42
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q43
	"A" "Muito importante "
	"B" "Importante"
	"C" "Nem um pouco importante"
/Q44
	"A" "Não sei"
	"B" "Já consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q45
	"A" "Não sei"
	"B" "Já consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q46
	"A" "Não sei"
	"B" "Já consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q47
	"A" "Não sei"
	"B" "Já consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q48
	"A" "Não sei"
	"B" "Já consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q49
	"A" "Não sei"
	"B" "Já consegui"
	"C" "Boa oportunidade "
	"D" "Pouca oportunidade "
	"E" "Nenhuma oportunidade"
/Q50
	"A" "Não "
	"B" "Preferencialmente não "
	"C" "Talvez"
	"D" "Certamente"
/Q51
	"A" "Sim, na escola obtive algum conhecimento de informática e uso de computadores"
	"B" "Sim, mas obtive os conhecimentos de informática fora da escola regular"
	"C" "Não, nunca tive acesso ao conhecimento de computadores e informática"
/Q52
	"A" "Sim, na escola obtive algum conhecimento de informática e uso de computadores"
	"B" "Sim, mas obtive os conhecimentos de informática fora da escola regular"
	"C" "Não, nunca tive acesso ao conhecimento de computadores e informática"
/Q53
	"A" "Não pretendo"
	"B" "Imediatamente após estar formado"
	"C" "No decorrer dos próximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q54
	"A" "Não pretendo"
	"B" "Imediatamente após estar formado"
	"C" "No decorrer dos próximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q55
	"A" "Não pretendo"
	"B" "Imediatamente após estar formado"
	"C" "No decorrer dos próximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q56
	"A" "Não pretendo"
	"B" "Imediatamente após estar formado"
	"C" "No decorrer dos próximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q57
	"A" "Não pretendo"
	"B" "Imediatamente após estar formado"
	"C" "No decorrer dos próximos 1 ou 2 anos "
	"D" "Num futuro mais distante"
/Q58
	"A" "Sim, muito"
	"B" "Conheço razoavelmente "
	"C" "Conheço pouco"
	"D" "Não conheço nada sobre essa atividade"
/Q59
	"A" "Sim"
	"B" "Adquiri-as razoavelmente "
	"C" "Adquiri algumas"
	"D" "Não adquiri nenhuma habilidade ou técnica necessárias a essa atividade"
/Q60
	"A" "Muito importante "
	"B" "Importante  "
	"C" "Pouco importante"
	"D" "Nem um pouco importante"
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
	"A" "Sim, amigos próximos."
	"B" "Sim, amigos distantes."
	"C" "Não."
/Q69
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "Só um pouco"
	"D" "Não, não me interesso"
/Q70
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "Só um pouco"
	"D" "Não, não me interesso"
/Q71
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "Só um pouco"
	"D" "Não, não me interesso"
/Q72
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "Só um pouco"
	"D" "Não, não me interesso"
/Q73
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "Só um pouco"
	"D" "Não, não me interesso"
/Q74
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "Só um pouco"
	"D" "Não, não me interesso"
/Q75
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "Só um pouco"
	"D" "Não, não me interesso"
/Q76
	"A" "Sim, muito"
	"B" "Sim, mais ou menos "
	"C" "Só um pouco"
	"D" "Não, não me interesso"
/Q77
	"A" "Sim, sempre "
	"B" "Sim, às vezes"
	"C" "Não"
/Q78
	"A" "Sim, sempre "
	"B" "Sim, às vezes"
	"C" "Não"
/Q79
	"A" "Sim, sempre "
	"B" "Sim, às vezes"
	"C" "Não"
/Q80
	"A" "Sim, sempre "
	"B" "Sim, às vezes"
	"C" "Não"
/Q81
	"A" "Sim, sempre "
	"B" "Sim, às vezes"
	"C" "Não"
/Q82
	"A" "Sim, sempre "
	"B" "Sim, às vezes"
	"C" "Não"
/Q83
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q84
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q85
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q86
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q87
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q88
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q89
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q90
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q91
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q92
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q93
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q94
	"A" "1"
	"B" "2"
	"C" "3"
	"D" "4"
	"E" "5"
	"F" "6"
	"G" "7"
	"H" "8"
	"I" "9"
	"J" "10"
	"L" "11"
	"M" "12"
/Q95
	"A" "Sim, trabalhei durante todo o curso (até 20 horas semanais)"
	"B" "Sim, trabalhei durante todo o curso (de 21 a 30 horas semanais)"
	"C" "Sim, trabalhei durante todo o curso (de 31 a 40 horas semanais)"
	"D" "Sim, mas trabalhei apenas durante alguns períodos"
	"E" "Não trabalhei durante esse tempo"
/Q96
	"A" "Antes dos 14 anos"
	"B" "Entre 14 e 16 anos"
	"C" "Entre 17 e 18 anos"
	"D" "Após os 18 anos"
/Q97
	"A" "Sim"
	"B" "Não, estou desempregado/estou procurando emprego"
/Q98
	"A" "Até 1 salário mínimo (até R$130,00)"
	"B" "Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)"
	"C" "De 2 a 5 salários mínimos (de R$261,00 a R$650,00)"
	"D" "De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)"
	"E" "De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)"
	"F" "De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)"
	"G" "Mais de 50 salários mínimos (mais de R$6.500,00)"
/Q99
	"A" "Sim, estou estudando no momento atual"
	"B" "Sim, mas não estou estudando no momento atual"
	"C" "Não."
/Q100
	"A" "Sim"
	"B" "Não"
/Q101
	"A" "Sim"
	"B" "Não"
/Q102
	"A" "Sim"
	"B" "Não"
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
	"A" "Sim"
	"B" "Não"
/Q112
	"A" "Sim"
	"B" "Não"
/Q113
	"A" "Sim"
	"B" "Não"
/Q114
	"A" "Trabalhador do setor de produção industrial"
	"B" "Trabalhador do setor primário/agricultura/pecuária/pesca"
	"C" "Trabalhador do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)"
	"D" "Funcionário do setor público"
	"E" "Gerente, administrador ou diretor de empresa privada"
	"F" "Trabalha no próprio negócio/empresa ou comércio próprio"
	"G" "Profissional liberal, professor, técnico de nível superior"
	"H" "Trabalhador do setor informal (sem carteira assinada)"
/Q115
	"A" "Sim"
	"B" "Não, porque não consegui trabalho na minha profissão"
	"C" "Não me preparei para um trabalho em específico/minha formação foi geral"
/Q116
	"A" "Menos de 1 ano"
	"B" "Entre 1 e 2 anos"
	"C" "Entre 2 e 4 anos"
	"D" "Mais de 4 anos"
/Q117
	"A" "Até 1 salário mínimo (até R$130,00)"
	"B" "Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)"
	"C" "De 2 a 5 salários mínimos (de R$261,00 a R$650,00)"
	"D" "De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)"
	"E" "De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)"
	"F" "De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)"
	"G" "Mais de 50 salários mínimos (mais de R$6.500,00)"
/Q118
	"A" "Não preciso trabalhar"
	"B" "Estava trabalhando, mas estou desempregado(a)"
	"C" "Não consigo encontrar um trabalho na minha ocupação"
	"D" "Estou estudando"
/Q119
	"A" "Sim, com todo o meu rendimento"
	"B" "Sim, com parte do meu rendimento"
	"C" "Não, tenho família, mas meus rendimentos são para meu próprio uso"
	"D" "Não tenho rendimentos"
	"E" "Não tenho família/meus rendimentos são só para meu próprio uso"
/Q120
	"A" "Até 1 salário mínimo (até R$130,00)"
	"B" "Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)"
	"C" "De 2 a 5 salários mínimos (de R$261,00 a R$650,00)"
	"D" "De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)"
	"E" "De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)"
	"F" "De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)"
	"G" "Mais de 50 salários mínimos (mais de R$6.500,00)"
	"H" "Não sabe"
/Q121
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q122
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q123
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q124
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q125
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q126
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q127
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q128
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q129
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q130
	"A" "Não tem"
	"B" "1"
	"C" "2"
	"D" "3 ou +"
/Q131
	"A" "Sim"
	"B" "Não"
	"C" "Não, mas pretendo ter num futuro próximo"
/Q132
	"A" "Sim"
	"B" "Não"
	"C" "Não, mas pretendo ter num futuro próximo"
/Q133
	"A" "Sim"
	"B" "Não"
	"C" "Não, mas pretendo ter num futuro próximo"
/Q134
	"A" "Sim"
	"B" "Não"
	"C" "Não, mas pretendo ter num futuro próximo"
/Q135
	"A" "Sim"
	"B" "Não"
	"C" "Não, mas pretendo ter num futuro próximo"
/Q136
	"A" "Sim"
	"B" "Não"
	"C" "Não, mas pretendo ter num futuro próximo"
/Q137
	"A" "Sim"
	"B" "Não"
	"C" "Não, mas pretendo ter num futuro próximo"
.