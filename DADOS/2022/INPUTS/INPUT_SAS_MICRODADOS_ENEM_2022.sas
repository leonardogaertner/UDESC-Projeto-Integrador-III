
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Medidas da Educa��o B�sica(CGMEB)				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2022.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2022       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2022.CSV no diret�rio C:\ do computador.			      */
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
		2='Estou cursando e concluirei o Ensino M�dio em 2022'	
		3='Estou cursando e concluirei o Ensino M�dio ap�s 2022'
		4='N�o conclu� e n�o estou cursando o Ensino M�dio';

	value $TP_ANO_CONCLUIU
		0=	'N�o informado'
		1=  '2021'
		2=  '2020'
		3=	'2019'
		4=	'2018'
		5=	'2017'
		6=	'2016'
		7=	'2015'
		8=	'2014'
		9=	'2013'
		10=	'2012'
		11=	'2011'
		12=	'2010'
		13= '2009'
		14= '2008'
		15= '2007'
		16= 'Anterior a 2007';

	value  $TP_ESCOLA
		1='N�o respondeu'
		2='P�blica'
		3='Privada';

	value  $TP_ENSINO
		1='Ensino Regular'
		2='Educa��o Especial - Modalidade Substitutiva';

	value  $TP_ESTADO_CIVIL
		0='N�o informado'
		1='Solteiro(a)'
		2='Casado(a)/Mora com um(a) companheiro(a)'
		3='Divorciado(a)/Desquitado(a)/Separado(a)'
		4='Vi�vo(a)';

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
		1085 = 'Azul'
		1086 = 'Amarela'
		1087 = 'Cinza'
		1088 = 'Rosa'
		1092 = 'Laranja - Adaptada Ledor'
		1093 = 'Verde - Videoprova - Libras'
		1165 = 'Azul (Reaplica��o)'
		1166 = 'Amarela (Reaplica��o)'
		1167 = 'Cinza (Reaplica��o)'
		1168 = 'Rosa (Reaplica��o)'
		1187 = 'Azul (Digital)'
		1188 = 'Amarela (Digital)'
		1189 = 'Rosa (Digital)'
		1190 = 'Cinza (Digital)';

	value  $CO_PROVA_CH
		1055 = 'Azul'
		1056 = 'Amarela'
		1057 = 'Branca'
		1058 = 'Rosa'
		1062 = 'Laranja - Adaptada Ledor'
		1063 = 'Verde - Videoprova - Libras'
		1135 = 'Azul (Reaplica��o)'
		1136 = 'Amarela (Reaplica��o)'
		1137 = 'Branca (Reaplica��o)'
		1138 = 'Rosa (Reaplica��o)'
		1175 = 'Azul (Digital)'
		1176 = 'Amarela (Digital)'
		1177 = 'Branca (Digital)'
		1178 = 'Rosa (Digital)';

	value  $CO_PROVA_LC
		1065 = 'Azul'
		1066 = 'Amarela'
		1067 = 'Rosa'
		1068 = 'Branca'
		1072 = 'Laranja - Adaptada Ledor'
		1073 = 'Verde - Videoprova - Libras'
		1145 = 'Azul (Reaplica��o)'
		1146 = 'Amarela (Reaplica��o)'
		1147 = 'Rosa (Reaplica��o)'
		1148 = 'Branca (Reaplica��o)'
		1179 = 'Azul (Digital)'
		1180 = 'Amarela (Digital)'
		1181 = 'Branca (Digital)'
		1182 = 'Rosa (Digital)';

	value  $CO_PROVA_MT
		1075 = 'Azul'
		1076 = 'Amarela'
		1077 = 'Rosa'
		1078 = 'Cinza'
		1082 = 'Laranja - Adaptada Ledor'
		1083 = 'Verde - Videoprova - Libras'
		1155 = 'Azul (Reaplica��o)'
		1156 = 'Amarela (Reaplica��o)'
		1157 = 'Rosa (Reaplica��o)'
		1158 = 'Cinza (Reaplica��o)'
		1183 = 'Azul (Digital)'
		1184 = 'Amarela (Digital)'
		1185 = 'Rosa (Digital)'
		1186 = 'Cinza (Digital)';

	value  $TP_LINGUA
		0='Ingl�s'
		1='Espanhol';

	value  $TP_STATUS_REDACAO
		1='Sem problemas'
		2='Anulada'
		3='C�pia Texto Motivador'
        4='Em Branco'
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
		A= 'Nenhuma Renda'
		B= 'At� R$ 1.212,00'
		C= 'De R$ 1.212,01 at� R$ 1.818,00.'
		D= 'De R$ 1.818,01 at� R$ 2.424,00.'
		E= 'De R$ 2.424,01 at� R$ 3.030,00.'
		F= 'De R$ 3.030,01 at� R$ 3.636,00.'
		G= 'De R$ 3.636,01 at� R$ 4.848,00.'
		H= 'De R$ 4.848,01 at� R$ 6.060,00.'
		I= 'De R$ 6.060,01 at� R$ 7.272,00.'
		J= 'De R$ 7.272,01 at� R$ 8.484,00.'
		K= 'De R$ 8.484,01 at� R$ 9.696,00.'
		L= 'De R$ 9.696,01 at� R$ 10.908,00.'
		M= 'De R$ 10.908,01 at� R$ 12.120,00.'
		N= 'De R$ 12.120,01 at� R$ 14.544,00.'
		O= 'De R$ 14.544,01 at� R$ 18.180,00.'
		P= 'De R$ 18.180,01 at� R$ 24.240,00.'
		Q= 'Acima de R$ 24.240,00.';

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
run;


DATA WORK.DADOS_ENEM_2022;
INFILE 'C:\MICRODADOS_ENEM_2022.csv' /*local do arquivo*/
        LRECL=963
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
        NU_INSCRICAO       : BEST21.
        NU_ANO           : BEST4.
		TP_FAIXA_ETARIA  : $CHAR2.
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
        CO_MUNICIPIO_PROVA : BEST7.
        NO_MUNICIPIO_PROVA : $CHAR27.
        CO_UF_PROVA     : BEST2.
        SG_UF_PROVA         : $CHAR2.
        TP_PRESENCA_CN   : $CHAR1.
        TP_PRESENCA_CH   : $CHAR1.
        TP_PRESENCA_LC   : $CHAR1.
        TP_PRESENCA_MT   : $CHAR1.
        CO_PROVA_CN      : $CHAR4.
        CO_PROVA_CH      : $CHAR4.
        CO_PROVA_LC      : $CHAR4.
        CO_PROVA_MT      : $CHAR4.
        NU_NOTA_CN          : BEST8.
        NU_NOTA_CH          : BEST8.
        NU_NOTA_LC          : BEST8.
        NU_NOTA_MT          : BEST8.
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
        Q025             : $CHAR1.;

ATTRIB IN_TREINEIRO					FORMAT=$IN_TREINEIRO3.;
ATTRIB TP_DEPENDENCIA_ADM_ESC 		FORMAT=$TP_DEPENDENCIA_ADM10.;
ATTRIB TP_LOCALIZACAO_ESC 			FORMAT=$TP_LOCALIZACAO10.;
ATTRIB TP_SIT_FUNC_ESC 				FORMAT=$TP_SIT_FUNC_ESC40.;
ATTRIB TP_SEXO 						FORMAT=$TP_SEXO10.;
ATTRIB TP_NACIONALIDADE 			FORMAT=$TP_NACIONAL.;
ATTRIB TP_ST_CONCLUSAO 				FORMAT=$TP_ST_CONCLUSAO52.;
ATTRIB TP_ANO_CONCLUIU				FORMAT=$TP_ANO_CONCLUIU15.;
ATTRIB TP_ESCOLA					FORMAT=$TP_ESCOLA13.;
ATTRIB TP_ENSINO 					FORMAT=$TP_ENSINO40.;
ATTRIB TP_ESTADO_CIVIL 				FORMAT=$TP_ESTADO_CIVIL40.;
ATTRIB TP_COR_RACA 					FORMAT=$TP_COR_RACA30.;
ATTRIB TP_PRESENCA_CN 				FORMAT=$TP_PRESENCA_CN20.;
ATTRIB TP_PRESENCA_CH 				FORMAT=$TP_PRESENCA_CH20.;
ATTRIB TP_PRESENCA_LC 				FORMAT=$TP_PRESENCA_LC20.;
ATTRIB TP_PRESENCA_MT 				FORMAT=$TP_PRESENCA_MT20.;
ATTRIB CO_PROVA_CN 					FORMAT=$CO_PROVA_CN40.;
ATTRIB CO_PROVA_CH 					FORMAT=$CO_PROVA_CH40.;
ATTRIB CO_PROVA_LC 					FORMAT=$CO_PROVA_LC40.;
ATTRIB CO_PROVA_MT 					FORMAT=$CO_PROVA_MT40.;
ATTRIB TP_LINGUA 					FORMAT=$TP_LINGUA10.;
ATTRIB TP_STATUS_REDACAO 			FORMAT=$TP_STATUS_REDACAO35.;
ATTRIB TP_FAIXA_ETARIA				FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB NU_INSCRICAO FORMAT = 21.;
ATTRIB NU_NOTA_CN   FORMAT = 8.2;
ATTRIB NU_NOTA_CH   FORMAT = 8.2;
ATTRIB NU_NOTA_LC   FORMAT = 8.2;
ATTRIB NU_NOTA_MT   FORMAT = 8.2;
ATTRIB NU_NOTA_COMP1    FORMAT = 8.2;
ATTRIB NU_NOTA_COMP2    FORMAT = 8.2;
ATTRIB NU_NOTA_COMP3    FORMAT = 8.2;
ATTRIB NU_NOTA_COMP4    FORMAT = 8.2;
ATTRIB NU_NOTA_COMP5    FORMAT = 8.2;
ATTRIB NU_NOTA_REDACAO  FORMAT = 8.2;
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
Q025   =    'Na sua resid�ncia tem acesso � Internet?';

IF NU_INSCRICAO = . THEN DELETE;

RUN;