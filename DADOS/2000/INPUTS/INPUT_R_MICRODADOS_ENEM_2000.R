#--------------------------------------------------------
#  INEP/Daeb-Diretoria de Avaliação da Educação Básica 
#  Coordenação-Geral de Instrumentos e Medidas (CGIM)			
#--------------------------------------------------------

#--------------------------------------------------------
#  PROGRAMA:                                                                                                      
#           INPUT_R_MICRODADOS_ENEM_2000
#--------------------------------------------------------
#  DESCRIÇÃO:
#           PROGRAMA PARA LEITURA DA BASE DE DADOS
#           MICRODADOS_ENEM_2000
#--------------------------------------------------------

#--------------------------------------------------------
# Obs:                                                                                                                    
#     Para abrir os microdados é necessário salvar este 
#     programa e o arquivo MICRODADOS_ENEM_2000.csv no
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

enem_2000 <- data.table::fread(input='microdados_enem_2000.csv',
                               integer64='character',
                               skip=0,  #Ler do inicio
                               nrow=-1, #Ler todos os registros
                               na.strings = "", 
                               showProgress = TRUE)
							   
#enem_2000$TP_FAIXA_ETARIA <- factor(enem_2000$TP_FAIXA_ETARIA, levels = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20), 
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
 
#enem_2000$TP_SEXO <- factor(enem_2000$TP_SEXO, levels = c('M','F'), labels = c('Masculino','Feminino'))
 
#enem_2000$TP_ST_CONCLUSAO <- factor(enem_2000$TP_ST_CONCLUSAO, levels = c(0,1,2,3,4),
#                                     labels = c('Nenhum dos anteriores',
#                                                'Já concluiu',
#                                                'Concluirá em 2000',
#                                                'Concluirá após 2000',
#                                                'Não concluí e não estou cursando o Ensino Médio'))
 
#enem_2000$TP_PRESENCA <- factor(enem_2000$TP_PRESENCA, levels = c(0,1), labels = c('Faltou à prova','Presente à prova'))
 
#enem_2000$CO_PROVA <- factor(enem_2000$CO_PROVA, levels = c('A','B','R','V'),
#							  labels = c('Amarela',
#                                         'Branca',
#                                         'Rosa',
#                                         'Verde'))
 
#enem_2000$TP_STATUS_REDACAO <- factor(enem_2000$TP_STATUS_REDACAO, levels = c('B','D','F','N','P'),
#                                       labels = c('Entregou a redação em branco',
#                                                  'Desconsiderada',
#                                                  'Faltou à prova',
#                                                  'Redação anulada',
#                                                  'Presente à prova'))
 
#enem_2000$IN_QSE <- factor(enem_2000$IN_QSE, levels = c(1,0), labels = c('Respondeu o questionário socioecômico','Não respondeu o questionário socioecômico'))
 
#enem_2000$Q1 <- factor(enem_2000$Q1, levels = c('A','B'), labels = c('Masculino','Feminino'))
 
#enem_2000$Q2 <- factor(enem_2000$Q2, levels = c('A','B','C','D','E','F','G','H'),
#                        labels = c('Após 1983.',
#                                   '1983',
#                                   '1982',
#                                   '1981',
#                                   '1980',
#                                   '1979',
#                                   'Entre 1975 e 1978',
#                                   'Antes de 1975'))
 
#enem_2000$Q3 <- factor(enem_2000$Q3, levels = c('A','B','C','D','E'),
#                        labels = c('Branco(a).',
#                                   'Pardo(a) / mulato(a). ',
#                                   'Negro(a).',
#                                   'Amarelo(a) (De origem asiática)',
#                                   'Indígena.'))
 
#enem_2000$Q4 <- factor(enem_2000$Q4, levels = c('A','B','C','D'),
#                        labels = c('Solteiro(a)',
#                                   'Casado(a) / mora com um(a) companheiro(a)',
#                                   'Separado(a) / divorciado(a) / desquitado(a)',
#                                   'Viúvo(a)'))
 
#enem_2000$Q5 <- factor(enem_2000$Q5, levels = c('A','B','C','D','E'),
#                        labels = c('Em casa ou apartamento, com sua família ',
#                                   'Em casa ou apartamento, sozinho(a)',
#                                   'Em quarto ou cômodo alugado, sozinho(a)',
#                                   'Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc',
#                                   'Outra situação'))
 
#enem_2000$Q6 <- factor(enem_2000$Q6, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q7 <- factor(enem_2000$Q7, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q8 <- factor(enem_2000$Q8, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q9 <- factor(enem_2000$Q9, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q10 <- factor(enem_2000$Q10, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q11 <- factor(enem_2000$Q11, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q12 <- factor(enem_2000$Q12, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q13 <- factor(enem_2000$Q13, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q14 <- factor(enem_2000$Q14, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q15 <- factor(enem_2000$Q15, levels = c('A','B','C','D','E','F','G'),
#                         labels = c('Moro sozinho',
#                                    'Duas pessoas ',
#                                    'Três pessoas ',
#                                    'Quatro pessoas ',
#                                    'Cinco pessoas ',
#                                    'Seis pessoas',
#                                    'Mais de seis pessoas.'))
 
#enem_2000$Q16 <- factor(enem_2000$Q16, levels = c('A','B','C','D','E'),
#                         labels = c('Não tenho filhos ',
#                                    'Um filho',
#                                    'Dois filhos ',
#                                    'Três filhos',
#                                    'Quatro ou mais filhos'))
 
#enem_2000$Q17 <- factor(enem_2000$Q17, levels = c('A','B','C','D','E','F','G','H','I'),
#                         labels = c('Não estudou',
#                                    'Da primeira à quarta série do ensino fundamental (antigo primário)',
#                                    'Da quinta à oitava série do ensino fundamental (antigo ginásio)',
#                                    'Ensino Médio (2º grau) incompleto ',
#                                    'Ensino Médio (2º grau) completo ',
#                                    'Ensino Superior incompleto ',
#                                    'Ensino Superior completo',
#                                    'Pós-graduação (mestrado, especialização, doutorado)',
#                                    'Não sei'))
 
#enem_2000$Q18 <- factor(enem_2000$Q18, levels = c('A','B','C','D','E','F','G','H','I'),
#                         labels = c('Não estudou',
#                                    'Da primeira à quarta série do ensino fundamental (antigo primário)',
#                                    'Da quinta à oitava série do ensino fundamental (antigo ginásio)',
#                                    'Ensino Médio (2º grau) incompleto ',
#                                    'Ensino Médio (2º grau) completo ',
#                                    'Ensino Superior incompleto ',
#                                    'Ensino Superior completo',
#                                    'Pós-graduação (mestrado, especialização, doutorado)',
#                                    'Não sei'))
 
#enem_2000$Q19 <- factor(enem_2000$Q19, levels = c('A','B','C','D','E','F','G','H','I','J'),
#                         labels = c('Na agricultura, no campo, em fazenda ou na pesca',
#                                    'Na indústria',
#                                    'No comércio, banco, transporte ou outros serviços',
#                                    'Como empregado em casa de família',
#                                    'Como funcionário do governo federal, do estado ou município, ou militar',
#                                    'Profissional liberal, professor ou técnico de nível superior',
#                                    'No lar',
#                                    'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa',
#                                    'Não trabalha',
#                                    'Não sei'))
 
#enem_2000$Q20 <- factor(enem_2000$Q20, levels = c('A','B','C','D','E','F','G','H','I','J','K'),
#                         labels = c('Gerente, administrador ou diretor de empresa privada',
#                                    'Funcionário público (federal, estadual, municipal), com funções de direção',
#                                    'Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando',
#                                    'Empregado no setor privado, com carteira assinada',
#                                    'Funcionário público (federal, estadual ou municipal), sem função de direção',
#                                    'Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando',
#                                    'Trabalho temporário, informal, sem carteira assinada',
#                                    'Trabalha por conta própria',
#                                    'Aposentado',
#                                    'Não trabalha',
#                                    'Outra situação'))
 
#enem_2000$Q21 <- factor(enem_2000$Q21, levels = c('A','B','C','D','E','F','G','H','I','J'),
#                         labels = c('Na agricultura, no campo, em fazenda ou na pesca',
#                                    'Na indústria',
#                                    'No comércio, banco, transporte ou outros serviços',
#                                    'Como empregado em casa de família',
#                                    'Como funcionário do governo federal, do estado ou município, ou militar',
#                                    'Profissional liberal, professor ou técnico de nível superior',
#                                    'No lar',
#                                    'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa',
#                                    'Não trabalha',
#                                    'Não sei'))
 
#enem_2000$Q22 <- factor(enem_2000$Q22, levels = c('A','B','C','D','E','F','G','H','I','J','K'),
#                         labels = c('Gerente, administradora ou diretora de empresa privada',
#                                    'Funcionária pública (federal, estadual ou municipal), com funções de direção',
#                                    'Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando',
#                                    'Empregada no setor privado, com carteira assinada',
#                                    'Funcionária pública (federal, estadual e municipal), sem função de direção',
#                                    'Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando',
#                                    'Trabalho temporário, informal, sem carteira assinada',
#                                    'Trabalha por conta própria',
#                                    'Desempregada',
#                                    'Aposentada',
#                                    'Outra situação'))
 
#enem_2000$Q23 <- factor(enem_2000$Q23, levels = c('A','B','C','D','E','F','G','H'),
#                         labels = c('Até 1 salário mínimo (R$ 151,00)',
#                                    'De 1 a 2 salários mínimos (de R$ 151,01 a R$ 302,00)',
#                                    'De 2 a 5 salários mínimos (de R$ 302,01 a R$ 755,00)',
#                                    'De 5 a 10 salários mínimos (de R$ 755,01 a R$ 1.510,00)',
#                                    'De 10 a 30 salários mínimos (de R$ 1.510,01 a R$ 4.530,00)',
#                                    'De 30 a 50 salários mínimos (de R$ 4.530,01 a R$ 7.550,00)',
#                                    'Mais de 50 salários mínimos (mais de R$ 7.550,00)',
#                                    'Nenhuma renda'))
 
#enem_2000$Q24 <- factor(enem_2000$Q24, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q25 <- factor(enem_2000$Q25, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q26 <- factor(enem_2000$Q26, levels = c('A','B','C','D'),
#                          labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q27 <- factor(enem_2000$Q27, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q28 <- factor(enem_2000$Q28, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q29 <- factor(enem_2000$Q29, levels = c('A','B','C','D'), 
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q30 <- factor(enem_2000$Q30, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q31 <- factor(enem_2000$Q31, levels = c('A','B','C','D'),
#                         labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q32 <- factor(enem_2000$Q32, levels = c('A','B','C','D'),
#                          labels = c('1',
#                                    '2',
#                                    '3 ou +',
#                                    'Não tem'))
 
#enem_2000$Q33 <- factor(enem_2000$Q33, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q34 <- factor(enem_2000$Q34, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q35 <- factor(enem_2000$Q35, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q36 <- factor(enem_2000$Q36, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q37 <- factor(enem_2000$Q37, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q38 <- factor(enem_2000$Q38, levels = c("A","B","C"),
#                         labels = c('Sim',
#                                    'Nunca trabalhei',
#                                    'Nunca trabalhei, mas estou procurando trabalho'))
 
#enem_2000$Q39 <- factor(enem_2000$Q39, levels = c('A','B','C','D','E'),
#						 labels = c('Sim, menos de 1 ano',
#                                    'Sim, de 1 a 2 anos',
#                                    'Sim, de 2 a 3 anos',
#                                    'Sim, todo o tempo',
#                                    'Não'))
 
#enem_2000$Q40 <- factor(enem_2000$Q40, levels = c('A','B','C','D','E'),
#                         labels = c('Sem jornada fixa, até 10 horas semanais',
#                                    'De 11 a 20 horas semanais',
#                                    'De 21 a 30 horas semanais',
#                                    'De 31 a 40 horas semanais',
#                                    'Mais de 40 horas semanais'))
 
#enem_2000$Q41 <- factor(enem_2000$Q41, levels = c('A','B','C','D'),
#                         labels = c('Para ajudar meus pais ',
#                                    'Para meu próprio sustento ',
#                                    'Para as duas finalidades',
#                                    'Para outra(s) finalidade(s)'))
 
#enem_2000$Q42 <- factor(enem_2000$Q42, levels = c('A','B','C','D'),
#                         labels = c('Antes dos 14 anos ',
#                                    'Entre 14 e 16 anos',
#                                    'Entre 17 e 18 anos',
#                                    'Após 18 anos'))
 
#enem_2000$Q43 <- factor(enem_2000$Q43, levels = c('A','B','C','D','E','F','G','H'),
#                         labels = c('Até 1 salário mínimo (R$ 151,00)',
#                                    'De 1 a 2 salários mínimos (de R$ 151,01 a R$ 302,00)',
#                                    'De 2 a 5 salários mínimos (de R$ 302,01 a R$ 755,00)',
#                                    'De 5 a 10 salários mínimos (de R$ 755,01 a R$ 1.510,00)',
#                                    'De 10 a 30 salários mínimos (de R$ 1.510,01 a R$ 4.530,00)',
#                                    'De 30 a 50 salários mínimos (de R$ 4.530,01 a R$ 7.550,00)',
#                                    'Mais de 50 salários mínimos (mais de R$ 7.550,00)',
#                                    'Não estou trabalhando'))
 
#enem_2000$Q44 <- factor(enem_2000$Q44, levels = c('A','B','C','D'),
#                         labels = c('Para ajudar meus pais ',
#                                    'Para meu próprio sustento ',
#                                    'Para as duas finalidades',
#                                    'Para outra(s) finalidade(s)'))
 
#enem_2000$Q45 <- factor(enem_2000$Q45, levels = c('A','B','C','D','E','F','G','H','I'),
#                         labels = c('Na agricultura (campo, fazenda, pesca). ',
#                                    'Na indústria.',
#                                    'No comércio, banco, transporte ou outros serviços.',
#                                    'Como empregado(a) em casa de família.',
#                                    'Como funcionário(a) do governo federal, do estado ou do município, ou militar.',
#                                    'Como profissional liberal, professor(a) ou técnico(a) de nível superior.',
#                                    'No lar.',
#                                    'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa',
#                                    'Não trabalha'))
 
#enem_2000$Q46 <- factor(enem_2000$Q46, levels = c('A','B','C','D','E','F','G','H','I','J'),
#                         labels = c('Gerente, administrador(a) ou diretor(a) de empresa privada.',
#                                    'Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção.',
#                                    'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando',
#                                    'Empregado(a) no setor privado, com carteira assinada',
#                                    'Funcionário(a) público(a) (federal, estadual ou municipal), sem função de direção.',
#                                    'Trabalho temporário, informal, sem carteira assinada',
#                                    'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando.',
#                                    'Trabalho por conta própria Aposentado(a).',
#                                    'Não trabalho',
#                                    'Outra situação.'))
 
#enem_2000$Q47 <- factor(enem_2000$Q47, levels = c('A','B','C'),
#                         labels = c('Sim',
#                                    'Não, porque não consegui trabalho na minha profissão',
#                                    'Não me preparei para um trabalho em específico/minha formação foi geral'))
 
#enem_2000$Q48 <- factor(enem_2000$Q48, levels = c('A','B','C','D'),
#                         labels = c('Menos de 1 ano ',
#                                     'Entre 1 e 2 anos',
#                                     'Entre 2 e 4 anos',
#                                     'Mais de 4 anos'))
 
#enem_2000$Q49 <- factor(enem_2000$Q49, levels = c('A','B','C','D','E','F'),
#                         labels = c('Menos de 8 anos ',
#                                    '8 anos',
#                                    '9 anos',
#                                    '10 anos',
#                                    '11 anos',
#                                    'Mais de 11 anos'))
 
#enem_2000$Q50 <- factor(enem_2000$Q50, levels = c('A','B','C'),
#                         labels = c('Somente em escola pública',
#                                    'Parte em escola pública e parte em escola particular ',
#                                    'Somente em escola particular'))
 
#enem_2000$Q51 <- factor(enem_2000$Q51, levels = c('A','B','C','D','E','F','G'),
#                         labels = c('Vou concluí-lo no segundo semestre de 2000. ',
#                                    'No primeiro semestre de 2000',
#                                    '1999',
#                                    '1998',
#                                    '1997',
#                                    'Entre 1993 e1996',
#                                    'Antes de 1993'))
 
#enem_2000$Q52 <- factor(enem_2000$Q52, levels = c('A','B','C','D','E','F'),
#                         labels = c('Menos de 3 anos ',
#                                    '3 anos',
#                                    '4 anos',
#                                    '5 anos',
#                                    '6 anos',
#                                    'Mais de 6 anos'))
 
#enem_2000$Q53 <- factor(enem_2000$Q53, levels = c('A','B','C'),
#                           labels = c('Somente no turno diurno',
#                                      'Parte no turno diurno e parte no turno noturno ',
#                                      'Somente no turno noturno'))
 
#enem_2000$Q54 <- factor(enem_2000$Q54, levels = c('A','B','C'),
#                           labels = c('Somente em escola pública',
#                                      'Parte em escola pública e parte em escola particular ',
#                                      'Somente em escola particular'))
 
#enem_2000$Q55 <- factor(enem_2000$Q55, levels = c('A','B'), labels = c('Ensino regular','Ensino supletivo'))
 
#enem_2000$Q56 <- factor(enem_2000$Q56, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q57 <- factor(enem_2000$Q57, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q58 <- factor(enem_2000$Q58, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q59 <- factor(enem_2000$Q59, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q60 <- factor(enem_2000$Q60, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q61 <- factor(enem_2000$Q61, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q62 <- factor(enem_2000$Q62, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q63 <- factor(enem_2000$Q63, levels = c('A','B','C'),
#                         labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                    'Eventualmente',
#                                    'Nunca'))
 
#enem_2000$Q64 <- factor(enem_2000$Q64, levels = c('A','B','C'),
#                         labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                    'Eventualmente',
#                                    'Nunca'))
 
#enem_2000$Q65 <- factor(enem_2000$Q65, levels = c('A','B','C'),
#                         labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                    'Eventualmente',
#                                    'Nunca'))
 
#enem_2000$Q66 <- factor(enem_2000$Q66, levels = c('A','B','C'),
#                         labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                    'Eventualmente',
#                                    'Nunca'))
 
#enem_2000$Q67 <- factor(enem_2000$Q67, levels = c('A','B','C'),
#                         labels = c('Frequentemente (todo dia ou quase todo dia) ',
#                                    'Eventualmente',
#                                    'Nunca'))
 
#enem_2000$Q68 <- factor(enem_2000$Q68, levels = c('A','B','C','D','E'), 
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))
 
#enem_2000$Q69 <- factor(enem_2000$Q69, levels = c('A','B','C','D','E'), 
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))
 
#enem_2000$Q70 <- factor(enem_2000$Q70, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))
 
#enem_2000$Q71 <- factor(enem_2000$Q71, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))
 
#enem_2000$Q72 <- factor(enem_2000$Q72, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))
 
#enem_2000$Q73 <- factor(enem_2000$Q73, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))
 
#enem_2000$Q74 <- factor(enem_2000$Q74, levels = c('A','B','C','D','E'),
#                         labels = c('Excelente ',
#                                    'Bom ',
#                                    'Mais ou menos ',
#                                    'Ruim ',
#                                    'Péssimo'))
 
#enem_2000$Q75 <- factor(enem_2000$Q75, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q76 <- factor(enem_2000$Q76, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q77 <- factor(enem_2000$Q77, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q78 <- factor(enem_2000$Q78, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q79 <- factor(enem_2000$Q79, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q80 <- factor(enem_2000$Q80, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q81 <- factor(enem_2000$Q81, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q82 <- factor(enem_2000$Q82, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q83 <- factor(enem_2000$Q83, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q84 <- factor(enem_2000$Q84, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q85 <- factor(enem_2000$Q85, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q86 <- factor(enem_2000$Q86, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q87 <- factor(enem_2000$Q87, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q88 <- factor(enem_2000$Q88, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q89 <- factor(enem_2000$Q89, levels = c('A','B','C'), 
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q90 <- factor(enem_2000$Q90, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q91 <- factor(enem_2000$Q91, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q92 <- factor(enem_2000$Q92, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q93 <- factor(enem_2000$Q93, levels = c('A','B','C'),
#                         labels = c('Muito ',
#                                    'Pouco',
#                                    'Não me interesso'))
 
#enem_2000$Q94 <- factor(enem_2000$Q94, levels = c('A','B','C'),
#                         labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))
 
#enem_2000$Q95 <- factor(enem_2000$Q95, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))
 
#enem_2000$Q96 <- factor(enem_2000$Q96, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))
 
#enem_2000$Q97 <- factor(enem_2000$Q97, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))
 
#enem_2000$Q98 <- factor(enem_2000$Q98, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))
 
#enem_2000$Q99 <- factor(enem_2000$Q99, levels = c('A','B','C'),
#                           labels = c('Com frequência ',
#                                    'Ás vezes',
#                                    'Não participo'))
 
#enem_2000$Q100 <- factor(enem_2000$Q100, levels = c('A','B','C'),
#                           labels = c('Melhorou ',
#                                      'Piorou',
#                                      'Nem melhorou nem piorou'))
 
#enem_2000$Q101 <- factor(enem_2000$Q101, levels = c('A','B','C'),
#                           labels = c('Melhorou ',
#                                      'Piorou',
#                                      'Nem melhorou nem piorou'))
 
#enem_2000$Q102 <- factor(enem_2000$Q102, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q103 <- factor(enem_2000$Q103, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q104 <- factor(enem_2000$Q104, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q105 <- factor(enem_2000$Q105, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q106 <- factor(enem_2000$Q106, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q107 <- factor(enem_2000$Q107, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q108 <- factor(enem_2000$Q108, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q109 <- factor(enem_2000$Q109, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q110 <- factor(enem_2000$Q110, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q111 <- factor(enem_2000$Q111, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q112 <- factor(enem_2000$Q112, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q113 <- factor(enem_2000$Q113, levels = c('A','B'), labels = c('Importante','Sem importância'))
 
#enem_2000$Q114 <- factor(enem_2000$Q114, levels = c('A','B','C'),
#                          labels = c('Sim, estou estudando no momento atual',
#                                     'Sim, mas não estou estudando no momento atual ',
#                                     'Não'))
 
#enem_2000$Q115 <- factor(enem_2000$Q115, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q116 <- factor(enem_2000$Q116, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q117 <- factor(enem_2000$Q117, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q118 <- factor(enem_2000$Q118, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q119 <- factor(enem_2000$Q119, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q120 <- factor(enem_2000$Q120, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q121 <- factor(enem_2000$Q121, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q122 <- factor(enem_2000$Q122, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q123 <- factor(enem_2000$Q123, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q124 <- factor(enem_2000$Q124, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q125 <- factor(enem_2000$Q125, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q126 <- factor(enem_2000$Q126, levels = c("A","B"), labels = c("Sim","Não"))
 
#enem_2000$Q127 <- factor(enem_2000$Q127, levels = c("A","B"), labels = c("Sim","Não"))