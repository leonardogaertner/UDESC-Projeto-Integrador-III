/*****************************************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica                                          */ 
/*                                   			                                    */
/*  Coordena��o-Geral de Medidas da Educa��o B�sica (CGMEB)		*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  PROGRAMA:                                                                                                      */
/*           INPUT_SPSS_QUEST_HAB_ESTUDO                                                 	*/
/*----------------------------------------------------------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE QUESTION�RIOS        */
/*                       SOBRE H�BITOS DE ESTUDO NA PANDEMIA, QUE COMP�E      */
/*                       OS MICRODADOSDO ENEM DE 2022       			*/ 
/*****************************************************************************************************/
/* Obs:                                                                                                                    */
/* 		                                                                                           */
/* Para abrir a base dos question�rios � necess�rio salvar este programa e o arquivo     */
/* QUEST_HAB_ESTUDO.csv no diret�rio C:\ do computador.	                  	*/
/*							 */ 
/*							 */
/* Para a leitura dA base dos question�rios � necess�rio a sele��o do programa abaixo,*/
/* depois execute-o.						 */
/*							 */ 
/******************************************************************************************************/
/*                                                   ATEN��O                                                          */ 
/******************************************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	                    */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir                */
/* os dados sem os r�tulos basta importar diretamente no SPSS.		  */
/* 							   */
/*******************************************************************************************************/

GET DATA
  /TYPE=TXT
  /FILE="C:\QUEST_HAB_ESTUDO.csv" /*local do arquivo*/
  /DELCASE=LINE
  /DELIMITERS=";"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE= ALL
  /VARIABLES=
  NU_INSCRICAO F21.0
  TP_RESPOSTA F1.0
  Q001 A1    
  Q002 A1    
  Q003 A1    
  Q004 A1    
  Q005 A1    
  Q006 A1    
  Q007 A1    
  Q008 A1    
  Q009 A1    
  Q010 A1    
  Q011 A1    
  Q012 A1    
  Q013 A1    
  Q014 A1    
  Q015 A1    
  Q016 A1   
  Q017 A1    
  Q018 A1    
  Q019 A1    
  Q020 A1    
  Q021 A1    
  Q022 A1    
  Q023 A1   
  Q024 A1   
  Q025A A1   
  Q025B A1   
  Q025C A1   
  Q025D A1   
  Q025E A1   
  Q025F A1   
  Q026A A1   
  Q026B A1  
  Q026C A1   
  Q026D A1   
  Q026E A1   
  Q026F A1   
  Q026G A1   
  Q026H A1   
  Q027  A1   
  Q028A A1   
  Q028B A1   
  Q028C A1  
  Q028D A1   
  Q028E A1   
  Q028F A1   
  Q028G A1   
  Q028H A1   
  Q028I  A1  
  Q028J A1   
  Q028K A1   
  Q028L A1   
  Q028M A1   
  Q028N A1   
  Q028O A1   
  Q028P A1   
  Q028Q A1   
  Q028R A1   
  Q029  A1   
  Q030A A1   
  Q030B A1   
  Q030C A1   
  Q030D A1  
  Q030E A1   
  Q030F A1   
  Q030G A1   
  Q031  A1   
  Q032A A1   
  Q032B A1   
  Q032C A1   
  Q032D A1   
  Q032E A1   
  Q032F A1   
  Q032G A1   
  Q033A A1   
  Q033B A1   
  Q033C A1  
  Q033D A1   
  Q033E A1   
  Q033F A1  
  Q033G A1   
  Q033H A1   
  Q033I  A1  
  Q033J A1   
  Q034  A1.
CACHE.
EXECUTE.
DATASET NAME QUEST_HAB_ESTUDO WINDOW=FRONT.

VARIABLE LABELS
NU_INSCRICAO			"N�mero de inscri��o"
TP_RESPOSTA  			"Tipo de op��o de resposta ao question�rio"
Q001  				"Considerando a etapa de Ensino M�dio, qual dessas situa��es est� de acordo com o seu v�nculo escolar durante a pandemia?"
Q002  				"Considerando a continuidade do v�nculo escolar na pandemia, qual dessas situa��es est� de acordo com sua realidade?"
Q003   				"Considerando o ano de 2021 (o segundo ano da pandemia), qual dessas situa��es est� de acordo com sua experi�ncia?"
Q004   				"Como voc� percebe o seu processo de aprendizagem durante a pandemia?"
Q005   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Organizei cronograma de estudos com tempos mais longos e mais curtos para estudar de acordo com a dificuldade das mat�rias."
Q006   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Reservei tempos mais longos e mais curtos para estudar de acordo com a dificuldade das mat�rias."
Q007   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Organizei material para ser estudado."
Q008   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Eu me dediquei aos hor�rios programados de estudo de acordo com a dificuldade das mat�rias."
Q009   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Li os textos indicados em cada mat�ria antes de assistir as aulas ou videoaulas sobre o assunto dos textos."
Q010   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Resumi os textos das mat�rias, destacando as partes mais importantes."
Q011   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Resumi as videoaulas ou os podcasts, destacando as partes mais importantes."
Q012   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Fiz as atividades das mat�rias para fixa��o de conte�do."
Q013   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Fiz atividades avaliativas, inclusive simulados, para verificar o quanto aprendi durante a pandemia."
Q014   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Aproveitei o tempo das aulas online ou atividades de refor�o, sem desperdi��-lo com distra��es."
Q015   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Anotei as explica��es obtidas em videoaulas ou podcasts das mat�rias."
Q016  				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Anotei as informa��es que obtive ao assistir v�deos complementares de assuntos do meu interesse."
Q017   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Destaquei as d�vidas que tive ao ler os textos das disciplinas para esclarecer com os professores."
Q018   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Estruturei as principais ideias para produzir reda��es."
Q019  				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Treinei reda��o."
Q020   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Participei de f�runs de discuss�o por mat�ria para tirar d�vidas."
Q021   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Entrei nas aulas online por videoconfer�ncia sem atraso da minha parte."
Q022  				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Assisti todas as aulas online nas datas programadas para estudo."
Q023   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Revisei as anota��es das aulas, os resumos e anota��es dos demais materiais que li ou assisti."
Q024   				"Frequ�ncia de atividades de estudo no segundo ano da pandemia: Reassisti as videoaulas e os podcasts das mat�rias."
Q025A  				"Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Aparelho de r�dio."
Q025B  				"Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Computador/notebook."
Q025C  				"Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Livros/apostilas/materiais impressos."
Q025D  				"Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Tablet."
Q025E  				"Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Telefone celular."
Q025F  				"Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Televis�o."
Q026A  				"Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Audioaula/podcast avulsos."
Q026B  				"Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Audioaula/podcast em plataforma de educa��o a dist�ncia."
Q026C  				"Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Grupos de Whatsapp, Facebook, Telegram e similares."
Q026D  				"Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Livros/apostilas/materiais digitais."
Q026E  				"Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Programa de r�dio."
Q026F  				"Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Programa de TV."
Q026G  				"Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Videoaula avulsa."
Q026H  				"Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Videoaula em plataforma de educa��o a dist�ncia."
Q027   				"Voc� vivenciou problemas em sua rotina para estudar ou manter-se informado(a) durante a pandemia?"
Q028A  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: eu me senti desestimulado(a) por n�o ter colegas com quem interagir sobre o que eu estava estudando."
Q028B  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive dificuldade de compreender os conte�dos por falta de explica��es de um professor em tempo real."
Q028C  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: fiquei por muito tempo diante das telas, sem pequenos intervalos para descansar."
Q028D  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: reduzi a pr�tica de atividades f�sicas."
Q028E  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: dormi por menos tempo."
Q028F  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive epis�dios de ins�nia."
Q028G  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: senti dificuldade em manter a motiva��o para estudar por minha conta."
Q028H  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: senti dificuldade em me motivar a cumprir meu cronograma."
Q028I  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: senti medo de n�o conseguir aprender os conte�dos."
Q028J  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: senti ansiedade devido ao isolamento social e ao receio de cont�gio da doen�a."
Q028K  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: dediquei tempo para ajudar algum familiar a estudar em casa."
Q028L  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: precisei ficar em repouso porque tive Covid com sintomas."
Q028M  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: precisei ficar em repouso porque tive outra doen�a."
Q028N  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: precisei cuidar de algum familiar que teve Covid com sintomas."
Q028O  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: precisei cuidar de algum familiar que teve outra doen�a."
Q028P  				"Em 2021, eu n�o consgui me dedicar aos estudos ou manter-me informado(a) porque: tive que cuidar do(s) meu(s) irm�o(s) menor(es) para meus pais trabalharem."
Q028Q  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive que come�ar a trabalhar em casa para obter renda."
Q028R  				"Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive que trabalhar em servi�o considerado essencial durante a pandemia."
Q029   				"Voc� teve dificuldades de infraestrutura para estudar ou manter-se informado(a) durante 2021?"
Q030A  				"PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Equipamento (computador pessoal ou notebook) pouco dispon�vel por ser compartilhado com outros familiares."
Q030B  				"PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Conex�o ruim ou limitada com a internet."
Q030C  				"PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Equipamento (computador pessoal ou notebook) com configura��o insuficiente para estudar ou acessar materiais"
Q030D  				"PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Material pedag�gico insuficiente para estudar, faltando livros, apostilas, textos, v�deos."
Q030E  				"PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Local de estudos faltando boa ilumina��o, higiene, ventila��o e sil�ncio."
Q030F  				"PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Local de estudos sem mob�lia para guardar e para dispor os materiais de estudo."
Q030G  				"PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Recursos insuficientes para alimenta��o."
Q031   				"Voc� precisou da ajuda de algu�m para estudar ou manter-se informado(a) em 2021?"
Q032A  				"Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Amigo(s)/colega(s)/conhecido(s)."
Q032B  				"Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Filho(s)/sobrinho(s)."
Q032C  				"Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Irm�o(s)/primo(s)."
Q032D 				"Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Namorado(a)/c�njuge/companheiro(a)."
Q032E  				"Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Pai/m�e."
Q032F  				"Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Professor(a) / orientador(a)."
Q032G  				"Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Tio(s)/Av�,av�."
Q033A  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Com a alimenta��o."
Q033B  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Para acessar � internet."
Q033C  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Financeira para comprar livros/apostilas ou fazer c�pias."
Q033D  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Financeira para comprar cursos online."
Q033E  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Financeira para me inscrever em provas ou no Enem."
Q033F  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Para elaborar um cronograma de estudos."
Q033G  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Para pesquisar materiais na internet."
Q033H  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Para preencher formul�rios de inscri��o."
Q033I  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Por meio de empr�stimo de algum equipamento (celular, computador, notebook, tablet) para eu estudar."
Q033J  				"Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Por meio de explica��o de conte�dos que eu n�o havia entendido."
Q034   				"A partir da sua experi�ncia de estudos em 2021, o quanto voc� se sente preparado(a) para conduzir o seu processo de aprendizagem?".

VALUE LABELS
/VALUE TP_RESPOSTA
	0	"N�o (Participante optou por n�o responder o question�rio)."
	1	"Sim (Participante optou por responder o question�rio)."
	2	"Responder Depois"
/Q001 
	"A"	"Eu estive matriculado(a) no Ensino M�dio regular."
	"B"	"Eu estive matriculado(a) no Ensino M�dio, em turma de EJA."
	"C"	"Eu estive matriculado(a) no Ensino M�dio integrado � Educa��o Profissional."
	"D"	"Eu conclu� o Ensino M�dio antes de 2021."
	"E"	"Eu n�o conclu� o Ensino M�dio e nem estive matriculado(a) nesse per�odo."
/Q002 
	"A"	"Eu continuei os estudos sem interromper o ano letivo."
	"B"	"Eu decidi interromper os estudos no primeiro ano da pandemia, mas me rematriculei em 2021."
	"C"	"Eu fui levado a interromper os estudos no primeiro ano da pandemia por n�o ter recebido suporte da escola, mas me rematriculei em 2021."
/Q003 
	"A"	"Eu apenas tive aulas presenciais nesse per�odo."
	"B"	"Eu apenas estudei em casa de forma remota nesse per�odo."
	"C"	"Eu estudei de forma h�brida, ou seja, em casa remotamente e em aulas presenciais."
	"D"	"Eu realizei atividades de estudo diversas, mas sem estar matriculado(a) no Ensino M�dio."
	"E"	"Eu n�o estive matriculado(a) regularmente, nem realizei atividades de estudo."
/Q004 
	"A"	"Eu aprendi mais no ensino remoto (estudando somente em casa)."
	"B"	"Eu aprendi mais estudando de forma h�brida."
	"C"	"Eu aprendi mais estudando de forma presencial."
	"D"	"Eu aprendi no ensino remoto ou h�brido na mesma medida de quando eu estava no ensino presencial."
	"E"	"Eu n�o estive matriculado(a) em 2021, mas aprendi estudando por conta pr�pria."
	"F"	"Eu n�o estive matriculado(a) em 2021 e nem estudei."
/Q005 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q006 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q007 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q008 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q009 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q010 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q011 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q012 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q013 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q014 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q015 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q016 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q017 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q018 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q019 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q020 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q021 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q022 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q023 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q024 
	"A"	"Nenhuma vez."
	"B"	"Poucas vezes."
	"C"	"Muitas vezes."
	"D"	"Em todas as vezes."
/Q025A 
	"A"	"Sim."
	"B"	"N�o."
/Q025B 
	"A"	"Sim."
	"B"	"N�o."
/Q025C 
	"A"	"Sim."
	"B"	"N�o."
/Q025D 
	"A"	"Sim."
	"B"	"N�o."
/Q025E 
	"A"	"Sim."
	"B"	"N�o."
/Q025F 
	"A"	"Sim."
	"B"	"N�o."
/Q026A 
	"A"	"Sim."
	"B"	"N�o."
/Q026B 
	"A"	"Sim."
	"B"	"N�o."
/Q026C 
	"A"	"Sim."
	"B"	"N�o."
/Q026D 
	"A"	"Sim."
	"B"	"N�o."
/Q026E 
	"A"	"Sim."
	"B"	"N�o."
/Q026F 
	"A"	"Sim."
	"B"	"N�o."
/Q026G 
	"A"	"Sim."
	"B"	"N�o."
/Q026H 
	"A"	"Sim."
	"B"	"N�o."
/Q027 
	"A"	"Sim."
	"B"	"N�o."
/Q028A 
	"A"	"Sim."
	"B"	"N�o."
/Q028B
	"A"	"Sim."
	"B"	"N�o."
/Q028C 
	"A"	"Sim."
	"B"	"N�o."
/Q028D 
	"A"	"Sim."
	"B"	"N�o."
/Q028E 
	"A"	"Sim."
	"B"	"N�o."
/Q028F 
	"A"	"Sim."
	"B"	"N�o."
/Q028G 
	"A"	"Sim."
	"B"	"N�o."
/Q028H 
	"A"	"Sim."
	"B"	"N�o."
/Q028I 
	"A"	"Sim."
	"B"	"N�o."
/Q028J 
	"A"	"Sim."
	"B"	"N�o."
/Q028K 
	"A"	"Sim."
	"B"	"N�o."
/Q028L 
	"A"	"Sim."
	"B"	"N�o."
/Q028M 
	"A"	"Sim."
	"B"	"N�o."
/Q028N 
	"A"	"Sim."
	"B"	"N�o."
/Q028O 
	"A"	"Sim."
	"B"	"N�o."
/Q028P 
	"A"	"Sim."
	"B"	"N�o."
/Q028Q 
	"A"	"Sim."
	"B"	"N�o."
/Q028R 
	"A"	"Sim."
	"B"	"N�o."
/Q029 
	"A"	"Sim."
	"B"	"N�o."
/Q030A 
	"A"	"Sim."
	"B"	"N�o."
/Q030B 
	"A"	"Sim."
	"B"	"N�o."
/Q030C 
	"A"	"Sim."
	"B"	"N�o."
/Q030D 
	"A"	"Sim."
	"B"	"N�o."
/Q030E 
	"A"	"Sim."
	"B"	"N�o."
/Q030F 
	"A"	"Sim."
	"B"	"N�o."
/Q030G 
	"A"	"Sim."
	"B"	"N�o."
/Q031 
	"A"	"Sim."
	"B"	"N�o."
	"C"	"Precisei de ajuda para estudar, mas n�o tive ningu�m para me auxiliar."
/Q032A 
	"A"	"Sim."
	"B"	"N�o."
/Q032B 
	"A"	"Sim."
	"B"	"N�o."
/Q032C 
	"A"	"Sim."
	"B"	"N�o."
/Q032D 
	"A"	"Sim."
	"B"	"N�o."
/Q032E 
	"A"	"Sim."
	"B"	"N�o."
/Q032F 
	"A"	"Sim."
	"B"	"N�o."
/Q032G 
	"A"	"Sim."
	"B"	"N�o."
/Q033A 
	"A"	"Sim."
	"B"	"N�o."
/Q033B 
	"A"	"Sim."
	"B"	"N�o."
/Q033C 
	"A"	"Sim."
	"B"	"N�o."
/Q033D 
	"A"	"Sim."
	"B"	"N�o."
/Q033E 
	"A"	"Sim."
	"B"	"N�o."
/Q033F 
	"A"	"Sim."
	"B"	"N�o."
/Q033G 
	"A"	"Sim."
	"B"	"N�o."
/Q033H 
	"A"	"Sim."
	"B"	"N�o."
/Q033I 
	"A"	"Sim."
	"B"	"N�o."
/Q033J 
	"A"	"Sim."
	"B"	"N�o."
/Q034
	"A"	"Nada preparado(a)."
	"B"	"Um pouco preparado(a)."
	"C"	"Bem preparado(a)."
	"D"	"Muito preparado(a)."
	"E"	"Totalmente preparado(a).".