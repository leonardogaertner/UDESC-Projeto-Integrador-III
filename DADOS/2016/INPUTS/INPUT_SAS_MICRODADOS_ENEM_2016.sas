
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)					  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2016.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2016       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2016.CSV no diret�rio C:\ do computador.			      */
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



proc format;


	value $IN_TREINEIRO
		0='N�o'
		1='Sim';

	value $TP_DEPENDENCIA_ADM
       1= 'Federal'
	   2= 'Estadual'
	   3= 'Municipal'
	   4= 'Privada';

	value $TP_LOCALIZACAO
       1= 'Urbana'
	   2= 'Rural';

	value $TP_SIT_FUNC_ESC
	   1='Em atividade'
	   2='Paralisada'
	   3='Extinta'
	   4='Escola extinta em anos anteriores';

	value  $TP_SEXO
		M ='Masculino'
		F ='Feminino';

	value $TP_NACIONAL
	   0= 'N�o informado'
	   1= 'Brasileiro(a)'
	   2= 'Brasileiro(a) Naturalizado(a)'
	   3= 'Estrangeiro(a)'
	   4= 'Brasileiro(a) Nato(a), nascido(a) no exterior';

	value  $TP_ST_CONCLUSAO
		1='J� conclu� o Ensino M�dio'
		2='Estou cursando e concluirei o Ensino M�dio em 2016'	
		3='Estou cursando e concluirei o Ensino M�dio ap�s 2016'
		4='N�o conclu� e n�o estou cursando o Ensino M�dio';

	value $TP_ANO_CONCLUIU
		0=	'N�o informado'
		1=	'2015'
		2=	'2014'
		3=	'2013'
		4=	'2012'
		5=	'2011'
		6=	'2010'
		7=	'2009'
		8=	'2008'
		9=	'2007'
		10=	'Anterior a 2007';


	value  $TP_ESCOLA
		1='N�o respondeu'
		2='P�blica'
		3='Privada'
		4='Exterior';

	value  $TP_ENSINO
		1='Ensino Regular'
		2='Educa��o Especial - Modalidade Substitutiva'
		3='Educa��o de Jovens e Adultos';

	value  $TP_ESTADO_CIVIL
		0='Solteiro(a)'
		1='Casado(a)/Mora com um(a) companheiro(a)'
		2='Divorciado(a)/Desquitado(a)/Separado(a)'
		3='Vi�vo(a)';

	value  $TP_COR_RACA
		0='N�o declarado'
		1='Branca'
		2='Preta'
		3='Parda'
		4='Amarela'
		5='Ind�gena'
		6='N�o disp�e da informa��o';

	value  $TP_FAIXA_ETARIA
		1  = 'Menor de 17 anos'
		2  = '17 anos'
		3  = '18 anos'
		4  = '19 anos'
		5  = '20 anos'
		6  = '21 anos'
		7  = '22 anos'
		8  = '23 anos'
		9  = '24 anos'
		10 = '25 anos'
		11 = 'Entre 26 e 30 anos'
		12 = 'Entre 31 e 35 anos'
		13 = 'Entre 36 e 40 anos'
		14 = 'Entre 41 e 45 anos'
		15 = 'Entre 46 e 50 anos'
		16 = 'Entre 51 e 55 anos'
		17 = 'Entre 56 e 60 anos'
		18 = 'Entre 61 e 65 anos'
		19 = 'Entre 66 e 70 anos'
		20 = 'Maior de 70 anos';

	value  $IN_CERTIFICADO
		1='Sim'
		0='N�o';

	value  $TP_PRESENCA_CN
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_CH
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_LC
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_MT
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $CO_PROVA_CN
		291='Azul'
		292='Amarela'
		293='Branca'
		294='Rosa'
		307='Branca - Adaptada'
		331='Azul (Reaplica��o)'
		332='Amarela (Reaplica��o)'
		333='Branca (Reaplica��o)'
		334='Rosa (Reaplica��o)'
		351='Azul (Reaplica��o)'
		352='Amarela (Reaplica��o)'
		353='Branca (Reaplica��o)'
		354='Rosa (Reaplica��o)'
		355='Branca - Adaptada (Reaplica��o)';

	value  $CO_PROVA_CH
		295='Azul'
		296='Amarela'
		297='Branca'
		298='Rosa'
		308='Branca - Adaptada'
		336='Azul (Reaplica��o)'
		337='Amarela (Reaplica��o)'
		338='Branca (Reaplica��o)'
		339='Rosa (Reaplica��o)'
		356='Azul (Reaplica��o)'
		357='Amarela (Reaplica��o)'
		358='Branca (Reaplica��o)'
		359='Rosa (Reaplica��o)'
		360='Branca - Adaptada (Reaplica��o)';

	value  $CO_PROVA_LC
		299='Azul'
		300='Amarela'
		301='Rosa'
		302='Cinza'
		309='Cinza - Adaptada'
		341='Azul (Reaplica��o)'
		342='Amarela (Reaplica��o)'
		343='Rosa (Reaplica��o)'
		344='Cinza - Adaptada'
		361='Azul (Reaplica��o)'
		362='Amarela (Reaplica��o)'
		363='Rosa (Reaplica��o)'
		364='Cinza (Reaplica��o)'
		365='Cinza - Adaptada (Reaplica��o)';

	value  $CO_PROVA_MT
		303='Azul'
		304='Amarela'
		305='Rosa'
		306='Cinza'
		310='Cinza - Adaptada'
		346='Azul (Reaplica��o)'
		347='Amarela (Reaplica��o)'
		348='Rosa (Reaplica��o)'
		349='Cinza (Reaplica��o)'
		366='Azul (Reaplica��o)'
		367='Amarela (Reaplica��o)'
		368='Rosa (Reaplica��o)'
		369='Cinza (Reaplica��o)'
		370='Cinza - Adaptada (Reaplica��o)';

	value  $TP_LINGUA
		0='Ingl�s'
		1='Espanhol';

	value  $TP_STATUS_REDACAO
		1='Sem problemas'
		2='Anulada'
		3='C�pia Texto Motivador'
        4='Em Branco'
		5='Fere Direitos Humanos'
		6='Fuga ao tema'
        7='N�o atendimento ao tipo'
		8='Texto insuficiente'
        9='Parte desconectada';
				
	
	value $Qum
		A='Nunca estudou'
		B='N�o completou a 4� s�rie/5� ano do ensino fundamental'
		C='Completou a 4� s�rie/5� ano, mas n�o completou a 8� s�rie/9� ano do ensino fundamental'
		D='Completou a 8� s�rie/9� ano do ensino fundamental, mas n�o completou o Ensino M�dio'
		E='Completou o Ensino M�dio, mas n�o completou a Faculdade'
		F='Completou a Faculdade, mas n�o completou a P�s-gradua��o'
		G='Completou a P�s-gradua��o'
		H='N�o sei';

	value $Qdois
		A='Nunca estudou'
		B='N�o completou a 4� s�rie/5� ano do ensino fundamental'
		C='Completou a 4� s�rie/5� ano, mas n�o completou a 8� s�rie/9� ano do ensino fundamental'
		D='Completou a 8� s�rie/9� ano do ensino fundamental, mas n�o completou o Ensino M�dio'
		E='Completou o Ensino M�dio, mas n�o completou a Faculdade'
		F='Completou a Faculdade, mas n�o completou a P�s-gradua��o'
		G='Completou a P�s-gradua��o'
		H='N�o sei';

	value $Qtres
		A='Grupo 1: Lavrador, agricultor sem empregados, b�ia fria, criador de animais (gado, porcos, galinhas, ovelhas, cavalos etc.), apicultor, pescador, lenhador, seringueiro, extrativista'
		B='Grupo 2: Diarista, empregado dom�stico, cuidador de idosos, bab�, cozinheiro (em casas particulares), motorista particular, jardineiro, faxineiro de empresas e pr�dios, vigilante, porteiro, carteiro, office-boy, vendedor, caixa, atendente de loja, auxiliar administrativo, recepcionista, servente de pedreiro, repositor de mercadoria'
		C='Grupo 3: Padeiro, cozinheiro industrial ou em restaurantes, sapateiro, costureiro, joalheiro, torneiro mec�nico, operador de m�quinas, soldador, oper�rio de f�brica, trabalhador da minera��o, pedreiro, pintor, eletricista, encanador, motorista, caminhoneiro, taxista'
		D='Grupo 4: Professor (de ensino fundamental ou m�dio, idioma, m�sica, artes etc.), t�cnico (de enfermagem, contabilidade, eletr�nica etc.), policial, militar de baixa patente (soldado, cabo, sargento), corretor de im�veis, supervisor e gerente, mestre de obras, pastor, microempres�rio (propriet�rio de empresa com menos de 10 empregados), pequeno comerciante, pequeno propriet�rio de terras, trabalhador aut�nomo ou por conta pr�pria'
		E='Grupo 5: M�dico, engenheiro, dentista, psic�logo, economista, advogado, juiz, promotor, defensor, delegado, tenente, capit�o, coronel, professor universit�rio, diretor em empresas p�blicas e privadas, pol�tico, propriet�rio de empresas com mais de 10 empregados'
		F='N�o Sei';
		
	value $Qquatro
		A='Grupo 1: Lavradora, agricultora sem empregados, b�ia fria, criadora de animais (gado, porcos, galinhas, ovelhas, cavalos etc.), apicultora, pescadora, lenhadora, seringueira, extrativista'
		B='Grupo 2: Diarista, empregada dom�stica, cuidadora de idosos, bab�, cozinheira (em casas particulares), motorista particular, jardineira, faxineira de empresas e pr�dios, vigilante, porteira, carteira, office-boy, vendedora, caixa, atendente de loja, auxiliar administrativa, recepcionista, servente de pedreiro, repositora de mercadoria'
		C='Grupo 3: Padeira, cozinheira industrial ou em restaurantes, sapateira, costureira, joalheira, torneira mec�nica, operadora de m�quinas, soldadora, oper�ria de f�brica, trabalhadora da minera��o, pedreira, pintora, eletricista, encanadora, motorista, caminhoneira, taxista'
		D='Grupo 4: Professora (de ensino fundamental ou m�dio, idioma, m�sica, artes etc.), t�cnica (de enfermagem, contabilidade, eletr�nica etc.), policial, militar de baixa patente (soldado, cabo, sargento), corretora de im�veis, supervisora e gerente, mestre de obras, pastora, microempres�ria (propriet�ria de empresa com menos de 10 empregados), pequena comerciante, pequena propriet�ria de terras, trabalhadora aut�noma ou por conta pr�pria'
		E='Grupo 5: M�dica, engenheira, dentista, psic�loga, economista, advogada, ju�za, promotora, defensora, delegada, tenente, capit�, coronel, professora universit�ria, diretora em empresas p�blicas e privadas, pol�tica, propriet�ria de empresas com mais de 10 empregados'
		F='N�o Sei';

	value $Qcinco
		1='1'
		2='2'
		3='3'
		4='4'
		5='5'
		6='6'
		7='7'
		8='8'
		9='9'
		10='10'
		11='11'
		12='12'
		13='13'
		14='14'
		15='15'
		16='16'
		17='17'
		18='18'
		19='19'
		20='20';

	value $Qseis
		A= 'Nenhuma renda'
		B= 'At� R$ 880,00'
		C= 'De R$ 880,01 at� R$ 1.320,00'
		D= 'De R$ 1.320,01 at� R$ 1.760,00'
		E= 'De R$ 1.760,01 at� R$ 2.200,00'
		F= 'De R$ 2.200,01 at� R$ 2.640,00'
		G= 'De R$ 2.640,01 at� R$ 3.520,00'
		H= 'De R$ 3.520,01 at� R$ 4.400,00'
		I= 'De R$ 4.400,01 at� R$ 5.280,00'
		J= 'De R$ 5.280,01 at� R$ 6.160,00'
		K= 'De R$ 6.160,01 at� R$ 7.040,00'
		L= 'De R$ 7.040,01 at� R$ 7.920,00'
		M= 'De R$ 7.920,01 at� R$ 8.800,00'
		N= 'De R$ 8.800,01 at� R$ 10.560,00'
		O= 'De R$ 10.560,01 at� R$ 13.200,00'
		P= 'De R$ 13.200,01 at� R$ 17.600,00'
		Q= 'Mais de 17.600,00';

	value $Qsete
		A='N�o'
		B='Sim, um ou dois dias por semana'
		C='Sim, tr�s ou quatro dias por semana'
		D='Sim, pelo menos cinco dias por semana';

	value $Qoito
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qnove
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdez
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qonze
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdoze
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qtreze
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qcatorze
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qquinze
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdezesseis
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdezessete
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qdezoito
		A='N�o'
		B='Sim';

	value $Qdezenove
		A='N�o'
		B='Sim, uma'
		C='Sim, duas'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qvinte
		A='N�o'
		B='Sim';

	value $Qvinteum
		A='N�o'
		B='Sim';

	value $Qvintedois
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qvintetres
		A='N�o'
		B='Sim';

	value $Qvintequatro
		A='N�o'
		B='Sim, um'
		C='Sim, dois'
		D='Sim, tr�s'
		E='Sim, quatro ou mais';

	value $Qvintecinco
		A='N�o'
		B='Sim';
		
	value $Qvinteseis
		A='N�o, nunca trabalhei'
		B='Sim, j� trabalhei, mas n�o estou trabalhando'
		C='Sim, estou trabalhando';

	value $Qvintesete
		A= 'Menos de 14 anos'
		B= '14 anos'
        C= '15 anos'
        D= '16 anos'
        E= '17 anos'
        F= '18 anos'
        G= '19 anos'
        H= '20 anos'
        I= '21 anos'
        J= '22 anos'
        K= '23 anos'
        L= '24 anos'
        M= '25 anos ou mais';

	value $Qvinteoito
		A='At� 10 horas semanais'
		B='De 11 a 20 horas semanais'
		C='De 21 a 30 horas semanais'
		D='De 31 a 40 horas semanais'
		E='Mais de 40 horas semanais';

	value $Qquarentadois
		A='Somente em escola p�blica'
		B='A maior parte em escola p�blica'
		C='Somente em escola particular'
		D='A maior parte em escola particular'
		E='Somente em escola ind�gena'
		F='A maior parte em escola ind�gena'
		G='Somente em escola situada em comunidade quilombola'
		H='A maior parte em escola situada em comunidade quilombola';

    value $Qquarentatres
		A='Cursei o Ensino Fundamental somente na modalidade regular'
		B='Cursei o Ensino Fundamental parte na modalidade regular e parte na modalidade EJA (Educa��o de Jovens e Adultos)'
		C='Cursei o Ensino Fundamental somente na modalidade EJA (Educa��o de Jovens e Adultos)'
		D='Outras modalidades';

	value $Qquarentaquatro
		A='Somente no diurno'
		B='Parte no diurno e parte no noturno'
		C='Somente no noturno';

	value $Qquarentacinco
		A='N�o abandonei, nem fui reprovado'
		B='N�o abandonei, mas fui reprovado'
		C='Abandonei, mas n�o fui reprovado'
		D='Abandonei e fui reprovado';

	value $Qquarentaseis
		A='J� conclu� o Ensino M�dio'
		B='Estou cursando e concluirei o Ensino M�dio em 2016'
		C='Estou cursando e concluirei o Ensino M�dio ap�s 2016'
		D='N�o conclu� e n�o estou cursando o Ensino M�dio';

	value $Qquarentasete
		A='Somente em escola p�blica'
		B='Parte em escola p�blica e parte em escola privada sem bolsa de estudo integral'
		C='Parte em escola p�blica e parte em escola privada com bolsa de estudo integral'
		D='Somente em escola privada sem bolsa de estudo integral'
		E='N�o frequentei a escola';

	value $Qquarentaoito
		A='Cursei o Ensino M�dio somente na modalidade regular'
		B='Cursei o Ensino M�dio parte na modalidade regular e parte na modalidade EJA (Educa��o de Jovens 	e Adultos)'
		C='Cursei o Ensino M�dio somente na modalidade EJA (Educa��o de Jovens e Adultos)'
		D='Outras modalidades';

	value $Qquarentanove
		A='Somente no diurno'
		B='Parte no diurno e parte no noturno'
		C='Somente no noturno';

    value $Qcinquenta
		A='N�o abandonei, nem fui reprovado'
		B='N�o abandonei, mas fui reprovado'
		C='Abandonei, mas n�o fui reprovado'
		D='Abandonei e fui reprovado';

	
run;


DATA WORK.DADOS_ENEM_2016;
INFILE 'C:\MICRODADOS_ENEM_2016.csv' /*local do arquivo*/
        LRECL=963
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
        NU_INSCRICAO       : BEST21.
        NU_ANO           : BEST4.
		TP_FAIXA_ETARIA     : $CHAR2.
        TP_SEXO          : $CHAR1.
        TP_ESTADO_CIVIL  :  $CHAR1.
        TP_COR_RACA      :  $CHAR1.
        TP_NACIONALIDADE    : $CHAR2.
        TP_ST_CONCLUSAO     :  $CHAR1.
        TP_ANO_CONCLUIU     :  $CHAR2.
        TP_ESCOLA        :  $CHAR1.
        TP_ENSINO     :  $CHAR1.
		IN_TREINEIRO	:$CHAR1.
        CO_MUNICIPIO_ESC : BEST7.
        NO_MUNICIPIO_ESC : $CHAR32.
        CO_UF_ESC       : BEST2.
        SG_UF_ESC           : $CHAR2.
        TP_DEPENDENCIA_ADM_ESC : $CHAR1.
        TP_LOCALIZACAO_ESC : $CHAR1.
        TP_SIT_FUNC_ESC     : $CHAR1.
        IN_CERTIFICADO   : $CHAR1.
        NO_ENTIDADE_CERTIFICACAO : $CHAR90.
        CO_UF_ENTIDADE_CERTIFICACAO : BEST2.
        SG_UF_ENTIDADE_CERTIFICACAO : $CHAR2.
        CO_MUNICIPIO_PROVA : BEST7.
        NO_MUNICIPIO_PROVA : $CHAR27.
        CO_UF_PROVA     : BEST2.
        SG_UF_PROVA         : $CHAR2.
        TP_PRESENCA_CN   : $CHAR1.
        TP_PRESENCA_CH   : $CHAR1.
        TP_PRESENCA_LC   : $CHAR1.
        TP_PRESENCA_MT   : $CHAR1.
        CO_PROVA_CN      : $CHAR3.
        CO_PROVA_CH      : $CHAR3.
        CO_PROVA_LC      : $CHAR3.
        CO_PROVA_MT      : $CHAR3.
        NU_NOTA_CN          : BEST8.2
        NU_NOTA_CH          : BEST8.2
        NU_NOTA_LC          : BEST8.2
        NU_NOTA_MT          : BEST8.2
        TX_RESPOSTAS_CN  : $CHAR45.
        TX_RESPOSTAS_CH  : $CHAR45.
        TX_RESPOSTAS_LC  : $CHAR50.
        TX_RESPOSTAS_MT  : $CHAR45.
        TP_LINGUA        : $CHAR1.
        TX_GABARITO_CN      : $CHAR45.
        TX_GABARITO_CH      : $CHAR45.
        TX_GABARITO_LC      : $CHAR50.
        TX_GABARITO_MT      : $CHAR45.
        TP_STATUS_REDACAO :$CHAR2.
        NU_NOTA_COMP1    : BEST3.
        NU_NOTA_COMP2    : BEST3.
        NU_NOTA_COMP3    : BEST3.
        NU_NOTA_COMP4    : BEST3.
        NU_NOTA_COMP5    : BEST3.
        NU_NOTA_REDACAO  : BEST4.
        Q001             : $CHAR1.
        Q002             : $CHAR1.
        Q003             : $CHAR1.
        Q004             : $CHAR1.
        Q005             : $CHAR2.
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
        Q025             : $CHAR1.
        Q026             : $CHAR1.
        Q027             : $CHAR1.
        Q028             : $CHAR1.
        Q029             : $CHAR1.
        Q030             : $CHAR1.
        Q031             : $CHAR1.
        Q032             : $CHAR1.
        Q033             : $CHAR1.
        Q034             : $CHAR1.
        Q035             : $CHAR1.
        Q036             : $CHAR1.
        Q037             : $CHAR1.
        Q038             : $CHAR1.
        Q039             : $CHAR1.
        Q040             : $CHAR1.
        Q041             : $CHAR1.
        Q042             : $CHAR1.
        Q043             : $CHAR1.
        Q044             : $CHAR1.
        Q045             : $CHAR1.
        Q046             : $CHAR1.
        Q047             : $CHAR1.
        Q048             : $CHAR1.
        Q049             : $CHAR1.
        Q050             : $CHAR1. ;

ATTRIB IN_TREINEIRO					FORMAT = $IN_TREINEIRO3.;
ATTRIB TP_DEPENDENCIA_ADM_ESC 		FORMAT = $TP_DEPENDENCIA_ADM10.;
ATTRIB TP_LOCALIZACAO_ESC 			FORMAT = $TP_LOCALIZACAO10.;
ATTRIB TP_SIT_FUNC_ESC 				FORMAT = $TP_SIT_FUNC_ESC40.;
ATTRIB TP_SEXO 						FORMAT = $TP_SEXO10.;
ATTRIB TP_NACIONALIDADE 			FORMAT = $TP_NACIONAL.;
ATTRIB TP_ST_CONCLUSAO 				FORMAT = $TP_ST_CONCLUSAO52.;
ATTRIB TP_ANO_CONCLUIU				FORMAT = $TP_ANO_CONCLUIU15.;
ATTRIB TP_ESCOLA					FORMAT=$TP_ESCOLA13.;
ATTRIB TP_ENSINO 					FORMAT=$TP_ENSINO40.;
ATTRIB TP_ESTADO_CIVIL 				FORMAT=$TP_ESTADO_CIVIL40.;
ATTRIB TP_COR_RACA 					FORMAT=$TP_COR_RACA30.;
ATTRIB TP_FAIXA_ETARIA				FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB IN_CERTIFICADO 				FORMAT=$IN_CERTIFICADO3.;
ATTRIB TP_PRESENCA_CN 				FORMAT=$TP_PRESENCA_CN20.;
ATTRIB TP_PRESENCA_CH 				FORMAT=$TP_PRESENCA_CH20.;
ATTRIB TP_PRESENCA_LC 				FORMAT=$TP_PRESENCA_LC20.;
ATTRIB TP_PRESENCA_MT 				FORMAT=$TP_PRESENCA_MT20.;
ATTRIB CO_PROVA_CN 					FORMAT=$CO_PROVA_CN35.;
ATTRIB CO_PROVA_CH 					FORMAT=$CO_PROVA_CH35.;
ATTRIB CO_PROVA_LC 					FORMAT=$CO_PROVA_LC35.;
ATTRIB CO_PROVA_MT 					FORMAT=$CO_PROVA_MT35.;
ATTRIB TP_LINGUA 					FORMAT=$TP_LINGUA10.;
ATTRIB TP_STATUS_REDACAO 			FORMAT=$TP_STATUS_REDACAO35.;
ATTRIB  NU_INSCRICAO   FORMAT = 21.;
ATTRIB  NU_NOTA_CN   FORMAT = 8.2;
ATTRIB  NU_NOTA_CH   FORMAT = 8.2;
ATTRIB  NU_NOTA_LC   FORMAT = 8.2;
ATTRIB  NU_NOTA_MT   FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP1    FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP2    FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP3    FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP4    FORMAT = 8.2;
ATTRIB  NU_NOTA_COMP5    FORMAT = 8.2;
ATTRIB  NU_NOTA_REDACAO  FORMAT = 8.2;
ATTRIB Q001  FORMAT=$Qum.;
ATTRIB Q002  FORMAT=$Qdois.;
ATTRIB Q003  FORMAT=$Qtres.;
ATTRIB Q004  FORMAT=$Qquatro.;
ATTRIB Q005  FORMAT=$Qcinco.;
ATTRIB Q006  FORMAT=$Qseis.;
ATTRIB Q007  FORMAT=$Qsete.;
ATTRIB Q008  FORMAT=$Qoito.;
ATTRIB Q009  FORMAT=$Qnove.;
ATTRIB Q010 FORMAT=$Qdez.;
ATTRIB Q011 FORMAT=$Qonze.;
ATTRIB Q012 FORMAT=$Qdoze.;
ATTRIB Q013 FORMAT=$Qtreze.;
ATTRIB Q014 FORMAT=$Qcatorze.;
ATTRIB Q015 FORMAT=$Qquinze.;
ATTRIB Q016 FORMAT=$Qdezesseis.;
ATTRIB Q017 FORMAT=$Qdezessete.;
ATTRIB Q018 FORMAT=$Qdezoito.;
ATTRIB Q019 FORMAT=$Qdezenove.;
ATTRIB Q020 FORMAT=$Qvinte.;
ATTRIB Q021 FORMAT=$Qvinteum.;
ATTRIB Q022 FORMAT=$Qvintedois.;
ATTRIB Q023 FORMAT=$Qvintetres.;
ATTRIB Q024 FORMAT=$Qvintequatro.;
ATTRIB Q025 FORMAT=$Qvintecinco.;
ATTRIB Q026 FORMAT=$Qvinteseis.;
ATTRIB Q027 FORMAT=$Qvintesete.;
ATTRIB Q028 FORMAT=$Qvinteoito.;
ATTRIB Q042 FORMAT=$Qquarentadois.;
ATTRIB Q043 FORMAT=$Qquarentatres.;
ATTRIB Q044 FORMAT=$Qquarentaquatro.;
ATTRIB Q045 FORMAT=$Qquarentacinco.;
ATTRIB Q046 FORMAT=$Qquarentaseis.;
ATTRIB Q047 FORMAT=$Qquarentasete.;
ATTRIB Q048 FORMAT=$Qquarentaoito.;
ATTRIB Q049 FORMAT=$Qquarentanove.;
ATTRIB Q050 FORMAT=$Qcinquenta.;


LABEL

NU_INSCRICAO    =   'N�mero de inscri��o'
NU_ANO    =   'Ano do Enem'
IN_TREINEIRO = 'Indica se o inscrito fez a prova com intuito de apenas treinar seus conhecimentos'
CO_MUNICIPIO_ESC   =   'C�digo do munic�pio da escola' 
NO_MUNICIPIO_ESC   =   'Nome do munic�pio da escola'
CO_UF_ESC   =   'C�digo da Unidade da Federa��o da escola'
SG_UF_ESC   =   'Sigla da Unidade da Federa��o da escola'
TP_DEPENDENCIA_ADM_ESC   =   'Depend�ncia administrativa (Escola)'
TP_LOCALIZACAO_ESC   =   'Localiza��o (Escola)'
TP_SIT_FUNC_ESC   =   'Situa��o de funcionamento (Escola)'
TP_FAIXA_ETARIA    =   'Faixa Et�ria'
TP_SEXO    =   'Sexo'
TP_NACIONALIDADE   =   'Nacionalidade'
TP_ST_CONCLUSAO    =   'Situa��o de conclus�o do Ensino M�dio'
TP_ANO_CONCLUIU    =   'Ano de Conclus�o do Ensino M�dio'
TP_ESCOLA    =   'Tipo de escola do Ensino M�dio'
TP_ENSINO    =   'Tipo de institui��o que concluiu ou concluir� o Ensino M�dio'
TP_ESTADO_CIVIL    =   'Estado Civil' 
TP_COR_RACA    =   'Cor/ra�a'
IN_CERTIFICADO   =   'Indicador de solicita��o de certifica��o no Ensino M�dio'
NO_ENTIDADE_CERTIFICACAO   =   'Nome da Entidade Certificadora'
CO_UF_ENTIDADE_CERTIFICACAO    =   'C�digo da Unidade da Federa��o da Entidade Certificadora'
SG_UF_ENTIDADE_CERTIFICACAO   =   'Sigla da Unidade da Federa��o da Entidade Certificadora'
CO_MUNICIPIO_PROVA    =   'C�digo do munic�pio da aplica��o da prova'
NO_MUNICIPIO_PROVA   =   'Nome do munic�pio da aplica��o da prova'
CO_UF_PROVA    =   'C�digo da Unidade da Federa��o da aplica��o da prova'
SG_UF_PROVA    =   'Sigla da Unidade da Federa��o da aplica��o da prova'
TP_PRESENCA_CN    =   'Presen�a na prova objetiva de Ci�ncias da Natureza'
TP_PRESENCA_CH    =   'Presen�a na prova objetiva de Ci�ncias Humanas'
TP_PRESENCA_LC    =   'Presen�a na prova objetiva de Linguagens e C�digos'
TP_PRESENCA_MT    =   'Presen�a na prova objetiva de Matem�tica'
NU_NOTA_CN   =   'Nota da prova de Ci�ncias da Natureza'
NU_NOTA_CH   =   'Nota da prova de Ci�ncias Humanas'
NU_NOTA_LC   =   'Nota da prova de Linguagens e C�digos'
NU_NOTA_MT   =   'Nota da prova de Matem�tica'
TX_RESPOSTAS_CN    =   'Vetor com as respostas da parte objetiva da prova de Ci�ncias da Natureza'
TX_RESPOSTAS_CH    =   'Vetor com as respostas da parte objetiva da prova de Ci�ncias Humanas' 
TX_RESPOSTAS_LC    =   'Vetor com as respostas da parte objetiva da prova de Linguagens e C�digos' 
TX_RESPOSTAS_MT    =   'Vetor com as respostas da parte objetiva da prova de Matem�tica' 
CO_PROVA_CN    =   'C�digo do tipo de prova de Ci�ncias da Natureza'
CO_PROVA_CH    =   'C�digo do tipo de prova de Ci�ncias Humanas'
CO_PROVA_LC    =   'C�digo do tipo de prova de Linguagens e C�digos'
CO_PROVA_MT    =   'C�digo do tipo de prova de Matem�tica'
TP_LINGUA   =   'Tipo de L�ngua Estrangeira'
TX_GABARITO_CN   =   'Vetor com o gabarito da parte objetiva da prova de Ci�ncias da Natureza'
TX_GABARITO_CH   =   'Vetor com o gabarito da parte objetiva da prova de Ci�ncias Humanas'
TX_GABARITO_LC   =   'Vetor com o gabarito da parte objetiva da prova de Linguagens e C�digos'
TX_GABARITO_MT   =   'Vetor com o gabarito da parte objetiva da prova de Matem�tica'
TP_STATUS_REDACAO  =   'Situa��o da reda��o do participante'
NU_NOTA_COMP1   =   'Nota da compet�ncia 1'
NU_NOTA_COMP2   =   'Nota da compet�ncia 2'
NU_NOTA_COMP3   =   'Nota da compet�ncia 3'
NU_NOTA_COMP4   =   'Nota da compet�ncia 4'
NU_NOTA_COMP5   =   'Nota da compet�ncia 5'
NU_NOTA_REDACAO   =   'Nota da prova de reda��o'
Q001    =   'At� que s�rie seu pai, ou o homem respons�vel por voc�, estudou?'
Q002    =   'At� que s�rie sua m�e, ou a mulher respons�vel por voc�, estudou?'
Q003    =   'Indique o grupo que contempla a ocupa��o mais pr�xima da ocupa��o do seu pai ou do homem respons�vel por voc�'
Q004    =   'Indique o grupo que contempla a ocupa��o mais pr�xima da ocupa��o da sua m�e ou da mulher respons�vel por voc�'
Q005    =   'Incluindo voc�, quantas pessoas moram atualmente em sua resid�ncia?'
Q006    =   'Qual � a renda mensal de sua fam�lia? (Some a sua renda com a dos seus familiares.)'
Q007    =   'Em sua resid�ncia trabalha empregado(a) dom�stico(a)?'
Q008    =   'Na sua resid�ncia tem banheiro?'
Q009    =   'Na sua resid�ncia tem quartos para dormir?'
Q010   =    'Na sua resid�ncia tem carro?'
Q011   =    'Na sua resid�ncia tem motocicleta?'
Q012   =    'Na sua resid�ncia tem geladeira?'
Q013   =    'Na sua resid�ncia tem freezer (independente ou segunda porta da geladeira)?'
Q014   =    'Na sua resid�ncia tem m�quina de lavar roupa (o tanquinho N�O deve ser considerado)?'
Q015   =    'Na sua resid�ncia tem m�quina de secar roupa (independente ou em conjunto com a m�quina de lavar roupa)?'
Q016   =    'Na sua resid�ncia tem forno micro-ondas?'
Q017   =    'Na sua resid�ncia tem m�quina de lavar lou�a?'
Q018   =    'Na sua resid�ncia tem aspirador de p�?'
Q019   =    'Na sua resid�ncia tem televis�o em cores?'
Q020   =    'Na sua resid�ncia tem aparelho de DVD?'
Q021   =    'Na sua resid�ncia tem TV por assinatura?'
Q022   =    'Na sua resid�ncia tem telefone celular?'
Q023   =    'Na sua resid�ncia tem telefone fixo?'
Q024   =    'Na sua resid�ncia tem computador?'
Q025   =    'Na sua resid�ncia tem acesso � Internet?'
Q026   =    'Voc� exerce ou j� exerceu atividade remunerada?'
Q027   =    'Com que idade voc� come�ou a exercer uma atividade remunerada?'
Q028   =    'Quantas horas semanais voc� trabalha ou trabalhava aproximadamente? (Considere a atividade remunerada mais recente.)'
Q029   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Ajudar meus pais nas despesas com a casa'
Q030   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Sustentar minha fam�lia (esposo/a, filhos/as etc.)'
Q031   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Ser independente/ganhar meu pr�prio dinheiro'
Q032   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Adquirir experi�ncia'
Q033   =    'Indique a import�ncia de cada um dos motivos abaixo na sua decis�o de trabalhar: Custear/pagar meus estudos'
Q034   =    'Indique os motivos que levaram voc� a participar do ENEM: Testar meus conhecimentos, para aumentar as minhas chances de ingressar na Educa��o Superior'
Q035   =    'Indique os motivos que levaram voc� a participar do ENEM: Ingressar na Educa��o Superior p�blica'
Q036   =    'Indique os motivos que levaram voc� a participar do ENEM: Ingressar na Educa��o Superior privada'
Q037   =    'Indique os motivos que levaram voc� a participar do ENEM: Conseguir uma bolsa de estudos (ProUni, outras)'
Q038   =    'Indique os motivos que levaram voc� a participar do ENEM: Participar do Programa de Financiamento Estudantil � FIES'
Q039   =    'Indique os motivos que levaram voc� a participar do ENEM: Participar do Programa Ci�ncias Sem Fronteiras'
Q040   =    'Indique os motivos que levaram voc� a participar do ENEM: Aumentar a possibilidade de conseguir um emprego'
Q041   =    'Indique os motivos que levaram voc� a participar do ENEM: Progredir no meu emprego atual'
Q042   =    'Em que tipo de escola voc� frequentou o Ensino Fundamental?'
Q043   =    'Marque entre as op��es abaixo aquela que melhor descreve a modalidade de Ensino Fundamental que voc� frequentou'
Q044   =    'Em que turno voc� frequentou o Ensino Fundamental?'
Q045   =    'Durante o Ensino Fundamental, voc� abandonou os estudos e/ou foi reprovado?'
Q046   =    'Voc� j� concluiu ou est� concluindo o Ensino M�dio?'
Q047   =    'Em que tipo de escola voc� frequentou o Ensino M�dio?'
Q048   =    'Marque entre as op��es abaixo aquela que melhor descreve a modalidade de Ensino M�dio que voc� frequentou'
Q049   =    'Em que turno voc� frequentou o Ensino M�dio?'
Q050   =    'Durante o Ensino M�dio, voc� abandonou os estudos por algum tempo e/ou foi reprovado?';                                                                                                                 ;                                                                                                                                                      


IF NU_INSCRICAO = . THEN DELETE;

RUN;