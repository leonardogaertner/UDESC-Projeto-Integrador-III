
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Estudos, Pesquisas e Dissemina��o				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2009.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2009       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2009.CSV no diret�rio C:\ do computador.			      */
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
		2='Concluir� em 2009'	
		3='Concluir� ap�s 2009'
		4='N�o concluiu o Ensino M�dio';
	value  $ENSINO
		1='Ensino Regular'
		2='Ensino de Jovens e Adultos'
		3='Ensino profissionalizante'
		4='Ensino Especial';
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
		49='AZUL'
		50='AMARELO'
		51='BRANCA'
		52='ROSA'
		65='AZUL (REAPLICA��O/PPL)'
		66='AMARELO (REAPLICA��O/PPL)'
		67='BRANCA (REAPLICA��O/PPL)'
		68='ROSA (REAPLICA��O/PPL)'
		81='BRANCA (ADAPTADA LEDOR)';
	value  $PROVA_CH
		53='AZUL'
		54='AMARELO'
		55='BRANCA'
		56='ROSA'
		69='AZUL (REAPLICA��O/PPL)'
		70='AMARELO (REAPLICA��O/PPL)'
		71='BRANCA (REAPLICA��O/PPL)'
		72='ROSA (REAPLICA��O/PPL)'
		82='BRANCA (ADAPTADA LEDOR)';
	value  $PROVA_LC
		57='AMARELO'
		58='CINZA'
		59='AZUL'
		60='ROSA'
		73='AMARELO (REAPLICA��O/PPL)'
		74='CINZA (REAPLICA��O/PPL)'
		75='AZUL (REAPLICA��O/PPL)'
		76='ROSA (REAPLICA��O/PPL)'
		83='CINZA (ADAPTADA LEDOR)';
	value  $PROVA_MT
		61='AMARELO'
		62='CINZA'
		63='AZUL'
		64='ROSA'
		77='AMARELO (REAPLICA��O/PPL)'
		78='CINZA (REAPLICA��O/PPL)'
		79='AZUL (REAPLICA��O/PPL)'
		80='ROSA (REAPLICA��O/PPL)'
		84='CINZA (ADAPTADA LEDOR)';
	value  $STATUS_REDACAO
		B='Entregou a reda��o em branco'
		F='Faltou � prova'
		N='Reda��o anulada'
		P='Presente � prova';
	value  $QSE
		0='N�o respondeu o question�rio socioec�mico'
		1='Respondeu o question�rio socioec�mico';
	value $Certificado
		0='Sim'
		1='N�o';
	value $Qum
		A='Feminino'
		B='Masculino';

	value $Qdois
		A='Menos de 17 anos'
		B='17 anos'
		C='18 anos'
		D='Entre 19 e 25 anos'
		E='Entre 26 e 33 anos'
		F='Entre 34 e 41 anos'
		G='Entre 42 e 49 anos'
		H='50 anos ou mais';

	value $Qtres
		A='Branco(a)'
		B='Pardo(a)'
		C='Preto(a)'
		D='Amarelo(a)'
		E='Ind�gena';

	value $Qquatro
		A='Minha l�ngua materna � o portugu�s'
		B='Uma l�ngua ind�gena e o portugu�s'
		C='Mais de uma l�ngua ind�gena e o portugu�s'
		D='Uma l�ngua ind�gena, o portugu�s e o espanhol'
		E='Mais de uma l�ngua ind�gena, o portugu�s e outra(s) l�ngua(s) estrangeira(s)';

	value $Qcinco
	A='Cat�lica'
	B='Protestante ou Evang�lica'
	C='Esp�rita'
	D='Umbanda ou Candombl�'
	E='Outra'
	F='Sem religi�o';

	value $Qseis
	A='Solteiro(a)'
	B='Casado(a) / mora com um(a) companheiro(a)'
	C='Separado(a) / divorciado(a) / desquitado(a)'
	D='Vi�vo(a)';

	value $Qsete
	A='Em casa ou apartamento, com sua fam�lia'
	B='Em casa ou apartamento, sozinho(a)'
	C='Em quarto ou c�modo alugado, sozinho(a)'
	D='Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc'
	E='Outra situa��o';

	value $Qoito
	A='Sim '
	B='N�o';

	value $Qnove
	A='Sim '
	B='N�o';

	value $Qdez
	A='Sim '
	B='N�o';

	value $Qonze
	A='Sim '
	B='N�o';

	value $Qdoze
	A='Sim '
	B='N�o';

	value $Qtreze
	A='Sim '
	B='N�o';

	value $Qcatorze
	A='Sim '
	B='N�o';

	value $Qquinze
	A='Duas pessoas'
	B='Tr�s'
	C='Quatro'
	D='Cinco'
	E='Mais de seis'
	F='Moro sozinho(a)';

	value $Qdezesseis
	A='Um filho'
	B='Dois filhos'
	C='Tr�s filhos'
	D='Quatro ou mais filhos'
	E='N�o tenho filhos';

	value $Qdezessete
	A='N�o estudou'
	B='Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)'
	C='Da 5� a 8� do ensino fundamental (antigo gin�sio)'
	D='Ensino M�dio (2� grau) incompleto'
	E='Ensino M�dio (2� grau) completo'
	F='Ensino Superior incompleto'
	G='Ensino Superior completo'
	H='P�s-gradua��o'
	I='N�o sei';

	value $Qdezoito
	A='N�o estudou'
	B='Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)'
	C='Da 5� a 8� do ensino fundamental (antigo gin�sio)'
	D='Ensino M�dio (2� grau) incompleto'
	E='Ensino M�dio (2� grau) completo'
	F='Ensino Superior incompleto'
	G='Ensino Superior completo'
	H='P�s-gradua��o'
	I='N�o sei';

	value $Qdezenove
	A='Na agricultura, no campo, em fazenda ou na pesca'
	B='Na ind�stria'
	C='Na constru��o civil'
	D='No com�rcio, banco, transporte, hotelaria ou outros servi�os'
	E='Funcion�rio p�blico do governo federal, estadual ou municipal'
	F='Profissional liberal, professor ou t�cnico de n�vel superior'
	G='Trabalhador fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador de carros, catador de lixo, etc)'
	H='Trabalha em casa em servi�os (alfaiataria, cozinha, aulas particulares, artesanato, carpintaria, marcenaria, etc)'
	I='Trabalhador dom�stico em casa de outras pessoas (faxineiro, cozinheiro, mordomo, motorista particular, jardineiro, vigia, acompanhante de idosos/as, etc)'
	J='No lar (sem remunera��o)'
	K='N�o trabalha'
	L='N�o sei';

	value $Qvinte
	A='Na agricultura, no campo, em fazenda ou na pesca'
	B='Na ind�stria'
	C='Na constru��o civil'
	D='No com�rcio, banco, transporte, hotelaria ou outros servi�os'
	E='Funcion�riA p�blico do governo federal, estadual ou municipal'
	F='Profissional liberal, professora ou t�cnica de n�vel superior'
	G='Trabalhadora fora de casa em atividades informais (feirante, ambulante, guardadora de carros, catadora de lixo, etc)'
	H='Trabalha em casa em servi�os (costura, cozinha, aulas particulares, artesanato, etc)'
	I='Trabalhador dom�stico em casa de outras pessoas (cozinheira, arrumadeira, governanta, bab�, lavadeira, faxineira, acompanhante de idosos/as, etc)'
	J='No lar (sem remunera��o)'
	K='Outro'
	L='N�o trabalha'
	M='N�o sei';

	value $Qvinteum
	A='At� 1 sal�rio m�nimo (at� R$ 465,00 inclusive)'
	B='De 1 a 2 sal�rios m�nimos (R$ 465,00 a R$ 930,00 inclusive)'
	C='De 2 a 5 sal�rios m�nimos (R$ 930,00 a R$ 2.325,00 inclusive)'
	D='De 5 a 10 sal�rios m�nimos (R$ 2.325,00 a R$ 4.650,00 inclusive)'
	E='De 10 a 30 sal�rios m�nimos (R$ 4.650,00 a R$ 13.950,00 inclusive)'
	F='De 30 a 50 sal�rios m�nimos (R$ 13.950,00 a R$ 23.250,00 inclusive)'
	G='Mais de 50 sal�rios m�nimos (mais de R$ 23.250,00)'
	H='Nenhuma renda';

	value $Qvintedois
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qvintetres
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qvintequatro
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qvintecinco
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qvinteseis
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qvintesete
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qvinteoito
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qvintenove
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qtrinta
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qtrintaum
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qtrintadois
	A='1'
	B='2'
	C='3 ou mais'
	D='N�o tem';

	value $Qtrintatres
	A='Sim '
	B='N�o';

	value $Qtrintaquatro
	A='Sim '
	B='N�o';

	value $Qtrintacinco
	A='Sim '
	B='N�o';

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
	A='Para  testar seus conhecimentos / capacidade de racioc�nio'
	B='Para entrar na faculdade / conseguir pontos para o vestibular/conseguir bolsa do governo'
	C='Para ter um bom emprego / saber se est� preparado(a) para o futuro profissional'
	D='Para obter minha certifica��o do Ensino M�dio'
	E='N�o sei'
	F='Nenhuma das anteriores';

	value $Qquarentaum
	A='Porque n�o encontrei outro modo de conseguir o certificado de conclus�o do ensino m�dio'
	B='Porque era a melhor alternativa para conseguir o certificado de conclus�o do ensino m�dio.'
	C='Porque achei que era uma boa forma de avaliar meus conhecimentos'
	D='Os(as) professores(as) do meu curso recomendaram'
	E='Quero continuar meus estudos na educa��o superior'
	F='Porque era a melhor maneira para conciliar estudo e trabalho'
	G='Porque n�o quero e n�o gosto de estudar no curso regular';

	value $Qquarentadois
	A='Trabalho, estou empregado com carteira de trabalho assinada'
	B='Trabalho, mas n�o tenho carteira de trabalho assinada'
	C='Trabalho por conta pr�pria, n�o tenho carteira de trabalho assinada'
	D='J� trabalhei, mas n�o estou trabalhando'
	E='Nunca trabalhei'
	F='Nunca trabalhei, mas estou procurando trabalho';

	value $Qquarentatres
	A='Sim, todo o tempo'
	B='Sim, menos de 1 ano'
	C='Sim, de 1 a 2 anos'
	D='Sim, de 2 a 3 anos'
	E='Sim, mais de 3 anos'
	F='N�o';

	value $Qquarentaquatro
	A='Sem jornada fixa, at� 10 horas semanais'
	B='De 11 a 20 horas semanais'
	C='De 21 a 30 horas semanais'
	D='De 31 a 40 horas semanais'
	E='Mais de 40 horas semanais';

	value $Qquarentacinco
	A='Para ajudar meus pais nas despesas com a casa, sustentar a fam�lia'
	B='Para meu sustento e o de minha fam�lia (esposo/a, filhos/as, etc)'
	C='Para ser independente (ter meu sustento, ganhar meu pr�prio dinheiro)'
	D='Para adquirir experi�ncia'
	E='Para ajudar minha comunidade'
	F='Outra finalidade'
	G='Nunca trabalhei enquanto estudava';

	value $Qquarentaseis
	A='Antes dos 14 anos'
	B='Entre 14 e 16 anos'
	C='Entre 17 e 18 anos'
	D='Ap�s 18 anos'
	E='Nunca trabalhei enquanto estudava';

	value $Qquarentasete
	A='At� 1 sal�rio m�nimo (at� R$ 465,00 inclusive)'
	B='De 1 a 2 sal�rios m�nimos (R$ 465,00 a R$ 930,00 inclusive)'
	C='De 2 a 5 sal�rios m�nimos (R$ 930,00 a R$ 2.325,00 inclusive)'
	D='De 5 a 10 sal�rios m�nimos (R$ 2.325,00 a R$ 4.650,00 inclusive)'
	E='De 10 a 30 sal�rios m�nimos (R$ 4.650,00 a R$ 13.950,00 inclusive)'
	F='De 30 a 50 sal�rios m�nimos (R$ 13.950,00 a R$ 23.250,00 inclusive)'
	G='Mais de 50 sal�rios m�nimos (mais de R$ 23.250,00)'
	H='N�o estou trabalhando';

	value $Qquarentaoito
	A='Sim '
	B='N�o';

	value $Qquarentanove
	A='Na agricultura, no campo, em fazenda ou na pesca'
	B='Na ind�stria'
	C='Na constru��o civil'
	D='No com�rcio, banco, transporte, hotelaria ou outros servi�os'
	E='Funcion�rio(a) p�blico do governo federal, estadual ou municipal'
	F='Profissional liberal, professor(a) ou t�cnico(a) de n�vel superior'
	G='Trabalhador(a) fora de casa em atividades informais (pintor, eletricista, encanador, feirante, ambulante, guardador(a) de carros, catador(a) de lixo, etc)'
	H='Trabalha em casa em servi�os (costura, cozinha, aulas particulares, artesanato, carpintaria, etc)'
	I='Trabalhador dom�stico em casa de outras pessoas (cozinheiro(a), mordomo/governanta, jardineiro,bab�, lavadeira, faxineiro(a), acompanhante de idosos/as, etc)'
	J='No lar (sem remunera��o)'
	K='Outro'
	L='N�o trabalha'
	M='N�o sei';

	value $Qcinquenta
	A='Menos de 1 ano'
	B='Entre 1 e 2 anos'
	C='Entre 2 e 4 anos'
	D='Mais de 4 anos';

	value $Qcinquentaum
	A='Sim '
	B='N�o';

	value $Qcinquentadois
	A='Sim '
	B='N�o';

	value $Qcinquentatres
	A='Sim '
	B='N�o';

	value $Qcinquentaquatro
	A='Sim '
	B='N�o';

	value $Qcinquentacinco
	A='Atrapalhou os estudos'
	B='Possibilitou crescimento pessoal'
	C='Atrapalhou os estudos, mas possibilitou crescimento pessoal'
	D='N�o atrapalhou os estudos'
	E='N�o trabalho / n�o trabalhei';

	value $Qcinquentaseis
	A='Sim'
	B='N�o'
	C='N�o sei';

	value $Qcinquentasete
	A='Sim '
	B='N�o';

	value $Qcinquentaoito
	A='Sim '
	B='N�o';

	value $Qcinquentanove
	A='Sim '
	B='N�o';

	value $Qsessenta
	A='Sim '
	B='N�o';

	value $Qsessentaum
	A='Sim '
	B='N�o';

	value $Qsessentadois
	A='Sim '
	B='N�o';

	value $Qsessentatres
	A='Sim '
	B='N�o';

	value $Qsessentaquatro
	A='Sim '
	B='N�o';

	value $Qsessentacinco
	A='Sim '
	B='N�o';

	value $Qsessentaseis
	A='Sim '
	B='N�o';

	value $Qsessentasete
	A='Sim '
	B='N�o';

	value $Qsessentaoito
	A='Sim '
	B='N�o';

	value $Qsessentanove
	A='Sim '
	B='N�o';

	value $Qsetenta
	A='Sim '
	B='N�o';

	value $Qsetentaum
	A='Sim '
	B='N�o';

	value $Qsetentadois
	A='Menos de 8 anos'
	B='8 anos'
	C='9 anos'
	D='10 anos'
	E='11 anos'
	F='Mais de 11 anos'
	G='N�o cursei';

	value $Qsetentatres
	A='Somente em escola p�blica'
	B='Parte em escola p�blica e parte em escola particular'
	C='Somente em escola particular'
	D='Somente em escola ind�gena ou em escola situada em comunidade quilombola'
	E='Parte na escola ind�gena e parte em escola n�o-ind�gena'
	F='Parte em escola situada em comunidade quilombola e parte em escola fora de �rea quilombola'
	G='N�o frenquentei a escola';

	value $Qsetentaquatro
	A='Vai concluir ap�s 2009'
	B='Vai concluir no segundo semestre de 2009'
	C='No primeiro semestre de 2009'
	D='Em 2008'
	E='Em 2007'
	F='Em 2006'
	G='Em 2005'
	H='Em 2004'
	I='Entre 2003 e 2002'
	J='Antes de 2002'
	K='N�o cursei o ensino m�dio';

	value $Qsetentacinco
	A='Menos de 3 anos'
	B='3 anos'
	C='4 anos'
	D='5 anos'
	E='6 anos'
	F='Mais de 6 anos';

	value $Qsetentaseis
	A='Somente no turno diurno'
	B='Maior parte no turno diurno'
	C='Somente no turno noturno'
	D='Maior parte no turno noturno';

	value $Qsetentasete
	A='Somente em escola p�blica'
	B='Maior parte em escola p�blica'
	C='Somente em escola particular'
	D='Maior parte em escola particular'
	E='Somente em escola ind�gena'
	F='Maior parte em escola n�o-ind�gena'
	G='Somente em escola situada em comunidade quilombola'
	H='Maior parte em escola situada em comunidade n�o quilombola';

	value $Qsetentaoito
	A='Ensino regular'
	B='Educa��o para jovens e adultos (antigo supletivo)'
	C='Ensino t�cnico / ensino profissional';

	value $Qsetentanove
	A='Sim '
	B='N�o';

	value $Qoitenta
	A='Sim '
	B='N�o';

	value $Qoitentaum
	A='Sim '
	B='N�o';

	value $Qoitentadois
	A='Sim '
	B='N�o';

	value $Qoitentatres
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qoitentaquatro
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qoitentacinco
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qoitentaseis
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qoitentasete
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qoitentaoito
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qoitentanove
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qnoventa
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qnoventaum
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qnoventadois
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qnoventatres
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qnoventaquatro
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qnoventacinco
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qnoventaseis
	A='Freq�entemente (todo dia ou quase todo dia)'
	B='�s vezes'
	C='Nunca';

	value $Qnoventasete
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qnoventaoito
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qnoventanove
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcem
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemum
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemdois
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtres
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquatro
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemcinco
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemseis
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemsete
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemoito
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemnove
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemdez
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemonze
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemdoze
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtreze
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemcatorze
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquinze
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemdezesseis
	A='Sim '
	B='N�o';

	value $Qcemdezessete
	A='Sim '
	B='N�o';

	value $Qcemdezoito
	A='Sim '
	B='N�o';

	value $Qcemdezenove
	A='Sim '
	B='N�o';

	value $Qcemvinte
	A='Sim '
	B='N�o';

	value $Qcemvinteum
	A='Sim '
	B='N�o';

	value $Qcemvintedois
	A='Sim '
	B='N�o';

	value $Qcemvintetres
	A='Eu me considero preparado(a) para entrar no mercado de trabalho'
	B='Apesar de ter freq�entado uma boa escola, eu me considero despreparado(a), pois n�o aprendi o suficiente para conseguir um emprego'
	C='Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola, que n�o me preparou o suficiente'
	D='N�o sei';

	value $Qcemvintequatro
	A='Sim '
	B='N�o';

	value $Qcemvintecinco
	A='Sim '
	B='N�o';

	value $Qcemvinteseis
	A='Sim '
	B='N�o';

	value $Qcemvintesete
	A='Sim '
	B='N�o';

	value $Qcemvinteoito
	A='Sim '
	B='N�o';

	value $Qcemvintenove
	A='Sim '
	B='N�o';

	value $Qcemtrinta
	A='Sim '
	B='N�o';

	value $Qcemtrintaum
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtrintadois
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtrintatres
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtrintaquatro
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtrintacinco
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtrintaseis
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtrintasete
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtrintaoito
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemtrintanove
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquarenta
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquarentaum
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquarentadois
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquarentatres
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquarentaquatro
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquarentacinco
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquarentaseis
	A='Insuficiente a regular'
	B='Regular a bom'
	C='Bom a excelente';

	value $Qcemquarentasete
	A='0'
	B='1'
	C='2'
	D='3'
	E='4'
	F='5'
	G='6'
	H='7'
	I='8'
	J='9'
	K='10'
	L='N�o sei'
	M='N�o cursei';

	value $Qcemquarentaoito
	A='Sim '
	B='N�o';

	value $Qcemquarentanove
	A='Sim '
	B='N�o';

	value $Qcemcinquenta
	A='Sim '
	B='N�o';

	value $Qcemcinquentaum
	A='Sim '
	B='N�o';

	value $Qcemcinquentadois
	A='Sim '
	B='N�o';

	value $Qcemcinquentatres
	A='Sim '
	B='N�o';

	value $Qcemcinquentaquatro
	A='Sim '
	B='N�o';

	value $Qcemcinquentacinco
	A='Sim '
	B='N�o';

	value $Qcemcinquentaseis
	A='Sim '
	B='N�o';

	value $Qcemcinquentasete
	A='Sim '
	B='N�o';

	value $Qcemcinquentaoito
	A='Sim '
	B='N�o';

	value $Qcemcinquentanove
	A='Sim '
	B='N�o';

	value $Qcemsessenta
	A='Sim '
	B='N�o';

	value $Qcemsessentaum
	A='Sim '
	B='N�o';

	value $Qcemsessentadois
	A='Sim '
	B='N�o';

	value $Qcemsessentatres
	A='Sim '
	B='N�o';

	value $Qcemsessentaquatro
	A='Sim '
	B='N�o';

	value $Qcemsessentacinco
	A='Sim '
	B='N�o';

	value $Qcemsessentaseis
	A='Sim '
	B='N�o';

	value $Qcemsessentasete
	A='Sim '
	B='N�o';

	value $Qcemsessentaoito
	A='Sim '
	B='N�o';

	value $Qcemsessentanove
	A='Sim '
	B='N�o';

	value $Qcemsetenta
	A='Sim '
	B='N�o';

	value $Qcemsetentaum
	A='Sim '
	B='N�o';

	value $Qcemsetentadois
	A='Sim '
	B='N�o';

	value $Qcemsetentatres
	A='Sim '
	B='N�o';

	value $Qcemsetentaquatro
	A='Sim '
	B='N�o';

	value $Qcemsetentacinco
	A='Sim '
	B='N�o';

	value $Qcemsetentaseis
	A='Sim '
	B='N�o';

	value $Qcemsetentasete
	A='Sim '
	B='N�o';

	value $Qcemsetentaoito
	A='Sim '
	B='N�o';

	value $Qcemsetentanove
	A='Sim '
	B='N�o';

	value $Qcemoitenta
	A='Sim '
	B='N�o';

	value $Qcemoitentaum
	A='Sim '
	B='N�o';

	value $Qcemoitentadois
	A='Sim '
	B='N�o';

	value $Qcemoitentatres
	A='Sim '
	B='N�o';

	value $Qcemoitentaquatro
	A='Sim '
	B='N�o';

	value $Qcemoitentacinco
	A='Sim '
	B='N�o';

	value $Qcemoitentaseis
	A='Sim '
	B='N�o';

	value $Qcemoitentasete
	A='Sim '
	B='N�o';

	value $Qcemoitentaoito
	A='Sim '
	B='N�o';

	value $Qcemoitentanove
	A='Sim '
	B='N�o';

	value $Qcemnoventa
	A='Sim '
	B='N�o';

	value $Qcemnoventaum
	A='Sim '
	B='N�o';

	value $Qcemnoventadois
	A='Sim '
	B='N�o';

	value $Qcemnoventatres
	A='Sim '
	B='N�o';

	value $Qcemnoventaquatro
	A='Sim '
	B='N�o';

	value $Qcemnoventacinco
	A='Sim '
	B='N�o';

	value $Qcemnoventaseis
	A='Sim '
	B='N�o';

	value $Qcemnoventasete
	A='Sim '
	B='N�o';

	value $Qcemnoventaoito
	A='Sim '
	B='N�o';

	value $Qcemnoventanove
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentos
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosum
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosdois
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentostres
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosquatro
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentoscinco
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosseis
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentossete
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosoito
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosnove
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosdez
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosonze
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosdoze
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentostreze
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentoscatorze
	A='Muito'
	B='Pouco'
	C='N�o me interesso';

	value $Qduzentosquinze
	A='Obten��o de um certificado de conclus�o de curso / obten��o de um diploma'
	B='Forma��o b�sica necess�ria para obter um emprego melhor'
	C='Condi��es de melhorar minha posi��o no emprego atual'
	D='Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E='Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F='Atender � expectativa de meus pais sobre meus estudos'
	G='Forma��o humana e cidad� para ser uma pessoa melhor e mais respeitosa das diferen�as';

	value $Qduzentosdezesseis
	A='Obten��o de um certificado de conclus�o de curso / obten��o de um diploma'
	B='Forma��o b�sica necess�ria para obter um emprego melhor'
	C='Condi��es de melhorar minha posi��o no emprego atual'
	D='Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E='Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F='Atender � expectativa de meus pais sobre meus estudos'
	G='Forma��o humana e cidad� para ser uma pessoa melhor e mais respeitosa das diferen�as';

	value $Qduzentosdezessete
	A='Obten��o de um certificado de conclus�o de curso / obten��o de um diploma'
	B='Forma��o b�sica necess�ria para obter um emprego melhor'
	C='Condi��es de melhorar minha posi��o no emprego atual'
	D='Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E='Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F='Atender � expectativa de meus pais sobre meus estudos'
	G='Forma��o humana e cidad� para ser uma pessoa melhor e mais respeitosa das diferen�as';

	value $Qduzentosdezoito
	A='J� conclui o ensino m�dio'
	B='Prestar vestibular e continuar os estudos no ensino superior'
	C='Procurar um emprego'
	D='Prestar vestibular e continuar a trabalhar'
	E='Fazer curso(s) profissionalizante(s) e me preparar para o trabalho'
	F='Trabalhar por conta pr�pria / trabalhar em neg�cio da fam�lia'
	G='Trabalhar em atividade ligada � comunidade ind�gena'
	H='Trabalhar em atividade ligada � comunidade quilombola'
	I='Ainda n�o decidiu';

	value $Qduzentosdezenove
	A='Gostaria de ter um diploma universit�rio para conseguir um bom emprego'
	B='Gostaria de prestar um concurso e trabalhar no setor p�blico'
	C='Gostaria de ganhar dinheiro em meu pr�prio neg�cio'
	D='Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade ind�gena'
	E='Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade quilombola'
	F='N�o planejei';

	value $Qduzentosvinte
	A='Ainda n�o escolhi'
	B='Profiss�o ligada �s Engenharias / Ci�ncias Tecnol�gicas / Matem�ticas'
	C='Profiss�o ligada �s Ci�ncias Humanas'
	D='Profiss�o ligada �s Artes'
	E='Profiss�o ligadas �s Ci�ncias Biol�gicas e de Sa�de'
	F='Professor(a) de Ensino Fundamental, M�dio ou Superior'
	G='N�o vou seguir nenhuma profiss�o';

	value $Qduzentosvinteum
	A='Ajudou muito'
	B='Ajudou pouco'
	C='N�o ajudou';

	value $Qduzentosvintedois
	A='Ajudou muito'
	B='Ajudou pouco'
	C='N�o ajudou';

	value $Qduzentosvintetres
	A='Ajudou muito'
	B='Ajudou pouco'
	C='N�o ajudou';

	value $Qduzentosvintequatro
	A='Ajudou muito'
	B='Ajudou pouco'
	C='N�o ajudou';

	value $Qduzentosvintecinco
	A='Ajudou muito'
	B='Ajudou pouco'
	C='N�o ajudou';

	value $Qduzentosvinteseis
	A='Ajudou muito'
	B='Ajudou pouco'
	C='N�o ajudou';

	value $Qduzentosvintesete
	A='Ajudou muito'
	B='Ajudou pouco'
	C='N�o ajudou';

	value $Qduzentosvinteoito
	A='Sim, estou estudando no momento atual'
	B='Sim, mas n�o estou estudando no momento atual'
	C='N�o';

	value $Qduzentosvintenove
	A='Sim '
	B='N�o';

	value $Qduzentostrinta
	A='Sim '
	B='N�o';

	value $Qduzentostrintaum
	A='Sim '
	B='N�o';

	value $Qduzentostrintadois
	A='Sim '
	B='N�o';

	value $Qduzentostrintatres
	A='Sim '
	B='N�o';

	value $Qduzentostrintaquatro
	A='Sim '
	B='N�o';

	value $Qduzentostrintacinco
	A='Sim '
	B='N�o';

	value $Qduzentostrintaseis
	A='Sim '
	B='N�o';

	value $Qduzentostrintasete
	A='Sim '
	B='N�o';

	value $Qduzentostrintaoito
	A='Sim '
	B='N�o';

	value $Qduzentostrintanove
	A='Sim '
	B='N�o';

	value $Qduzentosquarenta
	A='Sim '
	B='N�o';

	value $Qduzentosquarentaum
	A='Frequenta curso presencial em escola p�blica'
	B='Frequenta curso presencial em escola particular'
	C='Frequenta curso presencial na empresa em que trabalha'
	D='Frequenta tele-sala'
	E='Frequenta curso promovido por institui��o religiosa ou filantr�pica'
	F='Faz curso a dist�ncia (via r�dio,  televis�o, internet, correio, com apostilas)'
	G='N�o frequenta';

	value $Qduzentosquarentadois
	A='Diurno'
	B='Noturno'
	C='A dist�ncia'
	D='N�o curso';

	value $Qduzentosquarentatres
	A='Sim '
	B='N�o';

	value $Qduzentosquarentaquatro
	A='Sim '
	B='N�o';

	value $Qduzentosquarentacinco
	A='Sim '
	B='N�o';

	value $Qduzentosquarentaseis
	A='Sim '
	B='N�o';

	value $Qduzentosquarentasete
	A='Sim '
	B='N�o';

	value $Qduzentosquarentaoito
	A='Sim '
	B='N�o';

	value $Qduzentosquarentanove
	A='Sim '
	B='N�o';

	value $Qduzentoscinquenta
	A='Sim '
	B='N�o';

	value $Qduzentoscinquentaum
	A='Sim '
	B='N�o';

	value $Qduzentoscinquentadois
	A='Sim '
	B='N�o';

	value $Qduzentoscinquentatres
	A='1� s�rie do Ensino Fundamental'
	B='2� s�rie do Ensino Fundamental'
	C='3� s�rie do Ensino Fundamental'
	D='4� s�rie do Ensino Fundamental'
	E='5� s�rie do Ensino Fundamental'
	F='6� s�rie do Ensino Fundamental'
	G='7� s�rie do Ensino Fundamental'
	H='8� s�rie do Ensino Fundamental'
	I='1� s�rie do Ensino M�dio'
	J='2� s�rie do Ensino M�dio'
	L='3� s�rie do Ensino M�dio'
	M='N�o frequentou';

	value $Qduzentoscinquentaquatro
	A='N�o cursou/n�o frequentou'
	B='1 ano'
	C='2 ano'
	D='Mais de 2 anos';

	value $Qduzentoscinquentacinco
	A='N�o cursou/n�o frequentou'
	B='3 ano'
	C='4 ano'
	D='Mais de 2 anos';

	value $Qduzentoscinquentaseis
	A='N�o cursou/n�o frequentou'
	B='5 ano'
	C='6 ano'
	D='Mais de 2 anos';

	value $Qduzentoscinquentasete
	A='Escola da Prefeitura (Municipal)'
	B='Escola estadual ou federal'
	C='Escola particular'
	D='Escola de igreja ou institui��o filantr�pica'
	E='N�o cursou';

	value $Qduzentoscinquentaoito
	A='Escola da Prefeitura (Municipal)'
	B='Escola estadual ou federal'
	C='Escola particular'
	D='Escola de igreja ou institui��o filantr�pica'
	E='N�o cursou';

	value $Qduzentoscinquentanove
	A='Escola da Prefeitura (Municipal)'
	B='Escola estadual ou federal'
	C='Escola particular'
	D='Escola de igreja ou institui��o filantr�pica'
	E='N�o cursou';
	
	value $Qduzentossessenta
	A='Menos de 10 anos'
	B='Entre 10 e 14 anos (inclusive)'
	C='Entre 15 e 18 anos (inclusive)'
	D='Entre 19 e 24 anos (inclusive)'
	E='Entre 25 e 30 anos (inclusive)'
	F='Mais de 30 anos'
	G='Nunca frequentei';

	value $Qduzentossessentaum
	A='Sim '
	B='N�o';

	value $Qduzentossessentadois
	A='Sim '
	B='N�o';

	value $Qduzentossessentatres
	A='Sim '
	B='N�o';

	value $Qduzentossessentaquatro
	A='Sim '
	B='N�o';

	value $Qduzentossessentacinco
	A='Sim '
	B='N�o';

	value $Qduzentossessentaseis
	A='Sim '
	B='N�o';

	value $Qduzentossessentasete
	A='Sim '
	B='N�o';

	value $Qduzentossessentaoito
	A='Sim '
	B='N�o';

	value $Qduzentossessentanove
	A='Sim '
	B='N�o';

	value $Qduzentossetenta
	A='Sim '
	B='N�o';

	value $Qduzentossetentaum
	A='Sim '
	B='N�o';

	value $Qduzentossetentadois
	A='Sim '
	B='N�o';

	value $Qduzentossetentatres
	A='Sim '
	B='N�o';

	value $Qduzentossetentaquatro
	A='Sim '
	B='N�o';

	value $Qduzentossetentacinco
	A='Sim '
	B='N�o';

	value $Qduzentossetentaseis
	A='Sim '
	B='N�o';

	value $Qduzentossetentasete
	A='Sim '
	B='N�o';

	value $Qduzentossetentaoito
	A='Sim '
	B='N�o';

	value $Qduzentossetentanove
	A='Sim '
	B='N�o';

	value $Qduzentosoitenta
	A='Sim '
	B='N�o';

	value $Qduzentosoitentaum
	A='Sim '
	B='N�o';

	value $Qduzentosoitentadois
	A='Sim '
	B='N�o';

	value $Qduzentosoitentatres
	A='Sim '
	B='N�o';

	value $Qduzentosoitentaquatro
	A='Sim '
	B='N�o';

	value $Qduzentosoitentacinco
	A='Sim '
	B='N�o';

	value $Qduzentosoitentaseis
	A='Sim '
	B='N�o';

	value $Qduzentosoitentasete
	A='Sim '
	B='N�o';

	value $Qduzentosoitentaoito
	A='Sim '
	B='N�o';

	value $Qduzentosoitentanove
	A='Sim '
	B='N�o';

	value $Qduzentosnoventa
	A='Sim '
	B='N�o';

	value $Qduzentosnoventaum
	A='Sim '
	B='N�o';

	value $Qduzentosnoventadois
	A='Sim '
	B='N�o';

	value $Qduzentosnoventatres
	A='Sim '
	B='N�o';


run;


DATA WORK.DADOS_ENEM_2009;
INFILE 'C:\MICRODADOS_ENEM_2009.csv' /*local do arquivo*/
        LRECL=1288
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
        NU_INSCRICAO       : BEST12.
        NU_ANO       : BEST4.
		TP_FAIXA_ETARIA  : $CHAR2.
        TP_SEXO       : $Char1.
        TP_ST_CONCLUSAO       : $Char1.
        TP_ENSINO       : $Char1.
        CO_MUNICIPIO_ESC       : BEST7.
        NO_MUNICIPIO_ESC       : $Char150.
        CO_UF_ESC       : BEST2.
        SG_UF_ESC       : $Char2.
        TP_DEPENDENCIA_ADM_ESC       : $Char1.
        TP_LOCALIZACAO_ESC       : $Char1.
        TP_SIT_FUNC_ESC       : $Char1.
        CO_MUNICIPIO_PROVA       : BEST7.
        NO_MUNICIPIO_PROVA       : $Char150.
        CO_UF_PROVA       : BEST2.
        SG_UF_PROVA       : $Char2.
        TP_PRESENCA_CN       : $Char1.
        TP_PRESENCA_CH       : $Char1.
        TP_PRESENCA_LC       : $Char1.
        TP_PRESENCA_MT       : $Char1.
        NU_NOTA_CN       : BEST9.2
        NU_NOTA_CH       : BEST9.2
        NU_NOTA_LC       : BEST9.2
        NU_NOTA_MT       : BEST9.2
        TX_RESPOSTAS_CN       : $Char45.
        TX_RESPOSTAS_CH       : $Char45.
        TX_RESPOSTAS_LC       : $Char45.
        TX_RESPOSTAS_MT       : $Char45.
        CO_PROVA_CN       : $Char2.
        CO_PROVA_CH       : $Char2.
        CO_PROVA_LC       : $Char2.
        CO_PROVA_MT       : $Char2.
        TX_GABARITO_CN       : $Char45.
        TX_GABARITO_CH       : $Char45.
        TX_GABARITO_LC       : $Char45.
        TX_GABARITO_MT       : $Char45.
        TP_STATUS_REDACAO       : $Char1.
        NU_NOTA_COMP1       : BEST9.2
        NU_NOTA_COMP2       : BEST9.2
        NU_NOTA_COMP3       : BEST9.2
        NU_NOTA_COMP4       : BEST9.2
        NU_NOTA_COMP5       : BEST9.2
        NU_NOTA_REDACAO       : BEST9.2
        IN_CERTIFICADO       : $Char1.
        IN_QSE       : $Char1.
        Q1       : $Char1.
        Q2       : $Char2.
        Q3       : $Char1.
        Q4       : $Char1.
        Q5       : $Char1.
        Q6       : $Char1.
        Q7       : $Char1.
        Q8       : $Char1.
        Q9       : $Char1.
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
        Q58       : $Char1.
        Q59       : $Char1.
        Q60       : $Char1.
        Q61       : $Char1.
        Q62       : $Char1.
        Q63       : $Char1.
        Q64       : $Char1.
        Q65       : $Char1.
        Q66       : $Char1.
        Q67       : $Char1.
        Q68       : $Char1.
        Q69       : $Char1.
        Q70       : $Char1.
        Q71       : $Char1.
        Q72       : $Char1.
        Q73       : $Char1.
        Q74       : $Char1.
        Q75       : $Char1.
        Q76       : $Char1.
        Q77       : $Char1.
        Q78       : $Char1.
        Q79       : $Char1.
        Q80       : $Char1.
        Q81       : $Char1.
        Q82       : $Char1.
        Q83       : $Char1.
        Q84       : $Char1.
        Q85       : $Char1.
        Q86       : $Char1.
        Q87       : $Char1.
        Q88       : $Char1.
        Q89       : $Char1.
        Q90       : $Char1.
        Q91       : $Char1.
        Q92       : $Char1.
        Q93       : $Char1.
        Q94       : $Char1.
        Q95       : $Char1.
        Q96       : $Char1.
        Q97       : $Char1.
        Q98       : $Char1.
        Q99       : $Char1.
        Q100       : $Char1.
        Q101       : $Char1.
        Q102       : $Char1.
        Q103       : $Char1.
        Q104       : $Char1.
        Q105       : $Char1.
        Q106       : $Char1.
        Q107       : $Char1.
        Q108       : $Char1.
        Q109       : $Char1.
        Q110       : $Char1.
        Q111       : $Char1.
        Q112       : $Char1.
        Q113       : $Char1.
        Q114       : $Char1.
        Q115       : $Char1.
        Q116       : $Char1.
        Q117       : $Char1.
        Q118       : $Char1.
        Q119       : $Char1.
        Q120       : $Char1.
        Q121       : $Char1.
        Q122       : $Char1.
        Q123       : $Char1.
        Q124       : $Char1.
        Q125       : $Char1.
        Q126       : $Char1.
        Q127       : $Char1.
        Q128       : $Char1.
        Q129       : $Char1.
        Q130       : $Char1.
        Q131       : $Char1.
        Q132       : $Char1.
        Q133       : $Char1.
        Q134       : $Char1.
        Q135       : $Char1.
        Q136       : $Char1.
        Q137       : $Char1.
        Q138       : $Char1.
        Q139       : $Char1.
        Q140       : $Char1.
        Q141       : $Char1.
        Q142       : $Char1.
        Q143       : $Char1.
        Q144       : $Char1.
        Q145       : $Char1.
        Q146       : $Char1.
        Q147       : $Char1.
        Q148       : $Char1.
        Q149       : $Char1.
        Q150       : $Char1.
        Q151       : $Char1.
        Q152       : $Char1.
        Q153       : $Char1.
        Q154       : $Char1.
        Q155       : $Char1.
        Q156       : $Char1.
        Q157       : $Char1.
        Q158       : $Char1.
        Q159       : $Char1.
        Q160       : $Char1.
        Q161       : $Char1.
        Q162       : $Char1.
        Q163       : $Char1.
        Q164       : $Char1.
        Q165       : $Char1.
        Q166       : $Char1.
        Q167       : $Char1.
        Q168       : $Char1.
        Q169       : $Char1.
        Q170       : $Char1.
        Q171       : $Char1.
        Q172       : $Char1.
        Q173       : $Char1.
        Q174       : $Char1.
        Q175       : $Char1.
        Q176       : $Char1.
        Q177       : $Char1.
        Q178       : $Char1.
        Q179       : $Char1.
        Q180       : $Char1.
        Q181       : $Char1.
        Q182       : $Char1.
        Q183       : $Char1.
        Q184       : $Char1.
        Q185       : $Char1.
        Q186       : $Char1.
        Q187       : $Char1.
        Q188       : $Char1.
        Q189       : $Char1.
        Q190       : $Char1.
        Q191       : $Char1.
        Q192       : $Char1.
        Q193       : $Char1.
        Q194       : $Char1.
        Q195       : $Char1.
        Q196       : $Char1.
        Q197       : $Char1.
        Q198       : $Char1.
        Q199       : $Char1.
        Q200       : $Char1.
        Q201       : $Char1.
        Q202       : $Char1.
        Q203       : $Char1.
        Q204       : $Char1.
        Q205       : $Char1.
        Q206       : $Char1.
        Q207       : $Char1.
        Q208       : $Char1.
        Q209       : $Char1.
        Q210       : $Char1.
        Q211       : $Char1.
        Q212       : $Char1.
        Q213       : $Char1.
        Q214       : $Char1.
        Q215       : $Char1.
        Q216       : $Char1.
        Q217       : $Char1.
        Q218       : $Char1.
        Q219       : $Char1.
        Q220       : $Char1.
        Q221       : $Char1.
        Q222       : $Char1.
        Q223       : $Char1.
        Q224       : $Char1.
        Q225       : $Char1.
        Q226       : $Char1.
        Q227       : $Char1.
        Q228       : $Char1.
        Q229       : $Char1.
        Q230       : $Char1.
        Q231       : $Char1.
        Q232       : $Char1.
        Q233       : $Char1.
        Q234       : $Char1.
        Q235       : $Char1.
        Q236       : $Char1.
        Q237       : $Char1.
        Q238       : $Char1.
        Q239       : $Char1.
        Q240       : $Char1.
        Q241       : $Char1.
        Q242       : $Char1.
        Q243       : $Char1.
        Q244       : $Char1.
        Q245       : $Char1.
        Q246       : $Char1.
        Q247       : $Char1.
        Q248       : $Char1.
        Q249       : $Char1.
        Q250       : $Char1.
        Q251       : $Char1.
        Q252       : $Char1.
        Q253       : $Char1.
        Q254       : $Char1.
        Q255       : $Char1.
        Q256       : $Char1.
        Q257       : $Char1.
        Q258       : $Char1.
        Q259       : $Char1.
        Q260       : $Char1.
        Q261       : $Char1.
        Q262       : $Char1.
        Q263       : $Char1.
        Q264       : $Char1.
        Q265       : $Char1.
        Q266       : $Char1.
        Q267       : $Char1.
        Q268       : $Char1.
        Q269       : $Char1.
        Q270       : $Char1.
        Q271       : $Char1.
        Q272       : $Char1.
        Q273       : $Char1.
        Q274       : $Char1.
        Q275       : $Char1.
        Q276       : $Char1.
        Q277       : $Char1.
        Q278       : $Char1.
        Q279       : $Char1.
        Q280       : $Char1.
        Q281       : $Char1.
        Q282       : $Char1.
        Q283       : $Char1.
        Q284       : $Char1.
        Q285       : $Char1.
        Q286       : $Char1.
        Q287       : $Char1.
        Q288       : $Char1.
        Q289       : $Char1.
        Q290       : $Char1.
        Q291       : $Char1.
        Q292       : $Char1.
        Q293       : $Char1.
;

ATTRIB TP_FAIXA_ETARIA FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB TP_SEXO FORMAT=$SEXO10.;
ATTRIB TP_ST_CONCLUSAO FORMAT=$CONCLUSAO30.;
ATTRIB TP_ENSINO FORMAT=$ENSINO30.;
ATTRIB TP_DEPENDENCIA_ADM_ESC FORMAT=$DEPENDENCIA_ADM10.;
ATTRIB TP_LOCALIZACAO_ESC FORMAT=$LOCALIZACAO10.;
ATTRIB TP_SIT_FUNC_ESC FORMAT=$SIT_FUNC_ESC35.;
ATTRIB TP_PRESENCA_CN FORMAT=$PRESENCA_CN20.;
ATTRIB TP_PRESENCA_CH FORMAT=$PRESENCA_CH20.;
ATTRIB TP_PRESENCA_LC FORMAT=$PRESENCA_LC20.;
ATTRIB TP_PRESENCA_MT FORMAT=$PRESENCA_MT20.;
ATTRIB CO_PROVA_CN FORMAT=$PROVA_CN25.;
ATTRIB CO_PROVA_CH FORMAT=$PROVA_CH25.;
ATTRIB CO_PROVA_LC FORMAT=$PROVA_LC25.;
ATTRIB CO_PROVA_MT FORMAT=$PROVA_MT25.;
ATTRIB TP_STATUS_REDACAO FORMAT=$STATUS_REDACAO30.;
ATTRIB IN_CERTIFICADO FORMAT=$Certificado3.;
ATTRIB IN_QSE FORMAT=$QSE.;
ATTRIB Q1 FORMAT=$Qum.;
ATTRIB Q2 FORMAT=$Qdois.;
ATTRIB Q3 FORMAT=$Qtres.;
ATTRIB Q4 FORMAT=$Qquatro.;
ATTRIB Q5 FORMAT=$Qcinco.;
ATTRIB Q6 FORMAT=$Qseis.;
ATTRIB Q7 FORMAT=$Qsete.;
ATTRIB Q8 FORMAT=$Qoito.;
ATTRIB Q9 FORMAT=$Qnove.;
ATTRIB Q10 FORMAT=$Qdez.;
ATTRIB Q11 FORMAT=$Qonze.;
ATTRIB Q12 FORMAT=$Qdoze.;
ATTRIB Q13 FORMAT=$Qtreze.;
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
ATTRIB Q24 FORMAT=$Qvintequatro.;
ATTRIB Q25 FORMAT=$Qvintecinco.;
ATTRIB Q26 FORMAT=$Qvinteseis.;
ATTRIB Q27 FORMAT=$Qvintesete.;
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
ATTRIB Q45 FORMAT=$Qquarentacinco.;
ATTRIB Q46 FORMAT=$Qquarentaseis.;
ATTRIB Q47 FORMAT=$Qquarentasete.;
ATTRIB Q48 FORMAT=$Qquarentaoito.;
ATTRIB Q49 FORMAT=$Qquarentanove.;
ATTRIB Q50 FORMAT=$Qcinquenta.;
ATTRIB Q51 FORMAT=$Qcinquentaum.;
ATTRIB Q52 FORMAT=$Qcinquentadois.;
ATTRIB Q53 FORMAT=$Qcinquentatres.;
ATTRIB Q54 FORMAT=$Qcinquentaquatro.;
ATTRIB Q55 FORMAT=$Qcinquentacinco.;
ATTRIB Q56 FORMAT=$Qcinquentaseis.;
ATTRIB Q57 FORMAT=$Qcinquentasete.;
ATTRIB Q58 FORMAT=$Qcinquentaoito.;
ATTRIB Q59 FORMAT=$Qcinquentanove.;
ATTRIB Q60 FORMAT=$Qsessenta.;
ATTRIB Q61 FORMAT=$Qsessentaum.;
ATTRIB Q62 FORMAT=$Qsessentadois.;
ATTRIB Q63 FORMAT=$Qsessentatres.;
ATTRIB Q64 FORMAT=$Qsessentaquatro.;
ATTRIB Q65 FORMAT=$Qsessentacinco.;
ATTRIB Q66 FORMAT=$Qsessentaseis.;
ATTRIB Q67 FORMAT=$Qsessentasete.;
ATTRIB Q68 FORMAT=$Qsessentaoito.;
ATTRIB Q69 FORMAT=$Qsessentanove.;
ATTRIB Q70 FORMAT=$Qsetenta.;
ATTRIB Q71 FORMAT=$Qsetentaum.;
ATTRIB Q72 FORMAT=$Qsetentadois.;
ATTRIB Q73 FORMAT=$Qsetentatres.;
ATTRIB Q74 FORMAT=$Qsetentaquatro.;
ATTRIB Q75 FORMAT=$Qsetentacinco.;
ATTRIB Q76 FORMAT=$Qsetentaseis.;
ATTRIB Q77 FORMAT=$Qsetentasete.;
ATTRIB Q78 FORMAT=$Qsetentaoito.;
ATTRIB Q79 FORMAT=$Qsetentanove.;
ATTRIB Q80 FORMAT=$Qoitenta.;
ATTRIB Q81 FORMAT=$Qoitentaum.;
ATTRIB Q82 FORMAT=$Qoitentadois.;
ATTRIB Q83 FORMAT=$Qoitentatres.;
ATTRIB Q84 FORMAT=$Qoitentaquatro.;
ATTRIB Q85 FORMAT=$Qoitentacinco.;
ATTRIB Q86 FORMAT=$Qoitentaseis.;
ATTRIB Q87 FORMAT=$Qoitentasete.;
ATTRIB Q88 FORMAT=$Qoitentaoito.;
ATTRIB Q89 FORMAT=$Qoitentanove.;
ATTRIB Q90 FORMAT=$Qnoventa.;
ATTRIB Q91 FORMAT=$Qnoventaum.;
ATTRIB Q92 FORMAT=$Qnoventadois.;
ATTRIB Q93 FORMAT=$Qnoventatres.;
ATTRIB Q94 FORMAT=$Qnoventaquatro.;
ATTRIB Q95 FORMAT=$Qnoventacinco.;
ATTRIB Q96 FORMAT=$Qnoventaseis.;
ATTRIB Q97 FORMAT=$Qnoventasete.;
ATTRIB Q98 FORMAT=$Qnoventaoito.;
ATTRIB Q99 FORMAT=$Qnoventanove.;
ATTRIB Q100 FORMAT=$Qcem.;
ATTRIB Q101 FORMAT=$Qcemum.;
ATTRIB Q102 FORMAT=$Qcemdois.;
ATTRIB Q103 FORMAT=$Qcemtres.;
ATTRIB Q104 FORMAT=$Qcemquatro.;
ATTRIB Q105 FORMAT=$Qcemcinco.;
ATTRIB Q106 FORMAT=$Qcemseis.;
ATTRIB Q107 FORMAT=$Qcemsete.;
ATTRIB Q108 FORMAT=$Qcemoito.;
ATTRIB Q109 FORMAT=$Qcemnove.;
ATTRIB Q110 FORMAT=$Qcemdez.;
ATTRIB Q111 FORMAT=$Qcemonze.;
ATTRIB Q112 FORMAT=$Qcemdoze.;
ATTRIB Q113 FORMAT=$Qcemtreze.;
ATTRIB Q114 FORMAT=$Qcemcatorze.;
ATTRIB Q115 FORMAT=$Qcemquinze.;
ATTRIB Q116 FORMAT=$Qcemdezesseis.;
ATTRIB Q117 FORMAT=$Qcemdezessete.;
ATTRIB Q118 FORMAT=$Qcemdezoito.;
ATTRIB Q119 FORMAT=$Qcemdezenove.;
ATTRIB Q120 FORMAT=$Qcemvinte.;
ATTRIB Q121 FORMAT=$Qcemvinteum.;
ATTRIB Q122 FORMAT=$Qcemvintedois.;
ATTRIB Q123 FORMAT=$Qcemvintetres.;
ATTRIB Q124 FORMAT=$Qcemvintequatro.;
ATTRIB Q125 FORMAT=$Qcemvintecinco.;
ATTRIB Q126 FORMAT=$Qcemvinteseis.;
ATTRIB Q127 FORMAT=$Qcemvintesete.;
ATTRIB Q128 FORMAT=$Qcemvinteoito.;
ATTRIB Q129 FORMAT=$Qcemvintenove.;
ATTRIB Q130 FORMAT=$Qcemtrinta.;
ATTRIB Q131 FORMAT=$Qcemtrintaum.;
ATTRIB Q132 FORMAT=$Qcemtrintadois.;
ATTRIB Q133 FORMAT=$Qcemtrintatres.;
ATTRIB Q134 FORMAT=$Qcemtrintaquatro.;
ATTRIB Q135 FORMAT=$Qcemtrintacinco.;
ATTRIB Q136 FORMAT=$Qcemtrintaseis.;
ATTRIB Q137 FORMAT=$Qcemtrintasete.;
ATTRIB Q138 FORMAT=$Qcemtrintaoito.;
ATTRIB Q139 FORMAT=$Qcemtrintanove.;
ATTRIB Q140 FORMAT=$Qcemquarenta.;
ATTRIB Q141 FORMAT=$Qcemquarentaum.;
ATTRIB Q142 FORMAT=$Qcemquarentadois.;
ATTRIB Q143 FORMAT=$Qcemquarentatres.;
ATTRIB Q144 FORMAT=$Qcemquarentaquatro.;
ATTRIB Q145 FORMAT=$Qcemquarentacinco.;
ATTRIB Q146 FORMAT=$Qcemquarentaseis.;
ATTRIB Q147 FORMAT=$Qcemquarentasete.;
ATTRIB Q148 FORMAT=$Qcemquarentaoito.;
ATTRIB Q149 FORMAT=$Qcemquarentanove.;
ATTRIB Q150 FORMAT=$Qcemcinquenta.;
ATTRIB Q151 FORMAT=$Qcemcinquentaum.;
ATTRIB Q152 FORMAT=$Qcemcinquentadois.;
ATTRIB Q153 FORMAT=$Qcemcinquentatres.;
ATTRIB Q154 FORMAT=$Qcemcinquentaquatro.;
ATTRIB Q155 FORMAT=$Qcemcinquentacinco.;
ATTRIB Q156 FORMAT=$Qcemcinquentaseis.;
ATTRIB Q157 FORMAT=$Qcemcinquentasete.;
ATTRIB Q158 FORMAT=$Qcemcinquentaoito.;
ATTRIB Q159 FORMAT=$Qcemcinquentanove.;
ATTRIB Q160 FORMAT=$Qcemsessenta.;
ATTRIB Q161 FORMAT=$Qcemsessentaum.;
ATTRIB Q162 FORMAT=$Qcemsessentadois.;
ATTRIB Q163 FORMAT=$Qcemsessentatres.;
ATTRIB Q164 FORMAT=$Qcemsessentaquatro.;
ATTRIB Q165 FORMAT=$Qcemsessentacinco.;
ATTRIB Q166 FORMAT=$Qcemsessentaseis.;
ATTRIB Q167 FORMAT=$Qcemsessentasete.;
ATTRIB Q168 FORMAT=$Qcemsessentaoito.;
ATTRIB Q169 FORMAT=$Qcemsessentanove.;
ATTRIB Q170 FORMAT=$Qcemsetenta.;
ATTRIB Q171 FORMAT=$Qcemsetentaum.;
ATTRIB Q172 FORMAT=$Qcemsetentadois.;
ATTRIB Q173 FORMAT=$Qcemsetentatres.;
ATTRIB Q174 FORMAT=$Qcemsetentaquatro.;
ATTRIB Q175 FORMAT=$Qcemsetentacinco.;
ATTRIB Q176 FORMAT=$Qcemsetentaseis.;
ATTRIB Q177 FORMAT=$Qcemsetentasete.;
ATTRIB Q178 FORMAT=$Qcemsetentaoito.;
ATTRIB Q179 FORMAT=$Qcemsetentanove.;
ATTRIB Q180 FORMAT=$Qcemoitenta.;
ATTRIB Q181 FORMAT=$Qcemoitentaum.;
ATTRIB Q182 FORMAT=$Qcemoitentadois.;
ATTRIB Q183 FORMAT=$Qcemoitentatres.;
ATTRIB Q184 FORMAT=$Qcemoitentaquatro.;
ATTRIB Q185 FORMAT=$Qcemoitentacinco.;
ATTRIB Q186 FORMAT=$Qcemoitentaseis.;
ATTRIB Q187 FORMAT=$Qcemoitentasete.;
ATTRIB Q188 FORMAT=$Qcemoitentaoito.;
ATTRIB Q189 FORMAT=$Qcemoitentanove.;
ATTRIB Q190 FORMAT=$Qcemnoventa.;
ATTRIB Q191 FORMAT=$Qcemnoventaum.;
ATTRIB Q192 FORMAT=$Qcemnoventadois.;
ATTRIB Q193 FORMAT=$Qcemnoventatres.;
ATTRIB Q194 FORMAT=$Qcemnoventaquatro.;
ATTRIB Q195 FORMAT=$Qcemnoventacinco.;
ATTRIB Q196 FORMAT=$Qcemnoventaseis.;
ATTRIB Q197 FORMAT=$Qcemnoventasete.;
ATTRIB Q198 FORMAT=$Qcemnoventaoito.;
ATTRIB Q199 FORMAT=$Qcemnoventanove.;
ATTRIB Q200 FORMAT=$Qduzentos.;
ATTRIB Q201 FORMAT=$Qduzentosum.;
ATTRIB Q202 FORMAT=$Qduzentosdois.;
ATTRIB Q203 FORMAT=$Qduzentostres.;
ATTRIB Q204 FORMAT=$Qduzentosquatro.;
ATTRIB Q205 FORMAT=$Qduzentoscinco.;
ATTRIB Q206 FORMAT=$Qduzentosseis.;
ATTRIB Q207 FORMAT=$Qduzentossete.;
ATTRIB Q208 FORMAT=$Qduzentosoito.;
ATTRIB Q209 FORMAT=$Qduzentosnove.;
ATTRIB Q210 FORMAT=$Qduzentosdez.;
ATTRIB Q211 FORMAT=$Qduzentosonze.;
ATTRIB Q212 FORMAT=$Qduzentosdoze.;
ATTRIB Q213 FORMAT=$Qduzentostreze.;
ATTRIB Q214 FORMAT=$Qduzentoscatorze.;
ATTRIB Q215 FORMAT=$Qduzentosquinze.;
ATTRIB Q216 FORMAT=$Qduzentosdezesseis.;
ATTRIB Q217 FORMAT=$Qduzentosdezessete.;
ATTRIB Q218 FORMAT=$Qduzentosdezoito.;
ATTRIB Q219 FORMAT=$Qduzentosdezenove.;
ATTRIB Q220 FORMAT=$Qduzentosvinte.;
ATTRIB Q221 FORMAT=$Qduzentosvinteum.;
ATTRIB Q222 FORMAT=$Qduzentosvintedois.;
ATTRIB Q223 FORMAT=$Qduzentosvintetres.;
ATTRIB Q224 FORMAT=$Qduzentosvintequatro.;
ATTRIB Q225 FORMAT=$Qduzentosvintecinco.;
ATTRIB Q226 FORMAT=$Qduzentosvinteseis.;
ATTRIB Q227 FORMAT=$Qduzentosvintesete.;
ATTRIB Q228 FORMAT=$Qduzentosvinteoito.;
ATTRIB Q229 FORMAT=$Qduzentosvintenove.;
ATTRIB Q230 FORMAT=$Qduzentostrinta.;
ATTRIB Q231 FORMAT=$Qduzentostrintaum.;
ATTRIB Q232 FORMAT=$Qduzentostrintadois.;
ATTRIB Q233 FORMAT=$Qduzentostrintatres.;
ATTRIB Q234 FORMAT=$Qduzentostrintaquatro.;
ATTRIB Q235 FORMAT=$Qduzentostrintacinco.;
ATTRIB Q236 FORMAT=$Qduzentostrintaseis.;
ATTRIB Q237 FORMAT=$Qduzentostrintasete.;
ATTRIB Q238 FORMAT=$Qduzentostrintaoito.;
ATTRIB Q239 FORMAT=$Qduzentostrintanove.;
ATTRIB Q240 FORMAT=$Qduzentosquarenta.;
ATTRIB Q241 FORMAT=$Qduzentosquarentaum.;
ATTRIB Q242 FORMAT=$Qduzentosquarentadois.;
ATTRIB Q243 FORMAT=$Qduzentosquarentatres.;
ATTRIB Q244 FORMAT=$Qduzentosquarentaquatro.;
ATTRIB Q245 FORMAT=$Qduzentosquarentacinco.;
ATTRIB Q246 FORMAT=$Qduzentosquarentaseis.;
ATTRIB Q247 FORMAT=$Qduzentosquarentasete.;
ATTRIB Q248 FORMAT=$Qduzentosquarentaoito.;
ATTRIB Q249 FORMAT=$Qduzentosquarentanove.;
ATTRIB Q250 FORMAT=$Qduzentoscinquenta.;
ATTRIB Q251 FORMAT=$Qduzentoscinquentaum.;
ATTRIB Q252 FORMAT=$Qduzentoscinquentadois.;
ATTRIB Q253 FORMAT=$Qduzentoscinquentatres.;
ATTRIB Q254 FORMAT=$Qduzentoscinquentaquatro.;
ATTRIB Q255 FORMAT=$Qduzentoscinquentacinco.;
ATTRIB Q256 FORMAT=$Qduzentoscinquentaseis.;
ATTRIB Q257 FORMAT=$Qduzentoscinquentasete.;
ATTRIB Q258 FORMAT=$Qduzentoscinquentaoito.;
ATTRIB Q259 FORMAT=$Qduzentoscinquentanove.;
ATTRIB Q260 FORMAT=$Qduzentossessenta.;
ATTRIB Q261 FORMAT=$Qduzentossessentaum.;
ATTRIB Q262 FORMAT=$Qduzentossessentadois.;
ATTRIB Q263 FORMAT=$Qduzentossessentatres.;
ATTRIB Q264 FORMAT=$Qduzentossessentaquatro.;
ATTRIB Q265 FORMAT=$Qduzentossessentacinco.;
ATTRIB Q266 FORMAT=$Qduzentossessentaseis.;
ATTRIB Q267 FORMAT=$Qduzentossessentasete.;
ATTRIB Q268 FORMAT=$Qduzentossessentaoito.;
ATTRIB Q269 FORMAT=$Qduzentossessentanove.;
ATTRIB Q270 FORMAT=$Qduzentossetenta.;
ATTRIB Q271 FORMAT=$Qduzentossetentaum.;
ATTRIB Q272 FORMAT=$Qduzentossetentadois.;
ATTRIB Q273 FORMAT=$Qduzentossetentatres.;
ATTRIB Q274 FORMAT=$Qduzentossetentaquatro.;
ATTRIB Q275 FORMAT=$Qduzentossetentacinco.;
ATTRIB Q276 FORMAT=$Qduzentossetentaseis.;
ATTRIB Q277 FORMAT=$Qduzentossetentasete.;
ATTRIB Q278 FORMAT=$Qduzentossetentaoito.;
ATTRIB Q279 FORMAT=$Qduzentossetentanove.;
ATTRIB Q280 FORMAT=$Qduzentosoitenta.;
ATTRIB Q281 FORMAT=$Qduzentosoitentaum.;
ATTRIB Q282 FORMAT=$Qduzentosoitentadois.;
ATTRIB Q283 FORMAT=$Qduzentosoitentatres.;
ATTRIB Q284 FORMAT=$Qduzentosoitentaquatro.;
ATTRIB Q285 FORMAT=$Qduzentosoitentacinco.;
ATTRIB Q286 FORMAT=$Qduzentosoitentaseis.;
ATTRIB Q287 FORMAT=$Qduzentosoitentasete.;
ATTRIB Q288 FORMAT=$Qduzentosoitentaoito.;
ATTRIB Q289 FORMAT=$Qduzentosoitentanove.;
ATTRIB Q290 FORMAT=$Qduzentosnoventa.;
ATTRIB Q291 FORMAT=$Qduzentosnoventaum.;
ATTRIB Q292 FORMAT=$Qduzentosnoventadois.;
ATTRIB Q293 FORMAT=$Qduzentosnoventatres.;


LABEL
NU_INSCRICAO = 'N�mero de inscri��o no ENEM 2009.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA  = 'Faixa Et�ria'
TP_SEXO = 'Sexo do inscrito'
TP_ST_CONCLUSAO = 'Situa��o em rela��o ao ensino m�dio'
TP_ENSINO = 'Tipo de institui��o onde o estudante concluiu ou concluir� o ensino m�dio'
CO_MUNICIPIO_ESC = 'C�digo do Munic�pio da escola em que estudou:'
NO_MUNICIPIO_ESC = 'Nome do munic�pio da escola'
CO_UF_ESC = 'C�digo da Unidade da Federa��o da escola'
SG_UF_ESC = 'Sigla da Unidade da Federa��o da escola'
TP_DEPENDENCIA_ADM_ESC = 'Depend�ncia administrativa'
TP_LOCALIZACAO_ESC = 'Localiza��o Zona da escola'
TP_SIT_FUNC_ESC = 'Situa��o de funcionamento'
CO_MUNICIPIO_PROVA = 'C�digo do Munic�pio da cidade de prova'
NO_MUNICIPIO_PROVA = 'Nome do Munic�pio da cidade de prova '
CO_UF_PROVA = 'C�digo da Unidade da Federa��o do local da prova'
SG_UF_PROVA = ' Sigla da Unidade da Federa��o da cidade de prova'
TP_PRESENCA_CN = 'Presen�a � prova objetiva de Ci�ncias da Natureza'
TP_PRESENCA_CH = 'Presen�a � prova objetiva de Ci�ncias Humanas'
TP_PRESENCA_LC = 'Presen�a � prova objetiva de Linguagens e C�digos'
TP_PRESENCA_MT = 'Presen�a � prova objetiva de Matem�tica'
NU_NOTA_CN = 'Nota da prova de Ci�ncias da Natureza'
NU_NOTA_CH = 'Nota da prova de Ci�ncias Humanas'
NU_NOTA_LC = 'Nota da prova de Linguagens e C�digos'
NU_NOTA_MT = 'Nota da prova de Matem�tica'
TX_RESPOSTAS_CN = 'Vetor com as respostas da parte objetiva da prova de Ci�ncias da Natureza'
TX_RESPOSTAS_CH = 'Vetor com as respostas da parte objetiva da prova de Ci�ncias Humanas'
TX_RESPOSTAS_LC = 'Vetor com as respostas da parte objetiva da prova de Linguagens e C�digos'
TX_RESPOSTAS_MT = 'Vetor com as respostas da parte objetiva da prova de Matem�tica'
CO_PROVA_CN = 'C�digo do tipo de prova de Ciencias da Natureza'
CO_PROVA_CH = 'C�digo do tipo de prova de Ci�ncias Humanas'
CO_PROVA_LC = 'C�digo do tipo de prova de Linguagens e C�digos'
CO_PROVA_MT = 'C�digo do tipo de prova de Matem�tica'
TX_GABARITO_CN = 'Vetor com o gabarito da parte objetiva da prova  de Ci�ncias da Natureza'
TX_GABARITO_CH = 'Vetor com o gabarito da parte objetiva da prova  de Ci�ncias Humanas'
TX_GABARITO_LC = 'Vetor com o gabarito da parte objetiva da prova  de Linguagens e C�digos'
TX_GABARITO_MT = 'Vetor com o gabarito da parte objetiva da prova  de Matem�tica'
TP_STATUS_REDACAO = ' Presen�a � reda��o'
NU_NOTA_COMP1 = 'Nota da compet�ncia 1'
NU_NOTA_COMP2 = 'Nota da compet�ncia 2'
NU_NOTA_COMP3 = 'Nota da compet�ncia 3'
NU_NOTA_COMP4 = 'Nota da compet�ncia 4'
NU_NOTA_COMP5 = 'Nota da compet�ncia 5'
NU_NOTA_REDACAO = ' Nota da prova de reda��o'
IN_CERTIFICADO = ' Indicador de que o inscrito solicitar� certifica��o no Ensino M�dio'
IN_QSE = 'Resposta ao Question�rio Socioecon�mico'
Q1 = 'Qual o seu sexo?'
Q2 = 'Qual a sua idade?'
Q3 = 'Como voc� se considera'
Q4 = 'Se indicou ind�gena, qual(is) l�ngua(s) voc� domina'
Q5 = 'Qual a sua religi�o?'
Q6 = 'Qual seu estado civil?'
Q7 = 'Onde e como mora atualmente?'
Q8 = 'Mora sozinho(a)'
Q9 = 'Mora com o pai e/ou m�e'
Q10 = 'Mora com esposo(a) / companheiro(a)'
Q11 = 'Mora com filhos(as)'
Q12 = 'Mora com irm�os(�s)'
Q13 = 'Mora com outros parentes, amigos(as) ou colegas'
Q14 = 'Outra situa��o'
Q15 = 'Quantidade de pessoas que moram em sua casa'
Q16 = 'Quantos filhos tem'
Q17 = 'At� quando seu pai estudou'
Q18 = 'At� quando sua m�e estudou'
Q19 = '�rea que o pai trabalha ou trabalhou, na maior parte da vida'
Q20 = '�rea que sua m�e trabalha ou trabalhou, na maior parte da vida'
Q21 = 'Renda familiar (somando a do respondente e com a das pessoas que moram com ele)'
Q22 = 'Tem TV e quantas'
Q23 = 'Tem Videocassete e/ou DVD e quantos'
Q24 = 'Tem R�dio e quantos'
Q25 = 'Tem Microcomputador e quantos'
Q26 = ' Tem Autom�vel e quantos'
Q27 = 'Tem M�quina de lavar roupa e quantos'
Q28 = 'Tem Geladeira e quantas'
Q29 = 'Tem Telefone fixo e quantos'
Q30 = 'Tem Telefone celular e quantos'
Q31 = 'Tem Acesso � Internet e quantos'
Q32 = 'Tem TV por assinatura e quantas'
Q33 = 'Tem casa pr�pria'
Q34 = 'Se a casa � em rua cal�ada ou asfaltada'
Q35 = 'Se a casa tem �gua corrente de torneira'
Q36 = 'Se a casa tem eletricidade'
Q37 = 'Se a casa � situada em zona rural'
Q38 = 'Se a casa � situada em comunidade ind�gena'
Q39 = 'Se a casa � situada em comunidade quilombola'
Q40 = 'Motivo para fazer o Enem'
Q41 = 'Se est� participando do ENEM para conseguir a certifica��o do ensino m�dio, principal motivo que o levou aescolher esta forma de certifica��o'
Q42 = 'Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento'
Q43 = 'Trabalhou ou teve alguma atividade remunerada durante os estudos'
Q44 = 'Quantas horas trabalhava, durante os estudos'
Q45 = 'Com que finalidade voc� trabalhava enquanto estudava'
Q46 = 'Com que idade voc� come�ou a exercer atividade remunerada enquanto estudava'
Q47 = 'Se voc� est� trabalhando atualmente, qual a sua renda ou seu sal�rio mensal?'
Q48 = 'Voc� est� trabalhando atualmente em alguma atividade para o qual se preparou'
Q49 = 'Em que trabalha atualmente'
Q50 = 'Quanto tempo est� trabalhando na atividade'
Q51 = 'Os conhecimentos no ensino m�dio foram adequados ao que o mercado de trabalho solicita'
Q52 = 'Os conhecimentos no ensino m�dio tiveram rela��o com a profiss�o que escolheu / que exerce'
Q53 = 'Os conhecimentos no ensino m�dio foram bem desenvolvidos, com aulas pr�ticas, laborat�rios, etc'
Q54 = 'Os conhecimentos no ensino m�dio proporcionaram cultura e conhecimento'
Q55 = 'Avalia��o de ter estudado e trabalhado, simultaneamente, durante o ensino m�dio'
Q56 = 'A escola que freq�enta ou freq�entou durante o ensino m�dio levou em conta que trabalhava ao mesmo tempo que estudava'
Q57 = 'Como prova de considera��o por parte da escola  pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o hor�rio flex�vel'
Q58 = 'Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha menor carga de trabalho ou de tarefas extraclasse'
Q59 = 'Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha programa de recupera��o de notas'
Q60 = 'Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha abono de faltas'
Q61 = 'Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha aulas mais din�micas, com did�tica difenciada'
Q62 = 'Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha aulas de revis�o da mat�ria aos (�s) interessados(as)'
Q63 = 'Como prova de considera��o por parte da escola pelo aluno trabalhar e estudar ao mesmo tempo, a escolatinha fornecimento de refei��o aos (�s) alunos(as)'
Q64 = 'A escola deve oferecer hor�rio flex�vel para o aluno que trabalha'
Q65 = 'A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha'
Q66 = 'A escola deve oferecer programa de recupera��o de notas para o aluno que trabalha'
Q67 = 'A escola deve oferecer abono de faltas para o aluno que trabalha'
Q68 = 'A escola deve oferecer aulas mais din�micas, com did�tica diferenciada para o aluno que trabalha'
Q69 = 'A escola deve oferecer aulas de revis�o da mat�ria  aos alunos interessados que trabalham'
Q70 = 'A escola deve oferecer atendimento extraclasse  aos alunos que trabalham'
Q71 = 'A escola deve oferecer fornecimento de refei��o para o aluno que trabalha'
Q72 = 'Anos que levou para concluir o ensino fundamental (1� grau)'
Q73 = 'Em que tipo de escola cursou o ensino fundamental (1� grau)'
Q74 = 'Em que ano concluiu ou concluir� o ensino m�dio (2� grau)'
Q75 = 'Quantos anos levou para cursar o ensino m�dio (2� grau)'
Q76 = 'Em que turno cursou ou esta cursando o ensino m�dio'
Q77 = 'Em que tipo de escola cursou ou est� cursando o ensino m�dio (2� grau)'
Q78 = 'Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)'
Q79 = 'Fez curso de l�ngua estrangeira'
Q80 = 'Fez curso de computa��o ou inform�tica'
Q81 = 'Fez curso preparat�rio para o vestibular (cursinho)'
Q82 = 'Fez outros cursos'
Q83 = 'Com que freq��ncia l� jornais'
Q84 = 'Com que freq��ncia l� revistas de informa��o geral'
Q85 = 'Com que freq��ncia l� revistas de divulga��o cient�fica, tecnol�gica, filos�fica ou art�stica'
Q86 = 'Com que freq��ncia l� revistas de humor, quadrinhos ou jogos'
Q87 = 'Com que freq��ncia l� revistas para adolescentes ou sobre TV, cinema, m�sica, celebridades'
Q88 = 'Com que freq��ncia l� revistas sobre comportamento, moda, estilo e decora��o'
Q89 = 'Com que freq��ncia l� revistas sobre autom�veis, esporte e lazer'
Q90 = 'Com que freq��ncia l� revistas sobre sa�de'
Q91 = 'Com que freq��ncia l� revistas sobre religi�o'
Q92 = 'Com que freq��ncia l� revistas sobre educa��o e estudos'
Q93 = 'Com que freq��ncia l� livros de fic��o'
Q94 = 'Com que freq��ncia l� livros de n�o fic��o e biografias'
Q95 = 'Com que freq��ncia l� dicion�rios, enciclop�dias e manuais'
Q96 = 'Com que freq��ncia l� sites e mat�rias na Internet'
Q97 = 'Avalia��o da escola em que fez o ensino m�dio quanto ao conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo'
Q98 = 'Avalia��o da escola em que fez o ensino m�dio quanto � dedica��o dos(as) professores(as) para prepararaulas e atender aos alunos'
Q99 = 'Avalia��o da escola em que fez o ensino m�dio quanto �s iniciativas da escola para realizar excurs�es,passeios culturais, estudos do meio ambiente'
Q100 = 'Avalia��o da escola em que fez o ensino m�dio quanto � biblioteca'
Q101 = 'Avalia��o da escola em que fez o ensino m�dio quanto �s condi��es das salas de aula'
Q102 = 'Avalia��o da escola em que fez o ensino m�dio quanto �s condi��es dos laborat�rios'
Q103 = 'Avalia��o da escola em que fez o ensino m�dio quanto ao acesso a computadores e outros recursos de inform�tica'
Q104 = 'Avalia��o da escola em que fez o ensino m�dio quanto ao ensino de l�ngua estrangeira'
Q105 = 'Avalia��o da escola em que fez o ensino m�dio quanto ao interesse dos(as) alunos(as)'
Q106 = 'Avalia��o da escola em que fez o ensino m�dio quanto ao trabalho de grupo'
Q107 = 'Avalia��o da escola em que fez o ensino m�dio quanto �s pr�ticas de esportes'
Q108 = 'Avalia��o da escola em que fez o ensino m�dio quanto � aten��o e respeito dos(as) funcion�rios(as) e dos(as) professores(as)'
Q109 = 'Avalia��o da escola em que fez o ensino m�dio quanto � dire��o'
Q110 = 'Avalia��o da escola em que fez o ensino m�dio quanto � organiza��o dos hor�rios de aulas'
Q111 = 'Avalia��o da escola em que fez o ensino m�dio quanto � localiza��o'
Q112 = 'Avalia��o da escola em que fez o ensino m�dio quanto � seguran�a (ilumina��o, policiamento, etc)'
Q113 = 'Avalia��o da escola em que fez o ensino m�dio quanto ao respeito � diversidade'
Q114 = 'Avalia��o da escola em que fez o ensino m�dio quanto a acessibilidade f�sica e os recursos e os materiaispara estudantes com defici�ncia (rampas, corrim�os, lupas, etc)'
Q115 = 'Avalia��o da escola em que fez o ensino m�dio quanto a aten��o �s quest�es ambientais'
Q116 = 'A escola em que estuda ou estudou realiza palestras / debates'
Q117 = 'A escola em que estuda ou estudou realiza jogos / esportes / campeonatos'
Q118 = 'A escola em que estuda ou estudou realiza dan�a/m�sica/coral/teatro'
Q119 = 'A escola em que estuda ou estudou realiza estudos do meio ambiente / passeios'
Q120 = 'A escola em que estuda ou estudou realiza feira de ci�ncias / feira cultural'
Q121 = 'A escola em que estuda ou estudou realiza festas/gincanas'
Q122 = 'Atendimento educacional extraclasse'
Q123 = 'De acordo com os ensinamentos no ensino m�dio, como considera o preparo para conseguir um emprego, exerceralguma atividade profissional'
Q124 = 'Os(as) professores(as) t�m autoridade, firmeza'
Q125 = 'Os(as) professores(as) s�o distantes, t�m pouco envolvimento'
Q126 = 'Os(as) professores(as) t�m respeito pelos estudantes'
Q127 = 'Os(as) professores(as) s�o indiferentes, ignoram sua exist�ncia'
Q128 = 'Os(as) professores(as) s�o preocupados(as) e dedicados(as)'
Q129 = 'Os(as) professores(as) s�o autorit�rios(as), r�gidos(as), abusam do poder'
Q130 = 'Os(as) professores(as) valorizam as diferen�as e ensinam a respeit�-las'
Q131 = 'Avalia��o sobre a escola quanto � liberdade de expressar as id�ias'
Q132 = 'Avalia��o sobre a escola quanto ao respeito aos estudantes, sem discrimin�-los'
Q133 = 'Avalia��o sobre a escola quanto � amizade e respeito entre alunos(as) e trabalhadores da escola (funcion�rios(as), professores(as))'
Q134 = 'Avalia��o sobre a escola quanto a levar em conta suas opini�es'
Q135 = 'Avalia��o sobre a escola quanto � discuss�o dos problemas da atualidade nas aulas'
Q136 = 'Avalia��o sobre a escola quanto � conviv�ncia entre estudantes'
Q137 = 'Avalia��o sobre a escola quanto � organiza��o para apoiar a resolu��o de problemas de relacionamento entreestudantes'
Q138 = 'Avalia��o sobre a escola quanto � iniciativa para apoiar a resolu��o de problemas de relacionamento entreestudantes e professores(as)'
Q139 = 'Avalia��o sobre a escola quanto � levar em conta seus problemas pessoais e familiares'
Q140 = 'Avalia��o sobre a escola quanto � realiza��o de Projetos e Palestras contra drogas'
Q141 = 'Avalia��o sobre a escola quanto � realiza��o de projetos e palestras sobre promo��o da sa�de e preven��o aAids e a doen�as sexualmente transmiss�veis'
Q142 = 'Avalia��o da escola quanto � realiza��o de projetos e palestras sobre direitos humanos e viol�ncia'
Q143 = 'Avalia��o da escola quanto � ado��o de medidas para garantir a acessibilidade a estudantes com defici�ncias f�sicas ou mentais'
Q144 = 'Avalia��o sobre a escola quanto � capacidade de relacionar os conte�dos das mat�rias com o cotidiano'
Q145 = 'Avalia��o sobre a escola quanto ao reconhecimento e valoriza��o da identidade �tnica dos estudantes'
Q146 = 'Avalia��o da escola quanto � levar em conta a opini�o/participa��o dos pais'
Q147 = 'Nota para a forma��o que obteve no ensino m�dio'
Q148 = 'Considera-se racista'
Q149 = 'Parentes racistas'
Q150 = 'Amigos(as) ou colegas de escola e/ou trabalho racistas'
Q151 = 'Vizinhos e/ou conhecidos  racistas'
Q152 = 'Professores(as) ou funcion�rios da escola'
Q153 = 'Pessoas em geral (nas ruas, nos ambientes p�blicos, etc)'
Q154 = 'Acredita possuir algum preconceito contra pessoas mais pobres / participantes de programas sociais dogoverno (Bolsa fam�lia, etc)'
Q155 = 'Acredita possuir algum preconceito contra negros(as), ind�genas, orientais, ciganos(as), ou de outrasetnias'
Q156 = 'Acredita possuir algum preconceito contra mulheres'
Q157 = 'Acredita possuir algum preconceito contra homossexuais ou gays, l�sbicas, bissexuais, travestis, transexuais'
Q158 = 'Acredita possuir algum preconceito contra pessoas muito religiosas'
Q159 = 'Acredita possuir algum preconceito contra pessoas de outra religi�o'
Q160 = 'Acredita possuir algum preconceito contra pessoas sem religi�o'
Q161 = 'Acredita possuir algum preconceito contra pessoas de outras cidades, do interior, da zona rural ou deoutras regi�es do pa�s ou do exterior'
Q162 = 'Acredita possuir algum preconceito contra pessoas idosas'
Q163 = 'Acredita possuir algum preconceito contra pessoas com defici�ncia f�sica ou mental'
Q164 = 'Acredita possuir algum preconceito contra pessoas muito gordas ou muito magras'
Q165 = 'Acredita possuir algum preconceito contra moradores(as) de favela ou de periferia'
Q166 = 'Acredita possuir algum preconceito contra meninos(as) em situa��o de rua'
Q167 = 'Acredita possuir algum preconceito contra jovens infratores(as) / jovens em conflito com a lei'
Q168 = 'Acredita possuir algum preconceito contra usu�rios(as) de drogas'
Q169 = 'J� sofreu discrimina��o econ�mica'
Q170 = 'J� sofreu discrimina��o �tnica, racial ou de cor'
Q171 = 'J� sofreu discrimina��o de g�nero (ou por ser mulher ou por ser homem)'
Q172 = 'J� sofreu discrimina��o por ser ou ter sido identificado como homossexual (gay, l�sbica, bissexual, travesti ou transexual'
Q173 = 'J� sofreu discrimina��o religiosa'
Q174 = 'J� sofreu discrimina��o por n�o ter religi�o'
Q175 = 'J� sofreu discrimina��o por causa do local de seu nascimento (em outra cidade, no interior, em outra regi�o, no exterior, etc)'
Q176 = 'J� sofreu discrimina��o por causa da idade'
Q177 = 'J� sofreu discrimina��o por ser pessoa com defici�ncia f�sica ou mental'
Q178 = 'J� sofreu discrimina��o por causa de sua apar�ncia f�sica (gordo/a, magro/a, alto/a, baixo/a, etc)'
Q179 = 'J� sofreu discrimina��o por causa do lugar de sua moradia'
Q180 = 'J� presenciou discrimina��o econ�mica'
Q181 = 'J� presenciou discrimina��o �tnica, racial ou de cor'
Q182 = 'J� presenciou discrimina��o contra mulheres'
Q183 = 'J� presenciou discrimina��o contra homossexuais (gay, l�sbica, bissexual, travesti ou transexual)'
Q184 = 'J� presenciou discrimina��o religiosa'
Q185 = 'J� presenciou discrimina��o por causa do local de seu nascimento (em outra cidade, no interior, em outra regi�o, no exterior, etc)'
Q186 = 'J� presenciou discrimina��o contra jovens menores de 18 anos'
Q187 = 'J� presenciou discrimina��o contra pessoas idosas'
Q188 = 'J� presenciou discrimina��o por ser pessoa com defici�ncia'
Q189 = 'J� presenciou discrimina��o por causa de sua apar�ncia f�sica'
Q190 = 'J� presenciou discrimina��o por causa do lugar de sua moradia'
Q191 = 'Se incomodaria se tivesse como parente ou colega de escola  uma pessoa de outra classe social'
Q192 = 'Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra cor ou etnia'
Q193 = 'Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra religi�o'
Q194 = 'Se incomodaria se tivesse como parente ou colega de escola uma pessoa com posi��es pol�ticas diferentes dasua'
Q195 = 'Se incomodaria se tivesse como parente ou colega de escola uma pessoa de outra origem geogr�fica'
Q196 = 'Se incomodaria se tivesse como parente ou colega de escola uma pessoa homossexual (gay, l�sbica, bissexual, travesti ou transexual)'
Q197 = 'Se incomodaria se tivesse como parente ou colega de escola uma pessoa muito mais nova ou mais velha'
Q198 = 'Se incomodaria se tivesse como parente ou colega de escola uma pessoa com defici�ncia f�sica ou mental'
Q199 = 'O quanto voc� se interessa pela pol�tica'
Q200 = 'O quanto voc� se interessa pela globaliza��o'
Q201 = 'O quanto voc� se interessa por esportes'
Q202 = 'O quanto voc� se interessa por religi�o'
Q203 = 'O quanto voc� se interessa pelas quest�es do meio ambiente, polui��o'
Q204 = 'O quanto voc� se interessa pelas quest�es sobre desigualdade social, pobreza, desemprego, mis�ria'
Q205 = 'O quanto voc� se interessa pelas quest�es sobre artes, teatro, cinema'
Q206 = 'O quanto voc� se interessa sobre a quest�o das drogas'
Q207 = 'O quanto voc� se interessa sobre a quest�o do acesso e qualidade dos servi�os p�blicos de sa�de e educa��o'
Q208 = 'O quanto voc� se interessa pelas quest�es sobre sexualidade (prazer, sexo seguro, gravidez, doen�as sexualmente transmiss�veis, etc)'
Q209 = 'O quanto voc� se interessa pelas quest�es sobre racismo contra negros, ind�genas, orientais, ciganos,judeus, etc'
Q210 = 'O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra mulheres'
Q211 = 'O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra homossexuais (gay, l�sbica, bissexual, travesti ou transexual)'
Q212 = 'O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra crian�as e adolescentes'
Q213 = 'O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra pessoas idosas'
Q214 = 'O quanto voc� se interessa pelas quest�es sobre discrimina��o e viol�ncia contra pessoas com defici�ncia'
Q215 = 'A primeira contribui��o para a sua vida pessoal que obteve ao realizar o Ensino M�dio foi'
Q216 = 'A segunda contribui��o para a sua vida pessoal que obteve ao realizar o Ensino M�dio foi'
Q217 = 'A terceira contribui��o para a sua vida pessoal que obteve ao realizar o Ensino M�dio foi'
Q218 = 'A principal decis�o que vai tomar quando concluir ou obter a certifica��o do ensino m�dio (2� grau)'
Q219 = 'E a m�dio prazo, daqui a uns 4 ou 5 anos j� planejou o que gostaria que acontecesse'
Q220 = 'Que profiss�o escolheu seguir'
Q221 = 'Meus pais ajudaram a tomar minha decis�o sobre minha profiss�o'
Q222 = 'A escola ajudou a tomar minha decis�o sobre minha profiss�o'
Q223 = 'Meus amigos ajudaram a tomar minha decis�o sobre minha profiss�o'
Q224 = 'Informa��es gerais, revistas, jornais, TV ajudaram a tomar minha decis�o sobre minha profiss�o'
Q225 = 'Meu trabalho ajudou a tomar minha decis�o sobre minha profiss�o'
Q226 = 'Est�mulo financeiro ajudou a tomar minha decis�o sobre minha profiss�o'
Q227 = 'Facilidade de obter emprego ajudou a tomar minha decis�o sobre minha profiss�o'
Q228 = 'Continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)'
Q229 = 'Frequentou ou est� freq�entando um curso profissionalizante'
Q230 = 'Frequentou ou est� freq�entando um curso preparat�rio para vestibular'
Q231 = 'Frequentou ou est� freq�entando um curso superior'
Q232 = 'Frequentou ou est� freq�entando um curso de l�ngua estrangeira'
Q233 = 'Frequentou ou est� freq�entando um curso de computa��o ou inform�tica'
Q234 = 'Frequentou ou est� freq�entando um curso preparat�rio para outros concursos p�blicos'
Q235 = 'Frequentou ou est� freq�entando outro curso'
Q236 = 'O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q237 = 'O curso preparat�rio para vestibular fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q238 = 'O curso superior fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q239 = 'O curso de l�ngua estrangeira fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q240 = 'O curso de computa��o ou inform�tica fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q241 = 'Como realiza ou realizou o Curso de Educa��o de Jovens e Adultos - EJA'
Q242 = 'Per�odo em que cursa a EJA'
Q243 = 'J� havia cursado antes a EJA e depois parou'
Q244 = 'Parou de frequentar a EJA porque o hor�rio de trabalho era dif�cil/n�o tinha tempo de estudar'
Q245 = 'Parou de frequentar a EJA porque estudava no curso da empresa e fui demitido'
Q246 = 'Parou de frequentar a EJA porque teve problemas ligados � sa�de ou acidentes ou pessoas da fam�lia'
Q247 = 'Parou de frequentar a EJA porque mudou de cidade'
Q248 = 'Parou de frequentar a EJA porque casou/teve filhos'
Q249 = 'Parou de frequentar a EJA porque n�o tinha interesse/desistiu'
Q250 = 'Parou de frequentar a EJA porque sentiu-se discriminado/sofreu agress�o'
Q251 = 'N�o frequentou'
Q252 = 'Frequentou alguma vez escola regular'
Q253 = 'Se j� frequentou escola regular, em que s�rie ou ano escolar deixou a escola'
Q254 = 'Quanto tempo levou para cursar a 1� S�rie do Ensino M�dio'
Q255 = 'Quanto tempo levou para cursar a 2� S�rie do Ensino M�dio'
Q256 = 'Quanto tempo levou para cursar a 3� S�rie do Ensino M�dio'
Q257 = 'Em que tipo de escola cursou a 1� S�ire do Ensino M�dio'
Q258 = 'Em que tipo de escola cursou a 2� S�ire do Ensino M�dio'
Q259 = 'Em que tipo de escola cursou a 3� S�ire do Ensino M�dio'
Q260 = 'Quantos anos tinha quando deixou de frequentar a escola regular'
Q261 = 'Nunca frequentou uma escola regular porque n�o conseguiu vaga em escola p�blica / a fam�lia n�o tinhacondi��es de pagar os estudos'
Q262 = 'Nunca frequentou uma escola regular porque n�o havia escola perto de casa'
Q263 = 'Nunca frequentou uma escola regular porque n�o gostava de estudar / n�o tinha interesse'
Q264 = 'Nunca frequentou uma escola regular por motivos ligados ao trabalho: hor�rio de trabalho era dif�cil /n�otinha tempo de estudar'
Q265 = 'Nunca frequentou uma escola regular porque parou de estudar porque casou / teve filhos / teve que cuidar da fam�lia'
Q266 = 'Nunca frequentou uma escola regular porque n�o tinha apoio da fam�lia'
Q267 = 'Nunca frequentou uma escola regular por problemas ligados � sa�de: sofreu acidente/ficou doente/aconteceualgum acidente com pessoas da fam�lia'
Q268 = 'Nunca frequentou uma escola regular porque sofreu discrimina��o'
Q269 = 'Deixou de frequentar uma escola regular porque foi reprovado'
Q270 = 'Deixou de frequentar uma escola regular porque n�o conseguiu vaga em escola p�blica / a fam�lia n�o tinhacondi��es de pagar os estudos'
Q271 = 'Deixou de frequentar uma escola regular porque n�o havia escola perto de casa'
Q272 = 'Deixou de frequentar uma escola regular porque a escola a escola que frequentava era muito ruim (tinhamuita bagun�a, n�o tinha professores, as aulas n�o eram boas, etc)'
Q273 = 'Deixou de frequentar uma escola regular porque n�o gostava de estudar / n�o tinha interesse'
Q274 = 'Deixou de frequentar uma escola regular por motivos ligados ao trabalho: hor�rio de trabalho era dif�cil /n�o tinha tempo de estudar'
Q275 = 'Deixou de frequentar uma escola regular porque parou de estudar porque casou / teve filhos / teve quecuidar da fam�lia'
Q276 = 'Deixou de frequentar uma escola regular porque n�o tinha apoio da fam�lia'
Q277 = 'Deixou de frequentar uma escola regular por problemas ligados � sa�de: sofreu acidente/ficou doente/aconteceu algum acidente com pessoas da fam�lia'
Q278 = 'Deixou de frequentar uma escola regular porque sofreu discrimina��o na escola'
Q279 = 'Deixou de frequentar uma escola regular porque sofreu agress�o (f�sica ou verbal) na escola'
Q280 = 'N�o voltou a estudar'
Q281 = 'Voltou a estudar ou a cursar a EJA para conseguir o primeiro emprego'
Q282 = 'Voltou a estudar ou a cursar a EJA para conseguir um emprego melhor'
Q283 = 'Voltou a estudar ou a cursar a EJA para melhorar de posi��o no emprego atual'
Q284 = 'Voltou a estudar ou a cursar a EJA para prestar vestibular e fazer uma faculdade'
Q285 = 'Voltou a estudar ou a cursar a EJA para fazer algum curso profissionalizante'
Q286 = 'Voltou a estudar ou a cursar a EJA para adquirir mais conhecimento, ficar atualizado'
Q287 = 'Voltou a estudar ou a cursar a EJA para ser algu�m na vida, ter mais chances'
Q288 = 'Depois que voltou ou come�ou a estudar aumentou seus conhecimentos, adquiriu mais informa��es, tem mais preparo'
Q289 = 'Depois que voltou ou come�ou a estudar melhorou sua autoestima, sua satisfa��o pessoal'
Q290 = 'Depois que voltou ou come�ou a estudar teve reconhecimento no trabalho'
Q291 = 'Depois que voltou ou come�ou a estudar surgiram novas oportunidades de trabalho'
Q292 = 'Depois que voltou ou come�ou a estudar sua vida ficou pior, mais cansativa, mais corrida'
Q293 = 'N�o mudou nada depois que voltou ou come�ou a estudar'
;
IF NU_INSCRICAO = . THEN DELETE;

RUN;