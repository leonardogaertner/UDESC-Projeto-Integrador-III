#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2014
#--------------------------------------------------------
#  DESCRIção:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2014
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este programa e o arquivo                    
#     MICRODADOS_ENEM_2014.csv no mesmo diretório.	                  
#------------------------------------------------------------------------

#------------------------------------------------------------------------
#                   ATENção              
#------------------------------------------------------------------------
# Este programa abre a base de dados com os rótulos das variáveis de	                    
# acordo com o dicionário de dados que compõem os microdados. 		  
#------------------------------------------------------------------------

#--------------------
# Intalação do pacote Data.Table
# Se Não estiver instalado
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
memory.limit(24576)

#------------------
# Carga dos microdados

enem_2014 <- data.table::fread(input='microdados_enem_2014.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#---------------------------
# A script a seguir formata os rótulos das respostas
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#enem_2014$TP_FAIXA_ETARIA <- factor(enem_2014$TP_FAIXA_ETARIA, 
#                                    levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                    labels = c('Menor de 17 anos','17 anos','18 anos','19 anos','20 anos','21 anos','22 anos',
#                                               '23 anos','24 anos','25 anos','Entre 26 e 30 anos','Entre 31 e 35 anos','Entre 36 e 40 anos',
#                                               'Entre 41 e 45 anos','Entre 46 e 50 anos','Entre 51 e 55 anos','Entre 56 e 60 anos','Entre 61 e 65 anos',
#                                               'Entre 66 e 70 anos','Maior de 70 anos'))


#enem_2014$TP_DEPENDENCIA_ADM_ESC <- factor(enem_2014$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4),
#                                           labels=c('Federal',
#                                                    'Estadual',
#                                                    'Municipal',
#                                                    'Privada'))

#enem_2014$TP_LOCALIZACAO_ESC <- factor(enem_2014$TP_LOCALIZACAO_ESC, levels = c(1,2), labels=c('Urbana','Rural'))

#enem_2014$TP_SIT_FUNC_ESC <- factor(enem_2014$TP_SIT_FUNC_ESC, levels = c(1,2,3,4),
#                                    labels=c('Em atividade',
#                                             'Paralisada',
#                                             'Extinta',
#                                             'Escola extinta em anos anteriores'))

#enem_2014$TP_SEXO <- factor(enem_2014$TP_SEXO, levels = c('M','F'), labels=c('Maculino','Feminino'))

#enem_2014$TP_ESTADO_CIVIL <- factor(enem_2014$TP_ESTADO_CIVIL, levels = c(0,1,2,3),
#                                    labels=c('Solteiro(a)',
#                                             'Casado(a)/Mora com um(a) companheiro(a)',
#                                             'Divorciado(a)/Desquitado(a)/Separado(a)',
#                                             'Viúvo(a)'))

#enem_2014$TP_COR_RACA <- factor(enem_2014$TP_COR_RACA, levels = c(0,1,2,3,4,5),
#                                labels=c('Não declarado',
#                                         'Branca','Preta',
#                                         'Parda','Amarela',
#                                         'Indígena'))

#enem_2014$TP_NACIONALIDADE <- factor(enem_2014$TP_NACIONALIDADE, levels = c(1,2,3,4),
#                                     labels=c('Brasileiro(a)',
#                                              'Brasileiro(a) Naturalizado(a)',
#                                              'Estrangeiro(a)',
#                                              'Brasileiro(a) Nato(a), nascido(a) no exterior'))

#enem_2014$TP_ST_CONCLUSAO <- factor(enem_2014$TP_ST_CONCLUSAO, levels = c(1,2,3,4), 
#                                    labels=c('Já concluí o Ensino Médio',
#                                             'Estou cursando e concluirei o Ensino Médio em 2014',
#                                             'Estou cursando e concluirei o Ensino Médio após 2014',
#                                             'Não concluí e Não estou cursando o Ensino Médio'))


#enem_2014$TP_ESCOLA <- factor(enem_2014$TP_ESCOLA, levels = c(1,2),
#                              labels=c('Pública',
#                                       'Privada'))

#enem_2014$TP_ENSINO <- factor(enem_2014$TP_ENSINO, levels = c(1,2,3,4),
#                              labels=c('Ensino Regular',
#                                       'Ensino de Jovens e Adultos'
#                                       'Ensino Profissionalizante'
#                                       'Ensino Especial'))


#enem_2014$TP_PRESENCA_CN <- factor(enem_2014$TP_PRESENCA_CN, levels = c(0,1,2),
#                                    labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#enem_2014$TP_PRESENCA_CH <- factor(enem_2014$TP_PRESENCA_CH, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#enem_2014$TP_PRESENCA_LC <- factor(enem_2014$TP_PRESENCA_LC, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#enem_2014$TP_PRESENCA_MT <- factor(enem_2014$TP_PRESENCA_MT, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#enem_2014$CO_PROVA_CN <- factor(enem_2014$CO_PROVA_CN, levels = c(199,200,201,202,216),
#                                labels=c('Azul' 'Amarelo', 'Branco', 'Rosa', 'Branco-Prova Especial(Ledor)'))

#enem_2014$CO_PROVA_CH <- factor(enem_2014$CO_PROVA_CH, levels = c(195,196,197,198,215,),
#                                labels=c('Azul','Amarelo','Branco','Rosa','Branco-Prova Especial(Ledor)'))

#enem_2014$CO_PROVA_LC <- factor(enem_2014$CO_PROVA_LC, levels = c(203,204,205,206,213,217),
#                                labels=c('Amarelo''Cinza','Azul','Rosa','Cinza (Reaplicação)','Cinza-Prova Especial(Ledor)'))

#enem_2014$CO_PROVA_MT <- factor(enem_2014$CO_PROVA_MT, levels = c(207,208,209,210,214,218),
#                                 labels=c('Amarelo','Cinza','Azul','Rosa','Cinza (Reaplicação)','Cinza-Prova Especial(Ledor)'))

#enem_2014$ TP_LINGUA <- factor(enem_2014$ TP_LINGUA, levels = c(0,1),
#                                labels=c('Inglês','Espanhol'))

#enem_2014$TP_STATUS_REDACAO <- factor(enem_2014$TP_STATUS_REDACAO, levels = c(1,2,3,4,5,6,7,9,10,11),
#                                      labels=c('Em Branco''Anulada','Fuga ao Tema','Não atende ao tipo textual','Texto Insuficiente',
#                                     'Ausente',
#                                     'Presente e texto conforme os requisitos',
#                                     'Anulada – Fere Direitos Humanos',
#                                     'Cópia de texto motivador',
#                                     'Parte do texto desconectada com o tema proposto'))

#enem_2014$Q001 <- factor(enem_2014$Q001, levels = c('A','B','C','D','E','F','G','H','I'),
#                         labels=c('Não estudou',
#                                  'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)',
#                                  'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)',
#                                  'Ensino Médio (antigo 2º grau) incompleto',
#                                  'Ensino Médio (antigo 2º grau)',
#                                  'Ensino Superior incompleto',
#                                  'Ensino Superior',
#                                  'Pós-graduação',
#                                  'Não sei'))

#enem_2014$Q002 <- factor(enem_2014$Q002, levels = c('A','B','C','D','E','F','G','H'),
#                         labels=c('Não estudou',
#                                  'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)',
#                                  'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)',
#                                  'Ensino Médio (antigo 2º grau) incompleto',
#                                  'Ensino Médio (antigo 2º grau)',
#                                  'Ensino Superior incompleto',
#                                  'Ensino Superior',
#                                  'Pós-graduação',
#                                  'Não sei'))

#enem_2014$Q003 <- factor(enem_2014$Q003, levels =  c('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q'),
#                         labels=c('Nenhuma renda'
#                                  'Até um salário mínimo (até R$ 678,00)',
#                                  'Mais de um até 1,5 (até R$ 1.017,00)',
#                                  'Mais de 1,5 e até 2 (de R$ 1.017,01 até R$ 1.356,00)',
#                                  'Mais de 2 e até 2,5 (de R$ 1.356,01 até R$ 1.695,00)',
#                                  'Mais de 2,5 e até 3 (de R$ 1.695,01 até R$ 2.034,00)',
#                                  'Mais de 3 e até 4 (de R$ 2.034,01 até R$ 2.712,00)',
#                                  'Mais de 4 e até 5 (de R$ 2.712,01 até R$ 3.390,00)',
#                                  'Mais de 5 e até 6 (de R$ 3.390,01 até R$ 4.068,00)',
#                                  'Mais de 6 e até 7 (de R$ 4.068,01 até R$ 4.746,00)',
#                                  'Mais de 7 e até 8 (de R$ 4.746,01 até R$ 5.424,00)',
#                                  'Mais de 8 e até 9 (de R$ 5.424,01 até R$ 6.102,00)',
#                                  'Mais de 9 e até 10 (de R$ 6.102,01 até R$ 6.780,00)',
#                                  'Mais de 10 e até 12 (de R$ 6.780,01 até R$ 8.136,00)',
#                                  'Mais de 12 e até 15 (de R$ 8.136,01 até R$ 10.170,00)',
#                                  'Mais de 15 e até 20 (de R$ 10.170,01 até R$ 13.560,00)',
#                                  'Acima 20 salários mínimos (mais de R$ 13.560,01)'))


#enem_2014$Q004 <- factor(enem_2014$Q004, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                         labels=c('1','2','3','4','5','6','7','8','9','10',
#                                  '11','12','13','14','15','16','17','18','19','20'))


#enem_2014$Q005 <- factor(enem_2014$Q005, levels = c('A','B','C','D','E'),
#                         labels=c('Própria e quitada',
#                                  'Própria e em pagamento (financiada)',
#                                  'Alugada',
#                                  'Cedida',
#                                  'Outra situação (loteamento não regularizado, ocupação, etc)'))


#enem_2014$Q006 <- factor(enem_2014$Q006, levels = c('A','B','C','D'),
#                         labels=c('Zona rural', 'Zona urbana', 'Comunidade indígena', 'Comunidade quilombola'))


#enem_2014$Q007 <- factor(enem_2014$Q007, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q008 <- factor(enem_2014$Q008, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q009 <- factor(enem_2014$Q009, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q010 <- factor(enem_2014$Q010, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q011 <- factor(enem_2014$Q011, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q012 <- factor(enem_2014$Q012, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q013 <- factor(enem_2014$Q013, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q014 <- factor(enem_2014$Q014, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q015 <- factor(enem_2014$Q015, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q016 <- factor(enem_2014$Q016, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q017 <- factor(enem_2014$Q017, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q018 <- factor(enem_2014$Q018, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q019 <- factor(enem_2014$Q019, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q020 <- factor(enem_2014$Q020, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q021 <- factor(enem_2014$Q021, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2014$Q022 <- factor(enem_2014$Q022, levels = c('A','B','C'),
#                         labels=c('Sim, estou trabalhando',
#                                  'Sim, já trabalhei, mas não estou trabalhando'
#                                  'Não, nunca trabalhei'))


#enem_2014$Q030 <- factor(enem_2014$Q030, levels = c(''A','B','C','D','E','F','G','H'), 
#                          labels=c('Menos de 8 anos',
#                                   '8 anos',
#                                   '9 anos',
#                                   '10 anos',
#                                   '11 anos',
#                                   'Mais de 11 anos',
#                                   'Não concluí',
#                                   'Não cursei'))

#enem_2014$Q031 <- factor(enem_2014$Q031, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                   'Sim, por um ano',
#                                   'Sim, por dois anos',
#                                   'Sim, por três anos',
#                                   'Sim, por quatro anos ou mais'))

#enem_2014$Q032 <- factor(enem_2014$Q032, levels = c('A','B','C','D','E','F','G','H'), 
#                          labels=c('Somente em escola pública',
#                                   'Maior parte em escola pública',
#                                   'Somente em escola particular',
#                                   'Maior parte em escola particular',
#                                   'Somente em escola indígena',
#                                   'Maior parte em escola indígena',
#                                   'Somente em escola situada em comunidade quilombola',
#                                   'Maior parte em escola situada em comunidade quilombola'))


#enem_2014$Q033 <- factor(enem_2014$Q033, levels = c('A','B','C','D','E','F','G'), 
#                         labels=c('Menos de 3 anos',
#                                   '3 anos',
#                                   '4 anos',
#                                   '5 anos',
#                                   '6 anos ou mais',
#                                   'Não concluí',
#                                   'Não cursei'))


#enem_2014$Q034 <- factor(enem_2014$Q034, levels = c('A','B','C','D','E','F','G'), 
#                         labels=c('Não',
#                                   'Sim, por um ano',
#                                   'Sim, por dois anos',
#                                   'Sim, por três anos',
#                                   'Sim, por quatro anos ou mais'))


#enem_2014$Q035 <- factor(enem_2014$Q035, levels = c('A','B','C','D','E','F','G','H'), 
#                          labels=c('Somente em escola pública',
#                                   'Maior parte em escola pública',
#                                   'Somente em escola particular',
#                                   'Maior parte em escola particular',
#                                   'Somente em escola indígena',
#                                   'Maior parte em escola indígena',
#                                   'Somente em escola situada em comunidade quilombola',
#                                   'Maior parte em escola situada em comunidade quilombola'))

#enem_2014$Q036 <- factor(enem_2014$Q036, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q037 <- factor(enem_2014$Q037, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q038 <- factor(enem_2014$Q038, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q039 <- factor(enem_2014$Q039, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q040 <- factor(enem_2014$Q040, levels = c('13,'14','15','16','17','18','19','20','21','22','23','24','25'), 
#                          labels=c('Menos de 14',
#                                   '14',
#                                   '15',
#                                   '16',
#                                   '17',
#                                   '18',
#                                   '19',
#                                   '20',
#                                   '21',
#                                   '22',
#                                   '23',
#                                   '24',
#                                   '25 ou mais'))


#enem_2014$Q041 <- factor(enem_2014$Q041, levels = c('A','B','C','D','E'), 
#                         labels=c('Até 10 horas semanais',
#                                  'De 11 a 20 horas semanais',
#                                  'De 21 a 30 horas semanais',
#                                  'De 31 a 40 horas semanais',
#                                  'Mais de 40 horas semanais'))

#enem_2014$Q047 <- factor(enem_2014$Q047, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q048 <- factor(enem_2014$Q048, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q049 <- factor(enem_2014$Q049, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q050 <- factor(enem_2014$Q050, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q051 <- factor(enem_2014$Q051, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q052 <- factor(enem_2014$Q052, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q053 <- factor(enem_2014$Q053, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q054 <- factor(enem_2014$Q054, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q055 <- factor(enem_2014$Q055, levels = c('A','B','C','D','E','F'), 
#                          labels=c('Curso presencial em escola pública',
#                                   'Curso presencial em escola privada',
#                                   'Curso presencial na empresa em que trabalhei, instituição filantrópica ou religiosa',
#                                   'Curso a distância (via rádio, televisão, internet, correio, com apostilas)',
#                                   'Curso semi-presencial em escola pública',
#                                   'Curso semi-presencial em escola privada'))


#enem_2014$Q056 <- factor(enem_2014$Q056, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q057 <- factor(enem_2014$Q057, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q058 <- factor(enem_2014$Q058, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q059 <- factor(enem_2014$Q059, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q060 <- factor(enem_2014$Q060, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q061 <- factor(enem_2014$Q061, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q062 <- factor(enem_2014$Q062, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q063 <- factor(enem_2014$Q063, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q064 <- factor(enem_2014$Q064, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q065 <- factor(enem_2014$Q065, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q066 <- factor(enem_2014$Q066, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q067 <- factor(enem_2014$Q067, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q068 <- factor(enem_2014$Q068, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q069 <- factor(enem_2014$Q069, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q070 <- factor(enem_2014$Q070, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q071 <- factor(enem_2014$Q071, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q072 <- factor(enem_2014$Q072, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q073 <- factor(enem_2014$Q073, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q074 <- factor(enem_2014$Q074, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2014$Q075 <- factor(enem_2014$Q075, levels = c('A','B'), labels=c('Não','Sim'))


#enem_2014$Q076 <- factor(enem_2014$Q076, levels = c('A','B','C','D','E','F','G'), 
#                        labels=c('Menos de 10 anos',
#                                 'Entre 10 e 14 anos',
#                                 'Entre 15 e 18 anos',
#                                 'Entre 19 e 24 anos',
#                                 'Entre 25 e 30 anos',
#                                 'Mais de 30 anos',
#                                 'Não deixei de frequentar'))

