#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2015
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2015
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este programa e o arquivo                    
#     MICRODADOS_ENEM_2015.csv no mesmo diretório.	                  
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

ENEM_2015 <- data.table::fread(input='microdados_enem_2015.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#---------------------------
# A script a seguir formata os rótulos das respostas
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#ENEM_2015$TP_FAIXA_ETARIA <- factor(ENEM_2015$TP_FAIXA_ETARIA, 
#                                    levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                    labels = c('Menor de 17 anos','17 anos','18 anos','19 anos','20 anos','21 anos','22 anos',
#                                               '23 anos','24 anos','25 anos','Entre 26 e 30 anos','Entre 31 e 35 anos','Entre 36 e 40 anos',
#                                               'Entre 41 e 45 anos','Entre 46 e 50 anos','Entre 51 e 55 anos','Entre 56 e 60 anos','Entre 61 e 65 anos',
#                                               'Entre 66 e 70 anos','Maior de 70 anos'))

#ENEM_2015$IN_TREINEIRO <- factor(ENEM_2015$IN_TREINEIRO, levels = c(1,0),  labels=c('Sim','Não'))
#
#ENEM_2015$TP_DEPENDENCIA_ADM_ESC <- factor(ENEM_2015$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4),
#                                           labels=c('Federal',
#                                                    'Estadual',
#                                                    'Municipal',
#                                                    'Privada'))
#
#ENEM_2015$TP_LOCALIZACAO_ESC <- factor(ENEM_2015$TP_LOCALIZACAO_ESC, levels = c(1,2), labels=c('Urbana','Rural'))
#
#ENEM_2015$TP_SIT_FUNC_ESC <- factor(ENEM_2015$TP_SIT_FUNC_ESC, levels = c(1,2,3,4),
#                                    labels=c('Em atividade',
#                                             'Paralisada',
#                                             'Extinta',
#                                             'Escola extinta em anos anteriores'))
#
#ENEM_2015$TP_SEXO <- factor(ENEM_2015$TP_SEXO, levels = c('M','F'), labels=c('Maculino','Feminino'))
#
#ENEM_2015$TP_ESTADO_CIVIL <- factor(ENEM_2015$TP_ESTADO_CIVIL, levels = c(0,1,2,3),
#                                    labels=c('Solteiro(a)',
#                                             'Casado(a)/Mora com um(a) companheiro(a)',
#                                             'Divorciado(a)/Desquitado(a)/Separado(a)',
#                                             'Viúvo(a)'))
#
#ENEM_2015$TP_COR_RACA <- factor(ENEM_2015$TP_COR_RACA, levels = c(0,1,2,3,4,5,6),
#                                labels=c('Não declarado',
#                                         'Branca','Preta',
#                                         'Parda','Amarela',
#                                         'Indígena',
#                                         'Não dispõe da informação'))
#
#ENEM_2015$IN_CERTIFICADO <- factor(ENEM_2015$IN_CERTIFICADO, levels = c('0','1'), labels=c('Não','Sim'))
#
#ENEM_2015$TP_NACIONALIDADE <- factor(ENEM_2015$TP_NACIONALIDADE, levels = c(0,1,2,3,4),
#                                     labels=c('Não informado',
#                                              'Brasileiro(a)',
#                                              'Brasileiro(a) Naturalizado(a)',
#                                              'Estrangeiro(a)',
#                                              'Brasileiro(a) Nato(a), nascido(a) no exterior'))
#
#ENEM_2015$TP_ST_CONCLUSAO <- factor(ENEM_2015$TP_ST_CONCLUSAO, levels = c(1,2,3,4), 
#                                    labels=c('Já concluí o Ensino Médio',
#                                             'Estou cursando e concluirei o Ensino Médio em 2015',
#                                             'Estou cursando e concluirei o Ensino Médio após 2015',
#                                             'Não concluí e Não estou cursando o Ensino Médio'))
#
#ENEM_2015$TP_ANO_CONCLUIU <- factor(ENEM_2015$TP_ANO_CONCLUIU, levels = c(0,1,2,3,4,5,6,7,8,9,10),
#                                    labels=c('Não informado','2015',
#                                             '2014','2013',
#                                             '2012','2011','2010',
#                                             '2009','2008','2007',
#                                             'Anterior a 2007'))

#ENEM_2015$TP_ESCOLA <- factor(ENEM_2015$TP_ESCOLA, levels = c(1,2,3,4),
#                              labels=c('Não respondeu',
#                                       'Pública',
#                                       'Privada',
#                                       'Exterior'))
#
#ENEM_2015$TP_ENSINO <- factor(ENEM_2015$TP_ENSINO, levels = c(1,2,3),
#                              labels=c('Ensino Regular',
#                                       'Educação Especial - Modalidade Substitutiva',
#                                       'Educação de Jovens e Adultos'))
#
#ENEM_2015$TP_PRESENCA_CN <- factor(ENEM_2015$TP_PRESENCA_CN, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                           'Presente na prova',
#                                           'Eliminado na prova'))
#
#ENEM_2015$TP_PRESENCA_CH <- factor(ENEM_2015$TP_PRESENCA_CH, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))
#
#ENEM_2015$TP_PRESENCA_LC <- factor(ENEM_2015$TP_PRESENCA_LC, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))
#
#ENEM_2015$TP_PRESENCA_MT <- factor(ENEM_2015$TP_PRESENCA_MT, levels = c(0,1,2),
#                                   labels=c('Faltou à prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))
#
#ENEM_2015$CO_PROVA_CN <- factor(ENEM_2015$CO_PROVA_CN, levels = c(235,236,237,238,252,275,276,277,278),
#                                labels=c('Azul','Amarelo','Branco',
#                                         'Rosa',
#                                         'Branco-Adaptada(Braile e Ledor)',
#                                         'Azul (REAPLICAÇÃO)',
#                                         'Amarelo (REAPLICAÇÃO)',
#                                         'Branco (REAPLICAÇÃO)',
#                                         'Rosa (REAPLICAÇÃO)'))
#
#ENEM_2015$CO_PROVA_CH <- factor(ENEM_2015$CO_PROVA_CH, levels = c(231,232,233,234,251,271,272,273,274),
#                                labels=c('Azul','Amarelo','Branco',
#                                          'Rosa',
#                                          'Branco-Adaptada(Braile e Ledor)',
#                                          'Azul (REAPLICAÇÃO)',
#                                          'Amarelo (REAPLICAÇÃO)',
#                                          'Branco (REAPLICAÇÃO)',
#                                          'Rosa (REAPLICAÇÃO)'))
#
#ENEM_2015$CO_PROVA_LC <- factor(ENEM_2015$CO_PROVA_LC, levels = c(239,240,241,242,253,279,280,281,282),
#                                labels=c('Amarelo','Cinza','Azul',
#                                         'Rosa',
#                                         'Cinza - Adaptada (Braile e Ledor)',
#                                         'Amarelo (REAPLICAÇÃO)',
#                                         'Cinza (REAPLICAÇÃO)',
#                                         'Azul (REAPLICAÇÃO)',
#                                         'Rosa (REAPLICAÇÃO)'))
#
#ENEM_2015$CO_PROVA_MT <- factor(ENEM_2015$CO_PROVA_MT, levels = c(243,244,245,246,254,283,284,285,286),
#                                 labels=c('Amarelo', 'Cinza','Azul',
#                                          'Rosa',
#                                          'Cinza - Adaptada (Braile e Ledor)',
#                                          'Amarelo (REAPLICAÇÃO)',
#                                          'Cinza (REAPLICAÇÃO)',
#                                          'Azul (REAPLICAÇÃO)',
#                                          'Rosa (REAPLICAÇÃO)'))
#
#ENEM_2015$ TP_LINGUA <- factor(ENEM_2015$ TP_LINGUA, levels = c(0,1),
#                                labels=c('Inglês','Espanhol'))
#
#ENEM_2015$TP_STATUS_REDACAO <- factor(ENEM_2015$TP_STATUS_REDACAO, levels = c(1,2,3,4,5,6,7,8,9,98),
#                                      labels=c('Sem problemas',
#                                               'Anulada','Cópia Texto Motivador',
#                                               'Em Branco','Fere Direitos Humanos',
#                                               'Fuga ao tema',
#                                               'Não atendimento ao tipo',
#                                               'Texto insuficiente',
#                                               'Parte desconectada',
#                                               'Não atendimento ao item 2.2.5 do edital do exame'))
#
#ENEM_2015$Q001 <- factor(ENEM_2015$Q001, levels = c('A','B','C','D','E','F','G','H'),
#                         labels=c('Nunca estudou',
#                                  'Não completou a 4ª série/5º ano do ensino fundamental',
#                                  'Completou a 4ª série/5º ano, mas Não completou a 8ª série/9º ano do ensino fundamental',
#                                  'Completou a 8ª série/9º ano do ensino fundamental, mas Não completou o Ensino Médio',
#                                  'Completou o Ensino Médio, mas Não completou a Faculdade',
#                                  'Completou a Faculdade, mas Não completou a Pós-graduação',
#                                  'Completou a Pós-graduação','Não sei'))
#
#ENEM_2015$Q002 <- factor(ENEM_2015$Q002, levels = c('A','B','C','D','E','F','G','H'),
#                         labels=c('Nunca estudou',
#                                  'Não completou a 4ª série/5º ano do ensino fundamental',
#                                  'Completou a 4ª série/5º ano, mas Não completou a 8ª série/9º ano do ensino fundamental',
#                                  'Completou a 8ª série/9º ano do ensino fundamental, mas Não completou o Ensino Médio',
#                                  'Completou o Ensino Médio, mas Não completou a Faculdade',
#                                  'Completou a Faculdade, mas Não completou a Pós-graduação',
#                                  'Completou a Pós-graduação','Não sei'))
#
#ENEM_2015$Q003 <- factor(ENEM_2015$Q003, levels =  c('A','B','C','D','E','F'),
#                         labels=c('Grupo 1 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 2 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 3 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 4 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 5 (Verificar a definição no dicionário de dados)',
#                                  'Não Sei'))
#
#ENEM_2015$Q004 <- factor(ENEM_2015$Q004, levels =  c('A','B','C','D','E','F'),
#                         labels=c('Grupo 1 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 2 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 3 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 4 (Verificar a definição no dicionário de dados)',
#                                  'Grupo 5 (Verificar a definição no dicionário de dados)',
#                                  'Não Sei'))
#
#ENEM_2015$Q005 <- factor(ENEM_2015$Q005, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                         labels=c('1','2','3','4','5','6','7','8','9','10',
#                                  '11','12','13','14','15','16','17','18','19','20'))
#
#ENEM_2015$Q006 <- factor(ENEM_2015$Q006,levels =  c('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q'),
#                        labels=c( 'Nenhuma renda',
#                                 'Até R$ 788,00',
#                                 'De R$ 788,01 até R$ 1.182,00',
#                                 'De R$ 1.182,01 até R$ 1.572,00',
#                                 'De R$ 1.572,01 até R$ 1.970,00',
#                                 'De R$ 1.970,01 até R$ 2.364,00',
#                                 'De R$ 2.364,01 até R$ 3.152,00',
#                                 'De R$ 3.152,01 até R$ 3.940,00',
#                                 'De R$ 3.940,01 até R$ 4.728,00',
#                                 'De R$ 4.728,01 até R$ 5.516,00',
#                                 'De R$ 5.516,01 até R$ 6.304,00',
#                                 'De R$ 6.304,01 até R$ 7.092,00',
#                                 'De R$ 7.092,01 até R$ 7.880,00',
#                                 'De R$ 7.880,01 até R$ 9.456,00',
#                                 'De R$ 9.456,01 até R$ 11.820,00',
#                                 'De R$ 11.820,01 até R$ 15.760,00',
#                                 'Mais de 15.760,00'))
#
#ENEM_2015$Q007 <- factor(ENEM_2015$Q007, levels = c('A','B','C','D'),
#                         labels=c('Não','Sim, um ou dois dias por semana',
#                                  'Sim, três ou quatro dias por semana',
#                                  'Sim, pelo menos cinco dias por semana'))
#
#ENEM_2015$Q008 <- factor(ENEM_2015$Q008, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))
#
#ENEM_2015$Q009 <- factor(ENEM_2015$Q009, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))
#
#ENEM_2015$Q010 <- factor(ENEM_2015$Q010, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))
#
#ENEM_2015$Q011 <- factor(ENEM_2015$Q011, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2015$Q012 <- factor(ENEM_2015$Q012, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2015$Q013 <- factor(ENEM_2015$Q013, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))
#
#ENEM_2015$Q014 <- factor(ENEM_2015$Q014, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2015$Q015 <- factor(ENEM_2015$Q015, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2015$Q016 <- factor(ENEM_2015$Q016, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))
#
#ENEM_2015$Q017 <- factor(ENEM_2015$Q017, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2015$Q018 <- factor(ENEM_2015$Q018, levels = c('A','B'), labels=c('Não','Sim'))
#
#ENEM_2015$Q019 <- factor(ENEM_2015$Q019, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                 'Sim, uma',
#                                 'Sim, duas',
#                                 'Sim, três',
#                                 'Sim, quatro ou mais'))
#
#ENEM_2015$Q020 <- factor(ENEM_2015$Q020, levels = c('A','B'), labels=c('Não','Sim'))
#ENEM_2015$Q021 <- factor(ENEM_2015$Q021, levels = c('A','B'), labels=c('Não','Sim'))
#
#ENEM_2015$Q022 <- factor(ENEM_2015$Q022, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))
#
#ENEM_2015$Q023 <- factor(ENEM_2015$Q023, levels = c('A','B'), labels=c('Não','Sim'))
#
#ENEM_2015$Q024 <- factor(ENEM_2015$Q024, levels = c('A','B','C','D','E'),
#                         labels=c('Não',
#                                  'Sim, um',
#                                  'Sim, dois',
#                                  'Sim, três',
#                                  'Sim, quatro ou mais'))
#
#ENEM_2015$Q025 <- factor(ENEM_2015$Q025, levels = c('A','B'), labels=c('Não','Sim'))
#
#ENEM_2015$Q026 <- factor(ENEM_2015$Q026, levels = c('A','B','C'), 
#                         labels=c('Não, nunca trabalhei',
#                                  'Sim, já trabalhei, mas não estou trabalhando',
#                                  'Sim, estou trabalhando'))
#
#ENEM_2015$Q027 <- factor(ENEM_2015$Q027, levels = c('A','B','C','D','E','F','G','H','I','J','K','L'), 
#                         labels=c('Menos de 14 anos',
#                                  '15 anos',
#                                  '16 anos',
#                                  '17 anos',
#                                  '18 anos',
#                                  '19 anos',
#                                  '20 anos',
#                                  '21 anos',
#                                  '22 anos',
#                                  '23 anos',
#                                  '24 anos',
#                                  '25 anos ou mais'))
#
#ENEM_2015$Q028 <- factor(ENEM_2015$Q028, levels = c('A','B','C','D','E'), 
#                         labels=c('Até 10 horas semanais',
#                                  'De 11 a 20 horas semanais',
#                                  'De 21 a 30 horas semanais',
#                                  'De 31 a 40 horas semanais',
#                                  'Mais de 40 horas semanais'))
#
#ENEM_2015$Q042 <- factor(ENEM_2015$Q042, levels = c('A','B','C','D','E','F','G','H'), 
#                         labels=c('Somente em escola pública',
#                                  'A maior parte em escola pública',
#                                  'Somente em escola particular',
#                                  'A maior parte em escola particular',
#                                  'Somente em escola indígena',
#                                  'A maior parte em escola indígena',
#                                  'Somente em escola situada em comunidade quilombola',
#                                  'A maior parte em escola situada em comunidade quilombola'))
#
#ENEM_2015$Q043 <- factor(ENEM_2015$Q043, levels = c('A','B','C','D'), 
#                         labels=c('Cursei o Ensino Fundamental somente na modalidade regular',
#                                  'Cursei o Ensino Fundamental parte na modalidade regular e parte na modalidade EJA (Educação de Jovens e Adultos)',
#                                  'Cursei o Ensino Fundamental somente na modalidade EJA (Educação de Jovens e Adultos)',
#                                  'Outras modalidades'))
#
#ENEM_2015$Q044 <- factor(ENEM_2015$Q044, levels = c('A','B','C'), 
#                         labels=c('Somente no diurno',
#                                  'Parte no diurno e parte no noturno',
#                                  'Somente no noturno'))
#
#ENEM_2015$Q045 <- factor(ENEM_2015$Q045, levels = c('A','B','C','D'), 
#                         labels=c('Não abandonei, nem fui reprovado',
#                                  'Não abandonei, mas fui reprovado',
#                                  'Abandonei, mas não fui reprovado',
#                                  'Abandonei e fui reprovado'))
#
#ENEM_2015$Q046 <- factor(ENEM_2015$Q046, levels = c('A','B','C','D'),
#                         labels=c('Já concluí o Ensino Médio.',
#                                 'Estou cursando e concluirei o Ensino Médio em 2015.',
#                                  'Estou cursando e concluirei o Ensino Médio após 2015',
#                                  'Não concluí e Não estou cursando o Ensino Médio.'))
#
#ENEM_2015$Q047 <- factor(ENEM_2015$Q047, levels = c('A','B','C','D','E'),
#                         labels=c('Somente em escola pública',
#                                  'Parte em escola pública e parte em escola privada sem bolsa de estudo integral',
#                                  'Parte em escola pública e parte em escola privada com bolsa de estudo integral',
#                                  'Somente em escola privada sem bolsa de estudo integral',
#                                  'Somente em escola privada com bolsa de estudo integral'))
#
#ENEM_2015$Q048 <- factor(ENEM_2015$Q048, levels = c('A','B','C','D'), 
#                         labels=c('Cursei o Ensino Médio somente na modalidade regular',
#                                  'Cursei o Ensino Médio parte na modalidade regular e parte na modalidade EJA (Educação de Jovens 	e Adultos)',
#                                  'Cursei o Ensino Médio somente na modalidade EJA (Educação de Jovens e Adultos)',
#                                  'Outras modalidades'))
#
#ENEM_2015$Q049 <- factor(ENEM_2015$Q049, levels = c('A','B','C'), 
#                         labels=c('Somente no diurno',
#                                  'Parte no diurno e parte no noturno',
#                                  'Somente no noturno'))
#
#ENEM_2015$Q050 <- factor(ENEM_2015$Q050, levels = c('A','B','C','D'),
#                         labels=c('Não abandonei, nem fui reprovado',
#                                  'Não abandonei, mas fui reprovado',
#                                  'Abandonei, mas não fui reprovado',
#                                  'Abandonei e fui reprovado'))
#
#ENEM_2015$SG_UF_ESC <- factor(ENEM_2015$SG_UF_ESC, levels = c('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO'),
#                         labels=c('Acre',
#                                  'Alagoas',
#                                  'Amapá',
#                                  'Amazonas',
#                                  'Bahia',
#                                  'Ceará',
#                                  'Distrito Federal',
#                                  'Espírito Santo',
#                                  'Goiás',
#                                  'Maranhão',
#                                  'Mato Grosso',
#                                  'Mato Grosso do Sul',
#                                  'Minas Gerais',
#                                  'Pará',
#                                  'Paraíba',
#                                  'Paraná',
#                                  'Pernambuco',
#                                  'Piauí',
#                                  'Rio de Janeiro',
#                                  'Rio Grande do Norte',
#                                  'Rio Grande do Sul',
#                                  'Rondônia',
#                                  'Roraima',
#                                  'Santa Catarina',
#                                  'São Paulo',
#                                  'Sergipe',
#                                  'Tocantins'))
#
#ENEM_2015$SG_UF_PROVA <- factor(ENEM_2015$SG_UF_PROVA, levels = c('AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO'),
#                         labels=c('Acre',
#                                  'Alagoas',
#                                  'Amapá',
#                                  'Amazonas',
#                                  'Bahia',
#                                  'Ceará',
#                                  'Distrito Federal',
#                                  'Espírito Santo',
#                                  'Goiás',
#                                  'Maranhão',
#                                  'Mato Grosso',
#                                  'Mato Grosso do Sul',
#                                  'Minas Gerais',
#                                  'Pará',
#                                  'Paraíba',
#                                  'Paraná',
#                                  'Pernambuco',
#                                  'Piauí',
#                                  'Rio de Janeiro',
#                                  'Rio Grande do Norte',
#                                  'Rio Grande do Sul',
#                                  'Rondônia',
#                                  'Roraima',
#                                  'Santa Catarina',
#                                  'São Paulo',
#                                  'Sergipe',
#                                  'Tocantins'))