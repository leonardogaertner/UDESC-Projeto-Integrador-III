#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2017
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2017
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este programa e o arquivo                    
#     MICRODADOS_ENEM_2017.csv no mesmo diretório.	                  
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

ENEM_2017 <- data.table::fread(input='microdados_ENEM_2017.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#---------------------------
# A script a seguir formata os rótulos das respostas
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#ENEM_2017$TP_FAIXA_ETARIA <- factor(ENEM_2017$TP_FAIXA_ETARIA, 
#                                   levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                   labels = c('Menor de 17 anos','17 anos','18 anos','19 anos','20 anos','21 anos','22 anos',
#                                              '23 anos','24 anos','25 anos','Entre 26 e 30 anos','Entre 31 e 35 anos','Entre 36 e 40 anos',
#                                              'Entre 41 e 45 anos','Entre 46 e 50 anos','Entre 51 e 55 anos','Entre 56 e 60 anos','Entre 61 e 65 anos',
#                                              'Entre 66 e 70 anos','Maior de 70 anos'))
#
#ENEM_2017$IN_TREINEIRO <- factor(ENEM_2017$IN_TREINEIRO, levels = c(1,0),  labels=c('Sim','Não'))
#
#ENEM_2017$TP_DEPENDENCIA_ADM_ESC <- factor(ENEM_2017$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4),
#                                          labels=c('Federal',
#                                                   'Estadual',
#                                                   'Municipal',
#                                                   'Privada'))
#
#ENEM_2017$TP_LOCALIZACAO_ESC <- factor(ENEM_2017$TP_LOCALIZACAO_ESC, levels = c(1,2), labels=c('Urbana','Rural'))
#
#ENEM_2017$TP_SIT_FUNC_ESC <- factor(ENEM_2017$TP_SIT_FUNC_ESC, levels = c(1,2,3),
#                                   labels=c('Em atividade',
#                                            'Paralisada',
#                                            'Extinta'))
#
#ENEM_2017$TP_SEXO <- factor(ENEM_2017$TP_SEXO, levels = c('M','F'), labels=c('Maculino','Feminino'))
#
#ENEM_2017$TP_ESTADO_CIVIL <- factor(ENEM_2017$TP_ESTADO_CIVIL, levels = c(0,1,2,3,4),
#                                   labels=c('Não informado',
#                                             'Solteiro(a)',
#                                             'Casado(a)/Mora com um(a) companheiro(a)',
#                                             'Divorciado(a)/Desquitado(a)/Separado(a)',
#                                             'Viúvo(a)'))
#
#ENEM_2017$TP_COR_RACA <- factor(ENEM_2017$TP_COR_RACA, levels = c(0,1,2,3,4,5),
#                               labels=c('Não declarado',
#                                        'Branca','Preta',
#                                        'Parda','Amarela',
#                                        'Indígena'))
#
#ENEM_2017$TP_NACIONALIDADE <- factor(ENEM_2017$TP_NACIONALIDADE, levels = c(0,1,2,3,4),
#                                    labels=c('Não informado',
#                                             'Brasileiro(a)',
#                                             'Brasileiro(a) Naturalizado(a)',
#                                             'Estrangeiro(a)',
#                                             'Brasileiro(a) Nato(a), nascido(a) no exterior'))
#
#ENEM_2017$TP_ST_CONCLUSAO <- factor(ENEM_2017$TP_ST_CONCLUSAO, levels = c(1,2,3,4), 
#                                   labels=c('Já concluí o Ensino Médio',
#                                            'Estou cursando e concluirei o Ensino Médio em 2017',
#                                            'Estou cursando e concluirei o Ensino Médio após 2017',
#                                            'Não concluí e não estou cursando o Ensino Médio'))
#
#ENEM_2017$TP_ANO_CONCLUIU <- factor(ENEM_2017$TP_ANO_CONCLUIU, levels = c(0,1,2,3,4,5,6,7,8,9,10,11),
#                                   labels=c('Não informado','2016',
#                                            '2015','2014','2013',
#                                            '2012','2011','2010',
#                                            '2009','2008','2007',
#                                            'Anterior a 2007'))
#
#ENEM_2017$TP_ESCOLA <- factor(ENEM_2017$TP_ESCOLA, levels = c(1,2,3,4),
#                             labels=c('Não respondeu',
#                                      'Pública',
#                                      'Privada',
#                                      'Exterior'))
#
#ENEM_2017$TP_ENSINO <- factor(ENEM_2017$TP_ENSINO, levels = c(1,2,3),
#                             labels=c('Ensino Regular',
#                                      'Educação Especial - Modalidade Substitutiva',
#                                      'Educação de Jovens e Adultos'))
#
#ENEM_2017$TP_PRESENCA_CN <- factor(ENEM_2017$TP_PRESENCA_CN, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                           'Presente na prova',
#                                           'Eliminado na prova'))
#
#ENEM_2017$TP_PRESENCA_CH <- factor(ENEM_2017$TP_PRESENCA_CH, levels = c(0,1,2),
#                                  labels=c('Faltou à prova',
#                                           'Presente na prova',
#                                           'Eliminado na prova'))
#
#ENEM_2017$TP_PRESENCA_LC <- factor(ENEM_2017$TP_PRESENCA_LC, levels = c(0,1,2),
#                                  labels=c('Faltou à prova',
#                                           'Presente na prova',
#                                           'Eliminado na prova'))
#
#ENEM_2017$TP_PRESENCA_MT <- factor(ENEM_2017$TP_PRESENCA_MT, levels = c(0,1,2),
#                                  labels=c('Faltou à prova',
#                                           'Presente na prova',
#                                           'Eliminado na prova'))
#
#ENEM_2017$CO_PROVA_CN <- factor(ENEM_2017$CO_PROVA_CN, levels = c(391,392,393,394,407,411,431,432,433,434),
#                               labels=c('Azul','Amarela','Cinza',
#                                        'Rosa','Laranja - Adaptada Ledor',
#                                        'Verde - Videoprova - Libras)',
#                                        'Amarela (Reaplicação)',
#                                        'Cinza (Reaplicação)',
#                                        'Azul (Reaplicação)',
#                                        'Rosa (Reaplicação)'))
#
#ENEM_2017$CO_PROVA_CH <- factor(ENEM_2017$CO_PROVA_CH, levels = c(395,396,397,398,408,412,435,436,437,438),
#                               labels=c('Azul','Amarela','Branca',
#                                       'Rosa','Laranja - Adaptada Ledor',
#                                       'Verde - Videoprova - Libras)',
#                                       'Azul (Replicação)',
#                                       'Amarelo (Reaplicação)',
#                                       'Branco (Reaplicação)',
#                                       'Rosa (Reaplicação)'))
#
#ENEM_2017$CO_PROVA_LC <- factor(ENEM_2017$CO_PROVA_LC, levels = c(399,400,401,402,409,413,439,440,441,442),
#                               labels=c('Azul','Amarela','Rosa','Branca',
#                                        'Laranja - Adaptada Ledor',
#                                        'Verde - Videoprova - Libras)',
#                                        'Azul (Replicação)',
#                                        'Amarelo (Reaplicação)',
#                                        'Branca (Reaplicação)',
#                                        'Rosa (Reaplicação)'))
#
#ENEM_2017$CO_PROVA_MT <- factor(ENEM_2017$CO_PROVA_MT, levels = c(403,404,405,406,410,414,443,444,445,446),
#                                labels=c('Azul','Amarela','Rosa',
#                                         'Cinza',
#                                         'Laranja - Adaptada Ledor',
#                                         'Verde - Videoprova - Libras)',
#                                         'Amarela (Reaplicação)',
#                                         'Cinza (Reaplicação)',
#                                         'Azul (Reaplicação)',
#                                         'Rosa (Reaplicação)'))
#
#ENEM_2017$ TP_LINGUA <- factor(ENEM_2017$ TP_LINGUA, levels = c(0,1),
#                               labels=c('Inglês','Espanhol'))
#
#ENEM_2017$TP_STATUS_REDACAO <- factor(ENEM_2017$TP_STATUS_REDACAO, levels = c(1,2,3,4,6,7,8,9),
#                                     labels=c('Sem problemas',
#                                              'Anulada','Cópia Texto Motivador',
#                                              'Em Branco','Fuga ao tema',
#                                              'Não atendimento ao tipo',
#                                              'Texto insuficiente',
#                                              'Parte desconectada'))
#
#ENEM_2017$Q001 <- factor(ENEM_2017$Q001, levels = c('A','B','C','D','E','F','G','H'),
#                        labels=c('Nunca estudou',
#                                 'Não completou a 4ª série/5º ano do ensino fundamental',
#                                 'Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do ensino fundamental',
#                                 'Completou a 8ª série/9º ano do ensino fundamental, mas não completou o Ensino Médio',
#                                 'Completou o Ensino Médio, mas não completou a Faculdade',
#                                 'Completou a Faculdade, mas não completou a Pós-graduação',
#                                 'Completou a Pós-graduação','Não sei'))
#
#ENEM_2017$Q002 <- factor(ENEM_2017$Q002, levels = c('A','B','C','D','E','F','G','H'),
#                        labels=c('Nunca estudou',
#                                 'Não completou a 4ª série/5º ano do ensino fundamental',
#                                 'Completou a 4ª série/5º ano, mas não completou a 8ª série/9º ano do ensino fundamental',
#                                 'Completou a 8ª série/9º ano do ensino fundamental, mas não completou o Ensino Médio',
#                                 'Completou o Ensino Médio, mas não completou a Faculdade',
#                                 'Completou a Faculdade, mas não completou a Pós-graduação',
#                                 'Completou a Pós-graduação','Não sei'))
#
#ENEM_2017$Q003 <- factor(ENEM_2017$Q003, levels =  c('A','B','C','D','E','F'),
#                        labels=c('Grupo 1 (Verificar a definição no dicionário de dados)',
#                                 'Grupo 2 (Verificar a definição no dicionário de dados)',
#                                 'Grupo 3 (Verificar a definição no dicionário de dados)',
#                                 'Grupo 4 (Verificar a definição no dicionário de dados)',
#                                 'Grupo 5 (Verificar a definição no dicionário de dados)',
#                                 'Não Sei'))
#
#ENEM_2017$Q004 <- factor(ENEM_2017$Q004, levels =  c('A','B','C','D','E','F'),
#                        labels=c('Grupo 1 (Verificar a definição no dicionário de dados)',
#                                 'Grupo 2 (Verificar a definição no dicionário de dados)',
#                                 'Grupo 3 (Verificar a definição no dicionário de dados)',
#                                 'Grupo 4 (Verificar a definição no dicionário de dados)',
#                                 'Grupo 5 (Verificar a definição no dicionário de dados)',
#                                 'Não Sei'))
#
#ENEM_2017$Q005 <- factor(ENEM_2017$Q005, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                        labels=c('1','2','3','4','5','6','7','8','9','10',
#                                 '11','12','13','14','15','16','17','18','19','20'))
#
#ENEM_2017$Q006 <- factor(ENEM_2017$Q006,levels =  c('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q'),
#                        labels=c( 'Nenhuma renda',
#                                 'Até R$ 937,00',
#                                 'De R$ 937,01 até R$ 1.405,50',
#                                 'De R$ 1.405,51 até R$ 1.874,00',
#                                 'De R$ 1.874,01 até R$ 2.342,50',
#                                 'De R$ 2.342,51 até R$ 2.811,00',
#                                 'De R$ 2.811,01 até R$ 3.748,00',
#                                 'De R$ 3.748,01 até R$ 4.685,00',
#                                 'De R$ 4.685,01 até R$ 5.622,00',
#                                 'De R$ 5.622,01 até R$ 6.559,00',
#                                 'De R$ 6.559,01 até R$ 7.496,00',
#                                 'De R$ 7.496,01 até R$ 8.433,00',
#                                 'De R$ 8.433,01 até R$ 9.370,00',
#                                 'De R$ 9.370,01 até R$ 11.244,00',
#                                 'De R$ 11.244,01 até R$ 14.055,00',
#                                 'De R$ 14.055,01 até R$ 18.740,00',
#                                 'Mais de R$ 18.740,00'))
#
#
#ENEM_2017$Q007 <- factor(ENEM_2017$Q007, levels = c('A','B','C','D'),
#                        labels=c('Não','Sim, um ou dois dias por semana',
#                                 'Sim, três ou quatro dias por semana',
#                                 'Sim, pelo menos cinco dias por semana'))
#
#ENEM_2017$Q008 <- factor(ENEM_2017$Q008, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, um',
#                                 'Sim, dois',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q009 <- factor(ENEM_2017$Q009, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, um',
#                                 'Sim, dois',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q010 <- factor(ENEM_2017$Q010, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, um',
#                                 'Sim, dois',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q011 <- factor(ENEM_2017$Q011, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q012 <- factor(ENEM_2017$Q012, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q013 <- factor(ENEM_2017$Q013, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, um',
#                                 'Sim, dois',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q014 <- factor(ENEM_2017$Q014, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q015 <- factor(ENEM_2017$Q015, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q016 <- factor(ENEM_2017$Q016, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, um',
#                                 'Sim, dois',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q017 <- factor(ENEM_2017$Q017, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q018 <- factor(ENEM_2017$Q018, levels = c('A','B'), labels=c('Não','Sim'))
#
#ENEM_2017$Q019 <- factor(ENEM_2017$Q019, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q020 <- factor(ENEM_2017$Q020, levels = c('A','B'), labels=c('Não','Sim'))
#ENEM_2017$Q021 <- factor(ENEM_2017$Q021, levels = c('A','B'), labels=c('Não','Sim'))
#
#ENEM_2017$Q022 <- factor(ENEM_2017$Q022, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, um',
#                                 'Sim, dois',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q023 <- factor(ENEM_2017$Q023, levels = c('A','B'), labels=c('Não','Sim'))
#
#ENEM_2017$Q024 <- factor(ENEM_2017$Q024, levels = c('A','B','C','D','E'),
#                        labels=c('Não',
#                                 'Sim, um',
#                                 'Sim, dois',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2017$Q025 <- factor(ENEM_2017$Q025, levels = c('A','B'), labels=c('Não','Sim'))
#
#ENEM_2017$Q026 <- factor(ENEM_2017$Q026, levels = c('A','B','C','D'), 
#                        labels=c('Já concluí o Ensino Médio',
#                                 'Estou cursando e concluirei o Ensino Médio em 2017',
#                                 'Estou cursando e concluirei o Ensino Médio após 2017',
#                                 'Não concluí e não estou cursando o Ensino Médio'))
#
#ENEM_2017$Q027 <- factor(ENEM_2017$Q027, levels = c('A','B','C','D','E'), 
#                        labels=c('Somente em escola pública',
#                                 'Parte em escola pública e parte em escola privada sem bolsa de estudo integral',
#                                 'Parte em escola pública e parte em escola privada com bolsa de estudo integral',
#                                 'Somente em escola privada sem bolsa de estudo integral',
#                                 'Somente em escola privada com bolsa de estudo integral'))