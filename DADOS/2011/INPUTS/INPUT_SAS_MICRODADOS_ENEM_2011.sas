
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Instrumentos e Medidas (CGIM)					  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2011.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2011       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2011.CSV no diret�rio C:\ do computador.			      */
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

	value $IN_CERTIFICADO
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

	value  $TP_ST_CONCLUSAO
		1='J� conclu� o Ensino M�dio'
		2='Estou cursando e concluirei o Ensino M�dio em 2011'	
		3='Estou cursando e concluirei o Ensino M�dio ap�s 2011'
		4='N�o conclu� e n�o estou cursando o Ensino M�dio';

	value $TP_ANO_CONCLUIU
		0=	'N�o informado'
		1=  '2010'
		2=  '2009'
		3=	'2008'
		4=	'2007'
		5=	'2006'
		6=	'2005'
		7=	'2004'
		8=	'2003';

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
		121='Azul'
		122='Amarela'
		123='Branca'
		124='Rosa';

	value  $CO_PROVA_CH
		117='Azul'
		118='Amarela'
		119='Branca'
		120='Rosa';

	value  $CO_PROVA_LC
		125='Amarela'
		126='Cinza'
		127='Azul'
		128='Rosa';	

	value  $CO_PROVA_MT
		129='Amarela'
		130='Cinza'
		131='Azul'
		132='Rosa';

	value  $TP_LINGUA
		0='Ingl�s'
		1='Espanhol';

	value  $TP_STATUS_REDACAO
		'B'='Em Branco'
		'F'='Faltoso'
		'N'='Anulada'
        'P'='Presente';
				
	value $Qum
		1  = '1'
		2  = '2'
		3  = '3'
		4  = '4'
		5  = '5'
		6  = '6'
		7  = '7'
		8  = '8'
		9  = '9'
		10 = '10'
		11 = '11'
		12 = '12'
		13 = '13'
		14 = '14'
		15 = '15'
		16 = '16'
		17 = '17'
		18 = '18'
		19 = '19'
		20 = '20 ou mais';

	value $Qdois
		'A' = 'N�o estudou;'
		'B' = 'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio);'
		'C' = 'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio);'
		'D' = 'Ensino M�dio (antigo 2� grau) incompleto;'
		'E' = 'Ensino M�dio (antigo 2� grau);'
		'F' = 'Ensino Superior incompleto;'
		'G' = 'Ensino Superior;'
		'H' = 'P�s-gradua��o;'
		'I' = 'N�o sei;';

	value $Qtres
		'A' = 'N�o estudou;'
		'B' = 'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio);'
		'C' = 'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio);'
		'D' = 'Ensino M�dio (antigo 2� grau) incompleto;'
		'E' = 'Ensino M�dio (antigo 2� grau);'
		'F' = 'Ensino Superior incompleto;'
		'G' = 'Ensino Superior;'
		'H' = 'P�s-gradua��o;'
		'I' = 'N�o sei;';
		
	value $Qquatro
		'A'	= 'Nenhuma renda;'
		'B'	= 'At� um sal�rio m�nimo (at� R$545,00);'
		'C'	= 'Entre 1 e 1,5 sal�rios (entre R$545,00 at� R$817,50);'
		'D'	= 'Entre 1,5 e 2 sal�rios (entre R$817,50 at� R$1.090,00);'
		'E'	= 'Entre 2 e 5 sal�rios (entre R$1.090,00 at� R$2.725,00);'
		'F'	= 'Entre 5 e 7 sal�rios (entre R$2.725,00 at� R$3.815,00);'
		'G'	= 'Entre 7 e 10 sal�rios (entre R$3.815,00 at� R$5.450,00);'
		'H'	= 'Entre 10 e 12 sal�rios (entre R$5.450,00 at� R$ 6.540,00);'
		'I'	= 'Entre 12 e 15 sal�rios (entre R$6.540,00 at� R$8.175,00);'
		'J'	= 'Entre 15 e 30 sal�rios (entre R$8.175,00 at� R$ 16.350,00);'
		'K'	= 'Acima de 30 sal�rios (mais de R$16.350,00);';

	value $Qcinco
		'A'	= 'Nenhuma renda;'
		'B'	= 'At� um sal�rio m�nimo (at� R$545,00);'
		'C'	= 'Entre 1 e 1,5 sal�rios (entre R$545,00 at� R$817,50);'
		'D'	= 'Entre 1,5 e 2 sal�rios (entre R$817,50 at� R$1.090,00);'
		'E'	= 'Entre 2 e 5 sal�rios (entre R$1.090,00 at� R$2.725,00);'
		'F'	= 'Entre 5 e 7 sal�rios (entre R$2.725,00 at� R$3.815,00);'
		'G'	= 'Entre 7 e 10 sal�rios (entre R$3.815,00 at� R$5.450,00);'
		'H'	= 'Entre 10 e 12 sal�rios (entre R$5.450,00 at� R$ 6.540,00);'
		'I'	= 'Entre 12 e 15 sal�rios (entre R$6.540,00 at� R$8.175,00);'
		'J'	= 'Entre 15 e 30 sal�rios (entre R$8.175,00 at� R$ 16.350,00);'
		'K'	= 'Acima de 30 sal�rios (mais de R$16.350,00);';

	value $Qseis
		'A'	= 'Pr�pria e quitada'
		'B'	= 'Pr�pria e em pagamento (financiada)'
		'C'	= 'Alugada'
		'D'	= 'Cedida';

	value $Qsete
		'A'	= 'Zona rural'
		'B'	= 'Zona urbana'
		'C'	= 'Comunidade ind�gena'
		'D'	= 'Comunidade quilombola';

	value $Qoito
		A='Sim'
		B='N�o';

	value $Qcatorze
		A='Sim'
		B='N�o';

	value $Qquinze
		A='Sim'
		B='N�o';

	value $Qdezesseis
		A='Sim'
		B='N�o';

	value $Qdezessete
		A='Sim'
		B='N�o';

	value $Qdezoito
		A='Sim'
		B='N�o';

	value $Qdezenove
		A='Sim'
		B='N�o';

	value $Qvinte
		A='Sim'
		B='N�o';

	value $Qvinteum
		A='Sim'
		B='N�o';

	value $Qvintedois
		A='Sem jornada fixa, at� 10 horas semanais.'
		B='De 11 a 20 horas semanais.'
		C='De 21 a 30 horas semanais.'
		D='De 31 a 40 horas semanais.'
		E='Mais de 40 horas semanais';

	value $Qvintetres
		13	= 'Menos de 14'
		14	= '14'
		15	= '15'
		16	= '16'
		17	= '17'
		18	= '18'
		19	= '19'
		20	= '20'
		21	= '21'
		22	= '22'
		23	= '23'
		24	= '24'
		25	= '25 ou mais';

	value $Qvinteeoito
		'A'	= 'Menos de 8 anos.'
		'B'	= '8 anos.'
		'C'	= '9 anos.'
		'D'	= '10 anos.'
		'E'	= '11 anos.'
		'F'	= 'Mais de 11 anos.'
		'G'	= 'N�o conclui.';

	value $Qvinteenove
		'A'	= 'N�o.'
		'B'	= 'Sim, por um ano.'
		'C'	= 'Sim, por dois anos.'
		'D'	= 'Sim, por tr�s anos.'
		'E'	= 'Sim, por quatro anos ou mais.';

	value $Qtrinta
		'A'	= 'Somente em escola p�blica;'
		'B'	= 'Maior parte em escola p�blica;'
		'C'	= 'Somente em escola particular;'
		'D'	= 'Maior parte em escola particular;'
		'E'	= 'Somente em escola ind�gena;'
		'F'	= 'Maior parte em escola ind�gena;'
		'G'	= 'Somente em escola situada em comunidade quilombola;'
		'H'	= 'Maior parte em escola situada em comunidade quilombola;'
		'I'	= 'N�o frequentei a escola.';

	value $Qtrintaeum
		'A'	= 'Menos de 3 anos'
		'B'	= '3 anos'
		'C'	= '4 anos'
		'D'	= '5 anos'
		'E'	= '6 anos ou mais'
		'F'	= 'N�o conclui';

	value $Qtrintaedois
		'A'	= 'N�o.'
		'B'	= 'Sim, por um ano.'
		'C'	= 'Sim, por dois anos.'
		'D'	= 'Sim, por tr�s anos.'
		'E'	= 'Sim, por quatro anos ou mais.';

	value $Qtrintaetres
		'A'	= 'Somente em escola p�blica;'
		'B'	= 'Maior parte em escola p�blica;'
		'C'	= 'Somente em escola particular;'
		'D'	= 'Maior parte em escola particular;'
		'E'	= 'Somente em escola ind�gena;'
		'F'	= 'Maior parte em escola ind�gena;'
		'G'	= 'Somente em escola situada em comunidade quilombola;'
		'H'	= 'Maior parte em escola situada em comunidade quilombola;'
		'I'	= 'N�o frequentei a escola.';

	value $Qtrintaequatro
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qtrintaecinco
		'A'	= 'Curso presencial em escola p�blica.'
		'B'	= 'Curso presencial em escola privada.'
		'C'	= 'Curso presencial na empresa em que trabalha, institui��o filantr�pica ou religiosa.'
		'D'	= 'Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas).'
		'E'	= 'Curso semi-presencial em escola p�blica.'
		'F'	= 'Curso semi-presencial em escola privada.';

	value $Qtrintaeseis
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qtrintaesete
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qtrintaeoito
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qtrintaenove
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qquarenta
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qquarentaeum
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qquarentaedois
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qquarentaetres
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qcinquentaedois
		'A'	= 'Menos de 10 anos.'
		'B'	= 'Entre 10 e 14 anos.'
		'C'	= 'Entre 15 e 18 anos.'
		'D'	= 'Entre 19 e 24 anos.'
		'E'	= 'Entre 25 e 30 anos.'
		'F'	= 'Mais de 30 anos.'
		'G'	= 'N�o deixei de frequentar.';

	value $Qcinquentaesete
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qcinquentaeoito
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qcinquentaenove
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qsessenta
		'A'	= 'Sim'
		'B'	= 'N�o';

	value $Qsessentaeum
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsessentaedois
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsessentaetres
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsessentaequatro
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsessentaecinco
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsessentaeseis
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsessentaesete
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsessentaeoito
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsessentaenove
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsetenta
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsetentaeum
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsetentaedois
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsetentaetres
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsetentaequatro
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';

	value $Qsetentaecinco
		'A'	= '1'
		'B'	= '2'
		'C'	= '3 ou mais'
		'D'	= 'N�o tenho';
	
run;

DATA WORK.DADOS_ENEM_2011;
INFILE 'C:\MICRODADOS_ENEM_2011.csv' /*local do arquivo*/
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
        TP_ST_CONCLUSAO     :  $CHAR1.
        TP_ANO_CONCLUIU     :  $CHAR2.
        TP_ESCOLA        :  $CHAR1.
        TP_ENSINO     :  $CHAR1.
        CO_MUNICIPIO_ESC : BEST7.
        NO_MUNICIPIO_ESC : $CHAR32.
        CO_UF_ESC       : BEST2.
        SG_UF_ESC           : $CHAR2.
        TP_DEPENDENCIA_ADM_ESC : $CHAR1.
        TP_LOCALIZACAO_ESC : $CHAR1.
        TP_SIT_FUNC_ESC     : $CHAR1.
		IN_CERTIFICADO : $CHAR1.
		NO_ENTIDADE_CERTIFICACAO : $CHAR150.
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
        TP_STATUS_REDACAO :$CHAR1.
        NU_NOTA_COMP1    : BEST3.
        NU_NOTA_COMP2    : BEST3.
        NU_NOTA_COMP3    : BEST3.
        NU_NOTA_COMP4    : BEST3.
        NU_NOTA_COMP5    : BEST3.
        NU_NOTA_REDACAO  : BEST4.
        Q001             : $CHAR2.
        Q002             : $CHAR1.
        Q003             : $CHAR1.
        Q004             : $CHAR1.
        Q005             : $CHAR2.
        Q006             : $CHAR1.
        Q007             : $CHAR1.
        Q008             : $CHAR1.
        Q009             : BEST1.
        Q010             : BEST1.
        Q011             : BEST1.
        Q012             : BEST1.
        Q013             : BEST1.
        Q014             : $CHAR1.
        Q015             : $CHAR1.
        Q016             : $CHAR1.
        Q017             : $CHAR1.
        Q018             : $CHAR1.
        Q019             : $CHAR1.
        Q020             : $CHAR1.
        Q021             : $CHAR1.
        Q022             : $CHAR1.
        Q023             : $CHAR2.
        Q024             : BEST1.
        Q025             : BEST1.
		Q026             : BEST1.
		Q027             : BEST1.
		Q028             : $CHAR1.
		Q029             : $CHAR1.
		Q030             : $CHAR2.
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
		Q044             : BEST1.
		Q045             : BEST1.
		Q046             : BEST1.
		Q047             : BEST1.
		Q048             : BEST1.
		Q049             : BEST1.
		Q050             : BEST1.
		Q051             : BEST1.
		Q052             : $CHAR1.
		Q053             : BEST1.
		Q054             : BEST1.
		Q055             : BEST1.
		Q056             : BEST1.
		Q057             : $CHAR1.
		Q058             : $CHAR1.
		Q059             : $CHAR1.
		Q060             : $CHAR1.
		Q061             : $CHAR1.
		Q062             : $CHAR1.
		Q063             : $CHAR1.
		Q064             : $CHAR1.
		Q065             : $CHAR1.
		Q066             : $CHAR1.
		Q067             : $CHAR1.
		Q068             : $CHAR1.
		Q069             : $CHAR1.
		Q070             : $CHAR1.
		Q071             : $CHAR1.
		Q072             : $CHAR1.
		Q073             : $CHAR1.
		Q074             : $CHAR1.
		Q075             : $CHAR1.;

ATTRIB IN_CERTIFICADO				FORMAT=$IN_CERTIFICADO3.;
ATTRIB TP_DEPENDENCIA_ADM_ESC 		FORMAT=$TP_DEPENDENCIA_ADM10.;
ATTRIB TP_LOCALIZACAO_ESC 			FORMAT=$TP_LOCALIZACAO10.;
ATTRIB TP_SIT_FUNC_ESC 				FORMAT=$TP_SIT_FUNC_ESC40.;
ATTRIB TP_SEXO 						FORMAT=$TP_SEXO10.;
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
ATTRIB Q001 FORMAT=$Qum.;
ATTRIB Q002 FORMAT=$Qdois.;
ATTRIB Q003 FORMAT=$Qtres.;
ATTRIB Q004 FORMAT=$Qquatro.;
ATTRIB Q005 FORMAT=$Qcinco.;
ATTRIB Q006 FORMAT=$Qseis.;
ATTRIB Q007 FORMAT=$Qsete.;
ATTRIB Q008 FORMAT=$Qoito.;
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
ATTRIB Q028 FORMAT=$Qvinteeoito.;
ATTRIB Q029 FORMAT=$Qvinteenove.;
ATTRIB Q030 FORMAT=$Qtrinta.;
ATTRIB Q031 FORMAT=$Qtrintaeum.;
ATTRIB Q032 FORMAT=$Qtrintaedois.;
ATTRIB Q033 FORMAT=$Qtrintaetres.;
ATTRIB Q034 FORMAT=$Qtrintaequatro.;
ATTRIB Q035 FORMAT=$Qtrintaecinco.;
ATTRIB Q036 FORMAT=$Qtrintaeseis.;
ATTRIB Q037 FORMAT=$Qtrintaesete.;
ATTRIB Q038 FORMAT=$Qtrintaeoito.;
ATTRIB Q039 FORMAT=$Qtrintaenove.;
ATTRIB Q040 FORMAT=$Qquarenta.;
ATTRIB Q041 FORMAT=$Qquarentaeum.;
ATTRIB Q042 FORMAT=$Qquarentaedois.;
ATTRIB Q043 FORMAT=$Qquarentaetres.;
ATTRIB Q052 FORMAT=$Qcinquentaedois.;
ATTRIB Q057 FORMAT=$Qcinquentaesete.;
ATTRIB Q058 FORMAT=$Qcinquentaeoito.;
ATTRIB Q059 FORMAT=$Qcinquentaenove.;
ATTRIB Q060 FORMAT=$Qsessenta.;
ATTRIB Q061 FORMAT=$Qsessentaeum.;
ATTRIB Q062 FORMAT=$Qsessentaedois.;
ATTRIB Q063 FORMAT=$Qsessentaetres.;
ATTRIB Q064 FORMAT=$Qsessentaequatro.;
ATTRIB Q065 FORMAT=$Qsessentaecinco.;
ATTRIB Q066 FORMAT=$Qsessentaeseis.;
ATTRIB Q067 FORMAT=$Qsessentaesete.;
ATTRIB Q068 FORMAT=$Qsessentaeoito.;
ATTRIB Q069 FORMAT=$Qsessentaenove.;
ATTRIB Q070 FORMAT=$Qsetenta.;
ATTRIB Q071 FORMAT=$Qsetentaeum.;
ATTRIB Q072 FORMAT=$Qsetentaedois.;
ATTRIB Q073 FORMAT=$Qsetentaetres.;
ATTRIB Q074 FORMAT=$Qsetentaequatro.;
ATTRIB Q075 FORMAT=$Qsetentaecinco.;

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
IN_CERTIFICADO = 'Indicador de solicita��o de certifica��o no Ensino M�dio'
NO_ENTIDADE_CERTIFICACAO= 'Nome da Entidade Certificadora'
CO_UF_ENTIDADE_CERTIFICACAO= 'C�digo da Unidade da Federa��o da Entidade Certificadora'
SG_UF_ENTIDADE_CERTIFICACAO= 'C�digo da Unidade da Federa��o da Entidade Certificadora'
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
Q001   =  'Quantas pessoas moram com voc�? '                                                                                                                   
Q002   =  'At� quando seu pai estudou? '                                                                                                                       
Q003   =  'At� quando sua m�e estudou? '                                                                                                                       
Q004   =  'Somando a sua renda com a renda das pessoas que moram com voc�, quanto �, aproximadamente, a renda familiar mensal? '                               
Q005   =  'Qual a sua renda mensal, aproximadamente?'                                                                                                          
Q006   =  'A casa onde voc� mora �? '                                                                                                                          
Q007   =  'Sua casa est� localizada em?'                                                                                                                       
Q008   =  'Voc� exerce ou j� exerceu atividade remunerada? '                                                                                                   
Q009   =  'Grau de import�ncia quanto a sua decis�o de trabalhar para ajudar meus pais nas despesas com a casa'                                                
Q010   =  'Grau de import�ncia quanto a sua decis�o de trabalhar para sustentar minha fam�lia '                                                                
Q011   =  'Grau de import�ncia quanto a sua decis�o de trabalhar para ser independente (ganhar meu pr�prio dinheiro)'                                          
Q012   =  'Grau de import�ncia quanto a sua decis�o de trabalhar para adquirir experi�ncia'                                                                    
Q013   =  'Grau de import�ncia quanto a sua decis�o de trabalhar para custear/ pagar meus estudos'                                                             
Q014   =  'Voc� fez algum curso preparat�rio para o trabalho que realiza ou realizou? '                                                                        
Q015   =  'Frequentou ou frequenta Curso profissionalizante'                                                                                                   
Q016   =  'Frequentou ou frequenta Curso preparat�rio para vestibular'                                                                                         
Q017   =  'Frequentou ou frequenta Curso superior'                                                                                                             
Q018   =  'Frequentou ou frequenta Curso de l�ngua estrangeira'                                                                                                
Q019   =  'Frequentou ou frequenta Curso de computa��o ou inform�tica'                                                                                         
Q020   =  'Frequentou ou frequenta Curso preparat�rio para outros concursos p�blicos'                                                                          
Q021   =  'Frequentou ou frequenta Outro curso'                                                                                                                
Q022   =  'Quantas horas semanais voc� trabalha?'                                                                                                              
Q023   =  'Com que idade voc� come�ou a trabalhar?'                                                                                                            
Q024   =  'Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Testar meus conhecimentos'                                             
Q025   =  'Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Prosseguir os estudos no Ensino Superior'                              
Q026   =  'Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Obter a certifica��o do Ensino M�dio ou acelerar meus estudos'         
Q027   =  'Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Conseguir uma bolsa de estudos (ProUni, outras)'                       
Q028   =  'Quantos anos voc� levou para concluir o Ensino Fundamental?'                                                                                        
Q029   =  'Voc� deixou de estudar durante o Ensino Fundamental?'                                                                                               
Q030   =  'Em que tipo de escola voc� cursou o Ensino Fundamental?'                                                                                            
Q031   =  'Quantos anos voc� levou para concluir o Ensino M�dio?'                                                                                              
Q032   =  'Voc� deixou de estudar durante o Ensino M�dio?'                                                                                                     
Q033   =  'Em que tipo de escola voc� cursou o Ensino M�dio?'                                                                                                  
Q034   =  'Voc� cursa ou j� cursou a Educa��o de Jovens e Adultos � EJA?'                                                                                      
Q035   =  'Como � ou era o curso de EJA que voc� frequenta ou frequentou?'                                                                                     
Q036   =  'Deixou de cursar EJA por causa de Trabalho/ falta de tempo para estudar.'                                                                           
Q037   =  'Deixou de cursar EJA porque Estudava no curso da empresa e foi interrompido.'                                                                       
Q038   =  'Deixou de cursar EJA por Problemas de sa�de ou acidentes comigo ou familiares.'                                                                     
Q039   =  'Deixou de cursar EJA por Mudan�a de estado, munic�pio ou cidade.'                                                                                   
Q040   =  'Deixou de cursar EJA por motivos pessoais: casamento / filhos.'                                                                                     
Q041   =  'Deixou de cursar EJA porque N�o tinha interesse / desisti.'                                                                                         
Q042   =  'Deixou de cursar EJA porque Senti-me discriminado(a).'                                                                                              
Q043   =  'Voc� j� frequentou alguma vez escola regular? '                                                                                                     
Q044   =  'Inexist�ncia de vaga em escola p�blica influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular'                               
Q045   =  'Aus�ncia de escola perto de casa influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular'                                     
Q046   =  'Falta de interesse em estudar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular'                                        
Q047   =  'Trabalho: falta de tempo para estudar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular'                                
Q048   =  'Motivos pessoais: casamento / filhos influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular'                                 
Q049   =  'Falta de apoio familiar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular'                                              
Q050   =  'Problemas de sa�de ou acidente comigo ou familiares influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular'                  
Q051   =  'Discrimina��o/ preconceitos de ra�a, sexo, cor, idade ou socioecon�mico influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular'
Q052   =  'Quantos anos de idade voc� tinha quando deixou de frequentar a escola regular?'                                                                    
Q053   =  'Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Conseguir um emprego'                                                       
Q054   =  'Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Conseguir um emprego melhor'                                                
Q055   =  'Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Progredir no meu emprego atual'                                             
Q056   =  'Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Continuar os estudos no Ensino Superior'                                    
Q057   =  'Caso ingresse no Ensino Superior privado, pretende recorrer ao FIES (Programa de Financiamento Estudantil) para custeio das mensalidades '
Q058   =  'Caso ingresse no Ensino Superior privado pretende recorrer ao Pr�-Uni (Programa Universidade para Todos) para custeio das mensalidades '
Q059   =  'Caso ingresse no Ensino Superior privado pretende recorrer a Bolsa de estudos da pr�pria Institui��o de Ensino Superior para custeio das mensalidades'
Q060   =  'Caso ingresse no Ensino Superior privado pretende recorrer a Bolsa de estudos da empresa onde trabalha para custeio das mensalidades'
Q061   =  'Voc� tem TV em cores em sua casa?'
Q062   =  'Voc� tem Videocassete e/ou DVD em sua casa?'
Q063   =  'Voc� tem R�dio em sua casa?'
Q064   =  'Voc� tem Microcomputador em sua casa?'
Q065   =  'Voc� tem Autom�vel em sua casa?'
Q066   =  'Voc� tem M�quina de lavar roupa em sua casa?'
Q067   =  'Voc� tem Geladeira em sua casa?'
Q068   =  'Voc� tem Freezer (aparelho independente ou parte da geladeira duplex) em sua casa?'
Q069   =  'Voc� tem Telefone fixo em sua casa?'
Q070   =  'Voc� tem Telefone celular em sua casa?'
Q071   =  'Voc� tem Acesso � Internet em sua casa?'
Q072   =  'Voc� tem TV por assinatura em sua casa?'
Q073   =  'Voc� tem Aspirador de p� em sua casa?'
Q074   =  'Voc� tem Empregada mensalista em sua casa?'
Q075   =  'Voc� tem Banheiro em sua casa?';

IF NU_INSCRICAO = . THEN DELETE;

RUN;