
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Estudos, Pesquisas e Dissemina��o				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2010.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2010       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2010.CSV no diret�rio C:\ do computador.			      */
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
	value  $SEXO
		M ='Masculino'
		F ='Feminino';
	value  $CONCLUSAO
		1='J� concluiu'
		2='Concluir� em 2010'	
		3='Concluir� ap�s 2010';
	value  $ENSINO
		1='Ensino Regular'
		2='Ensino de Jovens e Adultos'
		3='Ensino profissionalizante'
		4='Ensino Especial';
    value  $CERTIFICADO
        0='N�o'
		1='Sim';
	
 value $ESTADO_CIVIL
		0= 'Solteiro(a),'
		1= 'Casado(a),'
		2= 'Em uni�o est�vel,'
		3= 'Mora com um(a) companheiro(a)'
		4= 'Divorciado(a),'
		5= 'Desquitado(a),'
		6= 'Vi�vo(a)';
 value $COR_RACA
		0= 'N�o declarado'
		1= 'Branca'
		2= 'Preta'
		3= 'Parda'
		4= 'Amarela'
		5= 'Ind�gena ';
	value $DEPENDENCIA_ADM
       1= 'Federal'
	   2= 'Estadual'
	   3= 'Municipal'
	   4= 'Privada';
	value $LOCALIZACAO
       1= 'Urbana'
	   2= 'Rural';
	value $SIT_FUNC_ESC
	   1='Em atividade'
	   2='Paralisada'
	   3='Extinta'
	   4='Escola extinta em anos anteriores';
	value  $PRESENCA_CN
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';
	value  $PRESENCA_CH
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';
	value  $PRESENCA_LC
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';
	value  $PRESENCA_MT
		0='Faltou � prova'
		1='Presente na prova'
		2='Eliminado na prova';
	value  $PROVA_CN
       89= 'AZUL'
       90= 'AMARELO'
       91= 'BRANCA'
       92= 'ROSA'
       105= 'AZUL - REAPLICA��O'
       106= 'AMARELO - REAPLICA��O'
       107= 'BRANCA - REAPLICA��O'
       108= 'ROSA' - REAPLICA��O;
	value  $PROVA_CH
       85= 'AZUL'
       86= 'AMARELO'
       87= 'BRANCA'
       88= 'ROSA'
       101= 'AZUL - REAPLICA��O'
       102= 'AMARELO - REAPLICA��O'
       103= 'BRANCA - REAPLICA��O'
       104= 'ROSA - REAPLICA��O';
	value  $PROVA_LC
       93= 'AMARELO'
       94= 'CINZA'
       95= 'AZUL'
       96= 'ROSA'
       109= 'AMARELO - REAPLICA��O'
       110= 'CINZA - REAPLICA��O'
       111= 'AZUL - REAPLICA��O'
       112= 'ROSA - REAPLICA��O';
	value  $PROVA_MT
       97= 'AMARELO'
       98= 'CINZA'
       99= 'AZUL'
       100= 'ROSA'
       113= 'AMARELO - REAPLICA��O'
       114= 'CINZA - REAPLICA��O'
       115= 'AZUL - REAPLICA��O'
       116= 'ROSA - REAPLICA��O';
 	value $LINGUA
		0= 'Ingles'	
	    1= 'Espanhol';	
	value  $STATUS_REDACAO
       B= 'Entregou a reda��o em branco'
       D= 'Desconsiderada'
       F= 'Faltou � prova'
       N= 'Reda��o anulada'
       P= 'Presente � prova';

	value $Qum
       A= 'Uma a tr�s'
       B= 'Quatro a sete'
       C= 'Oito a dez'
       D= 'Mais de dez'
       E= 'Moro sozinho';

	value $Qdois
       A= 'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)'
       B= 'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)'
       C= 'Ensino M�dio (antigo 2� grau)'
       D= 'Ensino Superior'
       E= 'Especializa��o'
       F= 'Mestrado'
       G= 'Doutorado'
       H= 'N�o estudou.'
       I= 'N�o sei';

	value $Qtres
       A= 'Da 1� � 4� s�rie do Ensino Fundamental (antigo prim�rio)'
       B= 'Da 5� � 8� s�rie do Ensino Fundamental (antigo gin�sio)'
       C= 'Ensino M�dio (antigo 2� grau)'
       D= 'Ensino Superior'
       E= 'Especializa��o'
       F= 'Mestrado'
       G= 'Doutorado'
       H= 'N�o estudou.'
       I= 'N�o sei';

	value $Qquatro
       A= 'At� 1 sal�rio m�nimo (at� R$ 510,00).'
       B= 'De 1 a 3 sal�rios m�nimos (de R$ 510,00 at� R$ 1.530,00).'
       C= 'De 3 a 6 sal�rios m�nimos (de R$ 1.530,00 at� R$ 3.060,00).'
       D= 'De 6 a 9 sal�rios m�nimos (de R$ 3.060,00 at� R$ 4.590,00).'
       E= 'De 9 a 12 sal�rios m�nimos (de R$ 4.590,00 at� R$ 6.120,00).'
       F= 'De 12 a 15 sal�rios m�nimos (de R$ 6.210,00 at� R$ 7.650,00).'
       G= 'Mais de 15 sal�rios m�nimos (mais de R$ 7.650,00).'
       H= 'Nenhuma renda.';

	value $Qcinco
       A= 'At� 1 sal�rio m�nimo (at� R$ 510,00).'
       B= 'De 1 a 3 sal�rios m�nimos (de R$ 510,00 at� R$ 1.530,00).'
       C= 'De 3 a 6 sal�rios m�nimos (de R$ 1.530,00 at� R$ 3.060,00).'
       D= 'De 6 a 9 sal�rios m�nimos (de R$ 3.060,00 at� R$ 4.590,00).'
       E= 'De 9 a 12 sal�rios m�nimos (de R$ 4.590,00 at� R$ 6.120,00).'
       F= 'De 12 a 15 sal�rios m�nimos (de R$ 6.210,00 at� R$ 7.650,00).'
       G= 'Mais de 15 sal�rios m�nimos (mais de R$ 7.650,00).'
       H= 'Nenhuma renda.';

	value $Qseis
       A= 'Pr�pria'
       B= 'Alugada'
       C= 'Cedida';

	value $Qsete
       A= 'Zona rural.'
       B= 'Zona urbana'
       C= 'Comunidade ind�gena.'
       D= 'Comunidade quilombola.';

	value $Qoito
		A='Sim '
		B='N�o';

	value $Qcatorze
		A='Sim '
		B='N�o';

	value $Qquinze
		A='Sim '
		B='N�o';

	value $Qdezesseis
		A='Sim '
		B='N�o';

	value $Qdezessete
		A='Sim '
		B='N�o';

	value $Qdezoito
		A='Sim '
		B='N�o';

	value $Qdezenove
		A='Sim '
		B='N�o';

	value $Qvinte
		A='Sim '
		B='N�o';

	value $Qvinteum
		A='Sim '
		B='N�o';

	value $Qvintedois
       A= 'Sem jornada fixa, at� 10 horas semanais.'
       B= 'De 11 a 20 horas semanais.'
       C= 'De 21 a 30 horas semanais.'
       D= 'De 31 a 40 horas semanais.'
       E= 'Mais de 40 horas semanais';

	value $Qvintetres
       A= 'Antes dos 14 anos.'
       B= 'Entre 14 e 16 anos.'
       C= 'Entre 17 e 18 anos.'
       D= 'Ap�s 18 anos.';

	value $Qvinteoito
       A= 'Menos de 8 anos.'
       B= '8 anos.'
       C= '9 anos.'
       D= '10 anos.'
       E= '11 anos.'
       F= 'Mais de 11 anos.'
       G= 'N�o conclui.';

	value $Qvintenove
       A= 'N�o.'
       B= 'Sim, por um ano.'
       C= 'Sim, por dois anos.'
       D= 'Sim, por tr�s anos.'
       E= 'Sim, por quatro anos ou mais.';

	value $Qtrinta
       A= 'Somente em escola p�blica.'
       B= 'Maior parte em escola p�blica.'
       C= 'Somente em escola particular.'
       D= 'Maior parte em escola particular.'
       E= 'Somente em escola ind�gena.'
       F= 'Maior parte em escola n�o-ind�gena.'
       G= 'Somente em escola situada em comunidade quilombola.'
       H= 'N�o freq�entei a escola';

	value $Qtrintaum
       A= 'Menos de 3 anos'
       B= '3 anos'
       C= '4 anos'
       D= '5 anos'
       E= '6 anos ou mais'
       F= 'N�o conclui';

	value $Qtrintadois
       A= 'N�o.'
       B= 'Sim, por um ano.'
       C= 'Sim, por dois anos.'
       D= 'Sim, por tr�s anos.'
       E= 'Sim, por quatro anos ou mais.';

	value $Qtrintatres
       A= 'Somente em escola p�blica.'
       B= 'Maior parte em escola p�blica.'
       C= 'Somente em escola particular.'
       D= 'Maior parte em escola particular.'
       E= 'Somente em escola ind�gena.'
       F= 'Maior parte em escola n�o-ind�gena.'
       G= 'Somente em escola situada em comunidade quilombola.'
       H= 'N�o freq�entei a escola';

	value $Qtrintaquatro
		A='Sim '
		B='N�o';

	value $Qtrintacinco
       A= 'Curso presencial em escola p�blica.'
       B= 'Curso presencial em escola privada.'
       C= 'Curso presencial na empresa em que trabalha, institui��o filantr�pica ou religiosa.'
       D= 'Curso a dist�ncia (via r�dio, televis�o, internet, correio, com apostilas).'
       E= 'Curso semi-presencial em escola p�blica.'
       F= 'Curso semi-presencial em escola privada.';

	value $Qtrintaseis
	A='Sim '
	B='N�o';

	value $Qtrintasete
	A='Sim '
	B='N�o';

	value $Qtrintaoito
	A='Sim '
	B='N�o';

	value $Qtrintanove
	A='Sim '
	B='N�o';

	value $Qquarenta
		A='Sim '
		B='N�o';

	value $Qquarentaum
		A='Sim '
		B='N�o';

	value $Qquarentadois
		A='Sim '
		B='N�o';

	value $Qquarentatres
		A='Sim '
		B='N�o';

	value $Qquarentaquatro
		A='Sim '
		B='N�o';

	value $Qcinquentatres
       A= 'Menos de 10 anos.'
       B= 'Entre 10 e 14 anos.'
       C= 'Entre 15 e 18 anos.'
       D= 'Entre 19 e 24 anos.'
       E= 'Entre 25 e 30 anos.'
       F= 'Mais de 30 anos.'
       G= 'N�o deixei de frequentar.';

run;


DATA WORK.DADOS_ENEM_2010;
INFILE 'C:\MICRODADOS_ENEM_2010.csv' /*local do arquivo*/
        LRECL=1275
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
        NU_INSCRICAO       : BEST21.
        NU_ANO       : BEST4.
		TP_FAIXA_ETARIA     : $char2.
        TP_SEXO       : $char1.
        TP_ESTADO_CIVIL       : $char1.
        TP_COR_RACA       : $char1.
        TP_ST_CONCLUSAO       : $char1.
        TP_ENSINO       : $char1.
        CO_MUNICIPIO_ESC       : BEST7.
        NO_MUNICIPIO_ESC       : $char150.
        CO_UF_ESC       : BEST2.
        SG_UF_ESC       : $char2.
        TP_DEPENDENCIA_ADM_ESC       : $char1.
        TP_LOCALIZACAO_ESC       : $char1.
        TP_SIT_FUNC_ESC       : $char1.
        IN_CERTIFICADO       : $char1.
        CO_MUNICIPIO_PROVA       : BEST7.
        NO_MUNICIPIO_PROVA       : $char150.
        CO_UF_PROVA       : BEST2.
        SG_UF_PROVA       : $char2.
        TP_PRESENCA_CN       : $char1.
        TP_PRESENCA_CH       : $char1.
        TP_PRESENCA_LC       : $char1.
        TP_PRESENCA_MT       : $char1.
        CO_PROVA_CN       : $char3.
        CO_PROVA_CH       : $char3.
        CO_PROVA_LC       : $char3.
        CO_PROVA_MT       : $char3.
        NU_NOTA_CN       : BEST9.2
        NU_NOTA_CH       : BEST9.2
        NU_NOTA_LC       : BEST9.2
        NU_NOTA_MT       : BEST9.2
        TX_RESPOSTAS_CN       : $char45.
        TX_RESPOSTAS_CH       : $char45.
        TX_RESPOSTAS_LC       : $char45.
        TX_RESPOSTAS_MT       : $char45.
        TP_LINGUA       : $char1.
        TX_GABARITO_CN       : $char45.
        TX_GABARITO_CH       : $char45.
        TX_GABARITO_LC       : $char50.
        TX_GABARITO_MT       : $char45.
        TP_STATUS_REDACAO       : $char1.
        NU_NOTA_COMP1       : BEST9.2
        NU_NOTA_COMP2       : BEST9.2
        NU_NOTA_COMP3       : BEST9.2
        NU_NOTA_COMP4       : BEST9.2
        NU_NOTA_COMP5       : BEST9.2
        NU_NOTA_REDACAO       : BEST9.2
        Q01       : $Char1.
        Q02       : $Char1.
        Q03       : $Char1.
        Q04       : $Char1.
        Q05       : $Char1.
        Q06       : $Char1.
        Q07       : $Char1.
        Q08       : $Char1.
        Q09       : $Char1.
        Q10       : $Char1.
        Q11       : $Char1.
        Q12       : $Char1.
        Q13       : $Char1.
        Q14       : $Char1.
        Q15       : $Char1.
        Q16       : $Char1.
        Q17       : $Char1.
        Q18       : $Char1.
        Q19       : $Char1.
        Q20       : $Char1.
        Q21       : $Char1.
        Q22       : $Char1.
        Q23       : $Char1.
        Q24       : $Char1.
        Q25       : $Char1.
        Q26       : $Char1.
        Q27       : $Char1.
        Q28       : $Char1.
        Q29       : $Char1.
        Q30       : $Char1.
        Q31       : $Char1.
        Q32       : $Char1.
        Q33       : $Char1.
        Q34       : $Char1.
        Q35       : $Char1.
        Q36       : $Char1.
        Q37       : $Char1.
        Q38       : $Char1.
        Q39       : $Char1.
        Q40       : $Char1.
        Q41       : $Char1.
        Q42       : $Char1.
        Q43       : $Char1.
        Q44       : $Char1.
        Q45       : $Char1.
        Q46       : $Char1.
        Q47       : $Char1.
        Q48       : $Char1.
        Q49       : $Char1.
        Q50       : $Char1.
        Q51       : $Char1.
        Q52       : $Char1.
        Q53       : $Char1.
        Q54       : $Char1.
        Q55       : $Char1.
        Q56       : $Char1.
        Q57       : $Char1.
;

ATTRIB TP_FAIXA_ETARIA				FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB TP_SEXO FORMAT=$SEXO10.;
ATTRIB TP_ST_CONCLUSAO FORMAT=$CONCLUSAO30.;
ATTRIB TP_ENSINO FORMAT=$ENSINO30.;
ATTRIB TP_ESTADO_CIVIL FORMAT=$ESTADO_CIVIL30.;
ATTRIB TP_COR_RACA FORMAT=$COR_RACA13.;
ATTRIB IN_CERTIFICADO FORMAT=$CERTIFICADO3.;
ATTRIB TP_DEPENDENCIA_ADM_ESC FORMAT=$DEPENDENCIA_ADM10.;
ATTRIB TP_LOCALIZACAO_ESC FORMAT=$LOCALIZACAO10.;
ATTRIB TP_SIT_FUNC_ESC FORMAT=$SIT_FUNC_ESC35.;
ATTRIB TP_PRESENCA_CN FORMAT=$PRESENCA_CN20.;
ATTRIB TP_PRESENCA_CH FORMAT=$PRESENCA_CH20.;
ATTRIB TP_PRESENCA_LC FORMAT=$PRESENCA_LC20.;
ATTRIB TP_PRESENCA_MT FORMAT=$PRESENCA_MT20.;
ATTRIB CO_PROVA_CN FORMAT=$PROVA_CN10.;
ATTRIB CO_PROVA_CH FORMAT=$PROVA_CH10.;
ATTRIB CO_PROVA_LC FORMAT=$PROVA_LC10.;
ATTRIB CO_PROVA_MT FORMAT=$PROVA_MT10.;
ATTRIB NU_NOTA_CN FORMAT= 8.2;
ATTRIB NU_NOTA_CH FORMAT= 8.2;
ATTRIB NU_NOTA_LC FORMAT= 8.2;
ATTRIB NU_NOTA_MT FORMAT= 8.2;
ATTRIB TP_LINGUA FORMAT=$LINGUA8.;
ATTRIB TP_STATUS_REDACAO FORMAT=$STATUS_REDACAO30.;
ATTRIB NU_NOTA_COMP1 FORMAT= 8.2;
ATTRIB NU_NOTA_COMP2 FORMAT= 8.2;
ATTRIB NU_NOTA_COMP3 FORMAT= 8.2;
ATTRIB NU_NOTA_COMP4 FORMAT= 8.2;
ATTRIB NU_NOTA_COMP5 FORMAT= 8.2;
ATTRIB NU_NOTA_REDACAO FORMAT= 8.2;
ATTRIB NU_INSCRICAO FORMAT= 21.;
ATTRIB Q01 FORMAT=$Qum.;
ATTRIB Q02 FORMAT=$Qdois.;
ATTRIB Q03 FORMAT=$Qtres.;
ATTRIB Q04 FORMAT=$Qquatro.;
ATTRIB Q05 FORMAT=$Qcinco.;
ATTRIB Q06 FORMAT=$Qseis.;
ATTRIB Q07 FORMAT=$Qsete.;
ATTRIB Q08 FORMAT=$Qoito.;
ATTRIB Q14 FORMAT=$Qcatorze.;
ATTRIB Q15 FORMAT=$Qquinze.;
ATTRIB Q16 FORMAT=$Qdezesseis.;
ATTRIB Q17 FORMAT=$Qdezessete.;
ATTRIB Q18 FORMAT=$Qdezoito.;
ATTRIB Q19 FORMAT=$Qdezenove.;
ATTRIB Q20 FORMAT=$Qvinte.;
ATTRIB Q21 FORMAT=$Qvinteum.;
ATTRIB Q22 FORMAT=$Qvintedois.;
ATTRIB Q23 FORMAT=$Qvintetres.;
ATTRIB Q28 FORMAT=$Qvinteoito.;
ATTRIB Q29 FORMAT=$Qvintenove.;
ATTRIB Q30 FORMAT=$Qtrinta.;
ATTRIB Q31 FORMAT=$Qtrintaum.;
ATTRIB Q32 FORMAT=$Qtrintadois.;
ATTRIB Q33 FORMAT=$Qtrintatres.;
ATTRIB Q34 FORMAT=$Qtrintaquatro.;
ATTRIB Q35 FORMAT=$Qtrintacinco.;
ATTRIB Q36 FORMAT=$Qtrintaseis.;
ATTRIB Q37 FORMAT=$Qtrintasete.;
ATTRIB Q38 FORMAT=$Qtrintaoito.;
ATTRIB Q39 FORMAT=$Qtrintanove.;
ATTRIB Q40 FORMAT=$Qquarenta.;
ATTRIB Q41 FORMAT=$Qquarentaum.;
ATTRIB Q42 FORMAT=$Qquarentadois.;
ATTRIB Q43 FORMAT=$Qquarentatres.;
ATTRIB Q44 FORMAT=$Qquarentaquatro.;
ATTRIB Q53 FORMAT=$Qcinquentatres.;

LABEL
NU_INSCRICAO = 'N�mero de inscri��o no ENEM 2010.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA    =   'Faixa Et�ria'
TP_SEXO = 'Sexo do inscrito'
TP_ESTADO_CIVIL = 'Estado Civil do participante'
TP_COR_RACA = ' Tipo de Cor/Ra�a do participante'
TP_ST_CONCLUSAO = 'Situa��o em rela��o ao ensino m�dio'
TP_ENSINO = 'Tipo de institui��o onde o estudante concluiu ou concluir� o ensino m�dio'
CO_MUNICIPIO_ESC = 'C�digo do Munic�pio da escola em que estudou:'
NO_MUNICIPIO_ESC = 'Nome do munic�pio da escola'
CO_UF_ESC = 'C�digo da Unidade da Federa��o da escola'
SG_UF_ESC = 'Sigla da Unidade da Federa��o da escola'
TP_DEPENDENCIA_ADM_ESC = 'Depend�ncia administrativa'
TP_LOCALIZACAO_ESC = 'Localiza��o/Zona da escola'
TP_SIT_FUNC_ESC = 'Situa��o de funcionamento'
IN_CERTIFICADO = 'Indicador de que o inscrito solicitar� certifica��o no Ensino M�dio'
CO_MUNICIPIO_PROVA = 'C�digo do Munic�pio da cidade de prova:'
NO_MUNICIPIO_PROVA = 'Nome do Munic�pio da cidade de prova'
CO_UF_PROVA = 'C�digo da Unidade da Federa��o do local da prova'
SG_UF_PROVA = 'Sigla da Unidade da Federa��o da cidade de prova'
TP_PRESENCA_CN = 'Presen�a � prova objetiva de Ci�ncias da Natureza'
TP_PRESENCA_CH = 'Presen�a � prova objetiva de Ci�ncias Humanas'
TP_PRESENCA_LC = 'Presen�a � prova objetiva de Linguagens e C�digos'
TP_PRESENCA_MT = 'Presen�a � prova objetiva de Matem�tica'
CO_PROVA_CN = 'C�digo do tipo de prova de Ciencias da Natureza'
CO_PROVA_CH = 'C�digo do tipo de prova de Ci�ncias Humanas'
CO_PROVA_LC = 'C�digo do tipo de prova de Linguagens e C�digos'
CO_PROVA_MT = 'C�digo do tipo de prova de Matem�tica'
NU_NOTA_CN = 'Nota da prova de Ci�ncias da Natureza'
NU_NOTA_CH = 'Nota da prova de Ci�ncias Humanas'
NU_NOTA_LC = 'Nota da prova de Linguagens e C�digos'
NU_NOTA_MT = 'Nota da prova de Matem�tica'
TX_RESPOSTAS_CN = 'Vetor com as respostas da parte objetiva da prova de Ci�ncias da Natureza'
TX_RESPOSTAS_CH = 'Vetor com as respostas da parte objetiva da prova de Ci�ncias Humanas'
TX_RESPOSTAS_LC = 'Vetor com as respostas da parte objetiva da prova de Linguagens e C�digos'
TX_RESPOSTAS_MT = 'Vetor com as respostas da parte objetiva da prova de Matem�tica'
TP_LINGUA = 'Tipo de Lingua Estrangeira selecionada'
TX_GABARITO_CN = 'Vetor com o gabarito da parte objetiva da prova  de Ci�ncias da Natureza'
TX_GABARITO_CH = 'Vetor com o gabarito da parte objetiva da prova  de Ci�ncias Humanas'
TX_GABARITO_LC = 'Vetor com o gabarito da parte objetiva da prova  de Linguagens e C�digos'
TX_GABARITO_MT = 'Vetor com o gabarito da parte objetiva da prova  de Matem�tica'
TP_STATUS_REDACAO = 'Presen�a � reda��o'
NU_NOTA_COMP1 = 'Nota da compet�ncia 1'
NU_NOTA_COMP2 = 'Nota da compet�ncia 2'
NU_NOTA_COMP3 = 'Nota da compet�ncia 3'
NU_NOTA_COMP4 = 'Nota da compet�ncia 4'
NU_NOTA_COMP5 = 'Nota da compet�ncia 5'
NU_NOTA_REDACAO = 'Nota da prova de reda��o'
Q01 = 'Quantas pessoas moram com voc�? '
Q02 = 'Qual � o n�vel de escolaridade do seu pai? '
Q03 = 'Qual � o n�vel de escolaridade da sua m�e?'
Q04 = 'Somando a sua renda com a renda das pessoas que moram com voc�'
Q05 = 'Qual a sua renda mensal, aproximadamente?'
Q06 = 'A casa onde voc� mora �? '
Q07 = 'Sua casa est� localizada em?'
Q08 = 'Voc� trabalha ou j� trabalhou? '
Q09 = 'Grau de import�ncia quanto a sua decis�o de trabalhar para ajudar meus pais nas despesas com a casa (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q10 = 'Grau de import�ncia quanto a sua decis�o de trabalhar para sustentar minha fam�lia (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q11 = 'Grau de import�ncia quanto a sua decis�o de trabalhar para ser independente (ganhar meu pr�prio dinheiro) - (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q12 = 'Grau de import�ncia quanto a sua decis�o de trabalhar para adquirir experi�ncia (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q13 = 'Grau de import�ncia quanto a sua decis�o de trabalhar para custear/ pagar meus estudos(0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q14 = 'Voc� fez algum curso preparat�rio para o trabalho que realiza ou realizou? '
Q15 = 'Frequentou ou frequenta Curso profissionalizante'
Q16 = 'Frequentou ou frequenta Curso preparat�rio para vestibular'
Q17 = 'Frequentou ou frequenta Curso superior'
Q18 = 'Frequentou ou frequenta Curso de l�ngua estrangeira'
Q19 = 'Frequentou ou frequenta Curso de computa��o ou inform�tica'
Q20 = 'Frequentou ou frequenta Curso preparat�rio para outros concursos p�blicos'
Q21 = 'Frequentou ou frequenta Outro curso'
Q22 = 'Quantas horas semanais voc� trabalha?'
Q23 = 'Com que idade voc� come�ou a trabalhar?'
Q24 = 'Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Testar meus conhecimentos(0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q25 = 'Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Prosseguir os estudos no Ensino Superior (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q26 = 'Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Obter a certifica��o do Ensino M�dio ou acelerar meus estudos (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q27 = 'Grau de import�ncia quanto aos motivos que levaram a participar do ENEM para Conseguir uma bolsa de estudos (ProUni, outras) (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q28 = 'Quantos anos voc� levou para concluir o Ensino Fundamental?'
Q29 = 'Voc� deixou de estudar durante o Ensino Fundamental?'
Q30 = 'Em que tipo de escola voc� cursou o Ensino Fundamental?'
Q31 = 'Quantos anos voc� levou para concluir o Ensino M�dio?'
Q32 = 'Voc� deixou de estudar durante o Ensino M�dio?'
Q33 = 'Em que tipo de escola voc� cursou o Ensino M�dio?'
Q34 = 'Voc� cursa ou j� cursou a Educa��o de Jovens e Adultos � EJA?'
Q35 = 'Como � ou era o curso de EJA que voc� frequenta ou frequentou?'
Q36 = 'Deixou de cursar EJA  por causa de Trabalho/ falta de tempo para estudar.'
Q37 = 'Deixou de cursar EJA  porque Estudava no curso da empresa e foi interrompido.'
Q38 = 'Deixou de cursar EJA  por causa de Problemas de sa�de ou acidentes comigo ou familiares.'
Q39 = 'Deixou de cursar EJA  por causa de Mudan�a de estado, munic�pio ou cidade.'
Q40 = 'Deixou de cursar EJA por causa de Motivos pessoais: casamento / filhos.'
Q41 = 'Deixou de cursar EJA porque N�o tinha interesse / desisti.'
Q42 = 'Deixou de cursar EJA porque Senti-me discriminado(a).'
Q43 = 'Deixou de cursar EJA - N�o se aplica'
Q44 = 'Voc� j� frequentou alguma vez escola regular? '
Q45 = 'Inexist�ncia de vaga em escola p�blica influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q46 = 'Aus�ncia de escola perto de casa nfluenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q47 = 'Falta de interesse em estudar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q48 = 'Trabalho: falta de tempo para estudar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q49 = 'Motivos pessoais: casamento / filhos influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q50 = 'Falta de apoio familiar influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q51 = 'Problemas de sa�de ou acidente comigo ou familiares influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q52 = 'Discrimina��o/ preconceitos de ra�a, sexo, cor, idade ou socioecon�mico influenciou no fato de n�o ter freq�entado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q53 = 'Quantos anos de idade voc� tinha quando deixou de frequentar a escola regular? '
Q54 = 'Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Conseguir um emprego (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q55 = 'Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Conseguir um emprego melhor (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q56 = 'Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Progredir no meu emprego atual (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q57 = 'Grau de import�ncia quanto a querer a certifica��o do Ensino M�dio para Continuar os estudos no Ensino Superior (0 indica o fator menos relevante  e 5 o fator mais relevante)'
;
IF NU_INSCRICAO = . THEN DELETE;

RUN;