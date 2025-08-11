#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_1998
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_1998
#--------------------------------------------------------

#--------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este 
#     programa e o arquivo MICRODADOS_ENEM_1998.csv no
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
# Ex. Windows setwd('C:\temp')
#     Linux   setwd('\home')
#--------------------
setwd('C:/')  

#---------------
# Alocação de memória
#---------------
memory.limit(1000000)

#------------------
# Carga dos microdados

enem_1998 <- data.table::fread(input='microdados_enem_1998.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = '', 
                               showProgress = TRUE)


# enem_1998$TP_FAIXA_ETARIA <- factor(enem_1998$TP_FAIXA_ETARIA, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
# 						   labels = c('Menor de 17 anos',
# 									  '17 anos',
# 									  '18 anos',
# 									  '19 anos',
# 									  '20 anos',
# 									  '21 anos',
# 									  '22 anos',
# 									  '23 anos',
# 									  '24 anos',
# 									  '25 anos',
# 									  'Entre 26 e 30 anos',
# 									  'Entre 31 e 35 anos',
# 									  'Entre 36 e 40 anos',
# 									  'Entre 41 e 45 anos',
# 									  'Entre 46 e 50 anos',
# 									  'Entre 51 e 55 anos',
# 									  'Entre 56 e 60 anos',
# 									  'Entre 61 e 65 anos',
# 									  'Entre 66 e 70 anos',
# 									  'Maior de 70 anos'))
 
# enem_1998$TP_SEXO <- factor(enem_1998$TP_SEXO, levels = c('M','F'), labels = c('Masculino','Feminino'))
 
# enem_1998$TP_PRESENCA <- factor(enem_1998$TP_PRESENCA, levels = c(0,1), labels = c('Faltou à prova','Presente à prova'))
 
# enem_1998$CO_PROVA <- factor(enem_1998$CO_PROVA, levels = c('A','B','G','Z'),
# 							  labels = c('Amarela',
#                                          'Branca',
#                                          'Grafite',
#                                          'Azul'))
 
# enem_1998$TP_STATUS_REDACAO <- factor(enem_1998$TP_STATUS_REDACAO, levels = c('F','P'), labels = c('Faltou à prova','Presente à prova'))
 
# enem_1998$IN_QSE <- factor(enem_1998$IN_QSE, levels = c(1,0), labels = c('Respondeu o questionário socioecômico','Não respondeu o questionário socioecômico'))
 
# enem_1998$Q1 <- factor(enem_1998$Q1, levels = c('A','B'), labels = c('Feminino','Masculino'))
 
# enem_1998$Q2 <- factor(enem_1998$Q2, levels = c('A','B','C','D','E','F','G','H'),
#                        labels = c('Após 1981',
#                                   '1981',
#                                   '1980',
#                                   '1979',
#                                   '1978',
#                                   '1977',
#                                   'Entre 1973 e 1976',
#                                   'Antes de 1973'))

# enem_1998$Q3 <- factor(enem_1998$Q3, levels = c('A','B'), labels = c('Janeiro e Julho','Agosto a Dezembro'))
 
# enem_1998$Q4 <- factor(enem_1998$Q4, levels = c('A','B','C','D','E'),
#                        labels = c('Branco(a).',
#                                   'Pardo(a)',
#                                   'Negro(a).',
#                                   'Amarelo(a)',
#                                   'Indígena.'))
 
# enem_1998$Q5 <- factor(enem_1998$Q5, levels = c('A','B','C','D'),
#                         labels = c('Solteiro(a)',
#                                    'Casado(a) / mora com um(a) companheiro(a)',
#                                    'Separado(a) / divorciado(a) / desquitado(a)',
#                                    'Viúvo(a)'))

# enem_1998$Q6 <- factor(enem_1998$Q6, levels = c('A','B','C','D','E','F','G'),
#                        labels = c('Com o pai e mãe',
#                                   'Só com o pai',
#                                   'Só com a mãe',
#                                   'Com parentes/amigos',
#                                   'Com pai e mãe em nova união',
#                                   'Sozinho(a)',
#                                   'Outra situação'))
 
# enem_1998$Q7 <- factor(enem_1998$Q7, levels = c('A','B','C','D','E','F','G'),
#                         labels = c('Uma pessoa',
#                                    'Duas pessoas',
#                                    'Três pessoas',
#                                    'Quatro pessoas',
#                                    'Cinco pessoas',
#                                    'Seis pessoas',
#                                    'Mais de seis pessoas'))

# enem_1998$Q8 <- factor(enem_1998$Q8, levels = c('A','B','C','D','E'),
#                        labels = c('Não tenho irmãos',
#                                   'Um irmão',
#                                   'Dois irmãos',
#                                   'Três irmãos',
#                                   'Quatro ou mais irmãos'))

# enem_1998$Q9 <- factor(enem_1998$Q9, levels = c('A','B','C','D','E'),
#                          labels = c('Não tenho filhos ',
#                                     'Um filho',
#                                     'Dois filhos ',
#                                     'Três filhos',
#                                     'Quatro ou mais filhos'))
 
# enem_1998$Q10 <- factor(enem_1998$Q10, levels = c('A','B','C','D','E','F','G','H'),
#                         labels = c('Nunca frequentou a escola',
#                                    'Da primeira à quarta série do ensino fundamental (antigo primário)',
#                                    'Da quinta à oitava série do ensino fundamental (antigo ginásio)',
#                                    'Ensino Médio (2º grau) incompleto',
#                                    'Ensino Médio (2º grau) completo',
#                                    'Ensino Superior incompleto',
#                                    'Ensino Superior completo',
#                                    'Pós-graduação'))
 
# enem_1998$Q11 <- factor(enem_1998$Q11, levels = c('A','B','C','D','E','F','G','H','I','J','L'),
#                         labels = c('Trabalhador do setor de produção industrial (com registro ou carteira assinada)',
#                                    'Trabalhador do setor primário/agricultura/pecuária/pesca (com registro ou carteira assinada)',
#                                    'Trabalhador do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)',
#                                    'Funcionário do setor público',
#                                    'Gerente, administrador ou diretor de empresa privada',
#                                    'Trabalha no próprio negócio/empresa ou comércio próprio',
#                                    'Profissional liberal, professor, técnico de nível superior',
#                                    'Trabalhador do setor informal (sem carteira assinada)',
#                                    'Desempregado',
#                                    'Aposentado',
#                                    'Não sei'))

# enem_1998$Q12 <- factor(enem_1998$Q12, levels = c('A','B','C','D','E','F','G','H'),
#                         labels = c('Nunca frequentou a escola',
#                                    'Da primeira à quarta série do ensino fundamental (antigo primário)',
#                                    'Da quinta à oitava série do ensino fundamental (antigo ginásio)',
#                                    'Ensino Médio (2º grau) incompleto',
#                                    'Ensino Médio (2º grau) completo',
#                                    'Ensino Superior incompleto',
#                                    'Ensino Superior completo',
#                                    'Pós-graduação'))

# enem_1998$Q13 <- factor(enem_1998$Q13, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'),
#                         labels = c('Trabalhadora do setor de produção industrial (com registro ou carteira assinada)',
#                                    'Trabalhadora do setor primário/agricultura/pecuária/pesca (com registro ou carteira assinada)',
#                                    'Trabalhadora do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)',
#                                    'Funcionária do setor público',
#                                    'Gerente, administradora ou diretora de empresa privada',
#                                    'Trabalha no próprio negócio/empresa ou comércio próprio',
#                                    'Profissional liberal, professora, técnica de nível superior',
#                                    'Trabalhadora do setor informal (sem carteira assinada)',
#                                    'Desempregada ',
#                                    'Aposentada ',
#                                    'Dona de casa',
#                                    'Não sei'))

# enem_1998$Q14 <- factor(enem_1998$Q14, levels = c('A','B','C','D','E','F'),
#                         labels = c('Menos de 8 anos',
#                                    '8 anos',
#                                    '9 anos',
#                                    '10 anos',
#                                    '11 anos',
#                                    'Mais de 11 anos'))

# enem_1998$Q15 <- factor(enem_1998$Q15, levels = c('A','B','C'),
#                         labels = c('Somente em escola pública',
#                                    'Parte em escola pública e parte em escola particular ',
#                                    'Somente em escola particular'))

# enem_1998$Q16 <- factor(enem_1998$Q16, levels = c('A','B','C','D'),
#                         labels = c('Federal',
#                                    'Estadual ',
#                                    'Municipal',
#                                    'Particular'))

# enem_1998$Q17 <- factor(enem_1998$Q17, levels = c('A','B'), labels = c('Ensino regular','Ensino supletivo'))

# enem_1998$Q18 <- factor(enem_1998$Q18, levels = c('A','B','C','D','E','F','G'),
#                         labels = c('Vou concluí-lo no segundo semestre de 1998 ',
#                                    'Concluí-o no primeiro semestre de 1998 ',
#                                    'Concluí-o em 1997',
#                                    'Concluí-o em 1996',
#                                    'Concluí-o em 1995',
#                                    'Concluí-o entre 1991 e 1994 ',
#                                    'Concluí-o antes de 1991'))

# enem_1998$Q19 <- factor(enem_1998$Q19, levels = c('A','B','C','D','E','F'),
#                         labels = c('Menos de 3 anos ',
#                                    '3 anos',
#                                    '4 anos',
#                                    '5 anos',
#                                    '6 anos',
#                                    'Mais de 6 anos'))

# enem_1998$Q20 <- factor(enem_1998$Q20, levels = c('A','B','C'),
#                         labels = c('Somente no turno diurno',
#                                    'Parte no turno diurno e parte no turno noturno ',
#                                    'Somente no turno noturno'))

# enem_1998$Q21 <- factor(enem_1998$Q21, levels = c('A','B'), labels = c('Somente no turno diurno','Somente no turno noturno'))

# enem_1998$Q22 <- factor(enem_1998$Q22, levels = c('A','B','C','D'),
#                         labels = c('Federal ',
#                                    'Estadual ',
#                                    'Municipal',
#                                    'Particular'))

# enem_1998$Q23 <- factor(enem_1998$Q23, levels = c('A','B','C'),
#                         labels = c('Somente em escola pública',
#                                    'Parte em escola pública e parte em escola particular ',
#                                    'Somente em escola particular'))

# enem_1998$Q24 <- factor(enem_1998$Q24, levels = c('A','B'), labels = c('Ensino regular','Ensino supletivo'))

# enem_1998$Q25 <- factor(enem_1998$Q25, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q26 <- factor(enem_1998$Q26, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q27 <- factor(enem_1998$Q27, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q28 <- factor(enem_1998$Q28, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q29 <- factor(enem_1998$Q29, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q30 <- factor(enem_1998$Q30, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q31 <- factor(enem_1998$Q31, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q32 <- factor(enem_1998$Q32, levels = c('A','B','C'),
#                         labels = c('Sempre',
#                                    'Ás vezes',
#                                    'Não'))

# enem_1998$Q33 <- factor(enem_1998$Q33, levels = c('A','B','C'),
#                         labels = c('Sempre',
#                                    'Ás vezes',
#                                    'Não'))

# enem_1998$Q34 <- factor(enem_1998$Q34, levels = c('A','B','C'),
#                         labels = c('Sempre',
#                                    'Ás vezes',
#                                    'Não'))

# enem_1998$Q35 <- factor(enem_1998$Q35, levels = c('A','B','C'),
#                         labels = c('Sempre',
#                                    'Ás vezes',
#                                    'Não'))

# enem_1998$Q36 <- factor(enem_1998$Q36, levels = c('A','B','C'),
#                         labels = c('Sempre',
#                                    'Ás vezes',
#                                    'Não'))

# enem_1998$Q37 <- factor(enem_1998$Q37, levels = c('A','B','C'),
#                         labels = c('Muito importante',
#                                    'Importante',
#                                    'Nem um pouco importante'))

# enem_1998$Q38 <- factor(enem_1998$Q38, levels = c('A','B','C'),
#                         labels = c('Muito importante',
#                                    'Importante',
#                                    'Nem um pouco importante'))

# enem_1998$Q39 <- factor(enem_1998$Q39, levels = c('A','B','C'),
#                         labels = c('Muito importante',
#                                    'Importante',
#                                    'Nem um pouco importante'))

# enem_1998$Q40 <- factor(enem_1998$Q40, levels = c('A','B','C'),
#                         labels = c('Muito importante',
#                                    'Importante',
#                                    'Nem um pouco importante'))

# enem_1998$Q41 <- factor(enem_1998$Q41, levels = c('A','B','C'),
#                         labels = c('Muito importante',
#                                    'Importante',
#                                    'Nem um pouco importante'))

# enem_1998$Q42 <- factor(enem_1998$Q42, levels = c('A','B','C'),
#                         labels = c('Muito importante',
#                                    'Importante',
#                                    'Nem um pouco importante'))

# enem_1998$Q43 <- factor(enem_1998$Q43, levels = c('A','B','C'),
#                         labels = c('Muito importante',
#                                    'Importante',
#                                    'Nem um pouco importante'))

# enem_1998$Q44 <- factor(enem_1998$Q44, levels = c('A','B','C','D','E'),
#                         labels = c('Não sei',
#                                    'Já consegui',
#                                    'Boa oportunidade ',
#                                    'Pouca oportunidade ',
#                                    'Nenhuma oportunidade'))

# enem_1998$Q45 <- factor(enem_1998$Q45, levels = c('A','B','C','D','E'),
#                         labels = c('Não sei',
#                                    'Já consegui',
#                                    'Boa oportunidade ',
#                                    'Pouca oportunidade ',
#                                    'Nenhuma oportunidade'))

# enem_1998$Q46 <- factor(enem_1998$Q46, levels = c('A','B','C','D','E'),
#                         labels = c('Não sei',
#                                    'Já consegui',
#                                    'Boa oportunidade ',
#                                    'Pouca oportunidade ',
#                                    'Nenhuma oportunidade'))

# enem_1998$Q47 <- factor(enem_1998$Q47, levels = c('A','B','C','D','E'),
#                         labels = c('Não sei',
#                                    'Já consegui',
#                                    'Boa oportunidade ',
#                                    'Pouca oportunidade ',
#                                    'Nenhuma oportunidade'))

# enem_1998$Q48 <- factor(enem_1998$Q48, levels = c('A','B','C','D','E'),
#                         labels = c('Não sei',
#                                    'Já consegui',
#                                    'Boa oportunidade ',
#                                    'Pouca oportunidade ',
#                                    'Nenhuma oportunidade'))

# enem_1998$Q49 <- factor(enem_1998$Q49, levels = c('A','B','C','D','E'),
#                         labels = c('Não sei',
#                                    'Já consegui',
#                                    'Boa oportunidade ',
#                                    'Pouca oportunidade ',
#                                    'Nenhuma oportunidade'))

# enem_1998$Q50 <- factor(enem_1998$Q50, levels = c('A','B','C','D'),
#                         labels = c('Não ',
#                                    'Preferencialmente não ',
#                                    'Talvez',
#                                    'Certamente'))

# enem_1998$Q51 <- factor(enem_1998$Q51, levels = c('A','B','C'),
#                         labels = c('Sim, na escola obtive algum conhecimento de informática e uso de computadores',
#                                    'Sim, mas obtive os conhecimentos de informática fora da escola regular',
#                                    'Não, nunca tive acesso ao conhecimento de computadores e informática'))

# enem_1998$Q52 <- factor(enem_1998$Q52, levels = c('A','B','C'),
#                         labels = c('Sim, na escola obtive algum conhecimento de informática e uso de computadores',
#                                    'Sim, mas obtive os conhecimentos de informática fora da escola regular',
#                                    'Não, nunca tive acesso ao conhecimento de computadores e informática'))

# enem_1998$Q53 <- factor(enem_1998$Q53, levels = c('A','B','C','D'),
#                         labels = c('Não pretendo',
#                                    'Imediatamente após estar formado',
#                                    'No decorrer dos próximos 1 ou 2 anos ',
#                                    'Num futuro mais distante'))

# enem_1998$Q54 <- factor(enem_1998$Q54, levels = c('A','B','C','D'),
#                         labels = c('Não pretendo',
#                                    'Imediatamente após estar formado',
#                                    'No decorrer dos próximos 1 ou 2 anos ',
#                                    'Num futuro mais distante'))

# enem_1998$Q55 <- factor(enem_1998$Q55, levels = c('A','B','C','D'),
#                         labels = c('Não pretendo',
#                                    'Imediatamente após estar formado',
#                                    'No decorrer dos próximos 1 ou 2 anos ',
#                                    'Num futuro mais distante'))

# enem_1998$Q56 <- factor(enem_1998$Q56, levels = c('A','B','C','D'),
#                         labels = c('Não pretendo',
#                                    'Imediatamente após estar formado',
#                                    'No decorrer dos próximos 1 ou 2 anos ',
#                                    'Num futuro mais distante'))

# enem_1998$Q57 <- factor(enem_1998$Q57, levels = c('A','B','C','D'),
#                         labels = c('Não pretendo',
#                                    'Imediatamente após estar formado',
#                                    'No decorrer dos próximos 1 ou 2 anos ',
#                                    'Num futuro mais distante'))

# enem_1998$Q58 <- factor(enem_1998$Q58, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Conheço razoavelmente ',
#                                    'Conheço pouco',
#                                    'Não conheço nada sobre essa atividade'))

# enem_1998$Q59 <- factor(enem_1998$Q59, levels = c('A','B','C','D'),
#                         labels = c('Sim',
#                                    'Adquiri-as razoavelmente ',
#                                    'Adquiri algumas',
#                                    'Não adquiri nenhuma habilidade ou técnica necessárias a essa atividade'))

# enem_1998$Q60 <- factor(enem_1998$Q60, levels = c('A','B','C','D'),
#                         labels = c('Muito importante ',
#                                    'Importante  ',
#                                    'Pouco importante',
#                                    'Nem um pouco importante'))

# enem_1998$Q61 <- factor(enem_1998$Q61, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q62 <- factor(enem_1998$Q62, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q63 <- factor(enem_1998$Q63, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q64 <- factor(enem_1998$Q64, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q65 <- factor(enem_1998$Q65, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q66 <- factor(enem_1998$Q66, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q67 <- factor(enem_1998$Q67, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q68 <- factor(enem_1998$Q68, levels = c('A','B','C'),
#                         labels = c('Sim, amigos próximos.',
#                                    'Sim, amigos distantes.',
#                                    'Não.'))

# enem_1998$Q69 <- factor(enem_1998$Q69, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Sim, mais ou menos ',
#                                    'Só um pouco',
#                                    'Não, não me interesso'))

# enem_1998$Q70 <- factor(enem_1998$Q70, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Sim, mais ou menos ',
#                                    'Só um pouco',
#                                    'Não, não me interesso'))

# enem_1998$Q71 <- factor(enem_1998$Q71, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Sim, mais ou menos ',
#                                    'Só um pouco',
#                                    'Não, não me interesso'))

# enem_1998$Q72 <- factor(enem_1998$Q72, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Sim, mais ou menos ',
#                                    'Só um pouco',
#                                    'Não, não me interesso'))

# enem_1998$Q73 <- factor(enem_1998$Q73, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Sim, mais ou menos ',
#                                    'Só um pouco',
#                                    'Não, não me interesso'))

# enem_1998$Q74 <- factor(enem_1998$Q74, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Sim, mais ou menos ',
#                                    'Só um pouco',
#                                    'Não, não me interesso'))

# enem_1998$Q75 <- factor(enem_1998$Q75, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Sim, mais ou menos ',
#                                    'Só um pouco',
#                                    'Não, não me interesso'))

# enem_1998$Q76 <- factor(enem_1998$Q76, levels = c('A','B','C','D'),
#                         labels = c('Sim, muito',
#                                    'Sim, mais ou menos ',
#                                    'Só um pouco',
#                                    'Não, não me interesso'))

# enem_1998$Q77 <- factor(enem_1998$Q77, levels = c('A','B','C'),
#                         labels = c('Sim, sempre ',
#                                    'Sim, às vezes',
#                                    'Não'))

# enem_1998$Q78 <- factor(enem_1998$Q78, levels = c('A','B','C'),
#                         labels = c('Sim, sempre ',
#                                    'Sim, às vezes',
#                                    'Não'))

# enem_1998$Q79 <- factor(enem_1998$Q79, levels = c('A','B','C'),
#                         labels = c('Sim, sempre ',
#                                    'Sim, às vezes',
#                                    'Não'))

# enem_1998$Q80 <- factor(enem_1998$Q80, levels = c('A','B','C'),
#                         labels = c('Sim, sempre ',
#                                    'Sim, às vezes',
#                                    'Não'))

# enem_1998$Q81 <- factor(enem_1998$Q81, levels = c('A','B','C'),
#                         labels = c('Sim, sempre ',
#                                    'Sim, às vezes',
#                                    'Não'))

# enem_1998$Q82 <- factor(enem_1998$Q82, levels = c('A','B','C'),
#                         labels = c('Sim, sempre ',
#                                    'Sim, às vezes',
#                                    'Não'))

# enem_1998$Q83 <- factor(enem_1998$Q83, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q84 <- factor(enem_1998$Q84, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q85 <- factor(enem_1998$Q85, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q86 <- factor(enem_1998$Q86, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q87 <- factor(enem_1998$Q87, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q88 <- factor(enem_1998$Q88, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q89 <- factor(enem_1998$Q89, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q90 <- factor(enem_1998$Q90, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q91 <- factor(enem_1998$Q91, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q92 <- factor(enem_1998$Q92, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q93 <- factor(enem_1998$Q93, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q94 <- factor(enem_1998$Q94, levels = c('A','B','C','D','E','F','G','H','I','J','L','M'), labels = c('1','2','3','4','5','6','7','8','9','10','11','12'))

# enem_1998$Q95 <- factor(enem_1998$Q95, levels = c('A','B','C','D','E'),
#                        labels = c('Sim, trabalhei durante todo o curso (até 20 horas semanais)',
#                                   'Sim, trabalhei durante todo o curso (de 21 a 30 horas semanais)',
#                                   'Sim, trabalhei durante todo o curso (de 31 a 40 horas semanais)',
#                                   'Sim, mas trabalhei apenas durante alguns períodos',
#                                   'Não trabalhei durante esse tempo'))

# enem_1998$Q96 <- factor(enem_1998$Q96, levels = c('A','B','C','D'),
#                        labels = c('Antes dos 14 anos',
#                                   'Entre 14 e 16 anos',
#                                   'Entre 17 e 18 anos',
#                                   'Após os 18 anos'))

# enem_1998$Q97 <- factor(enem_1998$Q97, levels = c('A','B'), labels = c('Sim','Não, estou desempregado/estou procurando emprego'))

# enem_1998$Q98 <- factor(enem_1998$Q98, levels = c('A','B','C','D','E','F','G'),
#                        labels = c('Até 1 salário mínimo (até R$130,00)',
#                                   'Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)',
#                                   'De 2 a 5 salários mínimos (de R$261,00 a R$650,00)',
#                                   'De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)',
#                                   'De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)',
#                                   'De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)',
#                                   'Mais de 50 salários mínimos (mais de R$6.500,00)'))

# enem_1998$Q99 <- factor(enem_1998$Q99, levels = c('A','B','C'),
#                        labels = c('Sim, estou estudando no momento atual',
#                                   'Sim, mas não estou estudando no momento atual',
#                                   'Não.'))

# enem_1998$Q100 <- factor(enem_1998$Q100, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q101 <- factor(enem_1998$Q101, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q102 <- factor(enem_1998$Q102, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q103 <- factor(enem_1998$Q103, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q104 <- factor(enem_1998$Q104, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q105 <- factor(enem_1998$Q105, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q106 <- factor(enem_1998$Q106, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q107 <- factor(enem_1998$Q107, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q108 <- factor(enem_1998$Q108, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q109 <- factor(enem_1998$Q109, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q110 <- factor(enem_1998$Q110, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q111 <- factor(enem_1998$Q111, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q112 <- factor(enem_1998$Q112, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q113 <- factor(enem_1998$Q113, levels = c('A','B'), labels = c('Sim','Não'))

# enem_1998$Q114 <- factor(enem_1998$Q114, levels = c('A','B','C','D','E','F','G','H'),
#                        labels = c('Trabalhador do setor de produção industrial',
#                                   'Trabalhador do setor primário/agricultura/pecuária/pesca',
#                                   'Trabalhador do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)',
#                                   'Funcionário do setor público',
#                                   'Gerente, administrador ou diretor de empresa privada',
#                                   'Trabalha no próprio negócio/empresa ou comércio próprio',
#                                   'Profissional liberal, professor, técnico de nível superior',
#                                   'Trabalhador do setor informal (sem carteira assinada)'))

# enem_1998$Q115 <- factor(enem_1998$Q115, levels = c('A','B','C'),
#                        labels = c('Sim',
#                                   'Não, porque não consegui trabalho na minha profissão',
#                                   'Não me preparei para um trabalho em específico/minha formação foi geral'))

# enem_1998$Q116 <- factor(enem_1998$Q116, levels = c('A','B','C','D'),
#                        labels = c('Menos de 1 ano',
#                                   'Entre 1 e 2 anos',
#                                   'Entre 2 e 4 anos',
#                                   'Mais de 4 anos'))

# enem_1998$Q117 <- factor(enem_1998$Q117, levels = c('A','B','C','D','E','F','G'),
#                        labels = c('Até 1 salário mínimo (até R$130,00)',
# 								  'Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)',
# 								  'De 2 a 5 salários mínimos (de R$261,00 a R$650,00)',
# 								  'De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)',
# 								  'De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)',
# 								  'De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)',
# 								  'Mais de 50 salários mínimos (mais de R$6.500,00)'))

# enem_1998$Q118 <- factor(enem_1998$Q118, levels = c('A','B','C','D'),
#                        labels = c('Não preciso trabalhar',
#                                   'Estava trabalhando, mas estou desempregado(a)',
#                                   'Não consigo encontrar um trabalho na minha ocupação',
#                                   'Estou estudando'))

# enem_1998$Q119 <- factor(enem_1998$Q119, levels = c('A','B','C','D','E'),
#                        labels = c('Sim, com todo o meu rendimento',
#                                   'Sim, com parte do meu rendimento',
#                                   'Não, tenho família, mas meus rendimentos são para meu próprio uso',
#                                   'Não tenho rendimentos',
#                                   'Não tenho família/meus rendimentos são só para meu próprio uso'))

# enem_1998$Q120 <- factor(enem_1998$Q120, levels = c('A','B','C','D','E','F','G','H'),
#                        labels = c('Até 1 salário mínimo (até R$130,00)',
#                                   'Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)',
#                                   'De 2 a 5 salários mínimos (de R$261,00 a R$650,00)',
#                                   'De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)',
#                                   'De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)',
#                                   'De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)',
#                                   'Mais de 50 salários mínimos (mais de R$6.500,00)',
#                                   'Não sabe'))

# enem_1998$Q121 <- factor(enem_1998$Q121, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q122 <- factor(enem_1998$Q122, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q123 <- factor(enem_1998$Q123, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q124 <- factor(enem_1998$Q124, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q125 <- factor(enem_1998$Q125, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q126 <- factor(enem_1998$Q126, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q127 <- factor(enem_1998$Q127, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q128 <- factor(enem_1998$Q128, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q129 <- factor(enem_1998$Q129, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q130 <- factor(enem_1998$Q130, levels = c('A','B','C','D'),
#                        labels = c('Não tem',
#                                   '1',
#                                   '2',
#                                   '3 ou +'))

# enem_1998$Q131 <- factor(enem_1998$Q131, levels = c('A','B','C'),
#                        labels = c('Sim',
#                                   'Não',
#                                   'Não, mas pretendo ter num futuro próximo'))

# enem_1998$Q132 <- factor(enem_1998$Q132, levels = c('A','B','C'),
#                        labels = c('Sim',
#                                   'Não',
#                                   'Não, mas pretendo ter num futuro próximo'))

# enem_1998$Q133 <- factor(enem_1998$Q133, levels = c('A','B','C'),
#                        labels = c('Sim',
#                                   'Não',
#                                   'Não, mas pretendo ter num futuro próximo'))

# enem_1998$Q134 <- factor(enem_1998$Q134, levels = c('A','B','C'),
#                        labels = c('Sim',
#                                   'Não',
#                                   'Não, mas pretendo ter num futuro próximo'))

# enem_1998$Q135 <- factor(enem_1998$Q135, levels = c('A','B','C'),
#                        labels = c('Sim',
#                                   'Não',
#                                   'Não, mas pretendo ter num futuro próximo'))

# enem_1998$Q136 <- factor(enem_1998$Q136, levels = c('A','B','C'),
#                        labels = c('Sim',
#                                   'Não',
#                                   'Não, mas pretendo ter num futuro próximo'))

# enem_1998$Q137 <- factor(enem_1998$Q137, levels = c('A','B','C'),
#                        labels = c('Sim',
#                                   'Não',
#                                   'Não, mas pretendo ter num futuro próximo'))