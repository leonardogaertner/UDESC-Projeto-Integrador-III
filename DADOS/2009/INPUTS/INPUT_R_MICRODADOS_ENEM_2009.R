#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2009
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2009
#--------------------------------------------------------

#--------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este 
#     programa e o arquivo MICRODADOS_ENEM_2009.csv no
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
# Ex. Windows setwd("C:/temp")
#     Linux   setwd("/home")
#--------------------
setwd("C:/")  

#---------------
# Alocação de memória
#---------------
memory.limit(1000000)

#------------------
# Carga dos microdados

enem_2009 <- data.table::fread(input='microdados_enem_2009.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#---------------------------
# A script a seguir formata os rótulos das respostas
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#enem_2009$TP_FAIXA_ETARIA <- factor(enem_2009$TP_FAIXA_ETARIA, 
#                                   levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                   labels = c('Menor de 17 anos','17 anos','18 anos','19 anos','20 anos','21 anos','22 anos',
#                                              '23 anos','24 anos','25 anos','Entre 26 e 30 anos','Entre 31 e 35 anos','Entre 36 e 40 anos',
#                                              'Entre 41 e 45 anos','Entre 46 e 50 anos','Entre 51 e 55 anos','Entre 56 e 60 anos','Entre 61 e 65 anos',
#                                              'Entre 66 e 70 anos','Maior de 70 anos'))

#enem_2009$TP_ST_CONCLUSAO <- factor(enem_2009$TP_ST_CONCLUSAO, levels = c(1,2,3,4), 
#                                   labels = c('Já concluiu', 
#                                              'Concluirá em 2009', 
#                                              'Concluirá após 2009',
#                                              'Não concluiu o Ensino Médio'
#                                              ))

#enem_2009$TP_SEXO <- factor(enem_2009$TP_SEXO, levels = c('M','F'), labels=c('Maculino','Feminino'))

#enem_2009$TP_ENSINO <- factor(enem_2009$TP_ENSINO, levels = c(1,2,3,4), 
#                             labels = c('Ensino Regular', 
#                                        'Ensino de Jovens e Adultos',
#                                        'Ensino profissionalizante', 
#                                        'Ensino Especial'))

#enem_2009$IN_CERTIFICADO <- factor(enem_2009$IN_CERTIFICADO, levels = c('0','1'), labels=c('Não','Sim'))

#enem_2009$TP_DEPENDENCIA_ADM_ESC <- factor(enem_2009$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4), 
#                                          labels = c("Federal", 
#                                                     "Estadual", 
#                                                     "Municipal",
#                                                     "Privada"))

#enem_2009$TP_LOCALIZACAO_ESC <- factor(enem_2009$TP_LOCALIZACAO_ESC, levels = c(1,2), 
#                                      labels = c("Urbana",
#                                                 "Rural"))

#enem_2009$TP_SIT_FUNC_ESC <- factor(enem_2009$TP_SIT_FUNC_ESC, levels = c(1,2,3,4), 
#                                   labels = c("Em atividade",
#                                              "Paralisada", 
#                                              "Extinta",
#                                              "Escola extinta em anos anteriores"))

#enem_2009$TP_PRESENCA_CN <- factor(enem_2009$TP_PRESENCA_CN, levels = c(0,1,2),
#                                  labels=c('Faltou à prova',
#                                          'Presente na prova',
#                                          'Eliminado na prova'))

#enem_2009$TP_PRESENCA_CH <- factor(enem_2009$TP_PRESENCA_CH, levels = c(0,1,2),
#                                  labels=c('Faltou à prova',
#                                           'Presente na prova',
#                                           'Eliminado na prova'))

#enem_2009$TP_PRESENCA_LC <- factor(enem_2009$TP_PRESENCA_LC, levels = c(0,1,2),
#                                  labels=c('Faltou à prova',
#                                           'Presente na prova',
#                                           'Eliminado na prova'))

#enem_2009$TP_PRESENCA_MT <- factor(enem_2009$TP_PRESENCA_MT, levels = c(0,1,2),
#                                  labels=c('Faltou à prova',
#                                           'Presente na prova',
#                                           'Eliminado na prova'))

#enem_2009$CO_PROVA_CN <- factor(enem_2009$CO_PROVA_CN, levels = c(49,50,51,52,65,66,67,68,81),
#                               labels=c('AZUL',
#                                        'AMARELO',
#                                        'BRANCA',
#                                        'ROSA',
#                                        'AZUL (REAPLICAÇÃO/PPL)',
#                                        'AMARELO (REAPLICAÇÃO/PPL)',
#                                        'BRANCA (REAPLICAÇÃO/PPL)',
#                                        'ROSA (REAPLICAÇÃO/PPL)',
#                                        'BRANCA (ADAPTADA LEDOR)'))

#enem_2009$CO_PROVA_CH <- factor(enem_2009$CO_PROVA_CH, levels = c(53,54,55,56,69,70,71,72,82),
#                               labels=c('AZUL',
#                                        'AMARELO',
#                                        'BRANCA',
#                                        'ROSA',
#                                        'AZUL (REAPLICAÇÃO/PPL)',
#                                        'AMARELO (REAPLICAÇÃO/PPL)',
#                                        'BRANCA (REAPLICAÇÃO/PPL)',
#                                        'ROSA (REAPLICAÇÃO/PPL)',
#                                        'BRANCA (ADAPTADA LEDOR)'))

#enem_2009$CO_PROVA_LC <- factor(enem_2009$CO_PROVA_LC, levels = c(57,58,59,60,73,74,75,76,83),
#                               labels=c('AMARELO',
#                                        'CINZA',
#                                        'AZUL',
#                                        'ROSA',
#                                        'AMARELO (REAPLICAÇÃO/PPL)',
#                                        'CINZA (REAPLICAÇÃO/PPL)',
#                                        'AZUL (REAPLICAÇÃO/PPL)',
#                                        'ROSA (REAPLICAÇÃO/PPL)',
#                                        'CINZA (ADAPTADA LEDOR)'))

#enem_2009$CO_PROVA_MT <- factor(enem_2009$CO_PROVA_MT, levels = c(61,62,63,64,77,78,79,80,84),
#                                labels=c('AMARELO',
#                                        'CINZA',
#                                        'AZUL',
#                                        'ROSA',
#                                        'AMARELO (REAPLICAÇÃO/PPL)',
#                                        'CINZA (REAPLICAÇÃO/PPL)',
#                                        'AZUL (REAPLICAÇÃO/PPL)',
#                                        'ROSA (REAPLICAÇÃO/PPL)',
#                                        'CINZA (ADAPTADA LEDOR)'))

#enem_2009$TP_STATUS_REDACAO <- factor(enem_2009$TP_STATUS_REDACAO, levels = c("B","F","N","P"), 
#                                     labels = c("Entregou a redação em branco",
#                                                "Faltou à prova", 
#                                                "Redação anulada", 
#                                                "Presente à prova"))

#enem_2009$IN_CERTIFICADO <- factor(enem_2009$IN_CERTIFICADO, levels = c(0,1), labels = c("Não", "Sim"))

#enem_2009$IN_QSE <- factor(enem_2009$IN_QSE, levels = c(0,1), 
#                          labels = c("Não respondeu o questionário socioecômico",
#                                     "Respondeu o questionário socioecômico"))

#enem_2009$Q1 <- factor(enem_2009$Q1, levels = c("A", "B"), 
#                      labels = c("Feminino",
#                                 "Masculino"))

#enem_2009$Q2 <- factor(enem_2009$Q2, levels = c('A','B','C','D','E','F','G','H'), 
#                      labels = c('Menos de 17 anos',
#                                 '17 anos',
#                                 '18 anos',
#                                 'Entre 19 e 25 anos',
#                                 'Entre 26 e 33 anos',
#                                 'Entre 34 e 41 anos',
#                                 'Entre 42 e 49 anos',
#                                 '50 anos ou mais'))

#enem_2009$Q3 <- factor(enem_2009$Q3, levels = c("A", "B", "C", "D", "E"), 
#                      labels = c("Branco(a)", 
#                                 "Pardo(a)", 
#                                 "Preto(a)", 
#                                 "Amarelo(a)",
#                                 "Indígena"))

#enem_2009$Q4 <- factor(enem_2009$Q4, levels = c('A','B','C','D','E'), 
#                      labels = c('Minha língua materna é o português',
#                                 'Uma língua indígena e o português',
#                                 'Mais de uma língua indígena e o português',
#                                 'Uma língua indígena, o português e o espanhol',
#                                 'Mais de uma língua indígena, o português e outra(s) língua(s) estrangeira(s)'))

#enem_2009$Q5 <- factor(enem_2009$Q5, levels = c('A','B','C','D','E','F'), 
#                      labels = c('Católica',
#                                 'Protestante ou Evangélica',
#                                 'Espírita',
#                                 'Umbanda ou Candomblé',
#                                 'Outra',
#                                 'Sem religião'))

#enem_2009$Q6 <- factor(enem_2009$Q6, levels = c("A", "B", "C", "D"), 
#                      labels = c("Solteiro(a)", 
#                                 "Casado(a) / mora com um(a) companheiro(a)", 
#                                 "Separado(a) / divorciado(a) / desquitado(a)",
#                                 "Viúvo(a)"))

#enem_2009$Q7 <- factor(enem_2009$Q7, levels = c("A", "B", "C", "D", "E"), 
#                      labels = c("Em casa ou apartamento, com sua família", 
#                                 "Em casa ou apartamento, sozinho(a)", 
#                                 "Em quarto ou cômodo alugado, sozinho(a)", 
#                                 "Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc",
#                                 "Outra situação"))

#enem_2009$Q8 <- factor(enem_2009$Q8, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q9 <- factor(enem_2009$Q9, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q10 <- factor(enem_2009$Q10, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q11 <- factor(enem_2009$Q11, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q12 <- factor(enem_2009$Q12, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q13 <- factor(enem_2009$Q13, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q14 <- factor(enem_2009$Q14, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q15 <- factor(enem_2009$Q15, levels = c('A','B','C','D','E','F'), 
#                       labels = c('Duas pessoas',
#                                 'Três',
#                                 'Quatro',
#                                 'Cinco',
#                                 'Mais de seis',
#                                 'Moro sozinho(a)'))

#enem_2009$Q16 <- factor(enem_2009$Q16, levels = c("A", "B", "C", "D", "E"), 
#                       labels = c("Um filho ", 
#                                  "Dois filhos", 
#                                  "Três filhos", 
#                                  "Quatro ou mais filhos",
#                                  "Não tenho filhos"))

#enem_2009$Q17 <- factor(enem_2009$Q17, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I"), 
#                       labels = c("Não estudou", 
#                                  "Da 1ª a 4ª série do ensino fundamental (antigo primário)",
#                                  "Da 5ª a 8ª do ensino fundamental (antigo ginásio)", 
#                                  "Ensino Médio (2º grau) incompleto", 
#                                  " Ensino Médio (2º grau) completo", 
#                                  "Ensino Superior incompleto", 
#                                  "Ensino Superior completo", 
#                                  "Pós-graduação", 
#                                  "Não sei"))

#enem_2009$Q18 <- factor(enem_2009$Q18, levels = c("A", "B", "C", "D", "E", "F", "G", "H", "I"), 
#                       labels = c("Não estudou", 
#                                  "Da 1ª a 4ª série do ensino fundamental (antigo primário)",
#                                  "Da 5ª a 8ª do ensino fundamental (antigo ginásio)", 
#                                  "Ensino Médio (2º grau) incompleto", 
#                                  "Ensino Médio (2º grau) completo", 
#                                  "Ensino Superior incompleto", 
#                                  "Ensino Superior completo", 
#                                  "Pós-graduação", 
#                                  "Não sei"))

#enem_2009$Q19 <- factor(enem_2009$Q19, levels = c('A','B','C','D','E','F','G','H','I','J','K','L'), 
#                       labels = c('Na agricultura, no campo, em fazenda ou na pesca',
#                                  'Na indústria',
#                                  'Na construção civil',
#                                  'No comércio, banco, transporte, hotelaria ou outros serviços',
#                                  'Funcionário público do governo federal, estadual ou municipal',
#                                  'Profissional liberal, professor ou técnico de nível superior',
#                                  'Trabalhador fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador de carros, catador de lixo, etc)',
#                                  'Trabalha em casa em serviços (alfaiataria, cozinha, aulas particulares, artesanato, carpintaria, marcenaria, etc)',
#                                  'Trabalhador doméstico em casa de outras pessoas (faxineiro, cozinheiro, mordomo, motorista particular, jardineiro, vigia, acompanhante de idosos/as, etc)',
#                                  'No lar (sem remuneração)',
#                                  'Não trabalha',
#                                  'Não sei'))
#                                 
#enem_2009$Q20 <- factor(enem_2009$Q20, levels = c('A','B','C','D','E','F','G','H','I','J','K','L','M'), 
#                       labels = c('Na agricultura, no campo, em fazenda ou na pesca',
#                                 'Na indústria',
#                                 'Na construção civil',
#                                 'No comércio, banco, transporte, hotelaria ou outros serviços',
#                                 'FuncionáriA público do governo federal, estadual ou municipal',
#                                 'Profissional liberal, professora ou técnica de nível superior',
#                                 'Trabalhadora fora de casa em atividades informais (feirante, ambulante, guardadora de carros, catadora de lixo, etc)',
#                                 'Trabalha em casa em serviços (costura, cozinha, aulas particulares, artesanato, etc)',
#                                 'Trabalhador doméstico em casa de outras pessoas (cozinheira, arrumadeira, governanta, babá, lavadeira, faxineira, acompanhante de idosos/as, etc)',
#                                 'No lar (sem remuneração)',
#                                 'Outro',
#                                 'Não trabalha',
#                                 'Não sei'))

#enem_2009$Q21 <- factor(enem_2009$Q21, levels = c('A','B','C','D','E','F','G','H'), 
#                       labels = c('Até 1 salário mínimo (até R$ 465,00 inclusive)',
#                                 'De 1 a 2 salários mínimos (R$ 465,00 a R$ 930,00 inclusive)',
#                                 'De 2 a 5 salários mínimos (R$ 930,00 a R$ 2.325,00 inclusive)',
#                                 'De 5 a 10 salários mínimos (R$ 2.325,00 a R$ 4.650,00 inclusive)',
#                                 'De 10 a 30 salários mínimos (R$ 4.650,00 a R$ 13.950,00 inclusive)',
#                                 'De 30 a 50 salários mínimos (R$ 13.950,00 a R$ 23.250,00 inclusive)',
#                                 'Mais de 50 salários mínimos (mais de R$ 23.250,00)',
#                                 'Nenhuma renda'))

#enem_2009$Q22 <- factor(enem_2009$Q22, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q23 <- factor(enem_2009$Q23, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q24 <- factor(enem_2009$Q24, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q25 <- factor(enem_2009$Q25, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q26 <- factor(enem_2009$Q26, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q27 <- factor(enem_2009$Q27, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q28 <- factor(enem_2009$Q28, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q29 <- factor(enem_2009$Q29, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q30 <- factor(enem_2009$Q30, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q31 <- factor(enem_2009$Q31, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q32 <- factor(enem_2009$Q32, levels = c("A", "B", "C", "D"), 
#                       labels = c("1", 
#                                  "2", 
#                                  "3 ou mais ",
#                                  "Não tem"))

#enem_2009$Q33 <- factor(enem_2009$Q33, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q34 <- factor(enem_2009$Q34, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q35 <- factor(enem_2009$Q35, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q36 <- factor(enem_2009$Q36, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q37 <- factor(enem_2009$Q37, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q38 <- factor(enem_2009$Q38, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q39 <- factor(enem_2009$Q39, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q40 <- factor(enem_2009$Q40, levels = c('A','B','C','D','E','F'), 
#                       labels = c('Para  testar seus conhecimentos / capacidade de raciocínio',
#                                 'Para entrar na faculdade / conseguir pontos para o vestibular/conseguir bolsa do governo',
#                                 'Para ter um bom emprego / saber se está preparado(a) para o futuro profissional',
#                                 'Para obter minha certificação do Ensino Médio',
#                                 'Não sei',
#                                 'Nenhuma das anteriores'))

#enem_2009$Q41 <- factor(enem_2009$Q41, levels = c('A','B','C','D','E','F','G'), 
#                       labels = c('Porque não encontrei outro modo de conseguir o certificado de conclusão do ensino médio',
#                                 'Porque era a melhor alternativa para conseguir o certificado de conclusão do ensino médio.',
#                                 'Porque achei que era uma boa forma de avaliar meus conhecimentos',
#                                 'Os(as) professores(as) do meu curso recomendaram',
#                                 'Quero continuar meus estudos na educação superior',
#                                 'Porque era a melhor maneira para conciliar estudo e trabalho',
#                                 'Porque não quero e não gosto de estudar no curso regular'))

#enem_2009$Q42 <- factor(enem_2009$Q42, levels = c('A','B','C','D','E','F'), 
#                       labels = c('Trabalho, estou empregado com carteira de trabalho assinada',
#                                 'Trabalho, mas não tenho carteira de trabalho assinada',
#                                 'Trabalho por conta própria, não tenho carteira de trabalho assinada',
#                                 'Já trabalhei, mas não estou trabalhando',
#                                 'Nunca trabalhei',
#                                 'Nunca trabalhei, mas estou procurando trabalho'))

#enem_2009$Q43 <- factor(enem_2009$Q43, levels = c('A','B','C','D','E','F'), 
#                       labels = c('Sim, todo o tempo',
#                                  'Sim, menos de 1 ano',
#                                  'Sim, de 1 a 2 anos',
#                                  'Sim, de 2 a 3 anos',
#                                  'Sim, mais de 3 anos',
#                                  'Não'))

#enem_2009$Q44 <- factor(enem_2009$Q44, levels = c("A", "B", "C", "D", "E"), 
#                       labels = c("Sem jornada fixa, até 10 horas semanais",
#                                  "De 11 a 20 horas semanais", 
#                                  "De 21 a 30 horas semanais", 
#                                  "De 31 a 40 horas semanais ", 
#                                  "Mais de 40 horas semanais"))

#enem_2009$Q45 <- factor(enem_2009$Q45, levels = c('A','B','C','D','E','F','G'), 
#                       labels = c('Para ajudar meus pais nas despesas com a casa, sustentar a família',
#                                  'Para meu sustento e o de minha família (esposo/a, filhos/as, etc)',
#                                  'Para ser independente (ter meu sustento, ganhar meu próprio dinheiro)',
#                                  'Para adquirir experiência',
#                                  'Para ajudar minha comunidade',
#                                  'Outra finalidade',
#                                  'Nunca trabalhei enquanto estudava'))

#enem_2009$Q46 <- factor(enem_2009$Q46, levels = c('A','B','C','D','E'), 
#                       labels = c('Antes dos 14 anos',
#                                  'Entre 14 e 16 anos',
#                                  'Entre 17 e 18 anos',
#                                  'Após 18 anos',
#                                  'Nunca trabalhei enquanto estudava'))

#enem_2009$Q47 <- factor(enem_2009$Q47, levels = c('A','B','C','D','E','F','G','H'), 
#                       labels = c('Até 1 salário mínimo (até R$ 465,00 inclusive)',
#                                  'De 1 a 2 salários mínimos (R$ 465,00 a R$ 930,00 inclusive)',
#                                  'De 2 a 5 salários mínimos (R$ 930,00 a R$ 2.325,00 inclusive)',
#                                  'De 5 a 10 salários mínimos (R$ 2.325,00 a R$ 4.650,00 inclusive)',
#                                  'De 10 a 30 salários mínimos (R$ 4.650,00 a R$ 13.950,00 inclusive)',
#                                  'De 30 a 50 salários mínimos (R$ 13.950,00 a R$ 23.250,00 inclusive)',
#                                  'Mais de 50 salários mínimos (mais de R$ 23.250,00)',
#                                  'Não estou trabalhando'))

#enem_2009$Q48 <- factor(enem_2009$Q48, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q49 <- factor(enem_2009$Q49, levels = c('A','B','C','D','E','F','G','H','I','J','K','L','M'), 
#                       labels = c('Na agricultura, no campo, em fazenda ou na pesca',
#                                  'Na indústria',
#                                  'Na construção civil',
#                                  'No comércio, banco, transporte, hotelaria ou outros serviços',
#                                  'Funcionário(a) público do governo federal, estadual ou municipal',
#                                  'Profissional liberal, professor(a) ou técnico(a) de nível superior',
#                                  'Trabalhador(a) fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador(a) de carros, catador(a) de lixo, etc)',
#                                  'Trabalha em casa em serviços (costura, cozinha, aulas particulares, artesanato, carpintaria, etc)',
#                                  'Trabalhador doméstico em casa de outras pessoas (cozinheiro(a), mordomo/governanta, jardineiro,babá, lavadeira, faxineiro(a), acompanhante de idosos/as, etc)',
#                                  'No lar (sem remuneração)',
#                                  'Outro',
#                                  'Não trabalha',
#                                  'Não sei'))

#enem_2009$Q50 <- factor(enem_2009$Q50, levels = c("A", "B", "C", "D"), 
#                       labels = c("Menos de 1 ano ", 
#                                  "Entre 1 e 2 anos",
#                                  "Entre 2 e 4 anos",
#                                  "Mais de 4 anos"))

#enem_2009$Q51 <- factor(enem_2009$Q51, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q52 <- factor(enem_2009$Q52, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q53 <- factor(enem_2009$Q53, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q54 <- factor(enem_2009$Q54, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q55 <- factor(enem_2009$Q55, levels = c("A", "B", "C", "D", "E"), 
#                        labels = c("Atrapalhou os estudos", 
#                                   "Possibilitou crescimento pessoal", 
#                                   "Atrapalhou os estudos, mas possibilitou crescimento pessoal",
#                                   "Não atrapalhou os estudos", 
#                                   "Não trabalho / Não trabalhei"))

#enem_2009$Q56 <- factor(enem_2009$Q56, levels = c("A", "B", "C"), 
#                       labels = c("Sim ", 
#                                  "Não", 
#                                  "Não sei"))

#enem_2009$Q57 <- factor(enem_2009$Q57, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q58 <- factor(enem_2009$Q58, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q59 <- factor(enem_2009$Q59, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q60 <- factor(enem_2009$Q60, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q61 <- factor(enem_2009$Q61, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q62 <- factor(enem_2009$Q62, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q63 <- factor(enem_2009$Q63, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q64 <- factor(enem_2009$Q64, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q65 <- factor(enem_2009$Q65, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q66 <- factor(enem_2009$Q66, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q67 <- factor(enem_2009$Q67, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q68 <- factor(enem_2009$Q68, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q69 <- factor(enem_2009$Q69, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q70 <- factor(enem_2009$Q70, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q71 <- factor(enem_2009$Q71, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q72 <- factor(enem_2009$Q72, levels = c('A','B','C','D','E','F','G'), 
#                       labels = c('Menos de 8 anos',
#                                  '8 anos',
#                                  '9 anos',
#                                  '10 anos',
#                                  '11 anos',
#                                  'Mais de 11 anos',
#                                  'Não cursei'))

#enem_2009$Q73 <- factor(enem_2009$Q73, levels = c('A','B','C','D','E','F','G'), 
#                       labels = c('Somente em escola pública',
#                                  'Parte em escola pública e parte em escola particular',
#                                  'Somente em escola particular',
#                                  'Somente em escola indígena ou em escola situada em comunidade quilombola',
#                                  'Parte na escola indígena e parte em escola não-indígena',
#                                  'Parte em escola situada em comunidade quilombola e parte em escola fora de área quilombola',
#                                  'Não frenquentei a escola'))

#enem_2009$Q74 <- factor(enem_2009$Q74, levels = c('A','B','C','D','E','F','G','H','I','J','K'), 
#                       labels = c('Vai concluir após 2009',
#                                  'Vai concluir no segundo semestre de 2009',
#                                  'No primeiro semestre de 2009',
#                                  'Em 2008',
#                                  'Em 2007',
#                                  'Em 2006',
#                                  'Em 2005',
#                                  'Em 2004',
#                                  'Entre 2003 e 2002',
#                                  'Antes de 2002',
#                                  'Não cursei o ensino médio'))

#enem_2009$Q75 <- factor(enem_2009$Q75, levels = c("A", "B", "C", "D", "E", "F"), 
#                       labels = c("Menos de 3 anos ",
#                                  "3 anos", 
#                                  "4 anos", 
#                                  "5 anos", 
#                                  "6 anos", 
#                                  "Mais de 6 anos"))

#enem_2009$Q76 <- factor(enem_2009$Q76, levels = c("A", "B", "C", "D"), 
#                       labels = c("Somente no turno diurno", 
#                                  "Maior parte no turno diurno",
#                                  "Somente no turno noturno", 
#                                  "Maior parte no turno noturno"))

#enem_2009$Q77 <- factor(enem_2009$Q77, levels = c('A','B','C','D','E','F','G','H'), 
#                       labels = c('Somente em escola pública',
#                                  'Maior parte em escola pública',
#                                  'Somente em escola particular',
#                                  'Maior parte em escola particular',
#                                  'Somente em escola indígena',
#                                  'Maior parte em escola não-indígena',
#                                  'Somente em escola situada em comunidade quilombola',
#                                  'Maior parte em escola situada em comunidade não quilombola'))

#enem_2009$Q78 <- factor(enem_2009$Q78, levels = c("A", "B", "C"), 
#                       labels = c("Ensino regular", 
#                                  "Educação para jovens e adultos (antigo supletivo)", 
#                                  "Ensino técnico / ensino profissional"))

#enem_2009$Q79 <- factor(enem_2009$Q79, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q80 <- factor(enem_2009$Q80, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q81 <- factor(enem_2009$Q81, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q82 <- factor(enem_2009$Q82, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q83 <- factor(enem_2009$Q83, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q84 <- factor(enem_2009$Q84, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q85 <- factor(enem_2009$Q85, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q86 <- factor(enem_2009$Q86, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q87 <- factor(enem_2009$Q87, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q88 <- factor(enem_2009$Q88, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q89 <- factor(enem_2009$Q89, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q90 <- factor(enem_2009$Q90, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q91 <- factor(enem_2009$Q91, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q92 <- factor(enem_2009$Q92, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q93 <- factor(enem_2009$Q93, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q94 <- factor(enem_2009$Q94, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q95 <- factor(enem_2009$Q95, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q96 <- factor(enem_2009$Q96, levels = c("A", "B", "C"), 
#                       labels = c("Frequentemente (todo dia ou quase todo dia) ",
#                                  "às vezes", 
#                                  "Nunca"))

#enem_2009$Q97 <- factor(enem_2009$Q97, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q98 <- factor(enem_2009$Q98, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q99 <- factor(enem_2009$Q99, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q100 <- factor(enem_2009$Q100, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q101 <- factor(enem_2009$Q101, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q102 <- factor(enem_2009$Q102, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q103 <- factor(enem_2009$Q103, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q104 <- factor(enem_2009$Q104, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q105 <- factor(enem_2009$Q105, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q106 <- factor(enem_2009$Q106, levels = c("A", "B", "C"), 
#                       labels = c("Insuficiente a regular",
#                                  "Regular a bom", 
#                                  "Bom a excelente"))

#enem_2009$Q107 <- factor(enem_2009$Q107, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q108 <- factor(enem_2009$Q108, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q109 <- factor(enem_2009$Q109, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q110 <- factor(enem_2009$Q110, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q111 <- factor(enem_2009$Q111, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q112 <- factor(enem_2009$Q112, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q113 <- factor(enem_2009$Q113, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q114 <- factor(enem_2009$Q114, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q115 <- factor(enem_2009$Q115, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q116 <- factor(enem_2009$Q116, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q117 <- factor(enem_2009$Q117, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q118 <- factor(enem_2009$Q118, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q119 <- factor(enem_2009$Q119, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q120 <- factor(enem_2009$Q120, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q121 <- factor(enem_2009$Q121, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q122 <- factor(enem_2009$Q122, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q123 <- factor(enem_2009$Q123, levels = c("A", "B", "C", "D"), 
#                        labels = c("Eu me considero preparado(a) para entrar no mercado de trabalho", 
#                                   "Apesar de ter frequentado uma boa escola, eu me considero despreparado(a), pois Não aprendi o suficiente para conseguir um emprego",
#                                   "Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola, que Não me preparou o suficiente", 
#                                   "Não sei"))

#enem_2009$Q124 <- factor(enem_2009$Q124, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q125 <- factor(enem_2009$Q125, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q126 <- factor(enem_2009$Q126, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q127 <- factor(enem_2009$Q127, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q128 <- factor(enem_2009$Q128, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q129 <- factor(enem_2009$Q129, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q130 <- factor(enem_2009$Q130, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q131 <- factor(enem_2009$Q131, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q132 <- factor(enem_2009$Q132, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q133 <- factor(enem_2009$Q133, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q134 <- factor(enem_2009$Q134, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q135 <- factor(enem_2009$Q135, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q136 <- factor(enem_2009$Q136, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q137 <- factor(enem_2009$Q137, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q138 <- factor(enem_2009$Q138, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q139 <- factor(enem_2009$Q139, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q140 <- factor(enem_2009$Q140, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q141 <- factor(enem_2009$Q141, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q142 <- factor(enem_2009$Q142, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q143 <- factor(enem_2009$Q143, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q144 <- factor(enem_2009$Q144, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q145 <- factor(enem_2009$Q145, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q146 <- factor(enem_2009$Q146, levels = c("A", "B", "C"), 
#                        labels = c("Insuficiente a regular",
#                                   "Regular a bom", 
#                                   "Bom a excelente"))

#enem_2009$Q147 <- factor(enem_2009$Q147, levels = c('A','B','C','D','E','F','G','H','I','J','K','L','M'), 
#                         labels = c('0','1','2','3','4','5','6','7','8','9','10','Não sei','Não cursei'))

#enem_2009$Q148 <- factor(enem_2009$Q148, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q149 <- factor(enem_2009$Q149, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q150 <- factor(enem_2009$Q150, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q151 <- factor(enem_2009$Q151, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q152 <- factor(enem_2009$Q152, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q153 <- factor(enem_2009$Q153, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q154 <- factor(enem_2009$Q154, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q155 <- factor(enem_2009$Q155, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q156 <- factor(enem_2009$Q156, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q157 <- factor(enem_2009$Q157, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q158 <- factor(enem_2009$Q158, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q159 <- factor(enem_2009$Q159, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q160 <- factor(enem_2009$Q160, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q161 <- factor(enem_2009$Q161, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q162 <- factor(enem_2009$Q162, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q163 <- factor(enem_2009$Q163, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q164 <- factor(enem_2009$Q164, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q165 <- factor(enem_2009$Q165, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q166 <- factor(enem_2009$Q166, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q167 <- factor(enem_2009$Q167, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q168 <- factor(enem_2009$Q168, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q169 <- factor(enem_2009$Q169, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q170 <- factor(enem_2009$Q170, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q171 <- factor(enem_2009$Q171, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q172 <- factor(enem_2009$Q172, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q173 <- factor(enem_2009$Q173, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q174 <- factor(enem_2009$Q174, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q175 <- factor(enem_2009$Q175, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q176 <- factor(enem_2009$Q176, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q177 <- factor(enem_2009$Q177, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q178 <- factor(enem_2009$Q178, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q179 <- factor(enem_2009$Q179, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q180 <- factor(enem_2009$Q180, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q181 <- factor(enem_2009$Q181, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q182 <- factor(enem_2009$Q182, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q183 <- factor(enem_2009$Q183, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q184 <- factor(enem_2009$Q184, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q185 <- factor(enem_2009$Q185, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q186 <- factor(enem_2009$Q186, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q187 <- factor(enem_2009$Q187, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q188 <- factor(enem_2009$Q188, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q189 <- factor(enem_2009$Q189, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q190 <- factor(enem_2009$Q190, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q191 <- factor(enem_2009$Q191, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q192 <- factor(enem_2009$Q192, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q193 <- factor(enem_2009$Q193, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q194 <- factor(enem_2009$Q194, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q195 <- factor(enem_2009$Q195, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q196 <- factor(enem_2009$Q196, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q197 <- factor(enem_2009$Q197, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q198 <- factor(enem_2009$Q198, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q199 <- factor(enem_2009$Q199, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q200 <- factor(enem_2009$Q200, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q201 <- factor(enem_2009$Q201, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q202 <- factor(enem_2009$Q202, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q203 <- factor(enem_2009$Q203, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q204 <- factor(enem_2009$Q204, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q205 <- factor(enem_2009$Q205, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q206 <- factor(enem_2009$Q206, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q207 <- factor(enem_2009$Q207, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q208 <- factor(enem_2009$Q208, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q209 <- factor(enem_2009$Q209, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q210 <- factor(enem_2009$Q210, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q211 <- factor(enem_2009$Q211, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q212 <- factor(enem_2009$Q212, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q213 <- factor(enem_2009$Q213, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q214 <- factor(enem_2009$Q214, levels = c("A", "B", "C"), 
#                         labels = c("Muito", 
#                                    "Pouco", 
#                                    "Não me interesso"))

#enem_2009$Q215 <- factor(enem_2009$Q215, levels = c('A','B','C','D','E','F','G'), 
#                         labels = c('Obtenção de um certificado de conclusão de curso / obtenção de um diploma',
#                                  'Formação básica necessária para obter um emprego melhor',
#                                  'Condições de melhorar minha posição no emprego atual',
#                                  'Obtenção de cultura geral / ampliação de minha formação pessoal',
#                                  'Formação básica necessária para continuar os estudos em uma universidade / faculdade',
#                                  'Atender à expectativa de meus pais sobre meus estudos',
#                                  'Formação humana e cidadã para ser uma pessoa melhor e mais respeitosa das diferenças'))

#enem_2009$Q216 <- factor(enem_2009$Q216, levels = c('A','B','C','D','E','F','G'), 
#                         labels = c('Obtenção de um certificado de conclusão de curso / obtenção de um diploma',
#                                  'Formação básica necessária para obter um emprego melhor',
#                                  'Condições de melhorar minha posição no emprego atual',
#                                  'Obtenção de cultura geral / ampliação de minha formação pessoal',
#                                  'Formação básica necessária para continuar os estudos em uma universidade / faculdade',
#                                  'Atender à expectativa de meus pais sobre meus estudos',
#                                  'Formação humana e cidadã para ser uma pessoa melhor e mais respeitosa das diferenças'))

#enem_2009$Q217 <- factor(enem_2009$Q217, levels = c('A','B','C','D','E','F','G'), 
#                         labels = c('Obtenção de um certificado de conclusão de curso / obtenção de um diploma',
#                                  'Formação básica necessária para obter um emprego melhor',
#                                  'Condições de melhorar minha posição no emprego atual',
#                                  'Obtenção de cultura geral / ampliação de minha formação pessoal',
#                                  'Formação básica necessária para continuar os estudos em uma universidade / faculdade',
#                                  'Atender à expectativa de meus pais sobre meus estudos',
#                                  'Formação humana e cidadã para ser uma pessoa melhor e mais respeitosa das diferenças'))

#enem_2009$Q218 <- factor(enem_2009$Q218, levels = c('A','B','C','D','E','F','G','H','I'), 
#                         labels = c('Já conclui o ensino médio',
#                                  'Prestar vestibular e continuar os estudos no ensino superior',
#                                  'Procurar um emprego',
#                                  'Prestar vestibular e continuar a trabalhar',
#                                  'Fazer curso(s) profissionalizante(s) e me preparar para o trabalho',
#                                  'Trabalhar por conta própria / trabalhar em negócio da família',
#                                  'Trabalhar em atividade ligada à comunidade indígena',
#                                  'Trabalhar em atividade ligada à comunidade quilombola',
#                                  'Ainda não decidiu'))

#enem_2009$Q219 <- factor(enem_2009$Q219, levels = c('A','B','C','D','E','F'), 
#                         labels = c('Gostaria de ter um diploma universitário para conseguir um bom emprego',
#                                  'Gostaria de prestar um concurso e trabalhar no setor público',
#                                  'Gostaria de ganhar dinheiro em meu próprio negócio',
#                                  'Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade indígena',
#                                  'Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade quilombola',
#                                  'Não planejei'))

#enem_2009$Q220 <- factor(enem_2009$Q220, levels = c('A','B','C','D','E','F','G'), 
#                         labels = c('Ainda não escolhi',
#                                  'Profissão ligada às Engenharias / Ciências Tecnológicas / Matemáticas',
#                                  'Profissão ligada às Ciências Humanas',
#                                  'Profissão ligada às Artes',
#                                  'Profissão ligadas às Ciências Biológicas e de Saúde',
#                                  'Professor(a) de Ensino Fundamental, Médio ou Superior',
#                                  'Não vou seguir nenhuma profissão'))

#enem_2009$Q221 <- factor(enem_2009$Q221, levels = c("A", "B", "C"), 
#                         labels = c("Ajudou muito",
#                                    "Ajudou pouco", 
#                                    "Não ajudou"))

#enem_2009$Q222 <- factor(enem_2009$Q222, levels = c("A", "B", "C"), 
#                         labels = c("Ajudou muito",
#                                    "Ajudou pouco", 
#                                    "Não ajudou"))

#enem_2009$Q223 <- factor(enem_2009$Q223, levels = c("A", "B", "C"), 
#                         labels = c("Ajudou muito",
#                                    "Ajudou pouco", 
#                                    "Não ajudou"))

#enem_2009$Q224 <- factor(enem_2009$Q224, levels = c("A", "B", "C"), 
#                         labels = c("Ajudou muito",
#                                    "Ajudou pouco", 
#                                    "Não ajudou"))

#enem_2009$Q225 <- factor(enem_2009$Q225, levels = c("A", "B", "C"), 
#                         labels = c("Ajudou muito",
#                                    "Ajudou pouco", 
#                                    "Não ajudou"))

#enem_2009$Q226 <- factor(enem_2009$Q226, levels = c("A", "B", "C"), 
#                         labels = c("Ajudou muito",
#                                    "Ajudou pouco", 
#                                    "Não ajudou"))

#enem_2009$Q227 <- factor(enem_2009$Q227, levels = c("A", "B", "C"), 
#                         labels = c("Ajudou muito",
#                                    "Ajudou pouco", 
#                                    "Não ajudou"))

#enem_2009$Q228 <- factor(enem_2009$Q204, levels = c("A", "B", "C"), 
#                         labels = c("Sim, estou estudando no momento atual", 
#                                    "Sim, mas Não estou estudando no momento atual",
#                                    "Não"))

#enem_2009$Q229 <- factor(enem_2009$Q229, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q230 <- factor(enem_2009$Q230, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q231 <- factor(enem_2009$Q231, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q232 <- factor(enem_2009$Q232, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q233 <- factor(enem_2009$Q233, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q234 <- factor(enem_2009$Q234, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q235 <- factor(enem_2009$Q235, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q236 <- factor(enem_2009$Q236, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q237 <- factor(enem_2009$Q237, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q238 <- factor(enem_2009$Q238, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q239 <- factor(enem_2009$Q239, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q240 <- factor(enem_2009$Q240, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q241 <- factor(enem_2009$Q241, levels = c('A','B','C','D','E','F','G'), 
#                       labels = c('Frequenta curso presencial em escola pública',
#                                  'Frequenta curso presencial em escola particular',
#                                  'Frequenta curso presencial na empresa em que trabalha',
#                                  'Frequenta tele-sala',
#                                  'Frequenta curso promovido por instituição religiosa ou filantrópica',
#                                  'Faz curso a distância (via rádio,  televisão, internet, correio, com apostilas)',
#                                  'Não frequenta'))

#enem_2009$Q242 <- factor(enem_2009$Q242, levels = c('A','B','C','D'), 
#                       labels = c('Diurno',
#                                  'Noturno',
#                                  'A distância',
#                                  'Não curso'))

#enem_2009$Q243 <- factor(enem_2009$Q243, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q244 <- factor(enem_2009$Q244, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q245 <- factor(enem_2009$Q245, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q246 <- factor(enem_2009$Q246, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q247 <- factor(enem_2009$Q247, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q248 <- factor(enem_2009$Q248, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q249 <- factor(enem_2009$Q249, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q250 <- factor(enem_2009$Q250, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q251 <- factor(enem_2009$Q251, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q252 <- factor(enem_2009$Q252, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q253 <- factor(enem_2009$Q253, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), 
#                       labels = c('1ª série do Ensino Fundamental',
#                                  '2ª série do Ensino Fundamental',
#                                  '3ª série do Ensino Fundamental',
#                                  '4ª série do Ensino Fundamental',
#                                  '5ª série do Ensino Fundamental',
#                                  '6ª série do Ensino Fundamental',
#                                  '7ª série do Ensino Fundamental',
#                                  '8ª série do Ensino Fundamental',
#                                  '1ª série do Ensino Médio',
#                                  '2ª série do Ensino Médio',
#                                  '3ª série do Ensino Médio',
#                                  'Não frequentou'))

#enem_2009$Q254 <- factor(enem_2009$Q254, levels = c('A','B','C','D'), 
#                       labels = c('Não cursou/não frequentou',
#                                  '1 ano',
#                                  '2 ano',
#                                  'Mais de 2 anos'))

#enem_2009$Q255 <- factor(enem_2009$Q255, levels = c('A','B','C','D'), 
#                       labels = c('Não cursou/não frequentou',
#                                  '3 ano',
#                                  '4 ano',
#                                  'Mais de 2 anos'))

#enem_2009$Q256 <- factor(enem_2009$Q256, levels = c('A','B','C','D'), 
#                       labels = c('Não cursou/não frequentou',
#                                  '5 ano',
#                                  '6 ano',
#                                  'Mais de 2 anos'))

#enem_2009$Q257 <- factor(enem_2009$Q257, levels = c('A','B','C','D','E'), 
#                       labels = c('Escola da Prefeitura (Municipal)',
#                                  'Escola estadual ou federal',
#                                  'Escola particular',
#                                  'Escola de igreja ou instituição filantrópica',
#                                  'Não cursou'))

#enem_2009$Q258 <- factor(enem_2009$Q258, levels = c('A','B','C','D','E'), 
#                       labels = c('Escola da Prefeitura (Municipal)',
#                                  'Escola estadual ou federal',
#                                  'Escola particular',
#                                  'Escola de igreja ou instituição filantrópica',
#                                  'Não cursou'))

#enem_2009$Q259 <- factor(enem_2009$Q259, levels = c('A','B','C','D','E'), 
#                       labels = c('Escola da Prefeitura (Municipal)',
#                                  'Escola estadual ou federal',
#                                  'Escola particular',
#                                  'Escola de igreja ou instituição filantrópica',
#                                  'Não cursou'))

#enem_2009$Q261 <- factor(enem_2009$Q261, levels = c('A','B','C','D','E','F','G'), 
#                       labels = c('Menos de 10 anos',
#                                  'Entre 10 e 14 anos (inclusive)',
#                                  'Entre 15 e 18 anos (inclusive)',
#                                  'Entre 19 e 24 anos (inclusive)',
#                                  'Entre 25 e 30 anos (inclusive)',
#                                  'Mais de 30 anos',
#                                  'Nunca frequentei'))

#enem_2009$Q261 <- factor(enem_2009$Q261, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q262 <- factor(enem_2009$Q262, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q263 <- factor(enem_2009$Q263, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q264 <- factor(enem_2009$Q264, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q265 <- factor(enem_2009$Q265, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q266 <- factor(enem_2009$Q266, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q267 <- factor(enem_2009$Q267, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q268 <- factor(enem_2009$Q268, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q269 <- factor(enem_2009$Q269, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q270 <- factor(enem_2009$Q270, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q271 <- factor(enem_2009$Q271, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q272 <- factor(enem_2009$Q272, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q273 <- factor(enem_2009$Q273, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q274 <- factor(enem_2009$Q274, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q275 <- factor(enem_2009$Q275, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q276 <- factor(enem_2009$Q276, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q277 <- factor(enem_2009$Q277, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q278 <- factor(enem_2009$Q278, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q279 <- factor(enem_2009$Q279, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q280 <- factor(enem_2009$Q280, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q281 <- factor(enem_2009$Q281, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q282 <- factor(enem_2009$Q282, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q283 <- factor(enem_2009$Q283, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q284 <- factor(enem_2009$Q284, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q285 <- factor(enem_2009$Q285, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q286 <- factor(enem_2009$Q286, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q287 <- factor(enem_2009$Q287, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q288 <- factor(enem_2009$Q288, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q289 <- factor(enem_2009$Q289, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q290 <- factor(enem_2009$Q290, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q291 <- factor(enem_2009$Q291, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q292 <- factor(enem_2009$Q292, levels = c("A", "B"), labels = c("Sim", "Não"))

#enem_2009$Q293 <- factor(enem_2009$Q293, levels = c("A", "B"), labels = c("Sim", "Não"))