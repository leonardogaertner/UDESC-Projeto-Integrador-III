#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2001
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2001
#--------------------------------------------------------

#--------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este 
#     programa e o arquivo MICRODADOS_ENEM_2001.csv no
#     mesmo diretório.	                  
#--------------------------------------------------------

#--------------------------------------------------------
#                   ATENÇÃO              
#--------------------------------------------------------
# Este programa abre a base de dados com os rótulos das 
# variáveis de acordo com o dicionário de dados que 
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

enem_2001 <- data.table::fread(input='microdados_enem_2001.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#enem_2001$TP_FAIXA_ETARIA <- factor(enem_2001$TP_FAIXA_ETARIA, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
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

#enem_2001$TP_SEXO <- factor(enem_2001$TP_SEXO, levels = c("M","F"), labels = c("Masculino", "Feminino"))

#enem_2001$TP_ST_CONCLUSAO <- factor(enem_2001$TP_ST_CONCLUSAO, levels = c(0,1,2,3), 
#                                    labels = c("Nenhum dos anteriores",
#                                               "Já concluiu", 
#                                               "Concluirá em 2001", 
#                                               "Concluirá após 2001"))

#enem_2001$TP_DEPENDENCIA_ADM_ESC <- factor(enem_2001$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4), 
#                                           labels = c("Federal", 
#                                                      "Estadual", 
#                                                      "Municipal",
#                                                      "Privada"))

#enem_2001$TP_LOCALIZACAO_ESC <- factor(enem_2001$TP_LOCALIZACAO_ESC, levels = c(1,2), 
#                                       labels = c("Urbana",
#                                                  "Rural"))

#enem_2001$TP_SIT_FUNC_ESC <- factor(enem_2001$TP_SIT_FUNC_ESC, levels = c(1,2,3), 
#                                    labels = c("Em atividade",
#                                               "Paralisada", 
#                                               "Extinta"))

#enem_2001$TP_PRESENCA <- factor(enem_2001$TP_PRESENCA, levels = c(0,1), 
#                                labels = c("Faltou à prova", 
#                                           "Presente na prova"))

#enem_2001$CO_PROVA <- factor(enem_2001$	CO_PROVA, levels = c("A","B","R","V"), 
#                             labels = c("Amarela",
#                                        "Branca", 
#                                        "Rosa", 
#                                        "Verde"))

#enem_2001$TP_STATUS_REDACAO <- factor(enem_2001$TP_STATUS_REDACAO, levels = c("B","F","N","P"), 
#                                      labels = c("Entregou a redação em branco",
#                                                 "Faltou à prova", 
#                                                 "Redação anulada", 
#                                                 "Presente à prova"))

#enem_2001$IN_QSE <- factor(enem_2001$IN_QSE, levels = c(0,1), 
#                           labels = c("Não respondeu o questionário socioecômico",
#                                      "Respondeu o questionário socioecômico"))

#enem_2001$Q1 <- factor(enem_2001$Q1, levels = c("A","B"), labels = c("Feminino","Masculino"))

#enem_2001$Q2 <- factor(enem_2001$Q2, levels = c("A","B","C","D","E","F","G"), 
#                       labels = c("Após 1983.","1982.","1981.","1980.","1979.",
#                                  "Entre 1975 e 1978.","Antes de 1975."))

#enem_2001$Q3 <- factor(enem_2001$Q3, levels = c("A","B","C","D","E"), 
#                       labels = c("Branco(a).",
#                                  "Pardo(a) / mulato(a).",
#                                  "Negro(a).",
#                                  "Amarelo(a).",
#                                  "Indígena."))

#enem_2001$Q4 <- factor(enem_2001$Q4, levels = c("A","B","C","D"), 
#                       labels = c("Solteiro(a)",
#                                  "Casado(a) / mora com um(a) companheiro(a) ",
#                                  "Separado(a) / divorciado(a) / desquitado(a) ",
#                                  "Viúvo(a)"))

#enem_2001$Q5 <- factor(enem_2001$Q5, levels = c("A","B","C","D","E"), 
#                       labels = c("Em casa ou apartamento, com sua família",
#                                  "Em casa ou apartamento, sozinho(a)",
#                                  "Em quarto ou cômodo alugado, sozinho(a)",
#                                  "Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc",
#                                  "Outra situação"))

#enem_2001$Q6_1 <- factor(enem_2001$Q6_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q6_2 <- factor(enem_2001$Q6_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q6_3 <- factor(enem_2001$Q6_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q6_4 <- factor(enem_2001$Q6_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q6_5 <- factor(enem_2001$Q6_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q6_6 <- factor(enem_2001$Q6_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q6_7 <- factor(enem_2001$Q6_7, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q6_8 <- factor(enem_2001$Q6_8, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q7 <- factor(enem_2001$Q7, levels = c("A","B","C","D","E","F","G"), 
#                       labels = c("Duas pessoas","Três pessoas",
#                                  "Quatro pessoas","Cinco pessoas",
#                                  "Seis pessoas","Mais de 6 pessoas",
#                                  "Moro sozinho"))

#enem_2001$Q8 <- factor(enem_2001$Q8, levels = c("A","B","C","D","E"), 
#                       labels = c("Um filho","Dois filhos",
#                                  "Três filhos","Quatro ou mais filhos",
#                                  "Não tenho filhos"))

#enem_2001$Q9 <- factor(enem_2001$Q9, levels = c("A","B","C","D","E","F","G","H","I"), 
#                       labels = c("Não estudou",
#                                  "Da 1ª a 4ª série do ensino fundamental (antigo primário)",
#                                  "Da 5ª a 8ª do ensino fundamental (antigo ginásio) ",
#                                  "Ensino Médio (2º grau) incompleto",
#                                  "Ensino Médio (2º grau) completo ",
#                                  "Ensino Superior incompleto ",
#                                  "Ensino Superior completo",
#                                  "Pós-graduação","Não sei"))

#enem_2001$Q10 <- factor(enem_2001$Q10, levels = c("A","B","C","D","E","F","G","H","I"), 
#                        labels = c("Não estudou",
#                                   "Da 1ª a 4ª série do ensino fundamental (antigo primário)",
#                                   "Da 5ª a 8ª do ensino fundamental (antigo ginásio)",
#                                   "Ensino Médio (2º grau) incompleto",
#                                   "Ensino Médio (2º grau) completo",
#                                   "Ensino Superior incompleto",
#                                   "Ensino Superior completo",
#                                   "Pós-graduação",
#                                   "Não sei"))

#enem_2001$Q11 <- factor(enem_2001$Q11, levels = c("A","B","C","D","E","F","G","H","I","J"), 
#                        labels = c("Na agricultura, no campo, em fazenda ou na pesca",
#                                   "Na indústria",
#                                   "No comércio, banco, transporte ou outros serviços",
#                                   "Funcionário público do governo federal, estadual, ou do município, ou militar",
#                                   "Profissional liberal, professor ou técnico de nível superior",
#                                   "Trabalhador do setor informal (sem carteira assinada)",
#                                   "Trabalha em casa em serviços (costura, cozinha, aulas particulares, etc)",
#                                   "No lar",
#                                   "Não trabalha",
#                                   "Não sei"))

#enem_2001$Q12 <- factor(enem_2001$Q12, levels = c("A","B","C","D","E","F","G","H","I","J","K"), 
#                        labels = c("Gerente, administrador ou diretor de empresa privada",
#                                   "Funcionário público (federal, estadual ou municipal), com funções de direção",
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando",
#                                   "Empregado no setor privado, com carteira assinada",
#                                   "Funcionário público (federal, estadual ou municipal), sem função de direção",
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando",
#                                   "Trabalho temporário, informal, sem carteira assinada ",
#                                   "Trabalho por conta própria",
#                                   "Desempregado ",
#                                   "Aposentado",
#                                   "Outra situação"))

#enem_2001$Q13 <- factor(enem_2001$Q13, levels = c("A","B","C","D","E","F","G","H","I","J"), 
#                        labels = c("Na agricultura, no campo, em fazenda ou na pesca",
#                                   "Na indústria",
#                                   "No comércio, banco, transporte ou outros serviços",
#                                   "Funcionário público do governo federal, estadual, ou do município, ou militar",
#                                   "Profissional liberal, professor ou técnico de nível superior",
#                                   "Trabalhador do setor informal (sem carteira assinada)",
#                                   "Trabalha em casa em serviços (costura, cozinha, aulas particulares, etc)",
#                                   "No lar",
#                                   "Não trabalha",
#                                   "Não sei"))

#enem_2001$Q14 <- factor(enem_2001$Q14, levels = c("A","B","C","D","E","F","G","H","I","J","K"), 
#                        labels = c("Gerente, administrador ou diretor de empresa privada",
#                                   "Funcionário público (federal, estadual ou municipal), com funções de direção",
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando",
#                                   "Empregado no setor privado, com carteira assinada",
#                                   "Funcionário público (federal, estadual ou municipal), sem função de direção",
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando",
#                                   "Trabalho temporário, informal, sem carteira assinada",
#                                   "Trabalho por conta própria",
#                                   "Desempregado",
#                                   "Aposentado",
#                                   "Outra situação"))

#enem_2001$Q15 <- factor(enem_2001$Q15, levels = c("A","B","C","D","E","F","G","H"), 
#                        labels = c("Até 1 salário mínimo (até R$ 180,00).",
#                                   "De 1 a 2 salários mínimos (R$ 180,00 a R$ 360,00).",
#                                   "De 2 a 5 salários mínimos (R$ 360,00 a R$ 900,00).",
#                                   "De 5 a 10 salários mínimos (R$ 900,00 a R$ 1.800,00).",
#                                   "De 10 a 30 salários mínimos (R$ 1.800,00 a R$ 5.400,00).",
#                                   "De 30 a 50 salários mínimos (R$ 5.400,00 a R$ 9.000,00).",
#                                   "Mais de 50 salários mínimos (mais de R$ 9.000,00).",
#                                   "Não estou trabalhando."))

#enem_2001$Q16_1 <- factor(enem_2001$Q16_1, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_2 <- factor(enem_2001$Q16_2, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_3 <- factor(enem_2001$Q16_3, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_4 <- factor(enem_2001$Q16_4, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_5 <- factor(enem_2001$Q16_5, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_6 <- factor(enem_2001$Q16_6, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_7 <- factor(enem_2001$Q16_7, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_8 <- factor(enem_2001$Q16_8, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_9 <- factor(enem_2001$Q16_9, levels = c(0,1,2,3,4,5), 
#                          labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q16_10 <- factor(enem_2001$Q16_10, levels = c(0,1,2,3,4,5), 
#                           labels = c("Não há","1","2","3","4","5 ou +"))

#enem_2001$Q17_1 <- factor(enem_2001$Q17_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q17_2 <- factor(enem_2001$Q17_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q17_3 <- factor(enem_2001$Q17_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q17_4 <- factor(enem_2001$Q17_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q17_5 <- factor(enem_2001$Q17_5, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q18 <- factor(enem_2001$Q18, levels = c("A","B","C","D"), 
#                        labels = c("Para testar seus conhecimentos / capacidade de raciocínio",
#                                   "Para entrar na faculdade / conseguir pontos para o vestibular",
#                                   "Para ter um bom emprego / saber se está preparado(a) para o futuro profissional",
#                                   "Não sei"))

#enem_2001$Q19 <- factor(enem_2001$Q19, levels = c("A","B","C","D","E","F","G"), 
#                        labels = c("Para ter mais responsabilidade",
#                                   "Independência financeira",
#                                   "Adquirir experiência",
#                                   "Crescer profissionalmente",
#                                   "Sentir-me útil",
#                                   "Para fazer amigos, conhecer pessoas",
#                                   "Não acho importante ter um trabalho"))

#enem_2001$Q20 <- factor(enem_2001$Q20, levels = c("A","B","C"), 
#                        labels = c("Sim","Nunca trabalhei",
#                                   "Nunca trabalhei, mas estou procurando trabalho"))

#enem_2001$Q21 <- factor(enem_2001$Q21, levels = c("A","B","C","D","E"), 
#                        labels = c("Sim, todo o tempo",
#                                   "Sim, menos de 1 ano",
#                                   "Sim, de 1 a 2 anos",
#                                   "Sim, de 2 a 3 anos",
#                                   "Não"))

#enem_2001$Q22 <- factor(enem_2001$Q22, levels = c("A","B","C","D","E"), 
#                        labels = c("Sem jornada fixa, até 10 horas semanais",
#                                   "De 11 a 20 horas semanais",
#                                   "De 21 a 30 horas semanais",
#                                   "De 31 a 40 horas semanais",
#                                   "Mais de 40 horas semanais"))

#enem_2001$Q23 <- factor(enem_2001$Q23, levels = c("A","B","C","D","E"), 
#                        labels = c("Para ajudar meus pais nas despesas com a casa, sustentar a família",
#                                   "Para ser independente (ter meu sustento, ganhar meu próprio dinheiro)",
#                                   "Para adquirir experiência",
#                                   "Para ajudar minha comunidade",
#                                   "Outra finalidade"))

#enem_2001$Q24 <- factor(enem_2001$Q24, levels = c("A","B","C","D"), 
#                        labels = c("Antes dos 14 anos",
#                                   "Entre 14 e 16 anos",
#                                   "Entre 17 e 18 anos",
#                                   "Após 18 anos"))

#enem_2001$Q25 <- factor(enem_2001$Q25, levels = c("A","B","C","D","E","F","G","H"), 
#                        labels = c("Até 1 salário mínimo (até R$ 180,00).",
#                                   "De 1 a 2 salários mínimos (R$ 180,00 a R$ 360,00).",
#                                   "De 2 a 5 salários mínimos (R$ 360,00 a R$ 900,00).",
#                                   "De 5 a 10 salários mínimos (R$ 900,00 a R$ 1.800,00).",
#                                   "De 10 a 30 salários mínimos (R$ 1.800,00 a R$ 5.400,00).",
#                                   "De 30 a 50 salários mínimos (R$ 5.400,00 a R$ 9.000,00).",
#                                   "Mais de 50 salários mínimos (mais de R$ 9.000,00).",
#                                   "Não estou trabalhando."))

#enem_2001$Q26 <- factor(enem_2001$Q26, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q27 <- factor(enem_2001$Q27, levels = c("A","B","C","D","E","F","G","H","I"), 
#                        labels = c("Na agricultura (campo, fazenda, pesca).",
#                                   "Na indústria.",
#                                   "No comércio, banco, transporte ou outros serviços.",
#                                   "Como empregado(a) em casa de família.",
#                                   "Como funcionário(a) do governo federal, do estado ou do município, ou militar.",
#                                   "Como profissional liberal, professor(a) ou técnico(a) de nível superior.",
#                                   "No lar.",
#                                   "Trabalho em casa em serviços (costura, comida, aulas particulares, etc.).",
#                                   "Não trabalha"))

#enem_2001$Q28 <- factor(enem_2001$Q28, levels = c("A","B","C","D","E","F","G","H","I","J"), 
#                        labels = c("Gerente, administrador(a) ou diretor(a) de empresa privada.",
#                                   "Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção.",
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando",
#                                   "Empregado(a) no setor privado, com carteira assinada",
#                                   "Funcionário(a) público(a) (federal, estadual ou municipal), sem função de direção.",
#                                   "Trabalho temporário, informal, sem carteira assinada",
#                                   "Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando.",
#                                   "Trabalho por conta própria ",
#                                   "Aposentado(a).","Outra situação."))

#enem_2001$Q29 <- factor(enem_2001$Q29, levels = c("A","B","C","D"), 
#                        labels = c("Menos de 1 ano","Entre 1 e 2 anos",
#                                   "Entre 2 e 4 anos","Mais de 4 anos"))

#enem_2001$Q30_1 <- factor(enem_2001$Q30_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q30_2 <- factor(enem_2001$Q30_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q30_3 <- factor(enem_2001$Q30_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q30_4 <- factor(enem_2001$Q30_4, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q31 <- factor(enem_2001$Q31, levels = c("A","B","C","D","E"), 
#                        labels = c("Atrapalhou os estudos",
#                                   "Possibilitou crescimento pessoal",
#                                   "Atrapalhou os estudos, mas possibilitou crescimento pessoal",
#                                   "Não atrapalhou os estudos",
#                                   "Não trabalho / não trabalhei"))

#enem_2001$Q32 <- factor(enem_2001$Q32, levels = c("A","B","C"), labels = c("Sim","Não","Não sei"))

#enem_2001$Q33_1 <- factor(enem_2001$Q33_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q33_2 <- factor(enem_2001$Q33_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q33_3 <- factor(enem_2001$Q33_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q33_4 <- factor(enem_2001$Q33_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q33_5 <- factor(enem_2001$Q33_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q33_6 <- factor(enem_2001$Q33_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q33_7 <- factor(enem_2001$Q33_7, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q34_1 <- factor(enem_2001$Q34_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q34_2 <- factor(enem_2001$Q34_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q34_3 <- factor(enem_2001$Q34_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q34_4 <- factor(enem_2001$Q34_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q34_5 <- factor(enem_2001$Q34_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q34_6 <- factor(enem_2001$Q34_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q34_7 <- factor(enem_2001$Q34_7, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q35 <- factor(enem_2001$Q35, levels = c("A","B","C","D","E","F"), 
#                        labels = c("Menos de 8 anos","8 anos","9 anos",
#                                   "10 anos","11 anos","Mais de 11 anos"))

#enem_2001$Q36 <- factor(enem_2001$Q36, levels = c("A","B","C"), 
#                        labels = c("Somente em escola pública",
#                                   "Parte em escola pública e parte em escola particular",
#                                   "Somente em escola particular"))

#enem_2001$Q37 <- factor(enem_2001$Q37, levels = c("A","B","C","D","E","F","G"), 
#                        labels = c("Vou concluí-lo no segundo semestre de 2001.",
#                                   "No primeiro semestre de 2001.",
#                                   "2000.","1999.","1998.",
#                                   "Entre 1994 e 1997.",
#                                   "Antes de 1994."))

#enem_2001$Q38 <- factor(enem_2001$Q38, levels = c("A","B","C","D","E","F"), 
#                        labels = c("Menos de 3 anos","3 anos","4 anos",
#                                   "5 anos","6 anos","Mais de 6 anos"))

#enem_2001$Q39 <- factor(enem_2001$Q39, levels = c("A","B","C"), 
#                        labels = c("Somente no turno diurno",
#                                   "Parte no turno diurno e parte no turno noturno",
#                                   "Somente no turno noturno"))

#enem_2001$Q40 <- factor(enem_2001$Q40, levels = c("A","B","C"), 
#                        labels = c("Somente em escola pública",
#                                   "Parte em escola pública e parte em escola particular",
#                                   "Somente em escola particular"))

#enem_2001$Q41 <- factor(enem_2001$Q41, levels = c("A","B","C"), 
#                        labels = c("Ensino regular",
#                                   "Educação para jovens e adultos (antigo supletivo)",
#                                   "Ensino técnico / ensino profissional"))

#enem_2001$Q42_1 <- factor(enem_2001$Q42_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q42_2 <- factor(enem_2001$Q42_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q42_3 <- factor(enem_2001$Q42_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q42_4 <- factor(enem_2001$Q42_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q42_5 <- factor(enem_2001$Q42_5, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q43_1 <- factor(enem_2001$Q43_1, levels = c("A","B","C"), labels = c("Frequentemente (todo dia ou quase todo dia)","Às vezes","Nunca"))
#enem_2001$Q43_2 <- factor(enem_2001$Q43_2, levels = c("A","B","C"), labels = c("Frequentemente (todo dia ou quase todo dia)","Às vezes","Nunca"))
#enem_2001$Q43_3 <- factor(enem_2001$Q43_3, levels = c("A","B","C"), labels = c("Frequentemente (todo dia ou quase todo dia)","Às vezes","Nunca"))
#enem_2001$Q43_4 <- factor(enem_2001$Q43_4, levels = c("A","B","C"), labels = c("Frequentemente (todo dia ou quase todo dia)","Às vezes","Nunca"))
#enem_2001$Q43_5 <- factor(enem_2001$Q43_5, levels = c("A","B","C"), labels = c("Frequentemente (todo dia ou quase todo dia)","Às vezes","Nunca"))

#enem_2001$Q45_1 <- factor(enem_2001$Q45_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q45_2 <- factor(enem_2001$Q45_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q45_3 <- factor(enem_2001$Q45_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q45_4 <- factor(enem_2001$Q45_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q45_5 <- factor(enem_2001$Q45_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q45_6 <- factor(enem_2001$Q45_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q45_7 <- factor(enem_2001$Q45_7, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q45_8 <- factor(enem_2001$Q45_8, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q46 <- factor(enem_2001$Q46, levels = c("A","B","C","D"), 
#                        labels = c("Eu me considero preparado(a) para entrar no mercado de trabalho",
#                                   "Apesar de ter frequentado uma boa escola, eu me considero despreparado(a), pois não aprendi o suficiente para conseguir um emprego",
#                                   "Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola, que não me preparou para nada",
#                                   "Não sei"))

#enem_2001$Q48_1 <- factor(enem_2001$Q48_1, levels = c("A","B"), labels = c("Já viu","Nunca viu"))
#enem_2001$Q48_2 <- factor(enem_2001$Q48_2, levels = c("A","B"), labels = c("Já viu","Nunca viu"))
#enem_2001$Q48_3 <- factor(enem_2001$Q48_3, levels = c("A","B"), labels = c("Já viu","Nunca viu"))
#enem_2001$Q48_4 <- factor(enem_2001$Q48_4, levels = c("A","B"), labels = c("Já viu","Nunca viu"))

#enem_2001$Q49 <- factor(enem_2001$Q49, levels = c("A","B","C","D","E"), 
#                        labels = c("Ele não faria nada, pois cada um sabe o que faz.",
#                                   "Ele tentaria convencê-lo(a) a parar.",
#                                   "Ele procuraria encaminhá-lo(a) para uma clínica para drogados.",
#                                   "Ele avisaria à família e deixaria que ela cuidasse do caso.",
#                                   "Não sei."))

#enem_2001$Q51 <- factor(enem_2001$Q51, levels = c("A","B","C","D","E","F","G","H","I","J","K","L"), 
#                        labels = c("0","1","2","3","4","5","6","7","8","9","10","Não sei"))

#enem_2001$Q52 <- factor(enem_2001$Q52, levels = c("A","B","C","D","E","F","G","H","I","J","K","L"), 
#                        labels = c("0","1","2","3","4","5","6","7","8","9","10","Não sei"))

#enem_2001$Q53 <- factor(enem_2001$Q53, levels = c("A","B","C","D","E","F"), 
#                        labels = c("Autoconfiança.",
#                                   "Clareza de objetivos.",
#                                   "Capacidade de solução de problemas.",
#                                   "Liderança.",
#                                   "Saber me relacionar com pessoas, trabalhar em grupo.",
#                                  "Não me falta nada."))

#enem_2001$Q54 <- factor(enem_2001$Q54, levels = c("A","B","C","D","E","F","G","H","I","J"), 
#                        labels = c("Evangélica pentecostal","Evangélica não pentecostal","Umbanda",
#                                   "Candomblé.","Espírita kardecista.","Católica.","Judaica ",
#                                   "Outra religião.","Acredita em Deus, mas não tem religião.",
#                                   "É ateu / não acredita em Deus."))

#enem_2001$Q55 <- factor(enem_2001$Q55, levels = c("A","B","C","D","E"), 
#                        labels = c("Mais de uma vez por semana.","1 vez por semana.",
#                                   "1 vez por mês.","Somente em ocasiões especiais.","Nunca."))

#enem_2001$Q56_1 <- factor(enem_2001$Q56_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q56_2 <- factor(enem_2001$Q56_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q56_3 <- factor(enem_2001$Q56_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q56_4 <- factor(enem_2001$Q56_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q56_5 <- factor(enem_2001$Q56_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q56_6 <- factor(enem_2001$Q56_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q56_7 <- factor(enem_2001$Q56_7, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q56_8 <- factor(enem_2001$Q56_8, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q57 <- factor(enem_2001$Q57, levels = c("A","B","C","D","E"), 
#                        labels = c("Sozinho(a)","Meus amigos da escola, minha turma",
#                                   "Meus amigos de fora da escola",
#                                   "Meus irmãos/minha família/marido/esposa/filhos",
#                                   "Só com o namorado(a)"))

#enem_2001$Q58 <- factor(enem_2001$Q58, levels = c("A","B","C","D","E","F","G"), 
#                        labels = c("Assisto a programas de TV.",
#                                   "Leio livros/revistas, escuto música.",
#                                   "Vou ao shopping.", "Vou à igreja.","Saio com amigos.",
#                                   "Acesso à Internet.","Nenhum desses itens."))

#enem_2001$Q59_1 <- factor(enem_2001$Q59_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q59_2 <- factor(enem_2001$Q59_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q59_3 <- factor(enem_2001$Q59_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q59_4 <- factor(enem_2001$Q59_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q59_5 <- factor(enem_2001$Q59_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q59_6 <- factor(enem_2001$Q59_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q59_7 <- factor(enem_2001$Q59_7, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q60_1 <- factor(enem_2001$Q60_1, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_2 <- factor(enem_2001$Q60_2, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_3 <- factor(enem_2001$Q60_3, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_4 <- factor(enem_2001$Q60_4, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_5 <- factor(enem_2001$Q60_5, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_6 <- factor(enem_2001$Q60_6, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_7 <- factor(enem_2001$Q60_7, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_8 <- factor(enem_2001$Q60_8, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_9 <- factor(enem_2001$Q60_9, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))
#enem_2001$Q60_10 <- factor(enem_2001$Q60_10, levels = c("A","B","C"), labels = c("Muito","Pouco","Não me interesso"))

#enem_2001$Q61_1 <- factor(enem_2001$Q61_1, levels = c("A","B","C","D","E","F","G","H","I","J","K","L"), 
#                          labels = c("Amizade","Sinceridade","Liberdade","Lealdade","Honestidade","Igualdade",
#                                     "Solidariedade","Ética","Independência","Justiça","Deus/minha religião",
#                                     "Não valorizo nenhum desses pontos"))

#enem_2001$Q61_2 <- factor(enem_2001$Q61_2, levels = c("A","B","C","D","E","F","G","H","I","J","K","L"), 
#                          labels = c("Amizade","Sinceridade","Liberdade","Lealdade","Honestidade","Igualdade",
#                                     "Solidariedade","Ética","Independência","Justiça","Deus/minha religião",
#                                     "Não valorizo nenhum desses pontos"))

#enem_2001$Q62_1 <- factor(enem_2001$Q62_1, levels = c("A","B","C","D","E","F","G","H"), 
#                          labels = c("Trabalho / profissão","Família","Estudos / aprender coisas novas / ter cultura",
#                                     "Diversão / tempo livre","Namorado(a) / companheiro(a)","Dinheiro",
#                                     "Segurança material","Não valorizo nenhum desses pontos"))

#enem_2001$Q62_2 <- factor(enem_2001$Q62_2, levels = c("A","B","C","D","E","F","G","H"), 
#                          labels = c("Trabalho / profissão","Família","Estudos / aprender coisas novas / ter cultura",
#                                     "Diversão / tempo livre","Namorado(a) / companheiro(a)","Dinheiro",
#                                     "Segurança material","Não valorizo nenhum desses pontos"))

#enem_2001$Q63_1 <- factor(enem_2001$Q63_1, levels = c("A","B","C","D","E","F","G","H","I","J","K","L","M","N"), 
#                          labels = c("Conseguir trabalho/ emprego","Meu futuro em geral",
#                                     "Terminar meus estudos/os exames/provas","Dinheiro",
#                                     "O meio ambiente","Conseguir entrar na faculdade/universidade",
#                                     "Estar bem com meus amigos","A falta de liberdade, a dependência de minha família",
#                                     "A Aids e as doenças perigosas e sem cura",
#                                     "O racismo e o desrespeito às pessoas de outra raça ou religião",
#                                     "Casar/constituir família/ter filhos","A pobreza, as favelas, os meninos de rua",
#                                     "A violência urbana","A situação do país"))

#enem_2001$Q63_2 <- factor(enem_2001$Q63_2, levels = c("A","B","C","D","E","F","G","H","I","J","K","L","M","N"), 
#                          labels = c("Conseguir trabalho/ emprego","Meu futuro em geral",
#                                     "Terminar meus estudos/os exames/provas","Dinheiro",
#                                     "O meio ambiente","Conseguir entrar na faculdade/universidade",
#                                     "Estar bem com meus amigos","A falta de liberdade, a dependência de minha família",
#                                     "A Aids e as doenças perigosas e sem cura",
#                                     "O racismo e o desrespeito às pessoas de outra raça ou religião",
#                                     "Casar/constituir família/ter filhos","A pobreza, as favelas, os meninos de rua",
#                                     "A violência urbana","A situação do país"))

#enem_2001$Q64_1 <- factor(enem_2001$Q64_1, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_2 <- factor(enem_2001$Q64_2, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_3 <- factor(enem_2001$Q64_3, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_4 <- factor(enem_2001$Q64_4, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_5 <- factor(enem_2001$Q64_5, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_6 <- factor(enem_2001$Q64_6, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_7 <- factor(enem_2001$Q64_7, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_8 <- factor(enem_2001$Q64_8, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_9 <- factor(enem_2001$Q64_9, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_10 <- factor(enem_2001$Q64_10, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_11 <- factor(enem_2001$Q64_11, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_12 <- factor(enem_2001$Q64_12, levels = c("A","B"), labels = c("Concorda","Discorda"))
#enem_2001$Q64_13 <- factor(enem_2001$Q64_13, levels = c("A","B"), labels = c("Concorda","Discorda"))

#enem_2001$Q66_1 <- factor(enem_2001$Q66_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q66_2 <- factor(enem_2001$Q66_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q66_3 <- factor(enem_2001$Q66_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q66_4 <- factor(enem_2001$Q66_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q66_5 <- factor(enem_2001$Q66_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q66_6 <- factor(enem_2001$Q66_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q66_7 <- factor(enem_2001$Q66_7, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q67 <- factor(enem_2001$Q67, levels = c("A","B","C","D","E","F","G","H"), 
#                        labels = c("Já conclui o ensino médio (2º Grau)",
#                                   "Prestar vestibular e continuar os estudos no ensino superior",
#                                   "Procurar um emprego","Prestar vestibular e continuar a trabalhar",
#                                   "Fazer curso(s) profissionalizante(s) e me preparar para o trabalho",
#                                   "Trabalhar por conta própria / trabalhar em negócio da família",
#                                   "Outro plano","Ainda não decidiu"))

#enem_2001$Q68 <- factor(enem_2001$Q68, levels = c("A","B","C","D","E","F"), 
#                        labels = c("Gostaria de ter um diploma universitário para conseguir um bom emprego",
#                                   "Gostaria de prestar um concurso e trabalhar no setor público",
#                                   "Gostaria de ganhar dinheiro em meu próprio negócio",
#                                   "Gostaria de ter um emprego","Outro plano","Não planejei"))

#enem_2001$Q69 <- factor(enem_2001$Q69, levels = c("A","B","C","D","E","F","G"), 
#                        labels = c("Ainda não escolhi",
#                                   "Profissão ligada às Engenharias / Ciências Tecnológicas",
#                                   "Profissão ligada às Ciências Humanas",
#                                   "Profissão ligada às Artes",
#                                   "Profissão ligadas às Ciências Biológicas e de Saúde",
#                                   "Professor(a) de Ensino Fundamental e Médio (1º e 2º graus)",
#                                   "Não vou seguir nenhuma profissão"))

#enem_2001$Q71_1 <- factor(enem_2001$Q71_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q71_2 <- factor(enem_2001$Q71_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q71_3 <- factor(enem_2001$Q71_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q71_4 <- factor(enem_2001$Q71_4, levels = c("A","B"), labels = c("Sim","Não"))

#enem_2001$Q72 <- factor(enem_2001$Q72, levels = c("A","B","C"), 
#                        labels = c("Sim, estou estudando no momento atual",
#                                   "Sim, mas não estou estudando no momento atual",
#                                   "Não"))

#enem_2001$Q73_1 <- factor(enem_2001$Q73_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q73_2 <- factor(enem_2001$Q73_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q73_3 <- factor(enem_2001$Q73_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q73_4 <- factor(enem_2001$Q73_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q73_5 <- factor(enem_2001$Q73_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q73_6 <- factor(enem_2001$Q73_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q74_1 <- factor(enem_2001$Q74_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q74_2 <- factor(enem_2001$Q74_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q74_3 <- factor(enem_2001$Q74_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q74_4 <- factor(enem_2001$Q74_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q74_5 <- factor(enem_2001$Q74_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q74_6 <- factor(enem_2001$Q74_6, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q74_7 <- factor(enem_2001$Q74_7, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q75_1 <- factor(enem_2001$Q75_1, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q75_2 <- factor(enem_2001$Q75_2, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q75_3 <- factor(enem_2001$Q75_3, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q75_4 <- factor(enem_2001$Q75_4, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q75_5 <- factor(enem_2001$Q75_5, levels = c("A","B"), labels = c("Sim","Não"))
#enem_2001$Q75_6 <- factor(enem_2001$Q75_6, levels = c("A","B"), labels = c("Sim","Não"))

