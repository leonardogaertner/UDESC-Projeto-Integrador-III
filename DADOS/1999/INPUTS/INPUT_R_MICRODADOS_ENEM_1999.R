#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_1999
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_1999
#--------------------------------------------------------

#--------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este 
#     programa e o arquivo MICRODADOS_ENEM_1999.csv no
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
# Ex. Windows setwd("C:\temp")
#     Linux   setwd("\home")
#--------------------
setwd("C:/")  

#---------------
# Alocação de memória
#---------------
memory.limit(1000000)

#------------------
# Carga dos microdados

enem_1999 <- data.table::fread(input='microdados_enem_1999.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)

#enem_1999$TP_FAIXA_ETARIA <- factor(enem_1999$TP_FAIXA_ETARIA, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
#						   labels = c('Menor de 17 anos',
#									  '17 anos',
#									  '18 anos',
#									  '19 anos',
#									  '20 anos',
#									  '21 anos',
#									  '22 anos',
#									  '23 anos',
#									  '24 anos',
#									  '25 anos',
#									  'Entre 26 e 30 anos',
#									  'Entre 31 e 35 anos',
#									  'Entre 36 e 40 anos',
#									  'Entre 41 e 45 anos',
#									  'Entre 46 e 50 anos',
#									  'Entre 51 e 55 anos',
#									  'Entre 56 e 60 anos',
#									  'Entre 61 e 65 anos',
#									  'Entre 66 e 70 anos',
#									  'Maior de 70 anos'))

#enem_1999$TP_SEXO <- factor(enem_1999$TP_SEXO, levels = c('M','F'), labels = c('Masculino','Feminino'))

#enem_1999$TP_ST_CONCLUSAO <- factor(enem_1999$TP_ST_CONCLUSAO, levels = c(0,1,2,3,4),
#                                    labels = c('Nenhum dos anteriores',
#                                               'Já concluiu',
#                                               'Concluirá em 1999',
#                                               'Concluirá após 1999',
#                                               'Não concluí e não estou cursando o Ensino Médio'))

#enem_1999$TP_PRESENCA <- factor(enem_1999$TP_PRESENCA, levels = c(0,1), labels = c('Faltou à prova','Presente à prova'))

#enem_1999$CO_PROVA <- factor(enem_1999$CO_PROVA, levels = c('A','B','R','V'),
#							  labels = c('Amarela',
#                                         'Branca',
#                                         'Rosa',
#                                         'Verde'))

#enem_1999$TP_STATUS_REDACAO <- factor(enem_1999$TP_STATUS_REDACAO, levels = c('B','F','N','P'),
#                                      labels = c('Entregou a redação em branco',
#                                                 'Faltou à prova',
#                                                 'Redação anulada',
#                                                 'Presente à prova'))

#enem_1999$IN_QSE <- factor(enem_1999$IN_QSE, levels = c(1,0), labels = c('Respondeu o questionário socioecômico','Não respondeu o questionário socioecômico'))

#enem_1999$Q1 <- factor(enem_1999$Q1, levels = c('A','B'), labels = c('Feminino','Masculino'))

#enem_1999$Q2 <- factor(enem_1999$Q2, levels = c('A','B','C','D','E','F','G','H'),
#                       labels = c('Após 1981',
#                                  '1981',
#                                  '1980',
#                                  '1979',
#                                  '1978',
#                                  '1977',
#                                  'Entre 1973 e 1976',
#                                  'Antes de 1973'))

#enem_1999$Q3 <- factor(enem_1999$Q3, levels = c('A','B','C','D','E'),
#                        labels = c('Branco(a).',
#                                   'Pardo(a) / mulato(a). ',
#                                   'Negro(a).',
#                                   'Amarelo(a) (De origem asiática)',
#                                   'Indígena.'))

#enem_1999$Q4 <- factor(enem_1999$Q4, levels = c('A','B','C','D'),
#                        labels = c('Solteiro(a)',
#                                   'Casado(a) / mora com um(a) companheiro(a)',
#                                   'Separado(a) / divorciado(a) / desquitado(a)',
#                                   'Viúvo(a)'))

#enem_1999$Q5 <- factor(enem_1999$Q5, levels = c('A','B','C','D','E'),
#                        labels = c('Em casa ou apartamento, com sua família ',
#                                   'Em casa ou apartamento, sozinho(a)',
#                                   'Em quarto ou cômodo alugado, sozinho(a)',
#                                   'Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc',
#                                   'Outra situação'))

#enem_1999$Q6 <- factor(enem_1999$Q6, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q7 <- factor(enem_1999$Q7, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q8 <- factor(enem_1999$Q8, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q9 <- factor(enem_1999$Q9, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q10 <- factor(enem_1999$Q10, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q11 <- factor(enem_1999$Q11, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q12 <- factor(enem_1999$Q12, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q13 <- factor(enem_1999$Q13, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q14 <- factor(enem_1999$Q14, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q15 <- factor(enem_1999$Q15, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q16 <- factor(enem_1999$Q16, levels = c('A','B','C','D','E','F','G'),
#                         labels = c('Moro sozinho',
#                                    'Duas pessoas ',
#                                    'Três pessoas ',
#                                    'Quatro pessoas ',
#                                    'Cinco pessoas ',
#                                    'Seis pessoas',
#                                    'Mais de seis pessoas.'))

#enem_1999$Q17 <- factor(enem_1999$Q17, levels = c('A','B','C','D','E'),
#                         labels = c('Não tenho filhos ',
#                                    'Um filho',
#                                    'Dois filhos ',
#                                    'Três filhos',
#                                    'Quatro ou mais filhos'))

#enem_1999$Q18 <- factor(enem_1999$Q18, levels = c('A','B','C','D','E','F','G','H','I'),
#                         labels = c('Não estudou',
#                                    'Da primeira à quarta série do ensino fundamental (antigo primário)',
#                                    'Da quinta à oitava série do ensino fundamental (antigo ginásio)',
#                                    'Ensino Médio (2º grau) incompleto ',
#                                    'Ensino Médio (2º grau) completo ',
#                                    'Ensino Superior incompleto ',
#                                    'Ensino Superior completo',
#                                    'Pós-graduação (mestrado, especialização, doutorado)',
#                                    'Não sei'))

#enem_1999$Q19 <- factor(enem_1999$Q19, levels = c('A','B','C','D','E','F','G','H','I'),
#                         labels = c('Não estudou',
#                                    'Da primeira à quarta série do ensino fundamental (antigo primário)',
#                                    'Da quinta à oitava série do ensino fundamental (antigo ginásio)',
#                                    'Ensino Médio (2º grau) incompleto ',
#                                    'Ensino Médio (2º grau) completo ',
#                                    'Ensino Superior incompleto ',
#                                    'Ensino Superior completo',
#                                    'Pós-graduação (mestrado, especialização, doutorado)',
#                                    'Não sei'))

#enem_1999$Q20 <- factor(enem_1999$Q20, levels = c('A','B','C','D','E','F','G','H','I','J'),
#                        labels = c('Na agricultura, no campo, em fazenda, na pesca',
#                                   'Na indústria',
#                                   'No comércio, bancos, transporte ou outros serviços',
#                                   'Como empregado em casa de família',
#                                   'Como funcionário do governo federal, do estado ou município, ou militar',
#                                   'Profissional liberal, professor ou técnico de nível superior',
#                                   'No lar',
#                                   'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa',
#                                   'Não trabalha',
#                                   'Não sei'))

#enem_1999$Q21 <- factor(enem_1999$Q21, levels = c('A','B','C','D','E','F','G','H','I','J','K','L'),
#                        labels = c('Gerente, administrador ou diretor de empresa privada',
#                                   'Funcionário público (federal, estadual, municipal), com funções de direção',
#                                   'Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando',
#                                   'Empregado no setor privado, com carteira assinada',
#                                   'Funcionário público (federal, estadual ou municipal), sem função de direção',
#                                   'Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando',
#                                   'Trabalho temporário, informal, sem carteira assinada ',
#                                   'Trabalha por conta própria',
#                                   'Desempregado',
#                                   'Aposentado ',
#                                   'Não trabalha',
#                                   'Outra situação'))

#enem_1999$Q22 <- factor(enem_1999$Q22, levels = c('A','B','C','D','E','F','G','H','I','J'),
#                        labels = c('Na agricultura, no campo, em fazenda, na pesca ',
#                                   'Na indústria',
#                                   'No comércio, bancos, transporte e outros serviços',
#                                   'Como empregada em casa de família',
#                                   'Como funcionária do governo federal, do estado ou município, ou militar',
#                                   'Como profissional liberal, professor ou técnico de nível superior',
#                                   'No lar',
#                                   'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa',
#                                   'Não trabalha',
#                                   'Não sei'))

#enem_1999$Q23 <- factor(enem_1999$Q23, levels = c('A','B','C','D','E','F','G','H','I','J','K','L'),
#                        labels = c('Gerente, administrador ou diretor de empresa privada',
#                                   'Funcionário público (federal, estadual ou municipal), com funções de direção',
#                                   'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando',
#                                   'Empregado no setor privado, com carteira assinada',
#                                   'Funcionário público (federal, estadual ou municipal), sem função de direção',
#                                   'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando',
#                                   'Trabalho temporário, informal, sem carteira assinada ',
#                                   'Trabalho por conta própria',
#                                   'Desempregado ',
#                                   'Aposentado ',
#                                   'Não trabalha',
#                                   'Outra situação'))

#enem_1999$Q24 <- factor(enem_1999$Q24, levels = c('A','B','C','D','E','F','G','H'),
#                        labels = c('Até 1 salário mínimo (até R$ 136,00)',
#                                   'De 1 a 2 salários mínimos (R$ 137,00 a R$ 272,00)',
#                                   'De 2 a 5 salários mínimos (R$ 273,00 a R$ 680,00)',
#                                   'De 5 a 10 salários mínimos (R$ 681,00 a R$ 1.360,00)',
#                                   'De 10 a 30 salários mínimos (R$ 1.361,00 a R$ 4.080,00)',
#                                   'De 30 a 50 salários mínimos (R$ 4.081,00 a R$ 6.800,00)',
#                                   'Mais de 50 salários mínimos (mais de R$ 6.800,00)',
#                                   'Nenhuma renda'))

#enem_1999$Q25 <- factor(enem_1999$Q25, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q26 <- factor(enem_1999$Q26, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q27 <- factor(enem_1999$Q27, levels = c('A','B','C','D'),
#                          labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q28 <- factor(enem_1999$Q28, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q29 <- factor(enem_1999$Q29, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q30 <- factor(enem_1999$Q30, levels = c('A','B','C','D'), 
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q31 <- factor(enem_1999$Q31, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q32 <- factor(enem_1999$Q32, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q33 <- factor(enem_1999$Q33, levels = c('A','B','C','D'),
#                          labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))

#enem_1999$Q34 <- factor(enem_1999$Q34, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q35 <- factor(enem_1999$Q35, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q36 <- factor(enem_1999$Q36, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q37 <- factor(enem_1999$Q37, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q38 <- factor(enem_1999$Q38, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q39 <- factor(enem_1999$Q39, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q40 <- factor(enem_1999$Q40, levels = c("A","B","C"),
#                        labels = c('Sim',
#                                   'Nunca trabalhou',
#                                   'Nunca trabalhou, mas está procurando trabalho'))

#enem_1999$Q41 <- factor(enem_1999$Q41, levels = c('A','B','C','D'),
#						 labels = c('Sim, todo o tempo',
#                                    'Sim, pelo menos durante um ano ',
#                                    'Sim, mas só eventualmente',
#                                    'Não'))

#enem_1999$Q42 <- factor(enem_1999$Q42, levels = c('A','B','C','D'),
#                        labels = c('Sem jornada fixa, até 10 horas semanais',
#                                   'De 11 a 20 horas semanais',
#                                   'De 21 a 30 horas semanais',
#                                   'De 31 a 40 horas semanais'))

#enem_1999$Q43 <- factor(enem_1999$Q43, levels = c('A','B','C'),
#                        labels = c('Para ajudar meus pais ',
#                                   'Para meu próprio sustento ',
#                                   'Para as duas finalidades'))

#enem_1999$Q44 <- factor(enem_1999$Q44, levels = c('A','B','C','D'),
#                         labels = c('Antes dos 14 anos ',
#                                    'Entre 14 e 16 anos',
#                                    'Entre 17 e 18 anos',
#                                    'Após 18 anos'))

#enem_1999$Q45 <- factor(enem_1999$Q45, levels = c('A','B','C','D','E','F','G','H'),
#                        labels = c('Até 1 salário mínimo (até R$ 136,00)',
#                                   'De 1 a 2 salários mínimos (R$ 137,00 a R$ 272,00)',
#                                   'De 2 a 5 salários mínimos (R$ 273,00 a R$ 680,00)',
#                                   'De 5 a 10 salários mínimos (R$ 681,00 a R$ 1.360,00)',
#                                   'De 10 a 30 salários mínimos (R$ 1.361,00 a R$ 4.080,00)',
#                                   'De 30 a 50 salários mínimos (R$ 4.081,00 a R$ 6.800,00)',
#                                   'Mais de 50 salários mínimos (mais de R$ 6.800,00)',
#                                   'Não estou trabalhando'))

#enem_1999$Q46 <- factor(enem_1999$Q46, levels = c('A','B','C'),
#                        labels = c('Para ajudar meus pais ',
#                                   'Para meu próprio sustento ',
#                                   'Para as duas finalidades'))

#enem_1999$Q47 <- factor(enem_1999$Q47, levels = c('A','B','C','D','E','F','G','H','I'),
#                         labels = c('Na agricultura (campo, fazenda, pesca). ',
#                                    'Na indústria.',
#                                    'No comércio, banco, transporte ou outros serviços.',
#                                    'Como empregado(a) em casa de família.',
#                                    'Como funcionário(a) do governo federal, do estado ou do município, ou militar.',
#                                    'Como profissional liberal, professor(a) ou técnico(a) de nível superior.',
#                                    'No lar.',
#                                    'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa',
#                                    'Não trabalha'))

#enem_1999$Q48 <- factor(enem_1999$Q48, levels = c('A','B','C','D','E','F','G','H','I','J','K','L'),
#                        labels = c('Gerente, administrador(a) ou diretor(a) de empresa privada.',
#                                   'Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção.',
#                                   'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando',
#                                   'Empregado(a) no setor privado, com carteira assinada',
#                                   'Funcionário(a) público(a) (federal, estadual ou municipal), sem função de direção.',
#                                   'Trabalho temporário, informal, sem carteira assinada',
#                                   'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando.',
#                                   'Trabalho por conta própria ',
#                                   'Desempregado(a) ',
#                                   'Aposentado(a)',
#                                   'Não trabalha',
#                                   'Outra situação'))

#enem_1999$Q49 <- factor(enem_1999$Q49, levels = c('A','B','C'),
#                         labels = c('Sim',
#                                    'Não, porque não consegui trabalho na minha profissão',
#                                    'Não me preparei para um trabalho em específico/minha formação foi geral'))

#enem_1999$Q50 <- factor(enem_1999$Q50, levels = c('A','B','C','D'),
#                         labels = c('Menos de 1 ano ',
#                                     'Entre 1 e 2 anos',
#                                     'Entre 2 e 4 anos',
#                                     'Mais de 4 anos'))

#enem_1999$Q51 <- factor(enem_1999$Q51, levels = c('A','B','C','D','E','F'),
#                         labels = c('Menos de 8 anos ',
#                                    '8 anos',
#                                    '9 anos',
#                                    '10 anos',
#                                    '11 anos',
#                                    'Mais de 11 anos'))

#enem_1999$Q52 <- factor(enem_1999$Q52, levels = c('A','B','C'),
#                         labels = c('Somente em escola pública',
#                                    'Parte em escola pública e parte em escola particular ',
#                                    'Somente em escola particular'))

#enem_1999$Q53 <- factor(enem_1999$Q53, levels = c('A','B','C','D','E','F','G'),
#                        labels = c('Vou concluí-lo no segundo semestre de 1999 ',
#                                   'No primeiro semestre de 1999',
#                                   '1998',
#                                   '1997',
#                                   '1996',
#                                   'Entre 1992 e1995',
#                                   'Antes de 1992'))

#enem_1999$Q54 <- factor(enem_1999$Q54, levels = c('A','B','C','D','E','F'),
#                         labels = c('Menos de 3 anos ',
#                                    '3 anos',
#                                    '4 anos',
#                                    '5 anos',
#                                    '6 anos',
#                                    'Mais de 6 anos'))

#enem_1999$Q55 <- factor(enem_1999$Q55, levels = c('A','B','C'),
#                           labels = c('Somente no turno diurno',
#                                      'Parte no turno diurno e parte no turno noturno ',
#                                      'Somente no turno noturno'))

#enem_1999$Q56 <- factor(enem_1999$Q56, levels = c('A','B','C'),
#                           labels = c('Somente em escola pública',
#                                      'Parte em escola pública e parte em escola particular ',
#                                      'Somente em escola particular'))

#enem_1999$Q57 <- factor(enem_1999$Q57, levels = c('A','B'), labels = c('Ensino regular','Ensino supletivo'))

#enem_1999$Q58 <- factor(enem_1999$Q58, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q59 <- factor(enem_1999$Q59, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q60 <- factor(enem_1999$Q60, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q61 <- factor(enem_1999$Q61, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q62 <- factor(enem_1999$Q62, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q63 <- factor(enem_1999$Q63, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q64 <- factor(enem_1999$Q64, levels = c('A','B','C','D'),
#                        labels = c('Sim',
#                                   'Mais ou menos ',
#                                   'Pouco',
#                                   'Não'))

#enem_1999$Q65 <- factor(enem_1999$Q65, levels = c('A','B','C'),
#                         labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                    'Eventualmente',
#                                    'Nunca'))

#enem_1999$Q66 <- factor(enem_1999$Q66, levels = c('A','B','C'),
#                        labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                   'De vez em quando',
#                                   'Nunca'))

#enem_1999$Q67 <- factor(enem_1999$Q67, levels = c('A','B','C'),
#                        labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                   'De vez em quando',
#                                   'Nunca'))

#enem_1999$Q68 <- factor(enem_1999$Q68, levels = c('A','B','C'),
#                        labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                   'De vez em quando',
#                                   'Nunca'))

#enem_1999$Q69 <- factor(enem_1999$Q69, levels = c('A','B','C'),
#                        labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                   'De vez em quando',
#                                   'Nunca'))

# enem_1999$Q70 <- factor(enem_1999$Q70, levels = c('A','B','C','D','E'), 
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))

# enem_1999$Q71 <- factor(enem_1999$Q71, levels = c('A','B','C','D','E'), 
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))

#enem_1999$Q72 <- factor(enem_1999$Q72, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))

#enem_1999$Q73 <- factor(enem_1999$Q73, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))

#enem_1999$Q74 <- factor(enem_1999$Q74, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))

#enem_1999$Q75 <- factor(enem_1999$Q75, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))

#enem_1999$Q76 <- factor(enem_1999$Q76, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))

#enem_1999$Q77 <- factor(enem_1999$Q77, levels = c('A','B','C'),
#                        labels = c('Com certeza',
#                                   'Provavelmente',
#                                   'Não'))

#enem_1999$Q78 <- factor(enem_1999$Q78, levels = c('A','B','C'),
#                        labels = c('Com certeza',
#                                   'Provavelmente',
#                                   'Não'))

#enem_1999$Q79 <- factor(enem_1999$Q79, levels = c('A','B','C'),
#                        labels = c('Com certeza',
#                                   'Provavelmente',
#                                   'Não'))

#enem_1999$Q80 <- factor(enem_1999$Q80, levels = c('A','B','C'),
#                        labels = c('Com certeza',
#                                   'Provavelmente',
#                                   'Não'))

#enem_1999$Q81 <- factor(enem_1999$Q81, levels = c('A','B','C'),
#                        labels = c('Com certeza',
#                                   'Provavelmente',
#                                   'Não'))

#enem_1999$Q82 <- factor(enem_1999$Q82, levels = c('A','B','C'),
#                        labels = c('Com certeza',
#                                   'Provavelmente',
#                                   'Não'))

#enem_1999$Q83 <- factor(enem_1999$Q83, levels = c('A','B','C'),
#                        labels = c('Com certeza',
#                                   'Provavelmente',
#                                   'Não'))

#enem_1999$Q84 <- factor(enem_1999$Q84, levels = c('A','B','C'),
#                        labels = c('Com certeza',
#                                   'Provavelmente',
#                                   'Não'))

#enem_1999$Q85 <- factor(enem_1999$Q85, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q86 <- factor(enem_1999$Q86, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q87 <- factor(enem_1999$Q87, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q88 <- factor(enem_1999$Q88, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q89 <- factor(enem_1999$Q89, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q90 <- factor(enem_1999$Q90, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q91 <- factor(enem_1999$Q91, levels = c('A','B','C'), 
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q92 <- factor(enem_1999$Q92, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q93 <- factor(enem_1999$Q93, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q94 <- factor(enem_1999$Q94, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q95 <- factor(enem_1999$Q95, levels = c('A','B','C'),
#                        labels = c('Muito ',
#                                   'Um pouco',
#                                   'Não me interesso'))

#enem_1999$Q96 <- factor(enem_1999$Q96, levels = c('A','B','C'),
#                         labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))

#enem_1999$Q97 <- factor(enem_1999$Q97, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))

#enem_1999$Q98 <- factor(enem_1999$Q98, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))

#enem_1999$Q99 <- factor(enem_1999$Q99, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))

#enem_1999$Q100 <- factor(enem_1999$Q100, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))

#enem_1999$Q101 <- factor(enem_1999$Q101, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))

#enem_1999$Q102 <- factor(enem_1999$Q102, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q103 <- factor(enem_1999$Q103, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q104 <- factor(enem_1999$Q104, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q105 <- factor(enem_1999$Q105, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q106 <- factor(enem_1999$Q106, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q107 <- factor(enem_1999$Q107, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q108 <- factor(enem_1999$Q108, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q109 <- factor(enem_1999$Q109, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q110 <- factor(enem_1999$Q110, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q111 <- factor(enem_1999$Q111, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q112 <- factor(enem_1999$Q112, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q113 <- factor(enem_1999$Q113, levels = c('A','B','C'),
#                          labels = c('Muito importante',
#                                     'Importante',
#                                     'Sem importância'))

#enem_1999$Q114 <- factor(enem_1999$Q114, levels = c('A','B','C','D','E'),
#                         labels = c('Melhorou muito',
#                                    'Melhorou um pouco',
#                                    'Não melhorou ',
#                                    'Piorou',
#                                    'Piorou muito'))

#enem_1999$Q115 <- factor(enem_1999$Q115, levels = c('A','B','C','D','E'),
#                         labels = c('Melhorou muito',
#                                    'Melhorou um pouco',
#                                    'Não melhorou ',
#                                    'Piorou',
#                                    'Piorou muito'))

#enem_1999$Q116 <- factor(enem_1999$Q116, levels = c('A','B','C'),
#                          labels = c('Sim, estou estudando no momento atual',
#                                     'Sim, mas não estou estudando no momento atual ',
#                                     'Não'))

#enem_1999$Q117 <- factor(enem_1999$Q117, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q118 <- factor(enem_1999$Q118, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q119 <- factor(enem_1999$Q119, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q120 <- factor(enem_1999$Q120, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q121 <- factor(enem_1999$Q121, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q122 <- factor(enem_1999$Q122, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q123 <- factor(enem_1999$Q123, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q124 <- factor(enem_1999$Q124, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q125 <- factor(enem_1999$Q125, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q126 <- factor(enem_1999$Q126, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q127 <- factor(enem_1999$Q127, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q128 <- factor(enem_1999$Q128, levels = c("A","B"), labels = c("Sim","Não"))

#enem_1999$Q129 <- factor(enem_1999$Q129, levels = c("A","B"), labels = c("Sim","Não"))