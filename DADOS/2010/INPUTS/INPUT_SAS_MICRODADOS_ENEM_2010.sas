
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Estudos, Pesquisas e Disseminação				  */
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2010.CSV no diretório C:\ do computador.			      */
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
		1='Já concluiu'
		2='Concluirá em 2010'	
		3='Concluirá após 2010';
	value  $ENSINO
		1='Ensino Regular'
		2='Ensino de Jovens e Adultos'
		3='Ensino profissionalizante'
		4='Ensino Especial';
    value  $CERTIFICADO
        0='Não'
		1='Sim';
	
 value $ESTADO_CIVIL
		0= 'Solteiro(a),'
		1= 'Casado(a),'
		2= 'Em união estável,'
		3= 'Mora com um(a) companheiro(a)'
		4= 'Divorciado(a),'
		5= 'Desquitado(a),'
		6= 'Viúvo(a)';
 value $COR_RACA
		0= 'Não declarado'
		1= 'Branca'
		2= 'Preta'
		3= 'Parda'
		4= 'Amarela'
		5= 'Indígena ';
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
		0='Faltou à prova'
		1='Presente na prova'
		2='Eliminado na prova';
	value  $PRESENCA_CH
		0='Faltou à prova'
		1='Presente na prova'
		2='Eliminado na prova';
	value  $PRESENCA_LC
		0='Faltou à prova'
		1='Presente na prova'
		2='Eliminado na prova';
	value  $PRESENCA_MT
		0='Faltou à prova'
		1='Presente na prova'
		2='Eliminado na prova';
	value  $PROVA_CN
       89= 'AZUL'
       90= 'AMARELO'
       91= 'BRANCA'
       92= 'ROSA'
       105= 'AZUL - REAPLICAÇÃO'
       106= 'AMARELO - REAPLICAÇÃO'
       107= 'BRANCA - REAPLICAÇÃO'
       108= 'ROSA' - REAPLICAÇÃO;
	value  $PROVA_CH
       85= 'AZUL'
       86= 'AMARELO'
       87= 'BRANCA'
       88= 'ROSA'
       101= 'AZUL - REAPLICAÇÃO'
       102= 'AMARELO - REAPLICAÇÃO'
       103= 'BRANCA - REAPLICAÇÃO'
       104= 'ROSA - REAPLICAÇÃO';
	value  $PROVA_LC
       93= 'AMARELO'
       94= 'CINZA'
       95= 'AZUL'
       96= 'ROSA'
       109= 'AMARELO - REAPLICAÇÃO'
       110= 'CINZA - REAPLICAÇÃO'
       111= 'AZUL - REAPLICAÇÃO'
       112= 'ROSA - REAPLICAÇÃO';
	value  $PROVA_MT
       97= 'AMARELO'
       98= 'CINZA'
       99= 'AZUL'
       100= 'ROSA'
       113= 'AMARELO - REAPLICAÇÃO'
       114= 'CINZA - REAPLICAÇÃO'
       115= 'AZUL - REAPLICAÇÃO'
       116= 'ROSA - REAPLICAÇÃO';
 	value $LINGUA
		0= 'Ingles'	
	    1= 'Espanhol';	
	value  $STATUS_REDACAO
       B= 'Entregou a redação em branco'
       D= 'Desconsiderada'
       F= 'Faltou à prova'
       N= 'Redação anulada'
       P= 'Presente à prova';

	value $Qum
       A= 'Uma a três'
       B= 'Quatro a sete'
       C= 'Oito a dez'
       D= 'Mais de dez'
       E= 'Moro sozinho';

	value $Qdois
       A= 'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)'
       B= 'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)'
       C= 'Ensino Médio (antigo 2º grau)'
       D= 'Ensino Superior'
       E= 'Especialização'
       F= 'Mestrado'
       G= 'Doutorado'
       H= 'Não estudou.'
       I= 'Não sei';

	value $Qtres
       A= 'Da 1ª à 4ª série do Ensino Fundamental (antigo primário)'
       B= 'Da 5ª à 8ª série do Ensino Fundamental (antigo ginásio)'
       C= 'Ensino Médio (antigo 2º grau)'
       D= 'Ensino Superior'
       E= 'Especialização'
       F= 'Mestrado'
       G= 'Doutorado'
       H= 'Não estudou.'
       I= 'Não sei';

	value $Qquatro
       A= 'Até 1 salário mínimo (até R$ 510,00).'
       B= 'De 1 a 3 salários mínimos (de R$ 510,00 até R$ 1.530,00).'
       C= 'De 3 a 6 salários mínimos (de R$ 1.530,00 até R$ 3.060,00).'
       D= 'De 6 a 9 salários mínimos (de R$ 3.060,00 até R$ 4.590,00).'
       E= 'De 9 a 12 salários mínimos (de R$ 4.590,00 até R$ 6.120,00).'
       F= 'De 12 a 15 salários mínimos (de R$ 6.210,00 até R$ 7.650,00).'
       G= 'Mais de 15 salários mínimos (mais de R$ 7.650,00).'
       H= 'Nenhuma renda.';

	value $Qcinco
       A= 'Até 1 salário mínimo (até R$ 510,00).'
       B= 'De 1 a 3 salários mínimos (de R$ 510,00 até R$ 1.530,00).'
       C= 'De 3 a 6 salários mínimos (de R$ 1.530,00 até R$ 3.060,00).'
       D= 'De 6 a 9 salários mínimos (de R$ 3.060,00 até R$ 4.590,00).'
       E= 'De 9 a 12 salários mínimos (de R$ 4.590,00 até R$ 6.120,00).'
       F= 'De 12 a 15 salários mínimos (de R$ 6.210,00 até R$ 7.650,00).'
       G= 'Mais de 15 salários mínimos (mais de R$ 7.650,00).'
       H= 'Nenhuma renda.';

	value $Qseis
       A= 'Própria'
       B= 'Alugada'
       C= 'Cedida';

	value $Qsete
       A= 'Zona rural.'
       B= 'Zona urbana'
       C= 'Comunidade indígena.'
       D= 'Comunidade quilombola.';

	value $Qoito
		A='Sim '
		B='Não';

	value $Qcatorze
		A='Sim '
		B='Não';

	value $Qquinze
		A='Sim '
		B='Não';

	value $Qdezesseis
		A='Sim '
		B='Não';

	value $Qdezessete
		A='Sim '
		B='Não';

	value $Qdezoito
		A='Sim '
		B='Não';

	value $Qdezenove
		A='Sim '
		B='Não';

	value $Qvinte
		A='Sim '
		B='Não';

	value $Qvinteum
		A='Sim '
		B='Não';

	value $Qvintedois
       A= 'Sem jornada fixa, até 10 horas semanais.'
       B= 'De 11 a 20 horas semanais.'
       C= 'De 21 a 30 horas semanais.'
       D= 'De 31 a 40 horas semanais.'
       E= 'Mais de 40 horas semanais';

	value $Qvintetres
       A= 'Antes dos 14 anos.'
       B= 'Entre 14 e 16 anos.'
       C= 'Entre 17 e 18 anos.'
       D= 'Após 18 anos.';

	value $Qvinteoito
       A= 'Menos de 8 anos.'
       B= '8 anos.'
       C= '9 anos.'
       D= '10 anos.'
       E= '11 anos.'
       F= 'Mais de 11 anos.'
       G= 'Não conclui.';

	value $Qvintenove
       A= 'Não.'
       B= 'Sim, por um ano.'
       C= 'Sim, por dois anos.'
       D= 'Sim, por três anos.'
       E= 'Sim, por quatro anos ou mais.';

	value $Qtrinta
       A= 'Somente em escola pública.'
       B= 'Maior parte em escola pública.'
       C= 'Somente em escola particular.'
       D= 'Maior parte em escola particular.'
       E= 'Somente em escola indígena.'
       F= 'Maior parte em escola não-indígena.'
       G= 'Somente em escola situada em comunidade quilombola.'
       H= 'Não freqüentei a escola';

	value $Qtrintaum
       A= 'Menos de 3 anos'
       B= '3 anos'
       C= '4 anos'
       D= '5 anos'
       E= '6 anos ou mais'
       F= 'Não conclui';

	value $Qtrintadois
       A= 'Não.'
       B= 'Sim, por um ano.'
       C= 'Sim, por dois anos.'
       D= 'Sim, por três anos.'
       E= 'Sim, por quatro anos ou mais.';

	value $Qtrintatres
       A= 'Somente em escola pública.'
       B= 'Maior parte em escola pública.'
       C= 'Somente em escola particular.'
       D= 'Maior parte em escola particular.'
       E= 'Somente em escola indígena.'
       F= 'Maior parte em escola não-indígena.'
       G= 'Somente em escola situada em comunidade quilombola.'
       H= 'Não freqüentei a escola';

	value $Qtrintaquatro
		A='Sim '
		B='Não';

	value $Qtrintacinco
       A= 'Curso presencial em escola pública.'
       B= 'Curso presencial em escola privada.'
       C= 'Curso presencial na empresa em que trabalha, instituição filantrópica ou religiosa.'
       D= 'Curso a distância (via rádio, televisão, internet, correio, com apostilas).'
       E= 'Curso semi-presencial em escola pública.'
       F= 'Curso semi-presencial em escola privada.';

	value $Qtrintaseis
	A='Sim '
	B='Não';

	value $Qtrintasete
	A='Sim '
	B='Não';

	value $Qtrintaoito
	A='Sim '
	B='Não';

	value $Qtrintanove
	A='Sim '
	B='Não';

	value $Qquarenta
		A='Sim '
		B='Não';

	value $Qquarentaum
		A='Sim '
		B='Não';

	value $Qquarentadois
		A='Sim '
		B='Não';

	value $Qquarentatres
		A='Sim '
		B='Não';

	value $Qquarentaquatro
		A='Sim '
		B='Não';

	value $Qcinquentatres
       A= 'Menos de 10 anos.'
       B= 'Entre 10 e 14 anos.'
       C= 'Entre 15 e 18 anos.'
       D= 'Entre 19 e 24 anos.'
       E= 'Entre 25 e 30 anos.'
       F= 'Mais de 30 anos.'
       G= 'Não deixei de frequentar.';

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
NU_INSCRICAO = 'Número de inscrição no ENEM 2010.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA    =   'Faixa Etária'
TP_SEXO = 'Sexo do inscrito'
TP_ESTADO_CIVIL = 'Estado Civil do participante'
TP_COR_RACA = ' Tipo de Cor/Raça do participante'
TP_ST_CONCLUSAO = 'Situação em relação ao ensino médio'
TP_ENSINO = 'Tipo de instituição onde o estudante concluiu ou concluirá o ensino médio'
CO_MUNICIPIO_ESC = 'Código do Município da escola em que estudou:'
NO_MUNICIPIO_ESC = 'Nome do município da escola'
CO_UF_ESC = 'Código da Unidade da Federação da escola'
SG_UF_ESC = 'Sigla da Unidade da Federação da escola'
TP_DEPENDENCIA_ADM_ESC = 'Dependência administrativa'
TP_LOCALIZACAO_ESC = 'Localização/Zona da escola'
TP_SIT_FUNC_ESC = 'Situação de funcionamento'
IN_CERTIFICADO = 'Indicador de que o inscrito solicitará certificação no Ensino Médio'
CO_MUNICIPIO_PROVA = 'Código do Município da cidade de prova:'
NO_MUNICIPIO_PROVA = 'Nome do Município da cidade de prova'
CO_UF_PROVA = 'Código da Unidade da Federação do local da prova'
SG_UF_PROVA = 'Sigla da Unidade da Federação da cidade de prova'
TP_PRESENCA_CN = 'Presença à prova objetiva de Ciências da Natureza'
TP_PRESENCA_CH = 'Presença à prova objetiva de Ciências Humanas'
TP_PRESENCA_LC = 'Presença à prova objetiva de Linguagens e Códigos'
TP_PRESENCA_MT = 'Presença à prova objetiva de Matemática'
CO_PROVA_CN = 'Código do tipo de prova de Ciencias da Natureza'
CO_PROVA_CH = 'Código do tipo de prova de Ciências Humanas'
CO_PROVA_LC = 'Código do tipo de prova de Linguagens e Códigos'
CO_PROVA_MT = 'Código do tipo de prova de Matemática'
NU_NOTA_CN = 'Nota da prova de Ciências da Natureza'
NU_NOTA_CH = 'Nota da prova de Ciências Humanas'
NU_NOTA_LC = 'Nota da prova de Linguagens e Códigos'
NU_NOTA_MT = 'Nota da prova de Matemática'
TX_RESPOSTAS_CN = 'Vetor com as respostas da parte objetiva da prova de Ciências da Natureza'
TX_RESPOSTAS_CH = 'Vetor com as respostas da parte objetiva da prova de Ciências Humanas'
TX_RESPOSTAS_LC = 'Vetor com as respostas da parte objetiva da prova de Linguagens e Códigos'
TX_RESPOSTAS_MT = 'Vetor com as respostas da parte objetiva da prova de Matemática'
TP_LINGUA = 'Tipo de Lingua Estrangeira selecionada'
TX_GABARITO_CN = 'Vetor com o gabarito da parte objetiva da prova  de Ciências da Natureza'
TX_GABARITO_CH = 'Vetor com o gabarito da parte objetiva da prova  de Ciências Humanas'
TX_GABARITO_LC = 'Vetor com o gabarito da parte objetiva da prova  de Linguagens e Códigos'
TX_GABARITO_MT = 'Vetor com o gabarito da parte objetiva da prova  de Matemática'
TP_STATUS_REDACAO = 'Presença à redação'
NU_NOTA_COMP1 = 'Nota da competência 1'
NU_NOTA_COMP2 = 'Nota da competência 2'
NU_NOTA_COMP3 = 'Nota da competência 3'
NU_NOTA_COMP4 = 'Nota da competência 4'
NU_NOTA_COMP5 = 'Nota da competência 5'
NU_NOTA_REDACAO = 'Nota da prova de redação'
Q01 = 'Quantas pessoas moram com você? '
Q02 = 'Qual é o nível de escolaridade do seu pai? '
Q03 = 'Qual é o nível de escolaridade da sua mãe?'
Q04 = 'Somando a sua renda com a renda das pessoas que moram com você'
Q05 = 'Qual a sua renda mensal, aproximadamente?'
Q06 = 'A casa onde você mora é? '
Q07 = 'Sua casa está localizada em?'
Q08 = 'Você trabalha ou já trabalhou? '
Q09 = 'Grau de importância quanto a sua decisão de trabalhar para ajudar meus pais nas despesas com a casa (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q10 = 'Grau de importância quanto a sua decisão de trabalhar para sustentar minha família (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q11 = 'Grau de importância quanto a sua decisão de trabalhar para ser independente (ganhar meu próprio dinheiro) - (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q12 = 'Grau de importância quanto a sua decisão de trabalhar para adquirir experiência (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q13 = 'Grau de importância quanto a sua decisão de trabalhar para custear/ pagar meus estudos(0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q14 = 'Você fez algum curso preparatório para o trabalho que realiza ou realizou? '
Q15 = 'Frequentou ou frequenta Curso profissionalizante'
Q16 = 'Frequentou ou frequenta Curso preparatório para vestibular'
Q17 = 'Frequentou ou frequenta Curso superior'
Q18 = 'Frequentou ou frequenta Curso de língua estrangeira'
Q19 = 'Frequentou ou frequenta Curso de computação ou informática'
Q20 = 'Frequentou ou frequenta Curso preparatório para outros concursos públicos'
Q21 = 'Frequentou ou frequenta Outro curso'
Q22 = 'Quantas horas semanais você trabalha?'
Q23 = 'Com que idade você começou a trabalhar?'
Q24 = 'Grau de importância quanto aos motivos que levaram a participar do ENEM para Testar meus conhecimentos(0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q25 = 'Grau de importância quanto aos motivos que levaram a participar do ENEM para Prosseguir os estudos no Ensino Superior (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q26 = 'Grau de importância quanto aos motivos que levaram a participar do ENEM para Obter a certificação do Ensino Médio ou acelerar meus estudos (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q27 = 'Grau de importância quanto aos motivos que levaram a participar do ENEM para Conseguir uma bolsa de estudos (ProUni, outras) (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q28 = 'Quantos anos você levou para concluir o Ensino Fundamental?'
Q29 = 'Você deixou de estudar durante o Ensino Fundamental?'
Q30 = 'Em que tipo de escola você cursou o Ensino Fundamental?'
Q31 = 'Quantos anos você levou para concluir o Ensino Médio?'
Q32 = 'Você deixou de estudar durante o Ensino Médio?'
Q33 = 'Em que tipo de escola você cursou o Ensino Médio?'
Q34 = 'Você cursa ou já cursou a Educação de Jovens e Adultos – EJA?'
Q35 = 'Como é ou era o curso de EJA que você frequenta ou frequentou?'
Q36 = 'Deixou de cursar EJA  por causa de Trabalho/ falta de tempo para estudar.'
Q37 = 'Deixou de cursar EJA  porque Estudava no curso da empresa e foi interrompido.'
Q38 = 'Deixou de cursar EJA  por causa de Problemas de saúde ou acidentes comigo ou familiares.'
Q39 = 'Deixou de cursar EJA  por causa de Mudança de estado, município ou cidade.'
Q40 = 'Deixou de cursar EJA por causa de Motivos pessoais: casamento / filhos.'
Q41 = 'Deixou de cursar EJA porque Não tinha interesse / desisti.'
Q42 = 'Deixou de cursar EJA porque Senti-me discriminado(a).'
Q43 = 'Deixou de cursar EJA - Não se aplica'
Q44 = 'Você já frequentou alguma vez escola regular? '
Q45 = 'Inexistência de vaga em escola pública influenciou no fato de não ter freqüentado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q46 = 'Ausência de escola perto de casa nfluenciou no fato de não ter freqüentado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q47 = 'Falta de interesse em estudar influenciou no fato de não ter freqüentado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q48 = 'Trabalho: falta de tempo para estudar influenciou no fato de não ter freqüentado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q49 = 'Motivos pessoais: casamento / filhos influenciou no fato de não ter freqüentado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q50 = 'Falta de apoio familiar influenciou no fato de não ter freqüentado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q51 = 'Problemas de saúde ou acidente comigo ou familiares influenciou no fato de não ter freqüentado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q52 = 'Discriminação/ preconceitos de raça, sexo, cor, idade ou socioeconômico influenciou no fato de não ter freqüentado ou ter abandonado a escola regular (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q53 = 'Quantos anos de idade você tinha quando deixou de frequentar a escola regular? '
Q54 = 'Grau de importância quanto a querer a certificação do Ensino Médio para Conseguir um emprego (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q55 = 'Grau de importância quanto a querer a certificação do Ensino Médio para Conseguir um emprego melhor (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q56 = 'Grau de importância quanto a querer a certificação do Ensino Médio para Progredir no meu emprego atual (0 indica o fator menos relevante  e 5 o fator mais relevante)'
Q57 = 'Grau de importância quanto a querer a certificação do Ensino Médio para Continuar os estudos no Ensino Superior (0 indica o fator menos relevante  e 5 o fator mais relevante)'
;
IF NU_INSCRICAO = . THEN DELETE;

RUN;