
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)					  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2012.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2012       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2012.CSV no diret�rio C:\ do computador.			      */
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
		0 ='Masculino'
		1 ='Feminino';

	value  $TP_ST_CONCLUSAO
		1='J� conclu� o Ensino M�dio'
		2='Estou cursando e concluirei o Ensino M�dio em 2012'	
		3='Estou cursando e concluirei o Ensino M�dio ap�s 2012'
		4='N�o conclu� e n�o estou cursando o Ensino M�dio';

	value  $TP_ESCOLA
		1='P�blica'
		2='Privada';

	value  $TP_ENSINO
		1='Ensino Regular'
		2='Ensino de Jovens e Adultos'
		3='Ensino Profissionalizante'
		4='Ensino Especial';

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
		5='Ind�gena';

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
		141='AZUL'
		142='AMARELO'
		143='BRANCO'
		144='ROSA'
		153='BRANCO (LEDOR)';

	value  $CO_PROVA_CH
		137='AZUL'
		138='AMARELO'
		139='BRANCO'
		140='ROSA'
		154='BRANCO (LEDOR)';

	value  $CO_PROVA_LC
		145='AMARELO'
		146='CINZA'
		147='AZUL'
		148='ROSA'
		155='CINZA (LEDOR)';

	value  $CO_PROVA_MT
		149='AMARELO'
		150='CINZA'
		151='AZUL'
		152='ROSA'
		156='CINZA (LEDOR)';

	value  $TP_LINGUA
		0='Ingl�s'
		1='Espanhol';

	value  $TP_STATUS_REDACAO
		P='Presente'
		B='Em Branco'
		T='Fuga ao Tema'
		N='Anulada'
		I='Texto Insuficiente'
		A='N�o atende ao tipo textual'
		H='Anulada � Fere Direitos Humanos'
		C='C�pia de texto motivador'
		F='Ausente';
				
	
	value $Qum
		A='N�o estudou'
		B='Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)'
		C='Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)'
		D='Ensino M�dio (antigo 2� grau) incompleto'
		E='Ensino M�dio (antigo 2� grau)'
		F='Ensino Superior incompleto'
		G='Ensino Superior'
		H='P�s-gradua��o'
		I='N�o sei';

	value $Qdois
		A='N�o estudou'
		B='Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)'
		C='Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)'
		D='Ensino M�dio (antigo 2� grau) incompleto'
		E='Ensino M�dio (antigo 2� grau)'
		F='Ensino Superior incompleto'
		G='Ensino Superior'
		H='P�s-gradua��o'
		I='N�o sei';

	value $Qtres
		A='Nenhuma renda'
		B='At� um sal�rio m�nimo (at� R$622,00)'
		C='Mais de 1 at� 1,5 (de R$ 622,01 at� R$ 933,00)'
		D='Mais de 1,5 at� 2 (de R$ 933,01 at� R$ 1244,00)'
		E='Mais de 2 at� 2,5 (de R$ 1244,01 at� R$ 1555,00)'
		F='Mais de 2,5 at� 3 (de R$ 1555,01 at� R$ 1866,00)'
		G='Mais de 3 at� 4 (de R$ 1866,01 at� R$ 2488,00)'
		H='Mais de 4 at� 5 (de R$ 2488,01 at� R$ 3110,00)'
		I='Mais de 5 at� 6 (de R$ 3110,01 at� R$ 3732,00)'
		J='Mais de 6 at� 7 (de R$ 3732,01 at� R$ 4354,00)'
		K='Mais de 7 at� 8 (de R$ 4354,01 at� R$ 4976,00)'
		L='Mais de 8 at� 9 (de R$ 4976,01 at� R$ 5598,00)'
		M='Mais de 9 at� 10 (de R$ 5598,01 at� R$ 6220,00)'
		N='Mais de 10 at� 12 (de R$ 6220,01 at� R$ 7464,00)'
		O='Mais de 12 at� 15 (de R$ 7464,01 at� R$ 9330,00)'
		P='Mais de 15 at� 20 (de R$ 9330,01 at� R$ 12440,00)'
		Q='Acima de 20 sal�rios (mais de R$12440,00)';

	value $Qquatro
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
		20='20 ou mais';

	value $Qcinco
		A='Pr�pria e quitada'
		B='Pr�pria e em pagamento (financiada)'
		C='Alugada'
		D='Cedida'
		E='Outra situa��o (loteamento n�o regularizado, ocupa��o, etc)';

	value $Qseis
		A='Zona rural'
		B='Zona urbana'
		C='Comunidade ind�gena'
		D='Comunidade quilombola';

	value $Qsete
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qoito
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qnove
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qdez
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qonze
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qdoze
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qtreze
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qcatorze
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qquinze
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qdezesseis
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qdezessete
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qdezoito
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qdezenove
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qvinte
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qvinteum
		A='1'
		B='2'
		C='3 ou mais'
		D='N�o tenho';

	value $Qvintedois
		A='Sim, estou trabalhando'
		B='Sim, j� trabalhei, mas n�o estou trabalhando.'
		C='N�o, nunca trabalhei.';
			
	value $Qtrinta
		A='Menos de 8 anos'
		B='8 anos'
		C='9 anos'
		D='10 anos'
		E='11 anos'
		F='Mais de 11 anos'
		G='N�o conclu�'
		H='N�o cursei';

	value $Qtrintaum
		A='N�o'
		B='Sim, por um ano'
		C='Sim, por dois anos'
		D='Sim, por tr�s anos'
		E='Sim, por quatro anos ou mais';

	value $trintadois
		A='Somente em escola p�blica'
		B='Maior parte em escola p�blica'
		C='Somente em escola particular'
		D='Maior parte em escola particular'
		E='Somente em escola ind�gena'
		F='Maior parte em escola ind�gena'
		G='Somente em escola situada em comunidade quilombola'
		H='Maior parte em escola situada em comunidade quilombola';

	value $Qtrintatres
		A='Menos de 3 anos'
		B='3 anos'
		C='4 anos'
		D='5 anos'
		E='6 anos ou mais'
		F='N�o conclu�'
		G='N�o cursei';

	value $Qtrintaquatro
		A='N�o'
		B='Sim, por um ano'
		C='Sim, por dois anos'
		D='Sim, por tr�s anos'
		E='Sim, por quatro anos ou mais';

	value $Qtrintacinco
		A='Somente em escola p�blica'
		B='Maior parte em escola p�blica'
		C='Somente em escola particular'
		D='Maior parte em escola particular'
		E='Somente em escola ind�gena'
		F='Maior parte em escola ind�gena'
		G='Somente em escola situada em comunidade quilombola'
		H='Maior parte em escola situada em comunidade quilombola';

	value $Qtrintaseis
		A='Sim'
		B='N�o';

	value $Qtrintasete
		A='Sim'
		B='N�o';

	value $Qtrintaoito
		A='Sim'
		B='N�o';

	value $Qtrintanove
		A='Sim'
		B='N�o';

	value $Qquarenta
		A='Sim'
		B='N�o';

	value $Qquarentaum
		A='Curso presencial em escola p�blica'
		B='Curso presencial em escola privada'
		C='Curso presencial na empresa em que trabalhei, institui��o filantr�pica ou religiosa'
		D='Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas)'
		E='Curso semi-presencial em escola p�blica'
		F='Curso semi-presencial em escola privada';

	value $Qquarentadois
		A='Sim'
		B='N�o';

	value $Qquarentatres
		A='Sim'
		B='N�o';

	value $Qquarentaquatro
		A='Sim'
		B='N�o';

	value $Qquarentacinco
		A='Sim'
		B='N�o';

	value $Qquarentaseis
		A='Sim'
		B='N�o';

    value $Qquarentasete
		A='Sim'
		B='N�o';

	value $Qquarentaoito
		A='Sim'
		B='N�o';

	value $Qquarentanove
		A='Sim'
		B='N�o';

	value $Qcinquenta
		A='Sim'
		B='N�o';

	value $Qcinquentaum
		A='Sim'
		B='N�o';

	value $Qcinquentadois
		A='Sim'
		B='N�o';

	value $Qcinquentatres
		A='Sim'
		B='N�o';

    value $Qcinquentaquatro
		A='Sim'
		B='N�o';

	value $Qcinquentacinco
		A='Sim'
		B='N�o';

	value $Qcinquentaseis
		A='Sim'
		B='N�o';

	value $Qcinquentasete
		A='Sim'
		B='N�o';

	value $Qcinquentaoito
		A='Sim'
		B='N�o';

	value $Qcinquentanove
		A='Sim'
		B='N�o';

	value $Qsessenta
		A='Sim'
		B='N�o';

	value $Qsessentaum
		A='Sim'
		B='N�o';

	value $Qsessentadois
		A='Menos de 10 anos'
		B='Entre 10 e 14 anos'
		C='Entre 15 e 18 anos'
		D='Entre 19 e 24 anos'
		E='Entre 25 e 30 anos'
		F='Mais de 30 anos'
		G='N�o deixei de frequentar';
		
run;


DATA WORK.MICRODADOS_ENEM_2012;
INFILE 'C:\MICRODADOS_ENEM_2012.csv' /*local do arquivo*/
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
        TP_ST_CONCLUSAO     :  $CHAR1.
        TP_ANO_CONCLUIU     :  BEST4.
        TP_ESCOLA        :  $CHAR1.
        TP_ENSINO     :  $CHAR1.
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
        Q001             : $CHAR56.
        Q002             : $CHAR56.
        Q003             : $CHAR49.
        Q004             : $CHAR10.
        Q005             : $CHAR59.
        Q006             : $CHAR21.
        Q007             : $CHAR9.
        Q008             : $CHAR9.
        Q009             : $CHAR9.
        Q010             : $CHAR9.
        Q011             : $CHAR9.
        Q012             : $CHAR9.
        Q013             : $CHAR9.
        Q014             : $CHAR9.
        Q015             : $CHAR9.
        Q016             : $CHAR9.
        Q017             : $CHAR9.
        Q018             : $CHAR9.
        Q019             : $CHAR9.
        Q020             : $CHAR9.
        Q021             : $CHAR9.
		Q022			 : $CHAR3.
        Q023             : 1.
        Q024             : 1.
        Q025             : 1.
        Q026             : 1.
        Q027             : 1.
        Q028             : 1.
        Q029             : 1.
        Q030             : $CHAR15.
        Q031             : $CHAR28.
        Q032             : $CHAR54.
        Q033             : $CHAR14.
        Q034             : $CHAR28.
        Q035             : $CHAR54.
        Q036             : $CHAR3.
        Q037             : $CHAR3.
        Q038             : $CHAR3.
        Q039             : $CHAR3.
        Q040             : $CHAR3.
        Q041             : $CHAR83.
        Q042             : $CHAR3.
        Q043             : $CHAR3.
        Q044             : $CHAR3.
        Q045             : $CHAR3.
        Q046             : $CHAR3.
        Q047             : $CHAR3.
        Q048             : $CHAR3.
        Q049             : $CHAR3.
        Q050             : $CHAR3.
		Q051             : $CHAR3.
        Q052             : $CHAR3.
        Q053             : $CHAR3.
        Q054             : $CHAR3.
        Q055             : $CHAR3.
        Q056             : $CHAR3.
        Q057             : $CHAR3.
        Q058             : $CHAR3.
        Q059             : $CHAR3.
        Q060             : $CHAR3.
        Q061             : $CHAR3.
        Q062             : $CHAR24.;

ATTRIB TP_DEPENDENCIA_ADM_ESC 		FORMAT = $TP_DEPENDENCIA_ADM10.;
ATTRIB TP_LOCALIZACAO_ESC 			FORMAT = $TP_LOCALIZACAO10.;
ATTRIB TP_SIT_FUNC_ESC 				FORMAT = $TP_SIT_FUNC_ESC40.;
ATTRIB TP_SEXO 						FORMAT = $TP_SEXO10.;
ATTRIB TP_ST_CONCLUSAO 				FORMAT = $TP_ST_CONCLUSAO52.;
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
ATTRIB Q030 FORMAT=$Qtrinta.;
ATTRIB Q031 FORMAT=$Qtrintaum.;
ATTRIB Q032 FORMAT=$trintadois.;
ATTRIB Q033 FORMAT=$Qtrintatres.;
ATTRIB Q034 FORMAT=$Qtrintaquatro.;
ATTRIB Q035 FORMAT=$Qtrintacinco.;
ATTRIB Q036 FORMAT=$Qtrintaseis.;
ATTRIB Q037 FORMAT=$Qtrintasete.;
ATTRIB Q038 FORMAT=$Qtrintaoito.;
ATTRIB Q039 FORMAT=$Qtrintanove.;
ATTRIB Q040 FORMAT=$Qquarenta.;
ATTRIB Q041 FORMAT=$Qquarentaum.;
ATTRIB Q042 FORMAT=$Qquarentadois.;
ATTRIB Q043 FORMAT=$Qquarentatres.;
ATTRIB Q044 FORMAT=$Qquarentaquatro.;
ATTRIB Q045 FORMAT=$Qquarentacinco.;
ATTRIB Q046 FORMAT=$Qquarentaseis.;
ATTRIB Q047 FORMAT=$Qquarentasete.;
ATTRIB Q048 FORMAT=$Qquarentaoito.;
ATTRIB Q049 FORMAT=$Qquarentanove.;
ATTRIB Q050 FORMAT=$Qcinquenta.;
ATTRIB Q051 FORMAT=$Qcinquentaum.;
ATTRIB Q052 FORMAT=$Qcinquentadois.;
ATTRIB Q053 FORMAT=$Qcinquentatres.;
ATTRIB Q054 FORMAT=$Qcinquentaquatro.;
ATTRIB Q055 FORMAT=$Qcinquentacinco.;
ATTRIB Q056 FORMAT=$Qcinquentaseis.;
ATTRIB Q057 FORMAT=$Qcinquentasete.;
ATTRIB Q058 FORMAT=$Qcinquentaoito.;
ATTRIB Q059 FORMAT=$Qcinquentanove.;
ATTRIB Q060 FORMAT=$Qsessenta.;
ATTRIB Q061 FORMAT=$Qsessentaum.;
ATTRIB Q062 FORMAT=$Qsessentadois. ;


LABEL

NU_INSCRICAO    =   'N�mero de inscri��o'
NU_ANO    =   'Ano do Enem'
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
Q001 = 'At� quando seu pai estudou?'
Q002 = 'At� quando sua m�e estudou?'
Q003 = 'Qual � a renda mensal de sua fam�lia? (Some a sua renda com a dos seus familiares.)'
Q004 = 'Quantas pessoas moram em sua casa (incluindo voc�)? '
Q005 = 'A resid�ncia de sua fam�lia �? '
Q006 = 'A resid�ncia de sua fam�lia est� localizada em?'
Q007 = 'Voc� tem em sua casa? TV em cores'
Q008 = 'Voc� tem em sua casa? Videocassete e/ou DVD'
Q009 = 'Voc� tem em sua casa? R�dio'
Q010 = 'Voc� tem em sua casa? Microcomputador'
Q011 = 'Voc� tem em sua casa? Autom�vel '
Q012 = 'Voc� tem em sua casa? M�quina de lavar roupa'
Q013 = 'Voc� tem em sua casa? Geladeira'
Q014 = 'Voc� tem em sua casa? Freezer (aparelho independente ou parte da geladeira duplex)'
Q015 = 'Voc� tem em sua casa? Telefone fixo'
Q016 = 'Voc� tem em sua casa? Telefone celular'
Q017 = 'Voc� tem em sua casa? Acesso � Internet'
Q018 = 'Voc� tem em sua casa? TV por assinatura'
Q019 = 'Voc� tem em sua casa? Aspirador de p�'
Q020 = 'Voc� tem em sua casa? Empregada mensalista'
Q021 = 'Voc� tem em sua casa? Banheiro'
Q022 = 'Voc� exerce ou j� exerceu atividade remunerada?'
Q023 = 'Indique os motivos que levaram voc� a participar do ENEM: Testar meus conhecimentos'
Q024 = 'Indique os motivos que levaram voc� a participar do ENEM: Aumentar a possibilidade de conseguir um emprego'
Q025 = 'Indique os motivos que levaram voc� a participar do ENEM: Progredir no meu emprego atual'
Q026 = 'Indique os motivos que levaram voc� a participar do ENEM: Ingressar na Educa��o Superior P�blica'
Q027 = 'Indique os motivos que levaram voc� a participar do ENEM: Ingressar na Educa��o Superior Privada'
Q028 = 'Indique os motivos que levaram voc� a participar do ENEM: Conseguir uma bolsa de estudos (ProUni, outras)'
Q029 = 'Indique os motivos que levaram voc� a participar do ENEM: Participar do Programa de Financiamento Estudantil - FIES'
Q030 = 'Quantos anos voc� levou para concluir o Ensino Fundamental?'
Q031 = 'Voc� deixou de estudar durante o Ensino Fundamental?'
Q032 = 'Em que tipo de escola voc� cursou o Ensino Fundamental?'
Q033 = 'Quantos anos voc� levou para concluir o Ensino M�dio?'
Q034 = 'Voc� deixou de estudar durante o Ensino M�dio?'
Q035 = 'Em que tipo de escola voc� cursou o Ensino M�dio?'
Q036 = 'Caso voc� ingresse no Ensino Superior privado pretende recorrer aos aux�lios abaixo para custeio das mensalidades? Pr�-Uni (Programa Universidade para Todos)'
Q037 = 'Caso voc� ingresse no Ensino Superior privado pretende recorrer aos aux�lios abaixo para custeio das mensalidades? Bolsa de estudos da pr�pria Institui��o de Ensino Superior'
Q038 = 'Caso voc� ingresse no Ensino Superior privado pretende recorrer aos aux�lios abaixo para custeio das mensalidades? Bolsa de estudos da empresa onde trabalho.'
Q039 = 'Caso voc� ingresse no Ensino Superior privado pretende recorrer aos aux�lios abaixo para custeio das mensalidades?Aux�lio do Programa de Financiamento Estudantil - FIES'
Q040 = 'Voc� cursa ou j� cursou a Educa��o de Jovens e Adultos � EJA?'
Q041 = 'Como � ou era o principal curso de EJA que voc� frequenta ou frequentou?'
Q042 = 'Indique o que levou voc� a deixar de cursar a EJA: Trabalhava, n�o tinha tempo de estudar.'
Q043 = 'Indique o que levou voc� a deixar de cursar a EJA: Estudava no curso da empresa e foi interrompido.'
Q044 = 'Indique o que levou voc� a deixar de cursar a EJA: Ocorreram problemas de sa�de ou acidentes comigo ou familiares'
Q045 = 'Indique o que levou voc� a deixar de cursar a EJA: Mudei de bairro, cidade ou munic�pio.'
Q046 = 'Indique o que levou voc� a deixar de cursar a EJA: Por motivos pessoais, casamento, filhos, etc.'
Q047 = 'Indique o que levou voc� a deixar de cursar a EJA: Faltava-me interesse, desisti.'
Q048 = 'Indique o que levou voc� a deixar de cursar a EJA: Senti-me discriminado(a).'
Q049 = 'Indique o que levou voc� a deixar de cursar a EJA: Temi/Sofri viol�ncia.'
Q050 = 'Voc� j� frequentou o ensino regular?'
Q051 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Falta de vaga em escola p�blica.'
Q052 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Aus�ncia de escola perto de casa.'
Q053 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Dificuldades ap�s reprova��o.'
Q054 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Falta de interesse em estudar.'
Q055 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Falta de condi��es adequadas na escola.'
Q056 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Trabalho, falta de tempo para estudar.'
Q057 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Motivos pessoais, casamento / filhos, etc'
Q058 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Falta de apoio familiar.'
Q059 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Problemas de sa�de ou acidente comigo ou familiares.'
Q060 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Discrimina��o / Preconceitos (sexo, ra�a, idade, classe etc.)'
Q061 = 'Indique o que levou voc� a deixar de cursar o ensino regular: Medo de sofrer viol�ncia.'
Q062 = 'Quantos anos voc� tinha quando deixou de frequentar o ensino regular?';                                                                                                                 ;                                                                                                                                                      


IF NU_INSCRICAO = . THEN DELETE;

RUN;