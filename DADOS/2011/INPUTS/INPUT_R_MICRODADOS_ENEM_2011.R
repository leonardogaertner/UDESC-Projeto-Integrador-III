#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2011
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2011
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este programa e o arquivo                    
#     MICRODADOS_ENEM_2011.csv no mesmo diretório.	                  
#------------------------------------------------------------------------

#------------------------------------------------------------------------
#                   ATENÇÃO              
#------------------------------------------------------------------------
# Este programa abre a base de dados com os rótulos das variáveis de	                    
# acordo com o dicionário de dados que compõem os microdados. 		  
#------------------------------------------------------------------------

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
memory.limit(24576)

#------------------
# Carga dos microdados

ENEM_2011 <- data.table::fread(input='microdados_ENEM_2011.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#---------------------------
# A script a seguir formata os rótulos das respostas
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#ENEM_2011$IN_CERTIFICADO <- factor(ENEM_2011$IN_CERTIFICADO, levels = c(0,1), labels = c("Não","Sim"))

#ENEM_2011$TP_FAIXA_ETARIA <- factor(ENEM_2011$TP_FAIXA_ETARIA, 
#                                    levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                    labels = c('Menor de 17 anos','17 anos','18 anos','19 anos','20 anos','21 anos','22 anos',
#                                               '23 anos','24 anos','25 anos','Entre 26 e 30 anos','Entre 31 e 35 anos','Entre 36 e 40 anos',
#                                               'Entre 41 e 45 anos','Entre 46 e 50 anos','Entre 51 e 55 anos','Entre 56 e 60 anos','Entre 61 e 65 anos',
#                                               'Entre 66 e 70 anos','Maior de 70 anos'))

#ENEM_2011$TP_DEPENDENCIA_ADM_ESC <- factor(ENEM_2011$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4),
#                                           labels=c('Federal',
#                                                    'Estadual',
#                                                    'Municipal',
#                                                    'Privada'))

#ENEM_2011$TP_LOCALIZACAO_ESC <- factor(ENEM_2011$TP_LOCALIZACAO_ESC, levels = c(1,2), labels=c('Urbana','Rural'))

#ENEM_2011$TP_SIT_FUNC_ESC <- factor(ENEM_2011$TP_SIT_FUNC_ESC, levels = c(1,2,3,4),
#                                    labels=c('Em atividade',
#                                             'Paralisada',
#                                             'Extinta',
#                                             'Escola extinta em anos anteriores'))

#ENEM_2011$TP_SEXO <- factor(ENEM_2011$TP_SEXO, levels = c('M','F'), labels=c('Maculino','Feminino'))

#ENEM_2011$TP_ESTADO_CIVIL <- factor(ENEM_2011$TP_ESTADO_CIVIL, levels = c(0,1,2,3,4),
#                                    labels=c('Não informado',
#                                             'Solteiro(a)',
#                                             'Casado(a)/Mora com um(a) companheiro(a)',
#                                             'Divorciado(a)/Desquitado(a)/Separado(a)',
#                                             'Viúvo(a)'))

#ENEM_2011$TP_COR_RACA <- factor(ENEM_2011$TP_COR_RACA, levels = c(0,1,2,3,4,5,6),
#                                labels=c('Não declarado',
#                                         'Branca','Preta',
#                                         'Parda','Amarela',
#                                         'Indígena',
#                                         'Não dispõe da informação'))

#ENEM_2011$TP_ST_CONCLUSAO <- factor(ENEM_2011$TP_ST_CONCLUSAO, levels = c(1,2,3,4), 
#                                    labels=c('Já concluí o Ensino Médio',
#                                             'Estou cursando e concluirei o Ensino Médio em 2011',
#                                             'Estou cursando e concluirei o Ensino Médio após 2011',
#                                             'Não concluí e não estou cursando o Ensino Médio'))

#ENEM_2011$TP_ANO_CONCLUIU <- factor(ENEM_2011$TP_ANO_CONCLUIU, levels = c(0,1,2,3,4,5,6,7,8),
#                                    labels=c('Não informado','2010','2009','2008','2007',
#                                             '2006','2005','2004','2003'))

#ENEM_2011$TP_ESCOLA <- factor(ENEM_2011$TP_ESCOLA, levels = c(1,2,3,4),
#                              labels=c('Não respondeu',
#                                       'Pública',
#                                       'Privada',
#                                       'Exterior'))

#ENEM_2011$TP_ENSINO <- factor(ENEM_2011$TP_ENSINO, levels = c(1,2,3),
#                              labels=c('Ensino Regular',
#                                       'Educação Especial - Modalidade Substitutiva',
#                                       'Educação de Jovens e Adultos'))


#ENEM_2011$TP_PRESENCA_CN <- factor(ENEM_2011$TP_PRESENCA_CN, levels = c(0,1,2),
#                                    labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2011$TP_PRESENCA_CH <- factor(ENEM_2011$TP_PRESENCA_CH, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2011$TP_PRESENCA_LC <- factor(ENEM_2011$TP_PRESENCA_LC, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2011$TP_PRESENCA_MT <- factor(ENEM_2011$TP_PRESENCA_MT, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2011$CO_PROVA_CN <- factor(ENEM_2011$CO_PROVA_CN, levels = c(121,122,123,124),
#                                labels=c('Azul','Amarela','Branca','Rosa'))

#ENEM_2011$CO_PROVA_CH <- factor(ENEM_2011$CO_PROVA_CH, levels = c(117,118,119,120),
#                                labels=c('Azul','Amarela','Branca','Rosa'))

#ENEM_2011$CO_PROVA_LC <- factor(ENEM_2011$CO_PROVA_LC, levels = c(125,126,127,128),
#                                labels=c('Amarela','Cinza','Azul','Rosa'))

#ENEM_2011$CO_PROVA_MT <- factor(ENEM_2011$CO_PROVA_MT, levels = c(129,130,131,132),
#                                 labels=c('Amarela','Cinza','Azul','Rosa'))

#ENEM_2011$ TP_LINGUA <- factor(ENEM_2011$ TP_LINGUA, levels = c(0,1),
#                                labels=c('Inglês','Espanhol'))

#ENEM_2011$TP_STATUS_REDACAO <- factor(ENEM_2011$TP_STATUS_REDACAO, levels = c('B','F','N','P'),
#                                      labels=c('Em Branco','Faltoso','Anulada','Presente'))

#ENEM_2011$Q001 <- factor(ENEM_2011$Q001, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                         labels=c('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20 ou mais'))

#ENEM_2011$Q002 <- factor(ENEM_2011$Q002, levels = c('A','B','C','D','E','F','G','H','I'), 
#                         labels=c('Não estudou;','Da 1ª à 4ª série do Ensino Fundamental (antigo primário);','Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio);',
#                                  'Ensino Médio (antigo 2º grau) incompleto;','Ensino Médio (antigo 2º grau);','Ensino Superior incompleto;','Ensino Superior;',
#                                  'Pós-graduação;','Não sei;'))

#ENEM_2011$Q003 <- factor(ENEM_2011$Q003, levels = c('A','B','C','D','E','F','G','H','I'), 
#                         labels=c('Não estudou;','Da 1ª à 4ª série do Ensino Fundamental (antigo primário);','Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio);',
#                                  'Ensino Médio (antigo 2º grau) incompleto;','Ensino Médio (antigo 2º grau);','Ensino Superior incompleto;','Ensino Superior;',
#                                  'Pós-graduação;','Não sei;'))


#ENEM_2011$Q004 <- factor(ENEM_2011$Q004, levels = c('A','B','C','D','E','F','G','H','I','J','K'), 
#                         labels=c('Nenhuma renda;','Até um salário mínimo (até R$545,00);','Entre 1 e 1,5 salários (entre R$545,00 até R$817,50);',
#                                  'Entre 1,5 e 2 salários (entre R$817,50 até R$1.090,00);','Entre 2 e 5 salários (entre R$1.090,00 até R$2.725,00);',
#                                  'Entre 5 e 7 salários (entre R$2.725,00 até R$3.815,00);','Entre 7 e 10 salários (entre R$3.815,00 até R$5.450,00);',
#                                  'Entre 10 e 12 salários (entre R$5.450,00 até R$ 6.540,00);','Entre 12 e 15 salários (entre R$6.540,00 até R$8.175,00);',
#                                  'Entre 15 e 30 salários (entre R$8.175,00 até R$ 16.350,00);','Acima de 30 salários (mais de R$16.350,00);'))

#ENEM_2011$Q005 <- factor(ENEM_2011$Q005, levels = c('A','B','C','D','E','F','G','H','I','J','K'), 
#                         labels=c('Nenhuma renda;','Até um salário mínimo (até R$545,00);','Entre 1 e 1,5 salários (entre R$545,00 até R$817,50);',
#                                  'Entre 1,5 e 2 salários (entre R$817,50 até R$1.090,00);','Entre 2 e 5 salários (entre R$1.090,00 até R$2.725,00);',
#                                  'Entre 5 e 7 salários (entre R$2.725,00 até R$3.815,00);','Entre 7 e 10 salários (entre R$3.815,00 até R$5.450,00);',
#                                  'Entre 10 e 12 salários (entre R$5.450,00 até R$ 6.540,00);','Entre 12 e 15 salários (entre R$6.540,00 até R$8.175,00);',
#                                  'Entre 15 e 30 salários (entre R$8.175,00 até R$ 16.350,00);','Acima de 30 salários (mais de R$16.350,00);'))

#ENEM_2011$Q006 <- factor(ENEM_2011$Q006, levels = c('A','B','C','D'), 
#                         labels=c('Própria e quitada','Própria e em pagamento (financiada)','Alugada','Cedida'))

#ENEM_2011$Q007 <- factor(ENEM_2011$Q007, levels = c('A','B','C','D'), 
#                         labels=c('Zona rural','Zona urbana','Comunidade indígena','Comunidade quilombola'))

#ENEM_2011$Q008 <- factor(ENEM_2011$Q008, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q014 <- factor(ENEM_2011$Q014, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q015 <- factor(ENEM_2011$Q015, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q016 <- factor(ENEM_2011$Q016, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q017 <- factor(ENEM_2011$Q017, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q018 <- factor(ENEM_2011$Q018, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q019 <- factor(ENEM_2011$Q019, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q020 <- factor(ENEM_2011$Q020, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q021 <- factor(ENEM_2011$Q021, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q022 <- factor(ENEM_2011$Q022, levels = c('A','B','C','D','E'), 
#                         labels=c('Sem jornada fixa, até 10 horas semanais.','De 11 a 20 horas semanais.','De 21 a 30 horas semanais.',
#                                  'De 31 a 40 horas semanais.','Mais de 40 horas semanais'))

#ENEM_2011$Q023 <- factor(ENEM_2011$Q023, levels = c(13,14,15,16,17,18,19,20,21,22,23,24,25), 
#                         labels=c('13','14','15','16','17','18','19','20','21','22','23','24','25 ou mais'))

#ENEM_2011$Q028 <- factor(ENEM_2011$Q028, levels = c('A','B','C','D','E','F','G'), 
#                         labels=c('Menos de 8 anos.','8 anos.','9 anos.','10 anos.','11 anos.','Mais de 11 anos.','Não conclui.'))

#ENEM_2011$Q029 <- factor(ENEM_2011$Q029, levels = c('A','B','C','D','E'), 
#                         labels=c('Não.','Sim, por um ano.','Sim, por dois anos.','Sim, por três anos.','Sim, por quatro anos ou mais.'))

#ENEM_2011$Q030 <- factor(ENEM_2011$Q030, levels = c('A','B','C','D','E','F','G','H','I'), 
#                         labels=c('Somente em escola pública;','Maior parte em escola pública;','Somente em escola particular;',
#                                  'Maior parte em escola particular;','Somente em escola indígena;','Maior parte em escola indígena;',
#                                  'Somente em escola situada em comunidade quilombola;','Maior parte em escola situada em comunidade quilombola;',
#                                  'Não frequentei a escola.'))

#ENEM_2011$Q031 <- factor(ENEM_2011$Q031, levels = c('A','B','C','D','E','F'), 
#                         labels=c('Menos de 3 anos','3 anos','4 anos','5 anos','6 anos ou mais','Não conclui'))

#ENEM_2011$Q032 <- factor(ENEM_2011$Q032, levels = c('A','B','C','D','E'), 
#                         labels=c('Não.','Sim, por um ano.','Sim, por dois anos.','Sim, por três anos.','Sim, por quatro anos ou mais.'))

#ENEM_2011$Q033 <- factor(ENEM_2011$Q033, levels = c('A','B','C','D','E','F','G','H','I'), 
#                         labels=c('Somente em escola pública;','Maior parte em escola pública;','Somente em escola particular;',
#                                  'Maior parte em escola particular;','Somente em escola indígena;','Maior parte em escola indígena;',
#                                  'Somente em escola situada em comunidade quilombola;','Maior parte em escola situada em comunidade quilombola;',
#                                  'Não frequentei a escola.'))

#ENEM_2011$Q034 <- factor(ENEM_2011$Q034, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q035 <- factor(ENEM_2011$Q035, levels = c('A','B','C','D','E','F'), 
#                         labels=c('Curso presencial em escola pública.','Curso presencial em escola privada.',
#                                  'Curso presencial na empresa em que trabalha, instituição filantrópica ou religiosa.',
#                                  'Curso a distância (via rádio, televisão, internet, correio, com apostilas).',
#                                  'Curso semi-presencial em escola pública.','Curso semi-presencial em escola privada.'))

#ENEM_2011$Q036 <- factor(ENEM_2011$Q036, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q037 <- factor(ENEM_2011$Q037, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q038 <- factor(ENEM_2011$Q038, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q039 <- factor(ENEM_2011$Q039, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q040 <- factor(ENEM_2011$Q040, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q041 <- factor(ENEM_2011$Q041, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q042 <- factor(ENEM_2011$Q042, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q043 <- factor(ENEM_2011$Q043, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q052 <- factor(ENEM_2011$Q052, levels = c('A','B','C','D','E','F','G'), 
#                         labels=c('Menos de 10 anos.','Entre 10 e 14 anos.','Entre 15 e 18 anos.','Entre 19 e 24 anos.',
#                                  'Entre 25 e 30 anos.','Mais de 30 anos.','Não deixei de frequentar.'))

#ENEM_2011$Q057 <- factor(ENEM_2011$Q057, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q058 <- factor(ENEM_2011$Q058, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q059 <- factor(ENEM_2011$Q059, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q060 <- factor(ENEM_2011$Q060, levels = c('A','B'), labels=c('Sim','Não'))

#ENEM_2011$Q061 <- factor(ENEM_2011$Q061, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q062 <- factor(ENEM_2011$Q062, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q063 <- factor(ENEM_2011$Q063, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q064 <- factor(ENEM_2011$Q064, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q065 <- factor(ENEM_2011$Q065, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q066 <- factor(ENEM_2011$Q066, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q067 <- factor(ENEM_2011$Q067, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q068 <- factor(ENEM_2011$Q068, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q069 <- factor(ENEM_2011$Q069, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q070 <- factor(ENEM_2011$Q070, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q071 <- factor(ENEM_2011$Q071, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q072 <- factor(ENEM_2011$Q072, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q073 <- factor(ENEM_2011$Q073, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q074 <- factor(ENEM_2011$Q074, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))

#ENEM_2011$Q075 <- factor(ENEM_2011$Q075, levels = c('A','B','C','D'), labels=c('1','2','3 ou mais','Não tenho'))
