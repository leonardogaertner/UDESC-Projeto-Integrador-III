
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Medidas da Educa��o B�sica(CGMEB)				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_QUEST_HAB_ESTUDO.sas                        	  	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DA BASE DE QUESTION�RIOS SOBRE       */
/*             H�BITOS DE ESTUDO NA PANDEMIA, QUE COMP�E OS MICRODADOS    */
/*             DO ENEM DE 2022       								      */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Observa��o:                                                            */
/* 		                                                                  */
/* Para abrir a base dos question�rios � necess�rio salvar este programa  */
/* e o arquivo QUEST_HAB_ESTUDO.csv no diret�rio C:\ do computador.		  */
/*															 			  */                                           
/* Ao terminar esses procedimentos execute o programa salvo utilizando    */
/* as vari�veis de interesse.                                             */
/**************************************************************************/
/*				                  ATEN��O                                 */  
/**************************************************************************/
/* Este programa abre a base de dados com os r�tulos das vari�veis de	  */
/* acordo com o dicion�rio de dados que comp�em os microdados. Para abrir */
/* os dados sem os r�tulos basta importar diretamente no SAS.			  */
/* 																	      */ 																          
/**************************************************************************/

PROC FORMAT;
				
	VALUE TP_RESPOSTA
		0=	'N�o (Participante optou por n�o responder o question�rio).'
		1=	'Sim (Participante optou por responder o question�rio).'
		2=	'Responder Depois';

	VALUE $Q001_ 
		'A'=	'Eu estive matriculado(a) no Ensino M�dio regular.'
		'B'=	'Eu estive matriculado(a) no Ensino M�dio, em turma de EJA.'
		'C'=	'Eu estive matriculado(a) no Ensino M�dio integrado � Educa��o Profissional.'
		'D'=	'Eu conclu� o Ensino M�dio antes de 2021.'
		'E'=	'Eu n�o conclu� o Ensino M�dio e nem estive matriculado(a) nesse per�odo.';

	VALUE $Q002_ 
		'A'=	'Eu continuei os estudos sem interromper o ano letivo.'
		'B'=	'Eu decidi interromper os estudos no primeiro ano da pandemia, mas me rematriculei em 2021.'
		'C'=	'Eu fui levado a interromper os estudos no primeiro ano da pandemia por n�o ter recebido suporte da escola, mas me rematriculei em 2021.';

	VALUE $Q003_ 
		'A'=	'Eu apenas tive aulas presenciais nesse per�odo.'
		'B'=	'Eu apenas estudei em casa de forma remota nesse per�odo.'
		'C'=	'Eu estudei de forma h�brida, ou seja, em casa remotamente e em aulas presenciais.'
		'D'=	'Eu realizei atividades de estudo diversas, mas sem estar matriculado(a) no Ensino M�dio.'
		'E'=	'Eu n�o estive matriculado(a) regularmente, nem realizei atividades de estudo.';

	VALUE $Q004_ 
		'A'=	'Eu aprendi mais no ensino remoto (estudando somente em casa).'
		'B'=	'Eu aprendi mais estudando de forma h�brida.'
		'C'=	'Eu aprendi mais estudando de forma presencial.'
		'D'=	'Eu aprendi no ensino remoto ou h�brido na mesma medida de quando eu estava no ensino presencial.'
		'E'=	'Eu n�o estive matriculado(a) em 2021, mas aprendi estudando por conta pr�pria.'
		'F'=	'Eu n�o estive matriculado(a) em 2021 e nem estudei.';

	VALUE $Q005_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q006_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';
		
	VALUE $Q007_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';
		
	VALUE $Q008_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';
		
	VALUE $Q009_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q010_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q011_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q012_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q013_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q014_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q015_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q016_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q017_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q018_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q019_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q020_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q021_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q022_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q023_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q024_ 
		'A'=	'Nenhuma vez.'
		'B'=	'Poucas vezes.'
		'C'=	'Muitas vezes.'
		'D'=	'Em todas as vezes.';

	VALUE $Q025A 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q025B 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q025C 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q025D 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q025E 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q025F 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q026A 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q026B 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q026C 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q026D 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q026E 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q026F 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q026G 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q026H 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q027_ 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028A 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028B
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028C 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028D 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028E 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028F 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028G 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028H 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028I 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028J 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028K 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028L 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028M 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028N 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028O 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028P 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028Q 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q028R 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q029_ 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q030A 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q030B 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q030C 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q030D 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q030E 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q030F 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q030G 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q031_ 
		'A'=	'Sim.'
		'B'=	'N�o.'
		'C'=	'Precisei de ajuda para estudar, mas n�o tive ningu�m para me auxiliar.';

	VALUE $Q032A 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q032B 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q032C 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q032D 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q032E 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q032F 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q032G 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033A 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033B 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033C 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033D 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033E 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033F 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033G 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033H 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033I 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q033J 
		'A'=	'Sim.'
		'B'=	'N�o.';

	VALUE $Q034_
		'A'=	'Nada preparado(a).'
		'B'=	'Um pouco preparado(a).'
		'C'=	'Bem preparado(a).'
		'D'=	'Muito preparado(a).'
		'E'=	'Totalmente preparado(a).';
	
RUN;


DATA WORK.QUEST_HAB_ESTUDO;
INFILE 'C:\QUEST_HAB_ESTUDO.csv' /*local do arquivo*/
        LRECL=200
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
        NU_INSCRICAO     : BEST21.
        TP_RESPOSTA		 : BEST1.
        Q001             : $CHAR1. 
		Q002             : $CHAR1. 
		Q003             : $CHAR1. 
		Q004             : $CHAR1. 
		Q005             : $CHAR1. 
		Q006             : $CHAR1. 
		Q007             : $CHAR1. 
		Q008             : $CHAR1. 
		Q009             : $CHAR1. 
		Q010             : $CHAR1. 
		Q011             : $CHAR1. 
		Q012             : $CHAR1. 
		Q013             : $CHAR1. 
		Q014             : $CHAR1. 
		Q015             : $CHAR1. 
		Q016             : $CHAR1. 
		Q017             : $CHAR1. 
		Q018             : $CHAR1. 
		Q019             : $CHAR1. 
		Q020             : $CHAR1. 
		Q021             : $CHAR1. 
		Q022             : $CHAR1. 
		Q023             : $CHAR1. 
		Q024             : $CHAR1. 
		Q025A            : $CHAR1. 
		Q025B            : $CHAR1. 
		Q025C            : $CHAR1. 
		Q025D            : $CHAR1. 
		Q025E            : $CHAR1. 
		Q025F            : $CHAR1. 
		Q026A            : $CHAR1. 
		Q026B            : $CHAR1. 
		Q026C            : $CHAR1. 
		Q026D            : $CHAR1. 
		Q026E            : $CHAR1. 
		Q026F            : $CHAR1. 
		Q026G            : $CHAR1. 
		Q026H            : $CHAR1. 
		Q027             : $CHAR1. 
		Q028A            : $CHAR1. 
		Q028B            : $CHAR1. 
		Q028C            : $CHAR1. 
		Q028D            : $CHAR1. 
		Q028E            : $CHAR1. 
		Q028F            : $CHAR1. 
		Q028G            : $CHAR1. 
		Q028H            : $CHAR1. 
		Q028I            : $CHAR1. 
		Q028J            : $CHAR1. 
		Q028K            : $CHAR1. 
		Q028L            : $CHAR1. 
		Q028M            : $CHAR1. 
		Q028N            : $CHAR1. 
		Q028O            : $CHAR1. 
		Q028P            : $CHAR1. 
		Q028Q            : $CHAR1. 
		Q028R            : $CHAR1. 
		Q029             : $CHAR1. 
		Q030A            : $CHAR1. 
		Q030B            : $CHAR1. 
		Q030C            : $CHAR1. 
		Q030D            : $CHAR1. 
		Q030E            : $CHAR1. 
		Q030F            : $CHAR1. 
		Q030G            : $CHAR1. 
		Q031             : $CHAR1. 
		Q032A            : $CHAR1. 
		Q032B            : $CHAR1. 
		Q032C            : $CHAR1. 
		Q032D            : $CHAR1. 
		Q032E            : $CHAR1. 
		Q032F            : $CHAR1. 
		Q032G            : $CHAR1. 
		Q033A            : $CHAR1. 
		Q033B            : $CHAR1. 
		Q033C            : $CHAR1. 
		Q033D            : $CHAR1. 
		Q033E            : $CHAR1. 
		Q033F            : $CHAR1. 
		Q033G            : $CHAR1. 
		Q033H            : $CHAR1. 
		Q033I            : $CHAR1. 
		Q033J            : $CHAR1. 
		Q034			 : $CHAR1.;

ATTRIB TP_RESPOSTA FORMAT=TP_RESPOSTA.;
ATTRIB Q001  FORMAT=$Q001_.;
ATTRIB Q002  FORMAT=$Q002_.;
ATTRIB Q003  FORMAT=$Q003_.;
ATTRIB Q004  FORMAT=$Q004_.;
ATTRIB Q005  FORMAT=$Q005_.;
ATTRIB Q006  FORMAT=$Q006_.;
ATTRIB Q007  FORMAT=$Q007_.;
ATTRIB Q008  FORMAT=$Q008_.;
ATTRIB Q009  FORMAT=$Q009_.;
ATTRIB Q010  FORMAT=$Q010_.;
ATTRIB Q011  FORMAT=$Q011_.;
ATTRIB Q012  FORMAT=$Q012_.;
ATTRIB Q013  FORMAT=$Q013_.;
ATTRIB Q014  FORMAT=$Q014_.;
ATTRIB Q015  FORMAT=$Q015_.;
ATTRIB Q016  FORMAT=$Q016_.;
ATTRIB Q017  FORMAT=$Q017_.;
ATTRIB Q018  FORMAT=$Q018_.;
ATTRIB Q019  FORMAT=$Q019_.;
ATTRIB Q020  FORMAT=$Q020_.;
ATTRIB Q021  FORMAT=$Q021_.;
ATTRIB Q022  FORMAT=$Q022_.;
ATTRIB Q023  FORMAT=$Q023_.;
ATTRIB Q024  FORMAT=$Q024_.;
ATTRIB Q025A FORMAT=$Q025A.;
ATTRIB Q025B FORMAT=$Q025B.;
ATTRIB Q025C FORMAT=$Q025C.;
ATTRIB Q025D FORMAT=$Q025D.;
ATTRIB Q025E FORMAT=$Q025E.;
ATTRIB Q025F FORMAT=$Q025F.;
ATTRIB Q026A FORMAT=$Q026A.;
ATTRIB Q026B FORMAT=$Q026B.;
ATTRIB Q026C FORMAT=$Q026C.;
ATTRIB Q026D FORMAT=$Q026D.;
ATTRIB Q026E FORMAT=$Q026E.;
ATTRIB Q026F FORMAT=$Q026F.;
ATTRIB Q026G FORMAT=$Q026G.;
ATTRIB Q026H FORMAT=$Q026H.;
ATTRIB Q027  FORMAT=$Q027_.;
ATTRIB Q028A FORMAT=$Q028A.;
ATTRIB Q028B FORMAT=$Q028B.;
ATTRIB Q028C FORMAT=$Q028C.;
ATTRIB Q028D FORMAT=$Q028D.;
ATTRIB Q028E FORMAT=$Q028E.;
ATTRIB Q028F FORMAT=$Q028F.;
ATTRIB Q028G FORMAT=$Q028G.;
ATTRIB Q028H FORMAT=$Q028H.;
ATTRIB Q028I FORMAT=$Q028I.;
ATTRIB Q028J FORMAT=$Q028J.;
ATTRIB Q028K FORMAT=$Q028K.;
ATTRIB Q028L FORMAT=$Q028L.;
ATTRIB Q028M FORMAT=$Q028M.;
ATTRIB Q028N FORMAT=$Q028N.;
ATTRIB Q028O FORMAT=$Q028O.;
ATTRIB Q028P FORMAT=$Q028P.;
ATTRIB Q028Q FORMAT=$Q028Q.;
ATTRIB Q028R FORMAT=$Q028R.;
ATTRIB Q029  FORMAT=$Q029_.;
ATTRIB Q030A FORMAT=$Q030A.;
ATTRIB Q030B FORMAT=$Q030B.;
ATTRIB Q030C FORMAT=$Q030C.;
ATTRIB Q030D FORMAT=$Q030D.;
ATTRIB Q030E FORMAT=$Q030E.;
ATTRIB Q030F FORMAT=$Q030F.;
ATTRIB Q030G FORMAT=$Q030G.;
ATTRIB Q031  FORMAT=$Q031_.;
ATTRIB Q032A FORMAT=$Q032A.;
ATTRIB Q032B FORMAT=$Q032B.;
ATTRIB Q032C FORMAT=$Q032C.;
ATTRIB Q032D FORMAT=$Q032D.;
ATTRIB Q032E FORMAT=$Q032E.;
ATTRIB Q032F FORMAT=$Q032F.;
ATTRIB Q032G FORMAT=$Q032G.;
ATTRIB Q033A FORMAT=$Q033A.;
ATTRIB Q033B FORMAT=$Q033B.;
ATTRIB Q033C FORMAT=$Q033C.;
ATTRIB Q033D FORMAT=$Q033D.;
ATTRIB Q033E FORMAT=$Q033E.;
ATTRIB Q033F FORMAT=$Q033F.;
ATTRIB Q033G FORMAT=$Q033G.;
ATTRIB Q033H FORMAT=$Q033H.;
ATTRIB Q033I FORMAT=$Q033I.;
ATTRIB Q033J FORMAT=$Q033J.;
ATTRIB Q034  FORMAT=$Q034_.;

LABEL

NU_INSCRICAO = 'N�mero de inscri��o'
TP_RESPOSTA = 'Tipo de op��o de resposta ao question�rio'
Q001  = 'Considerando a etapa de Ensino M�dio, qual dessas situa��es est� de acordo com o seu v�nculo escolar durante a pandemia?'
Q002  = 'Considerando a continuidade do v�nculo escolar na pandemia, qual dessas situa��es est� de acordo com sua realidade?'
Q003  = 'Considerando o ano de 2021 (o segundo ano da pandemia), qual dessas situa��es est� de acordo com sua experi�ncia?'
Q004  = 'Como voc� percebe o seu processo de aprendizagem durante a pandemia?'
Q005  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Organizei cronograma de estudos com tempos mais longos e mais curtos para estudar de acordo com a dificuldade das mat�rias.'
Q006  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Reservei tempos mais longos e mais curtos para estudar de acordo com a dificuldade das mat�rias.'
Q007  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Organizei material para ser estudado.'
Q008  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Eu me dediquei aos hor�rios programados de estudo de acordo com a dificuldade das mat�rias.'
Q009  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Li os textos indicados em cada mat�ria antes de assistir as aulas ou videoaulas sobre o assunto dos textos.'
Q010  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Resumi os textos das mat�rias, destacando as partes mais importantes.'
Q011  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Resumi as videoaulas ou os podcasts, destacando as partes mais importantes.'
Q012  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Fiz as atividades das mat�rias para fixa��o de conte�do.'
Q013  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Fiz atividades avaliativas, inclusive simulados, para verificar o quanto aprendi durante a pandemia.'
Q014  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Aproveitei o tempo das aulas online ou atividades de refor�o, sem desperdi��-lo com distra��es.'
Q015  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Anotei as explica��es obtidas em videoaulas ou podcasts das mat�rias.'
Q016  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Anotei as informa��es que obtive ao assistir v�deos complementares de assuntos do meu interesse.'
Q017  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Destaquei as d�vidas que tive ao ler os textos das disciplinas para esclarecer com os professores.'
Q018  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Estruturei as principais ideias para produzir reda��es.'
Q019  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Treinei reda��o.'
Q020  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Participei de f�runs de discuss�o por mat�ria para tirar d�vidas.'
Q021  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Entrei nas aulas online por videoconfer�ncia sem atraso da minha parte.'
Q022  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Assisti todas as aulas online nas datas programadas para estudo.'
Q023  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Revisei as anota��es das aulas, os resumos e anota��es dos demais materiais que li ou assisti.'
Q024  = 'Frequ�ncia de atividades de estudo no segundo ano da pandemia: Reassisti as videoaulas e os podcasts das mat�rias.'
Q025A = 'Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Aparelho de r�dio.'
Q025B = 'Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Computador/notebook.'
Q025C = 'Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Livros/apostilas/materiais impressos.'
Q025D = 'Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Tablet.'
Q025E = 'Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Telefone celular.'
Q025F = 'Qual meio voc� MAIS utilizou para estudar ou para manter-se informado(a)? Televis�o.'
Q026A = 'Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Audioaula/podcast avulsos.'
Q026B = 'Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Audioaula/podcast em plataforma de educa��o a dist�ncia.'
Q026C = 'Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Grupos de Whatsapp, Facebook, Telegram e similares.'
Q026D = 'Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Livros/apostilas/materiais digitais.'
Q026E = 'Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Programa de r�dio.'
Q026F = 'Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Programa de TV.'
Q026G = 'Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Videoaula avulsa.'
Q026H = 'Qual ou quais tipo(s) de acesso remoto voc� MAIS utilizou para estudar ou para manter-se informado(a)? Videoaula em plataforma de educa��o a dist�ncia.'
Q027  = 'Voc� vivenciou problemas em sua rotina para estudar ou manter-se informado(a) durante a pandemia?'
Q028A = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: eu me senti desestimulado(a) por n�o ter colegas com quem interagir sobre o que eu estava estudando.'
Q028B = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive dificuldade de compreender os conte�dos por falta de explica��es de um professor em tempo real.'
Q028C = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: fiquei por muito tempo diante das telas, sem pequenos intervalos para descansar.'
Q028D = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: reduzi a pr�tica de atividades f�sicas.'
Q028E = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: dormi por menos tempo.'
Q028F = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive epis�dios de ins�nia.'
Q028G = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: senti dificuldade em manter a motiva��o para estudar por minha conta.'
Q028H = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: senti dificuldade em me motivar a cumprir meu cronograma.'
Q028I = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: senti medo de n�o conseguir aprender os conte�dos.'
Q028J = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: senti ansiedade devido ao isolamento social e ao receio de cont�gio da doen�a.'
Q028K = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: dediquei tempo para ajudar algum familiar a estudar em casa.'
Q028L = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: precisei ficar em repouso porque tive Covid com sintomas.'
Q028M = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: precisei ficar em repouso porque tive outra doen�a.'
Q028N = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: precisei cuidar de algum familiar que teve Covid com sintomas.'
Q028O = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: precisei cuidar de algum familiar que teve outra doen�a.'
Q028P = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive que cuidar do(s) meu(s) irm�o(s) menor(es) para meus pais trabalharem.'
Q028Q = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive que come�ar a trabalhar em casa para obter renda.'
Q028R = 'Em 2021, eu n�o consegui me dedicar aos estudos ou manter-me informado(a) porque: tive que trabalhar em servi�o considerado essencial durante a pandemia.'
Q029  = 'Voc� teve dificuldades de infraestrutura para estudar ou manter-se informado(a) durante 2021?'
Q030A = 'PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Equipamento (computador pessoal ou notebook) pouco dispon�vel por ser compartilhado com outros familiares.'
Q030B = 'PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Conex�o ruim ou limitada com a internet.'
Q030C = 'PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Equipamento (computador pessoal ou notebook) com configura��o insuficiente para estudar ou acessar materiais'
Q030D = 'PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Material pedag�gico insuficiente para estudar, faltando livros, apostilas, textos, v�deos.'
Q030E = 'PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Local de estudos faltando boa ilumina��o, higiene, ventila��o e sil�ncio.'
Q030F = 'PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Local de estudos sem mob�lia para guardar e para dispor os materiais de estudo.'
Q030G = 'PRINCIPAIS dificuldades de infraestrutura que voc� teve para estudar ou manter-se informado(a) durante 2021: Recursos insuficientes para alimenta��o.'
Q031  = 'Voc� precisou da ajuda de algu�m para estudar ou manter-se informado(a) em 2021?'
Q032A = 'Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Amigo(s)/colega(s)/conhecido(s).'
Q032B = 'Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Filho(s)/sobrinho(s).'
Q032C = 'Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Irm�o(s)/primo(s).'
Q032D = 'Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Namorado(a)/c�njuge/companheiro(a).'
Q032E = 'Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Pai/m�e.'
Q032F = 'Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Professor(a) / orientador(a).'
Q032G = 'Quem ajudou voc� com mais frequ�ncia a estudar ou manter-se informado(a) em 2021? Tio(s)/Av�,av�.'
Q033A = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Com a alimenta��o.'
Q033B = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Para acessar � internet.'
Q033C = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Financeira para comprar livros/apostilas ou fazer c�pias.'
Q033D = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Financeira para comprar cursos online.'
Q033E = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Financeira para me inscrever em provas ou no Enem.'
Q033F = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Para elaborar um cronograma de estudos.'
Q033G = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Para pesquisar materiais na internet.'
Q033H = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Para preencher formul�rios de inscri��o.'
Q033I = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Por meio de empr�stimo de algum equipamento (celular, computador, notebook, tablet) para eu estudar.'
Q033J = 'Que tipo de ajuda voc� recebeu com mais frequ�ncia para estudar ou manter-se informado(a) em 2021? Por meio de explica��o de conte�dos que eu n�o havia entendido.'
Q034  = 'A partir da sua experi�ncia de estudos em 2021, o quanto voc� se sente preparado(a) para conduzir o seu processo de aprendizagem?';

IF NU_INSCRICAO = . THEN DELETE;

RUN;