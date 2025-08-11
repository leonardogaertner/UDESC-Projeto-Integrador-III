#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2008
#--------------------------------------------------------
#  DESCRIçãO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2008
#--------------------------------------------------------

#--------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este 
#     programa e o arquivo MICRODADOS_ENEM_2008.csv no
#     mesmo diretório.	                  
#--------------------------------------------------------

#--------------------------------------------------------
#                   ATENçãO              
#--------------------------------------------------------
# Este programa abre a base de dados com os rótulos das 
# variáveis de acordo com o dicionório de dados que 
# compõem os microdados. 		  
#---------------------------------------------------------

#--------------------
# Intalação do pacote Data.Table
# Se não estiver instalado
#--------------------
if(!require(data.table)){install.packages('data.table')}

#--------------------
# Caso deseje trocar o local do arquivo, 
# edit a função setwd() a seguir informando o local do arquivo.
# Ex. Windows setwd("C:\temp")
#     Linux   setwd("\home")
#--------------------
setwd("C:/")  

#---------------
# Alocação de memória
#---------------
memory.limit(1000000)

#------------------
# Carga dos microdados

enem_2008 <- data.table::fread(input='microdados_enem_2008.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#enem_2008$TP_FAIXA_ETARIA <- factor(enem_2008$TP_FAIXA_ETARIA, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                    labels = c("Menor de 17 anos", 
#                                               "17 anos", 
#                                               "18 anos", 
#                                               "19 anos", 
#                                               "20 anos", 
#                                               "21 anos", 
#                                               "22 anos", 
#                                               "23 anos", 
#                                               "24 anos", 
#                                               "25 anos", 
#                                               "Entre 26 e 30 anos",
#                                               "Entre 31 e 35 anos",
#                                               "Entre 36 e 40 anos",
#                                               "Entre 41 e 45 anos",
#                                               "Entre 46 e 50 anos",
#                                               "Entre 51 e 55 anos",
#                                               "Entre 56 e 60 anos",
#                                               "Entre 61 e 65 anos",
#                                               "Entre 66 e 70 anos",
#                                               "Maior de 70 anos"))

#enem_2008$TP_SEXO <- factor(enem_2008$TP_SEXO, levels = c("M","F"), labels = c("Masculino", "Feminino"))

#enem_2008$TP_ST_CONCLUSAO <- factor(enem_2008$TP_ST_CONCLUSAO, levels = c(1,2,3), 
#                                    labels = c("Já concluiu", 
#                                               "Concluirá em 2008", 
#                                               "Concluirá após 2008"))

#enem_2008$TP_ENSINO <- factor(enem_2008$TP_ENSINO, levels = c(1,2,3,4), 
#                              labels = c("Ensino Regular", 
#                                         "Educação Especial - Modalidade Substitutiva",
#                                         "Educação de Jovens e Adultos", 
#                                         "Educação Profissional"))

#enem_2008$TP_DEPENDENCIA_ADM_ESC <- factor(enem_2008$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4), 
#                                           labels = c("Federal", 
#                                                      "Estadual", 
#                                                      "Municipal",
#                                                      "Privada"))

#enem_2008$TP_LOCALIZACAO_ESC <- factor(enem_2008$TP_LOCALIZACAO_ESC, levels = c(1,2), 
#                                       labels = c("Urbana",
#                                                  "Rural"))

#enem_2008$TP_SIT_FUNC_ESC <- factor(enem_2008$TP_SIT_FUNC_ESC, levels = c(1,2,3,4), 
#                                    labels = c("Em atividade",
#                                               "Paralisada", 
#                                               "Extinta"
#                                               "Extinta no ano anterior"))

#enem_2008$TP_PRESENCA <- factor(enem_2008$TP_PRESENCA, levels = c(0,1), 
#                                labels = c("Faltou à prova", 
#                                           "Presente na prova",))

#enem_2008$CO_PROVA <- factor(enem_2008$	CO_PROVA, levels = c(1,2,3,4), 
#                             labels = c("Amarela",
#                                        "Azul", 
#                                        "Branca", 
#                                        "Rosa"))

#enem_2008$TP_STATUS_REDACAO <- factor(enem_2008$TP_STATUS_REDACAO, levels = c("B","F","N","P"), 
#                                      labels = c("Entregou a redação em branco",
#                                                 "Faltou à prova", 
#                                                 "Redação anulada", 
#                                                 "Presente à prova"))

#enem_2008$IN_QSE <- factor(enem_2008$IN_QSE, levels = c(0,1), 
#                           labels = c("Não respondeu o questionário socioecômico",
#                                      "Respondeu o questionário socioecômico"))

#enem_2008$Q1 <- factor(enem_2008$Q1, levels = c("A", "B"), 
#                       labels = c("Feminino",
#                                  "Masculino"))

#enem_2008$Q2 <- factor(enem_2008$Q2, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I"), 
#                       labels = c("Após 1991", 
#                                  "Em 1991", 
#                                  "Em 1990", 
#                                  "Em 1989", 
#                                  "Em 1988", 
#                                  "Em 1987", 
#                                  "Em 1986", 
#                                  "Entre 1982 e 1985",
#                                  "Antes de 1982"))

#enem_2008$Q3 <- factor(enem_2008$Q3, levels = c("A", "B", "C", "D", "E"), 
#                       labels = c("Branco(a)", 
#                                  "Pardo(a)", 
#                                  "Preto(a)", 
#                                  "Amarelo(a)",
#                                  "Indígena"))

#enem_2008$Q4 <- factor(enem_2008$Q4, levels = c("A", "B", "C", "D", "E", "F", "G"), 
#                       labels = c("Minha língua materna é o português", 
#                                  "Falo uma língua Indígena e o português", 
#                                  "Falo mais de uma língua Indígena e o português", 
#                                  "Falo uma língua Indígena, o português e o espanhol", 
#                                  "Falo mais de uma língua Indígena, o português e o espanhol",
#                                  "Além do português, falo francês e inglês", 
#                                  "Além do português, falo o creole"))

#enem_2008$Q5 <- factor(enem_2008$Q5, levels = c("A", "B", "C", "D"), 
#                       labels = c("Solteiro(a)", 
#                                  "Casado(a) / mora com um(a) companheiro(a)", 
#                                  "Separado(a) / divorciado(a) / desquitado(a)",
#                                  "Viúvo(a)"))

#enem_2008$Q6 <- factor(enem_2008$Q6, levels = c("A", "B", "C", "D", "E"), 
#                       labels = c("Em casa ou apartamento, com sua família", 
#                                  "Em casa ou apartamento, sozinho(a)", 
#                                  "Em quarto ou cômodo alugado, sozinho(a)", 
#                                  "Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc",
#                                  "Outra situação"))

#enem_2008$Q7 <- factor(enem_2008$Q7, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q8 <- factor(enem_2008$Q8, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q9 <- factor(enem_2008$Q9, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q10 <- factor(enem_2008$Q10, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q11 <- factor(enem_2008$Q11, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q12 <- factor(enem_2008$Q12, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q13 <- factor(enem_2008$Q13, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q14 <- factor(enem_2008$Q14, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q15 <- factor(enem_2008$Q15, levels = c("A", "B", "C", "D", "E", "F", "G"), 
#                        labels = c("Duas pessoas", 
#                                   "Três pessoas", 
#                                   "Quatro pessoas", 
#                                   "Cinco pessoas", 
#                                   "Seis pessoas", 
#                                   "Mais de 6 pessoas",
#                                   "Moro sozinho"))

#enem_2008$Q16 <- factor(enem_2008$Q16, levels = c("A", "B", "C", "D", "E"), 
#                        labels = c("Um filho ", 
#                                   "Dois filhos", 
#                                   "Três filhos", 
#                                   "Quatro ou mais filhos",
#                                   "Não tenho filhos"))

#enem_2008$Q17 <- factor(enem_2008$Q17, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I"), 
#                        labels = c("Não estudou", 
#                                   "Da 1ª a 4ª série do ensino fundamental (antigo primário)",
#                                   "Da 5ª a 8ª do ensino fundamental (antigo ginásio)", 
#                                   "Ensino Médio (2º grau) incompleto", 
#                                   " Ensino Médio (2º grau) completo", 
#                                   "Ensino Superior incompleto", 
#                                   "Ensino Superior completo", 
#                                   "Pós-graduação", 
#                                   "Não sei"))

#enem_2008$Q18 <- factor(enem_2008$Q18, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I"), 
#                        labels = c("Não estudou", 
#                                   "Da 1ª a 4ª série do ensino fundamental (antigo primário)",
#                                   "Da 5ª a 8ª do ensino fundamental (antigo ginásio)", 
#                                   "Ensino Médio (2º grau) incompleto", 
#                                   "Ensino Médio (2º grau) completo", 
#                                   "Ensino Superior incompleto", 
#                                   "Ensino Superior completo", 
#                                   "Pós-graduação", 
#                                   "Não sei"))

#enem_2008$Q19 <- factor(enem_2008$Q19, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"), 
#                        labels = c("Na agricultura, no campo, em fazenda ou na pesca", 
#                                   "Na indústria", 
#                                   "No comércio, banco, transporte ou outros serviços", 
#                                   "Funcionário público do governo federal, estadual, ou do municpipio, ou militar",
#                                   "Profissional liberal, professor ou técnico de nível superior", 
#                                   "Trabalhador do setor informal (sem carteira assinada)", 
#                                   "Trabalha em casa em serviços (costura, cozinha, aulas particulares,etc) ", 
#                                   "No lar", 
#                                   "Não trabalha", 
#                                   "Não sei"))

#enem_2008$Q20 <- factor(enem_2008$Q20, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"), 
#                        labels = c("Gerente, administrador ou diretor de empresa privada", 
#                                   "Funcionário público (federal, estadual, ou municipal), com funções de direção", 
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando",
#                                   "Empregado no setor privado, com carteira assinada", 
#                                   "Funcionário público (federal, estadual, ou municipal), sem função de direção", 
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando",
#                                   "Trabalho temporário, informal, sem carteira assinada", 
#                                   "Trabalho por conta própria", 
#                                   " Desempregado", 
#                                   "Aposentado", 
#                                   "Outra situação"))

#enem_2008$Q21 <- factor(enem_2008$Q21, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"), 
#                        labels = c("Na agricultura, no campo, em fazenda ou na pesca", 
#                                   "Na indústria", 
#                                   "No comércio, banco, transporte ou outros serviços", 
#                                   "Funcionário público do governo federal, estadual, ou do município, ou militar",
#                                   "Profissional liberal, professor ou técnico de nível  superior", 
#                                   "Trabalhador do setor informal (sem carteira assinada)", 
#                                   "Trabalha em casa em serviços (costura, cozinha, aulas particulares,etc) ", 
#                                   "No lar", 
#                                   "Não trabalha", 
#                                   "Não sei"))

#enem_2008$Q22 <- factor(enem_2008$Q22, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"), 
#                        labels = c("Gerente, administrador ou diretor de empresa privada", 
#                                   "Funcionário público (federal, estadual, ou municipal), com funções de direção", 
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando",
#                                   "Empregado no setor privado, com carteira assinada", 
#                                   "Funcionário público (federal, estadual, ou municipal), sem função de direção", 
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando",
#                                   "Trabalho temporário, informal, sem carteira assinada", 
#                                   "Trabalho por conta própria", 
#                                   "Desempregado", 
#                                   "Aposentado", 
#                                   "Outra situação"))

#enem_2008$Q23 <- factor(enem_2008$Q23, levels = c("A", "B", "C", "D", "E", "F", "G", "H"), 
#                        labels = c("Até 1 salário mínimo (até R$ 415,00 inclusive)", 
#                                   "De 1 a 2 salários mínimos (R$ 415,00 a R$ 830,00 inclusive)", 
#                                   "De 2 a 5 salários mínimos (R$ 830,00 a R$ 2.075,00 inclusive)", 
#                                   "De 5 a 10 salários mínimos (R$2.075,00 a R$ 4.150,00 inclusive)", 
#                                   "De 10 a 30 salários mínimos (R$4.150,00 a R$ 12.450,00 inclusive)", 
#                                   "De 30 a 50 salários mínimos (R$12.450,00 a R$ 20.750,00 inclusive)",
#                                   "Mais de 50 salários mínimos (mais de R$ 20.750,00)", 
#                                   "Nenhuma renda"))

#enem_2008$Q24 <- factor(enem_2008$Q24, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q25 <- factor(enem_2008$Q25, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q26 <- factor(enem_2008$Q26, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q27 <- factor(enem_2008$Q27, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q28 <- factor(enem_2008$Q28, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q29 <- factor(enem_2008$Q29, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q30 <- factor(enem_2008$Q30, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q31 <- factor(enem_2008$Q31, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q32 <- factor(enem_2008$Q32, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q33 <- factor(enem_2008$Q33, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q34 <- factor(enem_2008$Q34, levels = c("A", "B", "C", "D"), 
#                        labels = c("1", 
#                                   "2", 
#                                   "3 ou mais ",
#                                   "Não tem"))

#enem_2008$Q35 <- factor(enem_2008$Q35, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q36 <- factor(enem_2008$Q36, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q37 <- factor(enem_2008$Q37, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q38 <- factor(enem_2008$Q38, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q39 <- factor(enem_2008$Q39, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q40 <- factor(enem_2008$Q40, levels = c("A", "B", "C", "D"), 
#                        labels = c("Para testar seus conhecimentos / capacidade de raciocínio", 
#                                   "Para entrar na faculdade / conseguir pontos para o vestibular", 
#                                   "Para ter um bom emprego / saber se está preparado(a) para o futuro profissional",
#                                   "Não sei"))

#enem_2008$Q41 <- factor(enem_2008$Q41, levels = c("A", "B", "C", "D", "E", "F", "G", "H"), 
#                        labels = c("Para ter mais responsabilidade", 
#                                   "Independência financeira ", 
#                                   "Adquirir experiência", 
#                                   "Crescer profissionalmente ", 
#                                   "Sentir-me útil", 
#                                   "Para fazer amigos, conhecer pessoas", 
#                                   "Não acho importante ter um trabalho", 
#                                   "Para ajudar minha comunidade Indígena"))

#enem_2008$Q42 <- factor(enem_2008$Q42, levels = c("A", "B", "C"), 
#                        labels = c("Sim", 
#                                   "Nunca trabalhei", 
#                                   "Nunca trabalhei, mas estou procurando trabalho"))

#enem_2008$Q43 <- factor(enem_2008$Q43, levels = c("A", "B", "C", "D", "E"), 
#                        labels = c("Sim, todo o tempo ", 
#                                   "Sim, menos de 1 ano",
#                                   "Sim, de 1 a 2 anos", 
#                                   "Sim, de 2 a 3 anos", 
#                                   "Não"))

#enem_2008$Q44 <- factor(enem_2008$Q44, levels = c("A", "B", "C", "D", "E"), 
#                        labels = c("Sem jornada fixa, até 10 horas semanais",
#                                   "De 11 a 20 horas semanais", 
#                                   "De 21 a 30 horas semanais", 
#                                   "De 31 a 40 horas semanais ", 
#                                   "Mais de 40 horas semanais"))

#enem_2008$Q45 <- factor(enem_2008$Q45, levels = c("A", "B", "C", "D", "E"), 
#                        labels = c("Para ajudar meus pais nas despesas com a casa, sustentar a família", 
#                                   "Para ser independente (ter meu sustento, ganhar meu próprio dinheiro)",
#                                   "Para adquirir experiência", 
#                                   "Para ajudar minha comunidade ", 
#                                   "Outra finalidade"))

#enem_2008$Q46 <- factor(enem_2008$Q46, levels = c("A", "B", "C", "D"), 
#                        labels = c("Antes dos 14 anos ",
#                                   "Entre 14 e 16 anos",
#                                   "Entre 17 e 18 anos",
#                                   "Após 18 anos"))

#enem_2008$Q47 <- factor(enem_2008$Q47, levels = c("A", "B", "C", "D", "E", "F", "G", "H"), 
#                        labels = c("até 1 salário mínimo (até R$ 415,00 inclusive)", 
#                                   "De 1 a 2 salários mínimos (R$ 415,00 a R$ 830,00 inclusive)", 
#                                   "De 2 a 5 salários mínimos (R$ 830,00 a R$ 2.075,00 inclusive)", 
#                                   "De 5 a 10 salários mínimos (R$2.075,00 a R$ 4.150,00 inclusive)", 
#                                   "De 10 a 30 salários mínimos (R$4.150,00 a R$ 12.450,00 inclusive)", 
#                                   "De 30 a 50 salários mínimos (R$12.450,00 a R$ 20.750,00 inclusive)",
#                                   "Mais de 50 salários mínimos (mais de R$ 20.750,00)", 
#                                   "Nenhuma renda"))

#enem_2008$Q48 <- factor(enem_2008$Q48, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q49 <- factor(enem_2008$Q49, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I"), 
#                        labels = c("Na agricultura, no campo, em fazenda ou na pesca", 
#                                   "Na indústria", 
#                                   "No comércio, banco, transporte ou outros serviços", 
#                                   "Como trabalhador(a) doméstico(a)", 
#                                   "Como funcionária do governo federal, do estado ou do município ou militar",
#                                   "Como profissional liberal, professor ou técnica de nível  superior", 
#                                   "No lar", 
#                                   "Trabalho em casa em serviços (costura, cozinha, aulas particulares)", 
#                                   "Não trabalha"))

#enem_2008$Q50 <- factor(enem_2008$Q50, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"), 
#                        labels = c("Gerente, administrador(a) ou diretor(a) de empresa privada", 
#                                   "Funcionário público (federal, estadual, ou municipal), com funções de direção", 
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando",
#                                   "Empregado no setor privado, com carteira assinada", 
#                                   "Funcionário público (federal, estadual, ou municipal), sem função de direção", 
#                                   "Trabalho temporário, informal, sem carteira assinada", 
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando",
#                                   "Trabalho por conta própria", 
#                                   " Aposentado(a)", 
#                                   "Outra situação"))

#enem_2008$Q51 <- factor(enem_2008$Q51, levels = c("A", "B", "C", "D"), 
#                        labels = c("Menos de 1 ano ", 
#                                   "Entre 1 e 2 anos",
#                                   "Entre 2 e 4 anos",
#                                   "Mais de 4 anos"))

#enem_2008$Q52 <- factor(enem_2008$Q52, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q53 <- factor(enem_2008$Q53, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q54 <- factor(enem_2008$Q54, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q55 <- factor(enem_2008$Q55, levels = c("A", "B"), labels = c("Sim", "Não"))

# enem_2008$Q56 <- factor(enem_2008$Q56, levels = c("A", "B", "C", "D", "E"), 
#                         labels = c("Atrapalhou os estudos", 
#                                    "Possibilitou crescimento pessoal", 
#                                    "Atrapalhou os estudos, mas possibilitou crescimento pessoal",
#                                    "Não atrapalhou os estudos", 
#                                    "Não trabalho / Não trabalhei"))

#enem_2008$Q57 <- factor(enem_2008$Q57, levels = c("A", "B", "C"), 
#                        labels = c("Sim ", 
#                                   "Não", 
#                                   "Não sei"))

#enem_2008$Q58 <- factor(enem_2008$Q58, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q59 <- factor(enem_2008$Q59, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q60 <- factor(enem_2008$Q60, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q61 <- factor(enem_2008$Q61, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q62 <- factor(enem_2008$Q62, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q63 <- factor(enem_2008$Q63, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q64 <- factor(enem_2008$Q64, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q65 <- factor(enem_2008$Q65, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q66 <- factor(enem_2008$Q66, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q67 <- factor(enem_2008$Q67, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q68 <- factor(enem_2008$Q68, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q69 <- factor(enem_2008$Q69, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q70 <- factor(enem_2008$Q70, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q71 <- factor(enem_2008$Q71, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q72 <- factor(enem_2008$Q72, levels = c("A", "B", "C", "D", "E", "F"), 
#                        labels = c("Menos de 8 anos",
#                                   "8 anos", 
#                                   "9 anos", 
#                                   "10 anos", 
#                                   "11 anos", 
#                                   "Mais de 11 anos"))

#enem_2008$Q73 <- factor(enem_2008$Q73, levels = c("A", "B", "C", "D", "E"), 
#                        labels = c("Somente em escola pública", 
#                                   "Parte em escola pública e parte em escola particular", 
#                                   "Somente em escola particular ", 
#                                   "Somente em escola Indígena", 
#                                   "Parte na escola Indígena e parte em escola Não-Indígena"))

#enem_2008$Q74 <- factor(enem_2008$Q74, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J"), 
#                        labels = c("Vai concluir Após 2008", 
#                                   "Vai concluir no segundo semestre de 2008",
#                                   "No primeiro semestre de 2008", 
#                                   "Em 2007", 
#                                   "Em 2006", 
#                                   "Em 2005", 
#                                   "Em 2004", 
#                                   "Em 2003", 
#                                   "Entre 2002 e 2001", 
#                                   "Antes de 2001"))

#enem_2008$Q75 <- factor(enem_2008$Q75, levels = c("A", "B", "C", "D", "E", "F"), 
#                        labels = c("Menos de 3 anos ",
#                                   "3 anos", 
#                                   "4 anos", 
#                                   "5 anos", 
#                                   "6 anos", 
#                                   "Mais de 6 anos"))

#enem_2008$Q76 <- factor(enem_2008$Q76, levels = c("A", "B", "C", "D"), 
#                        labels = c("Somente no turno diurno", 
#                                   "Maior parte no turno diurno",
#                                   "Somente no turno noturno", 
#                                   "Maior parte no turno noturno"))

#enem_2008$Q77 <- factor(enem_2008$Q77, levels = c("A", "B", "C", "D", "E", "F"), 
#                        labels = c("Somente em escola pública", 
#                                   "Maior parte em escola pública", 
#                                   "Somente em escola particular", 
#                                   "Maior parte em escola particular ",
#                                   "Somente em escola Indígena", 
#                                   "Maior parte em escola Não-ingígena"))

#enem_2008$Q78 <- factor(enem_2008$Q78, levels = c("A", "B", "C"), 
#                        labels = c("Ensino regular", 
#                                   "Educação para jovens e adultos (antigo supletivo)", 
#                                   "Ensino técnico / ensino profissional"))

#enem_2008$Q79 <- factor(enem_2008$Q79, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q80 <- factor(enem_2008$Q80, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q81 <- factor(enem_2008$Q81, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q82 <- factor(enem_2008$Q82, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q83 <- factor(enem_2008$Q83, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q84 <- factor(enem_2008$Q84, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q85 <- factor(enem_2008$Q85, levels = c("A", "B", "C"), 
#                        labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                   "às vezes", 
#                                   "Nunca"))

#enem_2008$Q86 <- factor(enem_2008$Q86, levels = c("A", "B", "C"), 
#                        labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                   "às vezes", 
#                                   "Nunca"))

#enem_2008$Q87 <- factor(enem_2008$Q87, levels = c("A", "B", "C"), 
#                        labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                   "às vezes", 
#                                   "Nunca"))

#enem_2008$Q88 <- factor(enem_2008$Q88, levels = c("A", "B", "C"), 
#                        labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                   "às vezes", 
#                                   "Nunca"))

#enem_2008$Q89 <- factor(enem_2008$Q89, levels = c("A", "B", "C"), 
#                        labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                   "às vezes", 
#                                   "Nunca"))

#enem_2008$Q90 <- factor(enem_2008$Q90, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q91 <- factor(enem_2008$Q91, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q92 <- factor(enem_2008$Q92, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q93 <- factor(enem_2008$Q93, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q94 <- factor(enem_2008$Q94, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q95 <- factor(enem_2008$Q95, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q96 <- factor(enem_2008$Q96, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q97 <- factor(enem_2008$Q97, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q98 <- factor(enem_2008$Q98, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q99 <- factor(enem_2008$Q99, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2008$Q100 <- factor(enem_2008$Q100, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q101 <- factor(enem_2008$Q101, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q102 <- factor(enem_2008$Q102, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q103 <- factor(enem_2008$Q103, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q104 <- factor(enem_2008$Q104, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q105 <- factor(enem_2008$Q105, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q106 <- factor(enem_2008$Q106, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q107 <- factor(enem_2008$Q107, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q108 <- factor(enem_2008$Q108, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q109 <- factor(enem_2008$Q109, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q110 <- factor(enem_2008$Q110, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q111 <- factor(enem_2008$Q111, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q112 <- factor(enem_2008$Q112, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q113 <- factor(enem_2008$Q113, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q114 <- factor(enem_2008$Q114, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q115 <- factor(enem_2008$Q115, levels = c("A", "B", "C", "D"), 
#                         labels = c("Eu me considero preparado(a) para entrar no mercado de trabalho", 
#                                    "Apesar de ter frequentado uma boa escola, eu me considero despreparado(a), pois Não aprendi o suficiente para conseguir um emprego",
#                                    "Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola, que Não me preparou o suficiente", 
#                                    "Não sei"))

#enem_2008$Q116 <- factor(enem_2008$Q116, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q117 <- factor(enem_2008$Q117, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q118 <- factor(enem_2008$Q118, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q119 <- factor(enem_2008$Q119, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q120 <- factor(enem_2008$Q120, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q121 <- factor(enem_2008$Q121, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q122 <- factor(enem_2008$Q122, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2008$Q123 <- factor(enem_2008$Q123, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q124 <- factor(enem_2008$Q124, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q125 <- factor(enem_2008$Q125, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q126 <- factor(enem_2008$Q126, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q127 <- factor(enem_2008$Q127, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q128 <- factor(enem_2008$Q128, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q129 <- factor(enem_2008$Q129, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q130 <- factor(enem_2008$Q130, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q131 <- factor(enem_2008$Q131, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q132 <- factor(enem_2008$Q132, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q133 <- factor(enem_2008$Q133, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q134 <- factor(enem_2008$Q134, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

#enem_2008$Q135 <- factor(enem_2008$Q135, levels = c("A", "B", "C"), 
#                         labels = c("Insuficiente a regular",
#                                    "Regular a bom", 
#                                    "Bom a excelente"))

# enem_2008$Q136 <- factor(enem_2008$Q136, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"), 
#                          labels = c("0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Não sei"))
# 
# enem_2008$Q137 <- factor(enem_2008$Q137, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q138 <- factor(enem_2008$Q138, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q139 <- factor(enem_2008$Q139, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q140 <- factor(enem_2008$Q140, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q141 <- factor(enem_2008$Q141, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q142 <- factor(enem_2008$Q142, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q143 <- factor(enem_2008$Q143, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q144 <- factor(enem_2008$Q144, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q145 <- factor(enem_2008$Q145, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q146 <- factor(enem_2008$Q146, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q147 <- factor(enem_2008$Q147, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q148 <- factor(enem_2008$Q148, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q149 <- factor(enem_2008$Q149, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q150 <- factor(enem_2008$Q150, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q151 <- factor(enem_2008$Q151, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q152 <- factor(enem_2008$Q152, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q153 <- factor(enem_2008$Q153, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q154 <- factor(enem_2008$Q154, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q155 <- factor(enem_2008$Q155, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q156 <- factor(enem_2008$Q156, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q157 <- factor(enem_2008$Q157, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q158 <- factor(enem_2008$Q158, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q159 <- factor(enem_2008$Q159, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q160 <- factor(enem_2008$Q160, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q161 <- factor(enem_2008$Q161, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q162 <- factor(enem_2008$Q162, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q163 <- factor(enem_2008$Q163, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q164 <- factor(enem_2008$Q164, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q165 <- factor(enem_2008$Q165, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q166 <- factor(enem_2008$Q166, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q167 <- factor(enem_2008$Q167, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q168 <- factor(enem_2008$Q168, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q169 <- factor(enem_2008$Q169, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q170 <- factor(enem_2008$Q170, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q171 <- factor(enem_2008$Q171, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q172 <- factor(enem_2008$Q172, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q173 <- factor(enem_2008$Q173, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q174 <- factor(enem_2008$Q174, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q175 <- factor(enem_2008$Q175, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q176 <- factor(enem_2008$Q176, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q177 <- factor(enem_2008$Q177, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q178 <- factor(enem_2008$Q178, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q179 <- factor(enem_2008$Q179, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q180 <- factor(enem_2008$Q180, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q181 <- factor(enem_2008$Q181, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q182 <- factor(enem_2008$Q182, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q183 <- factor(enem_2008$Q183, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q184 <- factor(enem_2008$Q184, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q185 <- factor(enem_2008$Q185, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q186 <- factor(enem_2008$Q186, levels = c("A", "B", "C"), 
#                          labels = c("Muito", 
#                                     "Pouco", 
#                                     "Não me interesso"))
# 
# enem_2008$Q187 <- factor(enem_2008$Q187, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"), 
#                          labels = c("O meio ambiente", 
#                                     "A aids e as doenças sexualmente transmissíveis", 
#                                     "O racismo e a discriminação étnico-racial", 
#                                     "A discriminação de gênero", 
#                                     "A discriminação contra homossexuais", 
#                                     "A discriminação etária", 
#                                     "A discriminação religiosa e os conflitos religiosos", 
#                                     "A desigualdade social no Brasil", 
#                                     "A pobreza, as favelas, os meninos de rua", 
#                                     "As drogas e a violência", 
#                                     "A situação econômica do país", 
#                                     "A precariedade dos serviços públicos de saúde e de educação" ))
# 
# enem_2008$Q188 <- factor(enem_2008$Q188, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L"), 
#                          labels = c("O meio ambiente", 
#                                     "A aids e as doenças sexualmente transmissíveis", 
#                                     "O racismo e a discriminação étnico-racial", 
#                                     "A discriminação de gênero", 
#                                     "A discriminação contra homossexuais", 
#                                     "A discriminação etária", 
#                                     "A discriminação religiosa e os conflitos religiosos", 
#                                     "A desigualdade social no Brasil", 
#                                     "A pobreza, as favelas, os meninos de rua", 
#                                     "As drogas e a violência", 
#                                     "A situação econômica do país", 
#                                     "A precariedade dos serviços públicos de saúde e de educação"))
# 
# enem_2008$Q189 <- factor(enem_2008$Q189, levels = c("A", "B", "C", "D", "E", "F", "G", "H"), 
#                          labels = c("Obtenção de um certificado de conclusão de curso / obtenção de um diploma", 
#                                     "Formação básica necessária para obter um emprego melhor", 
#                                     "Condições de melhorar minha posição no emprego atual", 
#                                     "Obtenção de cultura geral / ampliação de minha formação pessoal", 
#                                     "Formação básica necessária para continuar os estudos em uma universidade / faculdade",
#                                     "Fazer muitos amigos / conhecer várias pessoas", 
#                                     "Atender à expectativa de meus pais sobre meus estudos", 
#                                     "Ajudar minha comunidade Indígena"))
# 
# enem_2008$Q190 <- factor(enem_2008$Q190, levels = c("A", "B", "C", "D", "E", "F", "G", "H"), 
#                          labels = c("Obtenção de um certificado de conclusão de curso / obtenção de um diploma", 
#                                     "Formação básica necessária para obter um emprego melhor", 
#                                     "Condições de melhorar minha posição no emprego atual", 
#                                     "Obtenção de cultura geral / ampliação de minha formação pessoal", 
#                                     "Formação básica necessária para continuar os estudos em uma universidade / faculdade",
#                                     "Fazer muitos amigos / conhecer várias pessoas", 
#                                     "Atender à expectativa de meus pais sobre meus estudos", 
#                                     "Ajudar minha comunidade Indígena"))
# 
# enem_2008$Q191 <- factor(enem_2008$Q191, levels = c("A", "B", "C", "D", "E", "F", "G", "H"), 
#                          labels = c("Obtenção de um certificado de conclusão de curso / obtenção de um diploma", 
#                                     "Formação básica necessária para obter um emprego melhor", 
#                                     "Condições de melhorar minha posição no emprego atual", 
#                                     "Obtenção de cultura geral / ampliação de minha formação pessoal", 
#                                     "Formação básica necessária para continuar os estudos em uma universidade / faculdade",
#                                     "Fazer muitos amigos / conhecer várias pessoas", 
#                                     "Atender à expectativa de meus pais sobre meus estudos", 
#                                     "Ajudar minha comunidade Indígena"))
# 
# enem_2008$Q192 <- factor(enem_2008$Q192, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I"), 
#                          labels = c("Já conclui o ensino Médio", 
#                                     "Prestar vestibular e continuar os estudos no ensino superior", 
#                                     "Procurar um emprego", 
#                                     "Prestar vestibular e continuar a trabalhar", 
#                                     "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho",
#                                     "Trabalhar por conta própria / trabalhar em negócio da família", 
#                                     "Trabalhar em atividade ligada à comunidade Indígena", 
#                                     "Ainda Não decidiu", 
#                                     "Outro plano"))
# 
# enem_2008$Q193 <- factor(enem_2008$Q193, levels = c("A", "B", "C", "D", "E", "F", "G"), 
#                          labels = c("Gostaria de ter um diploma universitário para conseguir um bom emprego", 
#                                     "Gostaria de prestar um concurso e trabalhar no setor público", 
#                                     "Gostaria de ganhar dinheiro em meu próprio negócio", 
#                                     "Gostaria de ter um emprego", 
#                                     "Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade Indígena",
#                                     "Não planejei", 
#                                     "Outro plano"))
# 
# enem_2008$Q194 <- factor(enem_2008$Q194, levels = c("A", "B", "C", "D", "E", "F", "G"), 
#                          labels = c("Ainda Não escolhi", 
#                                     "Profissão ligada às Engenharias / Ciências Tecnológicas", 
#                                     "Profissão ligada às Ciências Humanas", 
#                                     "Profissão ligada às Artes ", 
#                                     "Profissão ligadas às Ciências Biológicas e de Saúde", 
#                                     "Professor(a) de Ensino Fundamental e Médio (1º e 2º graus)",
#                                     "Não vou seguir nenhuma Profissão"))
# 
# enem_2008$Q195 <- factor(enem_2008$Q195, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q196 <- factor(enem_2008$Q196, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q197 <- factor(enem_2008$Q197, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q198 <- factor(enem_2008$Q198, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q199 <- factor(enem_2008$Q199, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q200 <- factor(enem_2008$Q200, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q201 <- factor(enem_2008$Q201, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q202 <- factor(enem_2008$Q202, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q203 <- factor(enem_2008$Q203, levels = c("A", "B", "C"), 
#                          labels = c("Ajudou muito",
#                                     "Ajudou pouco", 
#                                     "Não ajudou"))
# 
# enem_2008$Q204 <- factor(enem_2008$Q204, levels = c("A", "B", "C"), 
#                          labels = c("Sim, estou estudando no momento atual", 
#                                     "Sim, mas Não estou estudando no momento atual",
#                                     "Não"))
# 
# enem_2008$Q205 <- factor(enem_2008$Q205, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q206 <- factor(enem_2008$Q206, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q207 <- factor(enem_2008$Q207, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q208 <- factor(enem_2008$Q208, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q209 <- factor(enem_2008$Q209, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q210 <- factor(enem_2008$Q210, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q211 <- factor(enem_2008$Q211, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q212 <- factor(enem_2008$Q212, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q213 <- factor(enem_2008$Q213, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q214 <- factor(enem_2008$Q214, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q215 <- factor(enem_2008$Q215, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q216 <- factor(enem_2008$Q216, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q217 <- factor(enem_2008$Q217, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q218 <- factor(enem_2008$Q218, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q219 <- factor(enem_2008$Q219, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q220 <- factor(enem_2008$Q220, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q221 <- factor(enem_2008$Q221, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q222 <- factor(enem_2008$Q222, levels = c("A", "B"), labels = c("Sim", "Não"))
# 
# enem_2008$Q223 <- factor(enem_2008$Q223, levels = c("A", "B"), labels = c("Sim", "Não"))
