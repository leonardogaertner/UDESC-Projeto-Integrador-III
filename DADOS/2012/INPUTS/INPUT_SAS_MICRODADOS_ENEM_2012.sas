
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)					  */
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2012.CSV no diretório C:\ do computador.			      */
/*															 			  */                                           
/* Ao terminar esses procedimentos execute o programa salvo utilizando    */
/* as variáveis de interesse.                                             */
/**************************************************************************/
/*				                  ATENÇÃO                                 */  
/**************************************************************************/
/* Este programa abre a base de dados com os rótulos das variáveis de	  */
/* acordo com o dicionário de dados que compõem os microdados. Para abrir */
/* os dados sem os rótulos basta importar diretamente no SAS.			  */
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
		1='Já concluí o Ensino Médio'
		2='Estou cursando e concluirei o Ensino Médio em 2012'	
		3='Estou cursando e concluirei o Ensino Médio após 2012'
		4='Não concluí e não estou cursando o Ensino Médio';

	value  $TP_ESCOLA
		1='Pública'
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
		3='Viúvo(a)';

	value  $TP_COR_RACA
		0='Não declarado'
		1='Branca'
		2='Preta'
		3='Parda'
		4='Amarela'
		5='Indígena';

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
		0='Não';

	value  $TP_PRESENCA_CN
		0='Faltou à prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_CH
		0='Faltou à prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_LC
		0='Faltou à prova'
		1='Presente na prova'
		2='Eliminado na prova';

	value  $TP_PRESENCA_MT
		0='Faltou à prova'
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
		0='Inglês'
		1='Espanhol';

	value  $TP_STATUS_REDACAO
		P='Presente'
		B='Em Branco'
		T='Fuga ao Tema'
		N='Anulada'
		I='Texto Insuficiente'
		A='Não atende ao tipo textual'
		H='Anulada – Fere Direitos Humanos'
		C='Cópia de texto motivador'
		F='Ausente';
				
	
	value $Qum
		A='Não estudou'
		B='Da 1ª à 4ª série do Ensino Fundamental (antigo primário)'
		C='Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)'
		D='Ensino Médio (antigo 2º grau) incompleto'
		E='Ensino Médio (antigo 2º grau)'
		F='Ensino Superior incompleto'
		G='Ensino Superior'
		H='Pós-graduação'
		I='Não sei';

	value $Qdois
		A='Não estudou'
		B='Da 1ª à 4ª série do Ensino Fundamental (antigo primário)'
		C='Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)'
		D='Ensino Médio (antigo 2º grau) incompleto'
		E='Ensino Médio (antigo 2º grau)'
		F='Ensino Superior incompleto'
		G='Ensino Superior'
		H='Pós-graduação'
		I='Não sei';

	value $Qtres
		A='Nenhuma renda'
		B='Até um salário mínimo (até R$622,00)'
		C='Mais de 1 até 1,5 (de R$ 622,01 até R$ 933,00)'
		D='Mais de 1,5 até 2 (de R$ 933,01 até R$ 1244,00)'
		E='Mais de 2 até 2,5 (de R$ 1244,01 até R$ 1555,00)'
		F='Mais de 2,5 até 3 (de R$ 1555,01 até R$ 1866,00)'
		G='Mais de 3 até 4 (de R$ 1866,01 até R$ 2488,00)'
		H='Mais de 4 até 5 (de R$ 2488,01 até R$ 3110,00)'
		I='Mais de 5 até 6 (de R$ 3110,01 até R$ 3732,00)'
		J='Mais de 6 até 7 (de R$ 3732,01 até R$ 4354,00)'
		K='Mais de 7 até 8 (de R$ 4354,01 até R$ 4976,00)'
		L='Mais de 8 até 9 (de R$ 4976,01 até R$ 5598,00)'
		M='Mais de 9 até 10 (de R$ 5598,01 até R$ 6220,00)'
		N='Mais de 10 até 12 (de R$ 6220,01 até R$ 7464,00)'
		O='Mais de 12 até 15 (de R$ 7464,01 até R$ 9330,00)'
		P='Mais de 15 até 20 (de R$ 9330,01 até R$ 12440,00)'
		Q='Acima de 20 salários (mais de R$12440,00)';

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
		A='Própria e quitada'
		B='Própria e em pagamento (financiada)'
		C='Alugada'
		D='Cedida'
		E='Outra situação (loteamento não regularizado, ocupação, etc)';

	value $Qseis
		A='Zona rural'
		B='Zona urbana'
		C='Comunidade indígena'
		D='Comunidade quilombola';

	value $Qsete
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qoito
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qnove
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qdez
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qonze
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qdoze
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qtreze
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qcatorze
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qquinze
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qdezesseis
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qdezessete
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qdezoito
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qdezenove
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qvinte
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qvinteum
		A='1'
		B='2'
		C='3 ou mais'
		D='Não tenho';

	value $Qvintedois
		A='Sim, estou trabalhando'
		B='Sim, já trabalhei, mas não estou trabalhando.'
		C='Não, nunca trabalhei.';
			
	value $Qtrinta
		A='Menos de 8 anos'
		B='8 anos'
		C='9 anos'
		D='10 anos'
		E='11 anos'
		F='Mais de 11 anos'
		G='Não concluí'
		H='Não cursei';

	value $Qtrintaum
		A='Não'
		B='Sim, por um ano'
		C='Sim, por dois anos'
		D='Sim, por três anos'
		E='Sim, por quatro anos ou mais';

	value $trintadois
		A='Somente em escola pública'
		B='Maior parte em escola pública'
		C='Somente em escola particular'
		D='Maior parte em escola particular'
		E='Somente em escola indígena'
		F='Maior parte em escola indígena'
		G='Somente em escola situada em comunidade quilombola'
		H='Maior parte em escola situada em comunidade quilombola';

	value $Qtrintatres
		A='Menos de 3 anos'
		B='3 anos'
		C='4 anos'
		D='5 anos'
		E='6 anos ou mais'
		F='Não concluí'
		G='Não cursei';

	value $Qtrintaquatro
		A='Não'
		B='Sim, por um ano'
		C='Sim, por dois anos'
		D='Sim, por três anos'
		E='Sim, por quatro anos ou mais';

	value $Qtrintacinco
		A='Somente em escola pública'
		B='Maior parte em escola pública'
		C='Somente em escola particular'
		D='Maior parte em escola particular'
		E='Somente em escola indígena'
		F='Maior parte em escola indígena'
		G='Somente em escola situada em comunidade quilombola'
		H='Maior parte em escola situada em comunidade quilombola';

	value $Qtrintaseis
		A='Sim'
		B='Não';

	value $Qtrintasete
		A='Sim'
		B='Não';

	value $Qtrintaoito
		A='Sim'
		B='Não';

	value $Qtrintanove
		A='Sim'
		B='Não';

	value $Qquarenta
		A='Sim'
		B='Não';

	value $Qquarentaum
		A='Curso presencial em escola pública'
		B='Curso presencial em escola privada'
		C='Curso presencial na empresa em que trabalhei, instituição filantrópica ou religiosa'
		D='Curso a distância (via rádio, televisão, internet, correio, com apostilas)'
		E='Curso semi-presencial em escola pública'
		F='Curso semi-presencial em escola privada';

	value $Qquarentadois
		A='Sim'
		B='Não';

	value $Qquarentatres
		A='Sim'
		B='Não';

	value $Qquarentaquatro
		A='Sim'
		B='Não';

	value $Qquarentacinco
		A='Sim'
		B='Não';

	value $Qquarentaseis
		A='Sim'
		B='Não';

    value $Qquarentasete
		A='Sim'
		B='Não';

	value $Qquarentaoito
		A='Sim'
		B='Não';

	value $Qquarentanove
		A='Sim'
		B='Não';

	value $Qcinquenta
		A='Sim'
		B='Não';

	value $Qcinquentaum
		A='Sim'
		B='Não';

	value $Qcinquentadois
		A='Sim'
		B='Não';

	value $Qcinquentatres
		A='Sim'
		B='Não';

    value $Qcinquentaquatro
		A='Sim'
		B='Não';

	value $Qcinquentacinco
		A='Sim'
		B='Não';

	value $Qcinquentaseis
		A='Sim'
		B='Não';

	value $Qcinquentasete
		A='Sim'
		B='Não';

	value $Qcinquentaoito
		A='Sim'
		B='Não';

	value $Qcinquentanove
		A='Sim'
		B='Não';

	value $Qsessenta
		A='Sim'
		B='Não';

	value $Qsessentaum
		A='Sim'
		B='Não';

	value $Qsessentadois
		A='Menos de 10 anos'
		B='Entre 10 e 14 anos'
		C='Entre 15 e 18 anos'
		D='Entre 19 e 24 anos'
		E='Entre 25 e 30 anos'
		F='Mais de 30 anos'
		G='Não deixei de frequentar';
		
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

NU_INSCRICAO    =   'Número de inscrição'
NU_ANO    =   'Ano do Enem'
CO_MUNICIPIO_ESC   =   'Código do município da escola' 
NO_MUNICIPIO_ESC   =   'Nome do município da escola'
CO_UF_ESC   =   'Código da Unidade da Federação da escola'
SG_UF_ESC   =   'Sigla da Unidade da Federação da escola'
TP_DEPENDENCIA_ADM_ESC   =   'Dependência administrativa (Escola)'
TP_LOCALIZACAO_ESC   =   'Localização (Escola)'
TP_SIT_FUNC_ESC   =   'Situação de funcionamento (Escola)'
TP_FAIXA_ETARIA    =   'Faixa Etária'
TP_SEXO    =   'Sexo'
TP_NACIONALIDADE   =   'Nacionalidade'
TP_ST_CONCLUSAO    =   'Situação de conclusão do Ensino Médio'
TP_ANO_CONCLUIU    =   'Ano de Conclusão do Ensino Médio'
TP_ESCOLA    =   'Tipo de escola do Ensino Médio'
TP_ENSINO    =   'Tipo de instituição que concluiu ou concluirá o Ensino Médio'
TP_ESTADO_CIVIL    =   'Estado Civil' 
TP_COR_RACA    =   'Cor/raça'
IN_CERTIFICADO   =   'Indicador de solicitação de certificação no Ensino Médio'
NO_ENTIDADE_CERTIFICACAO   =   'Nome da Entidade Certificadora'
CO_UF_ENTIDADE_CERTIFICACAO    =   'Código da Unidade da Federação da Entidade Certificadora'
SG_UF_ENTIDADE_CERTIFICACAO   =   'Sigla da Unidade da Federação da Entidade Certificadora'
CO_MUNICIPIO_PROVA    =   'Código do município da aplicação da prova'
NO_MUNICIPIO_PROVA   =   'Nome do município da aplicação da prova'
CO_UF_PROVA    =   'Código da Unidade da Federação da aplicação da prova'
SG_UF_PROVA    =   'Sigla da Unidade da Federação da aplicação da prova'
TP_PRESENCA_CN    =   'Presença na prova objetiva de Ciências da Natureza'
TP_PRESENCA_CH    =   'Presença na prova objetiva de Ciências Humanas'
TP_PRESENCA_LC    =   'Presença na prova objetiva de Linguagens e Códigos'
TP_PRESENCA_MT    =   'Presença na prova objetiva de Matemática'
NU_NOTA_CN   =   'Nota da prova de Ciências da Natureza'
NU_NOTA_CH   =   'Nota da prova de Ciências Humanas'
NU_NOTA_LC   =   'Nota da prova de Linguagens e Códigos'
NU_NOTA_MT   =   'Nota da prova de Matemática'
TX_RESPOSTAS_CN    =   'Vetor com as respostas da parte objetiva da prova de Ciências da Natureza'
TX_RESPOSTAS_CH    =   'Vetor com as respostas da parte objetiva da prova de Ciências Humanas' 
TX_RESPOSTAS_LC    =   'Vetor com as respostas da parte objetiva da prova de Linguagens e Códigos' 
TX_RESPOSTAS_MT    =   'Vetor com as respostas da parte objetiva da prova de Matemática' 
CO_PROVA_CN    =   'Código do tipo de prova de Ciências da Natureza'
CO_PROVA_CH    =   'Código do tipo de prova de Ciências Humanas'
CO_PROVA_LC    =   'Código do tipo de prova de Linguagens e Códigos'
CO_PROVA_MT    =   'Código do tipo de prova de Matemática'
TP_LINGUA   =   'Tipo de Língua Estrangeira'
TX_GABARITO_CN   =   'Vetor com o gabarito da parte objetiva da prova de Ciências da Natureza'
TX_GABARITO_CH   =   'Vetor com o gabarito da parte objetiva da prova de Ciências Humanas'
TX_GABARITO_LC   =   'Vetor com o gabarito da parte objetiva da prova de Linguagens e Códigos'
TX_GABARITO_MT   =   'Vetor com o gabarito da parte objetiva da prova de Matemática'
TP_STATUS_REDACAO  =   'Situação da redação do participante'
NU_NOTA_COMP1   =   'Nota da competência 1'
NU_NOTA_COMP2   =   'Nota da competência 2'
NU_NOTA_COMP3   =   'Nota da competência 3'
NU_NOTA_COMP4   =   'Nota da competência 4'
NU_NOTA_COMP5   =   'Nota da competência 5'
NU_NOTA_REDACAO   =   'Nota da prova de redação'
Q001 = 'Até quando seu pai estudou?'
Q002 = 'Até quando sua mãe estudou?'
Q003 = 'Qual é a renda mensal de sua família? (Some a sua renda com a dos seus familiares.)'
Q004 = 'Quantas pessoas moram em sua casa (incluindo você)? '
Q005 = 'A residência de sua família é? '
Q006 = 'A residência de sua família está localizada em?'
Q007 = 'Você tem em sua casa? TV em cores'
Q008 = 'Você tem em sua casa? Videocassete e/ou DVD'
Q009 = 'Você tem em sua casa? Rádio'
Q010 = 'Você tem em sua casa? Microcomputador'
Q011 = 'Você tem em sua casa? Automóvel '
Q012 = 'Você tem em sua casa? Máquina de lavar roupa'
Q013 = 'Você tem em sua casa? Geladeira'
Q014 = 'Você tem em sua casa? Freezer (aparelho independente ou parte da geladeira duplex)'
Q015 = 'Você tem em sua casa? Telefone fixo'
Q016 = 'Você tem em sua casa? Telefone celular'
Q017 = 'Você tem em sua casa? Acesso à Internet'
Q018 = 'Você tem em sua casa? TV por assinatura'
Q019 = 'Você tem em sua casa? Aspirador de pó'
Q020 = 'Você tem em sua casa? Empregada mensalista'
Q021 = 'Você tem em sua casa? Banheiro'
Q022 = 'Você exerce ou já exerceu atividade remunerada?'
Q023 = 'Indique os motivos que levaram você a participar do ENEM: Testar meus conhecimentos'
Q024 = 'Indique os motivos que levaram você a participar do ENEM: Aumentar a possibilidade de conseguir um emprego'
Q025 = 'Indique os motivos que levaram você a participar do ENEM: Progredir no meu emprego atual'
Q026 = 'Indique os motivos que levaram você a participar do ENEM: Ingressar na Educação Superior Pública'
Q027 = 'Indique os motivos que levaram você a participar do ENEM: Ingressar na Educação Superior Privada'
Q028 = 'Indique os motivos que levaram você a participar do ENEM: Conseguir uma bolsa de estudos (ProUni, outras)'
Q029 = 'Indique os motivos que levaram você a participar do ENEM: Participar do Programa de Financiamento Estudantil - FIES'
Q030 = 'Quantos anos você levou para concluir o Ensino Fundamental?'
Q031 = 'Você deixou de estudar durante o Ensino Fundamental?'
Q032 = 'Em que tipo de escola você cursou o Ensino Fundamental?'
Q033 = 'Quantos anos você levou para concluir o Ensino Médio?'
Q034 = 'Você deixou de estudar durante o Ensino Médio?'
Q035 = 'Em que tipo de escola você cursou o Ensino Médio?'
Q036 = 'Caso você ingresse no Ensino Superior privado pretende recorrer aos auxílios abaixo para custeio das mensalidades? Pró-Uni (Programa Universidade para Todos)'
Q037 = 'Caso você ingresse no Ensino Superior privado pretende recorrer aos auxílios abaixo para custeio das mensalidades? Bolsa de estudos da própria Instituição de Ensino Superior'
Q038 = 'Caso você ingresse no Ensino Superior privado pretende recorrer aos auxílios abaixo para custeio das mensalidades? Bolsa de estudos da empresa onde trabalho.'
Q039 = 'Caso você ingresse no Ensino Superior privado pretende recorrer aos auxílios abaixo para custeio das mensalidades?Auxílio do Programa de Financiamento Estudantil - FIES'
Q040 = 'Você cursa ou já cursou a Educação de Jovens e Adultos – EJA?'
Q041 = 'Como é ou era o principal curso de EJA que você frequenta ou frequentou?'
Q042 = 'Indique o que levou você a deixar de cursar a EJA: Trabalhava, não tinha tempo de estudar.'
Q043 = 'Indique o que levou você a deixar de cursar a EJA: Estudava no curso da empresa e foi interrompido.'
Q044 = 'Indique o que levou você a deixar de cursar a EJA: Ocorreram problemas de saúde ou acidentes comigo ou familiares'
Q045 = 'Indique o que levou você a deixar de cursar a EJA: Mudei de bairro, cidade ou município.'
Q046 = 'Indique o que levou você a deixar de cursar a EJA: Por motivos pessoais, casamento, filhos, etc.'
Q047 = 'Indique o que levou você a deixar de cursar a EJA: Faltava-me interesse, desisti.'
Q048 = 'Indique o que levou você a deixar de cursar a EJA: Senti-me discriminado(a).'
Q049 = 'Indique o que levou você a deixar de cursar a EJA: Temi/Sofri violência.'
Q050 = 'Você já frequentou o ensino regular?'
Q051 = 'Indique o que levou você a deixar de cursar o ensino regular: Falta de vaga em escola pública.'
Q052 = 'Indique o que levou você a deixar de cursar o ensino regular: Ausência de escola perto de casa.'
Q053 = 'Indique o que levou você a deixar de cursar o ensino regular: Dificuldades após reprovação.'
Q054 = 'Indique o que levou você a deixar de cursar o ensino regular: Falta de interesse em estudar.'
Q055 = 'Indique o que levou você a deixar de cursar o ensino regular: Falta de condições adequadas na escola.'
Q056 = 'Indique o que levou você a deixar de cursar o ensino regular: Trabalho, falta de tempo para estudar.'
Q057 = 'Indique o que levou você a deixar de cursar o ensino regular: Motivos pessoais, casamento / filhos, etc'
Q058 = 'Indique o que levou você a deixar de cursar o ensino regular: Falta de apoio familiar.'
Q059 = 'Indique o que levou você a deixar de cursar o ensino regular: Problemas de saúde ou acidente comigo ou familiares.'
Q060 = 'Indique o que levou você a deixar de cursar o ensino regular: Discriminação / Preconceitos (sexo, raça, idade, classe etc.)'
Q061 = 'Indique o que levou você a deixar de cursar o ensino regular: Medo de sofrer violência.'
Q062 = 'Quantos anos você tinha quando deixou de frequentar o ensino regular?';                                                                                                                 ;                                                                                                                                                      


IF NU_INSCRICAO = . THEN DELETE;

RUN;