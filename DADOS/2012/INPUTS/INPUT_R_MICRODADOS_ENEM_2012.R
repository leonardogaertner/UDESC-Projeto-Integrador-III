#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2012
#--------------------------------------------------------
#  DESCRIção:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2012
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este programa e o arquivo                    
#     MICRODADOS_ENEM_2012.csv no mesmo diretório.	                  
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

enem_2012 <- data.table::fread(input='microdados_enem_2012.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#---------------------------
# A script a seguir formata os rótulos das respostas
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#enem_2012$TP_FAIXA_ETARIA <- factor(enem_2012$TP_FAIXA_ETARIA, 
#                                    levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                    labels = c('Menor de 17 anos','17 anos','18 anos','19 anos','20 anos','21 anos','22 anos',
#                                               '23 anos','24 anos','25 anos','Entre 26 e 30 anos','Entre 31 e 35 anos','Entre 36 e 40 anos',
#                                               'Entre 41 e 45 anos','Entre 46 e 50 anos','Entre 51 e 55 anos','Entre 56 e 60 anos','Entre 61 e 65 anos',
#                                               'Entre 66 e 70 anos','Maior de 70 anos'))



#enem_2012$TP_DEPENDENCIA_ADM_ESC <- factor(enem_2012$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4),
#                                           labels=c('Federal',
#                                                    'Estadual',
#                                                    'Municipal',
#                                                    'Privada'))

#enem_2012$TP_LOCALIZACAO_ESC <- factor(enem_2012$TP_LOCALIZACAO_ESC, levels = c(1,2), labels=c('Urbana','Rural'))

#enem_2012$TP_SIT_FUNC_ESC <- factor(enem_2012$TP_SIT_FUNC_ESC, levels = c(1,2,3,4),
#                                    labels=c('Em atividade',
#                                             'Paralisada',
#                                             'Extinta',
#                                             'Escola extinta em anos anteriores'))

#enem_2012$TP_SEXO <- factor(enem_2012$TP_SEXO, levels = c(0,1), labels=c('Maculino','Feminino'))

#enem_2012$TP_ESTADO_CIVIL <- factor(enem_2012$TP_ESTADO_CIVIL, levels = c(0,1,2,3),
#                                    labels=c('Solteiro(a)',
#                                             'Casado(a)/Mora com um(a) companheiro(a)',
#                                             'Divorciado(a)/Desquitado(a)/Separado(a)',
#                                             'Viúvo(a)'))

#enem_2012$TP_COR_RACA <- factor(enem_2012$TP_COR_RACA, levels = c(0,1,2,3,4,5),
#                                labels=c('Não declarado',
#                                         'Branca','Preta',
#                                         'Parda','Amarela',
#                                         'Indígena'))


#enem_2012$TP_ST_CONCLUSAO <- factor(enem_2012$TP_ST_CONCLUSAO, levels = c(1,2,3,4), 
#                                    labels=c('Já concluí o Ensino Médio',
#                                             'Estou cursando e concluirei o Ensino Médio em 2012',
#                                             'Estou cursando e concluirei o Ensino Médio após 2012',
#                                             'Não concluí e Não estou cursando o Ensino Médio'))


#enem_2012$TP_ESCOLA <- factor(enem_2012$TP_ESCOLA, levels = c(1,2),
#                              labels=c('Pública',
#                                       'Privada'))

#enem_2012$TP_ENSINO <- factor(enem_2012$TP_ENSINO, levels = c(1,2,3,4),
#                              labels=c('Ensino Regular',
#                                       'Ensino de Jovens e Adultos'
#                                       'Ensino Profissionalizante'
#                                       'Ensino Especial'))


#enem_2012$TP_PRESENCA_CN <- factor(enem_2012$TP_PRESENCA_CN, levels = c(0,1,2),
#                                    labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#enem_2012$TP_PRESENCA_CH <- factor(enem_2012$TP_PRESENCA_CH, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#enem_2012$TP_PRESENCA_LC <- factor(enem_2012$TP_PRESENCA_LC, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#enem_2012$TP_PRESENCA_MT <- factor(enem_2012$TP_PRESENCA_MT, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#enem_2012$CO_PROVA_CN <- factor(enem_2012$CO_PROVA_CN, levels = c(141,142.143,144,153),
#                                labels=c('Azul' 'Amarelo', 'Branco', 'Rosa', 'Branco-Prova Especial(Ledor)'))

#enem_2012$CO_PROVA_CH <- factor(enem_2012$CO_PROVA_CH, levels = c(137,138,139,140,154),
#                                labels=c('Azul','Amarelo','Branco','Rosa','Branco-Prova Especial(Ledor)'))

#enem_2012$CO_PROVA_LC <- factor(enem_2012$CO_PROVA_LC, levels = c(145,146,147,148,155),
#                                labels=c('Amarelo''Cinza','Azul','Rosa','Cinza (Reaplicação)','Cinza-Prova Especial(Ledor)'))

#enem_2012$CO_PROVA_MT <- factor(enem_2012$CO_PROVA_MT, levels = c(149,150,151,152,156),
#                                 labels=c('Amarelo','Cinza','Azul','Rosa','Cinza (Reaplicação)','Cinza-Prova Especial(Ledor)'))

#enem_2012$ TP_LINGUA <- factor(enem_2012$ TP_LINGUA, levels = c(0,1),
#                                labels=c('Inglês','Espanhol'))

#enem_2012$TP_STATUS_REDACAO <- factor(enem_2012$TP_STATUS_REDACAO, levels = c(P,B,T,N,I,A,H,C,F),
#                                      labels=c('Presente','Em Branco','Fuga ao Tema','Anulada',
#                                                'Texto Insuficiente','Não atende ao tipo textual',
#                                                'Anulada – Fere Direitos Humanos',
#                                                'Cópia de texto motivador','Ausente';))

#enem_2012$Q001 <- factor(enem_2012$Q001, levels = c('A','B','C','D','E','F','G','H','I'),
#                         labels=c('Não estudou',
#                                  'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)',
#                                  'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)',
#                                  'Ensino Médio (antigo 2º grau) incompleto',
#                                  'Ensino Médio (antigo 2º grau)',
#                                  'Ensino Superior incompleto',
#                                  'Ensino Superior',
#                                  'Pós-graduação',
#                                  'Não sei'))

#enem_2012$Q002 <- factor(enem_2012$Q002, levels = c('A','B','C','D','E','F','G','H'),
#                         labels=c('Não estudou',
#                                  'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)',
#                                  'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)',
#                                  'Ensino Médio (antigo 2º grau) incompleto',
#                                  'Ensino Médio (antigo 2º grau)',
#                                  'Ensino Superior incompleto',
#                                  'Ensino Superior',
#                                  'Pós-graduação',
#                                  'Não sei'))

#enem_2012$Q003 <- factor(enem_2012$Q003, levels =  c('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q'),
#                         labels=c('Nenhuma renda'
#                                  'Até um salário mínimo (até R$622,00)'
#                                  'Mais de 1 até 1,5 (de R$ 622,01 até R$ 933,00)'
#                                  'Mais de 1,5 até 2 (de R$ 933,01 até R$ 1244,00)'
#                                  'Mais de 2 até 2,5 (de R$ 1244,01 até R$ 1555,00)'
#                                  'Mais de 2,5 até 3 (de R$ 1555,01 até R$ 1866,00)'
#                                  'Mais de 3 até 4 (de R$ 1866,01 até R$ 2488,00)'
#                                  'Mais de 4 até 5 (de R$ 2488,01 até R$ 3110,00)'
#                                  'Mais de 5 até 6 (de R$ 3110,01 até R$ 3732,00)'
#                                  'Mais de 6 até 7 (de R$ 3732,01 até R$ 4354,00)'
#                                  'Mais de 7 até 8 (de R$ 4354,01 até R$ 4976,00)'
#                                  'Mais de 8 até 9 (de R$ 4976,01 até R$ 5598,00)'
#                                  'Mais de 9 até 10 (de R$ 5598,01 até R$ 6220,00)'
#                                  'Mais de 10 até 12 (de R$ 6220,01 até R$ 7464,00)'
#                                  'Mais de 12 até 15 (de R$ 7464,01 até R$ 9330,00)'
#                                  'Mais de 15 até 20 (de R$ 9330,01 até R$ 12440,00)'
#                                  'Acima de 20 salários (mais de R$12440,00)'))


#enem_2012$Q004 <- factor(enem_2012$Q004, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                         labels=c('1','2','3','4','5','6','7','8','9','10',
#                                  '11','12','13','14','15','16','17','18','19','20'))


#enem_2012$Q005 <- factor(enem_2012$Q005, levels = c('A','B','C','D','E'),
#                         labels=c('Própria e quitada',
#                                  'Própria e em pagamento (financiada)',
#                                  'Alugada',
#                                  'Cedida',
#                                  'Outra situação (loteamento não regularizado, ocupação, etc)'))


#enem_2012$Q006 <- factor(enem_2012$Q006, levels = c('A','B','C','D'),
#                         labels=c('Zona rural', 'Zona urbana', 'Comunidade indígena', 'Comunidade quilombola'))


#enem_2012$Q007 <- factor(enem_2012$Q007, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q008 <- factor(enem_2012$Q008, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q009 <- factor(enem_2012$Q009, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q010 <- factor(enem_2012$Q010, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q011 <- factor(enem_2012$Q011, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q012 <- factor(enem_2012$Q012, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q013 <- factor(enem_2012$Q013, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q014 <- factor(enem_2012$Q014, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q015 <- factor(enem_2012$Q015, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q016 <- factor(enem_2012$Q016, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q017 <- factor(enem_2012$Q017, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q018 <- factor(enem_2012$Q018, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q019 <- factor(enem_2012$Q019, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q020 <- factor(enem_2012$Q020, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q021 <- factor(enem_2012$Q021, levels = c('A','B','C','D'),
#                         labels=c('1','2','3 ou mais','Não tenho'))

#enem_2012$Q022 <- factor(enem_2012$Q022, levels = c('A','B','C'),
#                         labels=c('Sim, estou trabalhando',
#                                  'Sim, já trabalhei, mas não estou trabalhando'
#                                  'Não, nunca trabalhei'))


#enem_2012$Q030 <- factor(enem_2012$Q030, levels = c(''A','B','C','D','E','F','G','H'), 
#                          labels=c('Menos de 8 anos',
#                                   '8 anos',
#                                   '9 anos',
#                                   '10 anos',
#                                   '11 anos',
#                                   'Mais de 11 anos',
#                                   'Não concluí',
#                                   'Não cursei'))

#enem_2012$Q031 <- factor(enem_2012$Q031, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                   'Sim, por um ano',
#                                   'Sim, por dois anos',
#                                   'Sim, por três anos',
#                                   'Sim, por quatro anos ou mais'))

#enem_2012$Q032 <- factor(enem_2012$Q032, levels = c('A','B','C','D','E','F','G','H'), 
#                          labels=c('Somente em escola pública',
#                                   'Maior parte em escola pública',
#                                   'Somente em escola particular',
#                                   'Maior parte em escola particular',
#                                   'Somente em escola indígena',
#                                   'Maior parte em escola indígena',
#                                   'Somente em escola situada em comunidade quilombola',
#                                   'Maior parte em escola situada em comunidade quilombola'))


#enem_2012$Q033 <- factor(enem_2012$Q033, levels = c('A','B','C','D','E','F','G'), 
#                         labels=c('Menos de 3 anos',
#                                   '3 anos',
#                                   '4 anos',
#                                   '5 anos',
#                                   '6 anos ou mais',
#                                   'Não concluí',
#                                   'Não cursei'))


#enem_2012$Q034 <- factor(enem_2012$Q034, levels = c('A','B','C','D','E','F','G'), 
#                         labels=c('Não',
#                                   'Sim, por um ano',
#                                   'Sim, por dois anos',
#                                   'Sim, por três anos',
#                                   'Sim, por quatro anos ou mais'))


#enem_2012$Q035 <- factor(enem_2012$Q035, levels = c('A','B','C','D','E','F','G','H'), 
#                          labels=c('Somente em escola pública',
#                                   'Maior parte em escola pública',
#                                   'Somente em escola particular',
#                                   'Maior parte em escola particular',
#                                   'Somente em escola indígena',
#                                   'Maior parte em escola indígena',
#                                   'Somente em escola situada em comunidade quilombola',
#                                   'Maior parte em escola situada em comunidade quilombola'))

#enem_2012$Q036 <- factor(enem_2012$Q036, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q037 <- factor(enem_2012$Q037, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q038 <- factor(enem_2012$Q038, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q039 <- factor(enem_2012$Q039, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q040 <- factor(enem_2012$Q040, levels = c('A','B'), labels=c('Não','Sim'))


#enem_2012$Q041 <- factor(enem_2012$Q041, levels = c('A','B','C','D','E','F'), 
#                         labels=c('Curso presencial em escola pública'
#                                   'Curso presencial em escola privada'
#                                   'Curso presencial na empresa em que trabalhei, instituição filantrópica ou religiosa'
#                                   'Curso a distância (via rádio, televisão, internet, correio, com apostilas)'
#                                   'Curso semi-presencial em escola pública'
#                                   'Curso semi-presencial em escola privada'))


#enem_2012$Q042 <- factor(enem_2012$Q042, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q043 <- factor(enem_2012$Q043, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q044 <- factor(enem_2012$Q044, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q045 <- factor(enem_2012$Q045, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q046 <- factor(enem_2012$Q046, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q047 <- factor(enem_2012$Q047, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q048 <- factor(enem_2012$Q048, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q049 <- factor(enem_2012$Q049, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q050 <- factor(enem_2012$Q050, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q051 <- factor(enem_2012$Q051, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q052 <- factor(enem_2012$Q052, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q053 <- factor(enem_2012$Q053, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q054 <- factor(enem_2012$Q054, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q055 <- factor(enem_2012$Q055, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q056 <- factor(enem_2012$Q056, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q057 <- factor(enem_2012$Q057, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q058 <- factor(enem_2012$Q058, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q059 <- factor(enem_2012$Q059, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q060 <- factor(enem_2012$Q060, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q061 <- factor(enem_2012$Q061, levels = c('A','B'), labels=c('Não','Sim'))

#enem_2012$Q062 <- factor(enem_2012$Q062, levels = c('A','B','C','D','E','F','G'), 
#                        labels=c('Menos de 10 anos',
#                                 'Entre 10 e 14 anos',
#                                 'Entre 15 e 18 anos',
#                                 'Entre 19 e 24 anos',
#                                 'Entre 25 e 30 anos',
#                                 'Mais de 30 anos',
#                                 'Não deixei de frequentar'))

