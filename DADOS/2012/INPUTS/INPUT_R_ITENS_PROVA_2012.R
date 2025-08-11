#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2012
#--------------------------------------------------------
#  DESCRI???O:
#           PROGRAMA PARA LEITURA DOS ITENS
#           ITENS_PROVA_2012
#--------------------------------------------------------

#------------------------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar o arquivo                    
#     ITENS_PROVA_ENEM_2012.csv no diretório raiz. 
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
memory.limit(24576)

#------------------
# Carga dos microdados

itens_2012 <- data.table::fread(input='itens_prova_2012.csv',integer64='character')

# A script a seguir formata os rótulos das variáveis
# Para formatar um item retire o caracter de comentário (#) no início na linha desejada 
#---------------------------

#itens_2012$SG_AREA <- factor(itens_2012$SG_AREA, levels = c('CH','CN','LC','MT'),  labels=c('Ciências Humanas','Ciências da Natureza','Linguagens e Códigos','Matemática'))
#itens_2012$IN_ITEM_ABAN <- factor(itens_2012$IN_ITEM_ABAN, levels = c(1,0),  labels=c('Sim','Não'))
#itens_2012$TP_LINGUA <- factor(itens_2012$TP_LINGUA, levels = c(1,0),  labels=c('Espanhol','Inglês'))