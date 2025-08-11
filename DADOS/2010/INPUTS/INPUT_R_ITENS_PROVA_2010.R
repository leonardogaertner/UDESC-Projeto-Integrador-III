#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2010
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DOS ITENS
#           ITENS_PROVA_2010
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar o arquivo                    
#     ITENS_PROVA_ENEM_2010.csv no diretório raiz. 
#     Ex. Windows C:\
#         Linux \home	                  
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
#Ex. Windows setwd("C:/temp")
#    Linux   setwd("/home")
#--------------------
setwd("C:/")  

#---------------
# Alocação de memória
#---------------
memory.limit(1000000)

#------------------
# Carga dos microdados

itens_2010 <- data.table::fread(input='itens_prova_2010.csv',integer64='character')

#itens_2010$SG_AREA <- factor(itens_2010$SG_AREA, levels = c('CH','CN','LC','MT'),  labels=c('Ci�ncias Humanas','Ci�ncias da Natureza','Linguagens e C�digos','Matem�tica'))
#itens_2010$TP_LINGUA <- factor(itens_2010$TP_LINGUA, levels = c(0,1),  labels=c('Ingl�s','Espanhol'))
#itens_2010$IN_ITEM_ABAN <- factor(itens_2010$IN_ITEM_ABAN, levels = c(1,0),  labels=c('Sim','N�o'))
