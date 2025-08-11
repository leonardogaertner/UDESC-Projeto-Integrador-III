#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avalia√ß√£o da Educa√ß√£o B√°sica 
#  Coordena√ß√£o-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2010
#--------------------------------------------------------
#  DESCRI√ß√£O:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2010
#--------------------------------------------------------

#--------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados √© necess√°rio salvar este 
#     programa e o arquivo MICRODADOS_ENEM_2010.csv no
#     mesmo diret√≥rio.	                  
#--------------------------------------------------------

#--------------------------------------------------------
#                   ATEN√ß√£O              
#--------------------------------------------------------
# Este programa abre a base de dados com os r√≥tulos das 
# vari√°veis de acordo com o dicion√°rio de dados que 
# comp√µem os microdados. 		  
#---------------------------------------------------------

#--------------------
# Intala√ß√£o do pacote Data.Table
# Se n√£o estiver instalado
#--------------------
if(!require(data.table)){install.packages('data.table')}

#--------------------
# Caso deseje trocar o local do arquivo, 
# edit a fun√ß√£o setwd() a seguir informando o local do arquivo.
# Ex. Windows setwd("C:/temp")
#     Linux   setwd("/home")
#--------------------
setwd("C:/")  

#---------------
# Aloca√ß√£o de mem?ria
#---------------
memory.limit(1000000)

#------------------
# Carga dos microdados

ENEM_2010 <- data.table::fread(input='microdados_enem_2010.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#---------------------------
# A script a seguir formata os rÛtulos das respostas
# Para formatar um item retire o caracter de coment·rio (#) no inÌcio na linha desejada 
#---------------------------

#ENEM_2010$TP_FAIXA_ETARIA <- factor(ENEM_2010$TP_FAIXA_ETARIA, 
#                                    levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#                                    labels = c('Menor de 17 anos','17 anos','18 anos','19 anos','20 anos','21 anos','22 anos',
#                                               '23 anos','24 anos','25 anos','Entre 26 e 30 anos','Entre 31 e 35 anos','Entre 36 e 40 anos',
#                                               'Entre 41 e 45 anos','Entre 46 e 50 anos','Entre 51 e 55 anos','Entre 56 e 60 anos','Entre 61 e 65 anos',
#                                               'Entre 66 e 70 anos','Maior de 70 anos'))

#ENEM_2010$TP_SEXO <- factor(ENEM_2010$TP_SEXO, levels = c('M','F'), labels=c('Maculino','Feminino'))


#ENEM_2010$TP_ESTADO_CIVIL <- factor(ENEM_2010$TP_ESTADO_CIVIL, levels = c(0,1,2,3),
#                                    labels=c('Solteiro(a)',
#                                             'Casado(a)/Mora com um(a) companheiro(a)',
#                                             'Divorciado(a)/Desquitado(a)/Separado(a)',
#                                             'Vi˙vo(a)'))

#ENEM_2010$TP_COR_RACA <- factor(ENEM_2010$TP_COR_RACA, levels = c(0,1,2,3,4,5),
#                                labels=c('N„o declarado',
#                                         'Branca','Preta',
#                                         'Parda','Amarela',
#                                         'IndÌgena'))

#ENEM_2010$TP_ST_CONCLUSAO <- factor(ENEM_2010$TP_ST_CONCLUSAO, levels = c(1,2,3), 
#                                    labels=c('J· concluÌ o Ensino MÈdio',
#                                             'Estou cursando e concluirei o Ensino MÈdio em 2010',
#                                             'Estou cursando e concluirei o Ensino MÈdio apÛs 2010'))


#ENEM_2010$TP_ENSINO <- factor(ENEM_2010$TP_ENSINO, levels = c(1,2,3,4),
#                              labels=c('Ensino Regular',
#                                       'Ensino de Jovens e Adultos',
#                                       'Ensino Profissionalizante', 'Ensino Especial'))

#ENEM_2010$TP_DEPENDENCIA_ADM_ESC <- factor(ENEM_2010$TP_DEPENDENCIA_ADM_ESC, levels = c(1,2,3,4),
#                                           labels=c('Federal',
#                                                    'Estadual',
#                                                    'Municipal',
#                                                    'Privada'))

#ENEM_2010$TP_LOCALIZACAO_ESC <- factor(ENEM_2010$TP_LOCALIZACAO_ESC, levels = c(1,2), labels=c('Urbana','Rural'))

#ENEM_2010$TP_SIT_FUNC_ESC <- factor(ENEM_2010$TP_SIT_FUNC_ESC, levels = c(1,2,3,4),
#                                    labels=c('Em atividade',
#                                             'Paralisada',
#                                             'Extinta',
#                                             'Escola extinta em anos anteriores'))


#ENEM_2010$IN_CERTIFICADO <- factor(ENEM_2010$IN_CERTIFICADO, levels = c(0,1), labels = c("N„o","Sim"))

#ENEM_2010$TP_PRESENCA_CN <- factor(ENEM_2010$TP_PRESENCA_CN, levels = c(0,1,2),
#                                    labels=c('Faltou ‡ prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2010$TP_PRESENCA_CH <- factor(ENEM_2010$TP_PRESENCA_CH, levels = c(0,1,2),
#                                   labels=c('Faltou ‡ prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2010$TP_PRESENCA_LC <- factor(ENEM_2010$TP_PRESENCA_LC, levels = c(0,1,2),
#                                   labels=c('Faltou ‡ prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2010$TP_PRESENCA_MT <- factor(ENEM_2010$TP_PRESENCA_MT, levels = c(0,1,2),
#                                   labels=c('Faltou ‡ prova',
#                                            'Presente na prova',
#                                            'Eliminado na prova'))

#ENEM_2010$CO_PROVA_CN <- factor(ENEM_2010$CO_PROVA_CN, levels = c(89,90,91,92,105,106,107,108),
#                                labels=c('Azul','Amarela','Branca','Rosa','Azul - ReaplicaÁ„o','Amarela - ReaplicaÁ„o',
#                                         'Branca - ReaplicaÁ„o','Rosa - ReaplicaÁ„o'))

#ENEM_2010$CO_PROVA_CH <- factor(ENEM_2010$CO_PROVA_CH, levels = c(85,86,87,88,101,102,103,104),
#                                labels=c('Azul','Amarela','Branca','Rosa','Azul - ReaplicaÁ„o','Amarela - ReaplicaÁ„o',
#                                         'Branca - ReaplicaÁ„o','Rosa - ReaplicaÁ„o'))

#ENEM_2010$CO_PROVA_LC <- factor(ENEM_2010$CO_PROVA_LC, levels = c(93,94,95,96,109,110,111,112),
#                                labels=c('Amarela','Cinza','Azul','Rosa','Amarela - ReaplicaÁ„o','Cinza - ReaplicaÁ„o',
#                                         'Azul - ReaplicaÁ„o','Rosa - ReaplicaÁ„o'))

#ENEM_2010$CO_PROVA_MT <- factor(ENEM_2010$CO_PROVA_MT, levels = c(97,98,99,100,113,114,115,116),
#                                 labels=c('Amarela','Cinza','Azul','Rosa','Amarela - ReaplicaÁ„o','Cinza - ReaplicaÁ„o',
#                                          'Azul - ReaplicaÁ„o','Rosa - ReaplicaÁ„o'))

#ENEM_2010$ TP_LINGUA <- factor(ENEM_2010$ TP_LINGUA, levels = c(0,1),
#                                labels=c('InglÍs','Espanhol'))

#ENEM_2010$TP_STATUS_REDACAO <- factor(ENEM_2010$TP_STATUS_REDACAO, levels = c('B','D','F','N','P'),
#                                      labels=c('Entregou a redaÁ„o em Branco','Desconsiderada','Faltou ‡ prova',
#                                               'RedaÁ„o anulada','Presente ‡ prova'))


#ENEM_2010$Q01 <- factor(ENEM_2010$Q01, levels = c('A','B','C','D','E'), 
#                        labels = c('Uma a trÍs','Quatro a sete','Oito a dez','Mais de dez','Moro sozinho'))
                                   
#ENEM_2010$Q02 <- factor(ENEM_2010$Q02, levels = c('A','B','C','D','E','F','G','H','I'), 
#                        labels = c('Da 1™ ‡ 4™ sÈrie do Ensino Fundamental (antigo prim·rio)',
#                                   'Da 5™ ‡ 8™ sÈrie do Ensino Fundamental (antigo gin·sio)','Ensino MÈdio (antigo 2∫ grau)',
#                                   'Ensino Superior','EspecializaÁ„o','Mestrado','Doutorado','N„o estudou.','N„o sei'))

#ENEM_2010$Q03 <- factor(ENEM_2010$Q03, levels = c('A','B','C','D','E','F','G','H','I'), 
#                        labels = c('Da 1™ ‡ 4™ sÈrie do Ensino Fundamental (antigo prim·rio)',
#                                   'Da 5™ ‡ 8™ sÈrie do Ensino Fundamental (antigo gin·sio)','Ensino MÈdio (antigo 2∫ grau)',
#                                   'Ensino Superior','EspecializaÁ„o','Mestrado','Doutorado','N„o estudou.','N„o sei'))

#ENEM_2010$Q04 <- factor(ENEM_2010$Q04, levels = c('A','B','C','D','E','F','G','H'), 
#                        labels = c('AtÈ 1 sal·rio mÌnimo (atÈ R$ 510,00).',
#                                   'De 1 a 3 sal·rios mÌnimos (de R$ 510,00 atÈ R$ 1.530,00).',
#                                   'De 3 a 6 sal·rios mÌnimos (de R$ 1.530,00 atÈ R$ 3.060,00).',
#                                   'De 6 a 9 sal·rios mÌnimos (de R$ 3.060,00 atÈ R$ 4.590,00).',
#                                   'De 9 a 12 sal·rios mÌnimos (de R$ 4.590,00 atÈ R$ 6.120,00).',
#                                   'De 12 a 15 sal·rios mÌnimos (de R$ 6.210,00 atÈ R$ 7.650,00).',
#                                   'Mais de 15 sal·rios mÌnimos (mais de R$ 7.650,00).',
#                                   'Nenhuma renda.'))

#ENEM_2010$Q05 <- factor(ENEM_2010$Q05, levels = c('A','B','C','D','E','F','G','H'), 
#                        labels = c('AtÈ 1 sal·rio mÌnimo (atÈ R$ 510,00).',
#                                   'De 1 a 3 sal·rios mÌnimos (de R$ 510,00 atÈ R$ 1.530,00).',
#                                   'De 3 a 6 sal·rios mÌnimos (de R$ 1.530,00 atÈ R$ 3.060,00).',
#                                   'De 6 a 9 sal·rios mÌnimos (de R$ 3.060,00 atÈ R$ 4.590,00).',
#                                   'De 9 a 12 sal·rios mÌnimos (de R$ 4.590,00 atÈ R$ 6.120,00).',
#                                   'De 12 a 15 sal·rios mÌnimos (de R$ 6.210,00 atÈ R$ 7.650,00).',
#                                   'Mais de 15 sal·rios mÌnimos (mais de R$ 7.650,00).',
#                                   'Nenhuma renda.'))

#ENEM_2010$Q06 <- factor(ENEM_2010$Q06, levels = c('A','B','C'), labels = c('PrÛpria','Alugada','Cedida'))
#ENEM_2010$Q07 <- factor(ENEM_2010$Q07, levels = c('A','B','C','D'), 
#                        labels = c('Zona rural','Zona urbana','Comunidade indÌgena','Comunidade quilombola'))
#ENEM_2010$Q08 <- factor(ENEM_2010$Q08, levels = c('A','B'), labels = c('Sim','N„o'))

#ENEM_2010$Q14 <- factor(ENEM_2010$Q14, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q15 <- factor(ENEM_2010$Q15, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q16 <- factor(ENEM_2010$Q16, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q17 <- factor(ENEM_2010$Q17, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q18 <- factor(ENEM_2010$Q18, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q19 <- factor(ENEM_2010$Q19, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q20 <- factor(ENEM_2010$Q20, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q21 <- factor(ENEM_2010$Q21, levels = c('A','B'), labels = c('Sim','N„o'))

#ENEM_2010$Q22 <- factor(ENEM_2010$Q22, levels = c('A','B','C','D','E'), 
#                        labels = c('Sem jornada fixa, atÈ 10 horas semanais.',
#                                   'De 11 a 20 horas semanais.',
#                                   'De 21 a 30 horas semanais.',
#                                   'De 31 a 40 horas semanais.',
#                                   'Mais de 40 horas semanais'))

#ENEM_2010$Q23 <- factor(ENEM_2010$Q23, levels = c('A','B','C','D'), 
#                        labels = c('Antes dos 14 anos.','Entre 14 e 16 anos.',
#                                   'Entre 17 e 18 anos.','ApÛs 18 anos.'))

#ENEM_2010$Q28 <- factor(ENEM_2010$Q28, levels = c('A','B','C','D','E','F','G'), 
#                        labels = c('Menos de 8 anos.','8 anos.','9 anos.','10 anos.',
#                                   '11 anos.','Mais de 11 anos.','N„o conclui.'))

#ENEM_2010$Q29 <- factor(ENEM_2010$Q29, levels = c('A','B','C','D','E'), 
#                        labels = c('N„o.','Sim, por um ano.','Sim, por dois anos.',
#                                   'Sim, por trÍs anos.','Sim, por quatro anos ou mais.'))

#ENEM_2010$Q30 <- factor(ENEM_2010$Q30, levels = c('A','B','C','D','E','F','G','H'), 
#                        labels = c('Somente em escola p˙blica.',
#                                   'Maior parte em escola p˙blica.',
#                                   'Somente em escola particular.',
#                                   'Maior parte em escola particular.',
#                                   'Somente em escola indÌgena.',
#                                   'Maior parte em escola n„o-indÌgena.',
#                                   'Somente em escola situada em comunidade quilombola.',
#                                   'N„o frequentei a escola'))

#ENEM_2010$Q31 <- factor(ENEM_2010$Q31, levels = c('A','B','C','D','E','F'), 
#                        labels = c('Menos de 3 anos','3 anos','4 anos',
#                                   '5 anos','6 anos ou mais','N„o conclui'))

#ENEM_2010$Q32 <- factor(ENEM_2010$Q32, levels = c('A','B','C','D','E'), 
#                        labels = c('N„o.','Sim, por um ano.','Sim, por dois anos.',
#                                   'Sim, por trÍs anos.','Sim, por quatro anos ou mais.'))

#ENEM_2010$Q33 <- factor(ENEM_2010$Q33, levels = c('A','B','C','D','E','F','G','H'), 
#                        labels = c('Somente em escola p˙blica.',
#                                   'Maior parte em escola p˙blica.',
#                                   'Somente em escola particular.',
#                                   'Maior parte em escola particular.',
#                                   'Somente em escola indÌgena.',
#                                   'Maior parte em escola n„o-indÌgena.',
#                                   'Somente em escola situada em comunidade quilombola.',
#                                   'N„o frequentei a escola'))

#ENEM_2010$Q34 <- factor(ENEM_2010$Q34, levels = c('A','B'), labels = c('Sim','N„o'))

#ENEM_2010$Q35 <- factor(ENEM_2010$Q35, levels = c('A','B','C','D','E','F'), 
#                        labels = c('Curso presencial em escola p˙blica.',
#                                   'Curso presencial em escola privada.',
#                                   'Curso presencial na empresa em que trabalha, instituiÁ„o filantrÛpica ou religiosa.',
#                                   'Curso a dist‚ncia (via r·dio, televis„o, internet, correio, com apostilas).',
#                                   'Curso semipresencial em escola p˙blica.',
#                                   'Curso semipresencial em escola privada.'))

#ENEM_2010$Q36 <- factor(ENEM_2010$Q36, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q37 <- factor(ENEM_2010$Q37, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q38 <- factor(ENEM_2010$Q38, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q39 <- factor(ENEM_2010$Q39, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q40 <- factor(ENEM_2010$Q40, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q41 <- factor(ENEM_2010$Q41, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q42 <- factor(ENEM_2010$Q42, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q43 <- factor(ENEM_2010$Q43, levels = c('A','B'), labels = c('Sim','N„o'))
#ENEM_2010$Q44 <- factor(ENEM_2010$Q44, levels = c('A','B'), labels = c('Sim','N„o'))

#ENEM_2010$Q53 <- factor(ENEM_2010$Q53, levels = c('A','B','C','D','E','F','G'), 
#                        labels = c('Menos de 10 anos.',
#                                   'Entre 10 e 14 anos.',
#                                   'Entre 15 e 18 anos.',
#                                   'Entre 19 e 24 anos.',
#                                   'Entre 25 e 30 anos.',
#                                   'Mais de 30 anos.',
#                                   'N„o deixei de frequentar.'))
