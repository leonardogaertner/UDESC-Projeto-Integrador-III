
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Estudos, Pesquisas e Dissemina��o				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2002.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2002       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2002.CSV no diret�rio C:\ do computador.			      */
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
	   3='Extinta';
	value  $PRESENCA
		0='Faltou � prova'
		1='Presente � prova';
	value  $PROVA
		A= 'Amarela'
		B= 'Branca'
		R= 'Rosa'
		V= 'Verde';
	value  $STATUS_REDACAO
		B='Entregou a reda��o em branco'
		F='Faltou � prova'
		N='Reda��o anulada'
		P='Presente � prova';
	value  $QSE
		0='N�o respondeu o question�rio socioec�mico'
		1='Respondeu o question�rio socioec�mico';	
 value  $Qum /*Q1*/	
	A= 'Feminino'
	B= 'Masculino';
 value  $Qdois /*Q2*/
	A= 'Ap�s 1984.'
	B= 'Em 1983.'
	C= 'Em 1982.'
	D= 'Em 1981.'
	E= 'Em 1980.'
	F= 'Entre 1976 e 1979.'
	G= 'Antes de 1976.';
 value  $Qtres /*Q3*/
	A= 'Branco(a).'
	B= 'Pardo(a) / mulato(a).'
	C= 'Negro(a).'
	D= 'Amarelo(a).'
	E= 'Ind�gena.';
 value  $Qquatro /*Q4*/
	A= 'Solteiro(a)'
	B= 'Casado(a) / mora com um(a) companheiro(a)'
	C= 'Separado(a) / divorciado(a) / desquitado(a)'
	D= 'Vi�vo(a)';
 value  $Qcinco /*Q5*/
	A= 'Em casa ou apartamento, com sua fam�lia'
	B= 'Em casa ou apartamento, sozinho(a)'
	C= 'Em quarto ou c�modo alugado, sozinho(a)'
	D= 'Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc'
	E= 'Outra situa��o';
 value  $Qseis /*Q6_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qsete /*Q6_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qoito /*Q6_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qnove /*Q6_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qdez /*Q6_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qonze /*Q6_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qdoze /*Q6_7*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qtreze /*Q6_8*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcatorze /*Q7*/
	A= 'Duas pessoas'
	B= 'Tr�s pessoas'
	C= 'Quatro pessoas'
	D= 'Cinco pessoas'
	E= 'Seis pessoas'
	F= 'Mais de 6 pessoas'
	G= 'Moro sozinho';
 value  $Qquinze /*Q8*/
	A= 'Um filho'
	B= 'Dois filhos'
	C= 'Tr�s filhos'
	D= 'Quatro ou mais filhos'
	E= 'N�o tenho filhos';
 value  $Qdezesseis /*Q9*/
	A= 'N�o estudou'
	B= 'Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)'
	C= 'Da 5� a 8� do ensino fundamental (antigo gin�sio)'
	D= 'Ensino M�dio (2� grau) incompleto'
	E= 'Ensino M�dio (2� grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'P�s-gradua��o'
	I= 'N�o sei';
 value  $Qdezessete /*Q10*/
	A= 'N�o estudou'
	B= 'Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)'
	C= 'Da 5� a 8� do ensino fundamental (antigo gin�sio)'
	D= 'Ensino M�dio (2� grau) incompleto'
	E= 'Ensino M�dio (2� grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'P�s-gradua��o'
	I= 'N�o sei';
 value  $Qdezoito /*Q11*/
	A= 'Na agricultura, no campo, em fazenda ou na pesca'
	B= 'Na ind�stria'
	C= 'No com�rcio, banco, transporte ou outros servi�os'
	D= 'Funcion�rio p�blico do governo federal, estadual, ou do munic�pio, ou militar'
	E= 'Profissional liberal, professor ou t�cnico de n�vel superior'
	F= 'Trabalhador do setor informal (sem carteira assinada)'
	G= 'Trabalha em casa em servi�os (costura, cozinha, aulas particulares, etc)'
	H= 'No lar'
	I= 'N�o trabalha'
	J= 'N�o sei';
 value  $Qdezenove /*Q12*/
	A= 'Gerente, administrador ou diretor de empresa privada'
	B= 'Funcion�rio p�blico (federal, estadual ou municipal), com fun��es de dire��o'
	C= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando'
	D= 'Empregado no setor privado, com carteira assinada'
	E= 'Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o'
	F= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando'
	G= 'Trabalho tempor�rio, informal, sem carteira assinada'
	H= 'Trabalho por conta pr�pria'
	I= 'Desempregado'
	J= 'Aposentado'
	K= 'Outra situa��o';
 value  $Qvinte /*Q13*/
	A= 'Na agricultura, no campo, em fazenda ou na pesca'
	B= 'Na ind�stria'
	C= 'No com�rcio, banco, transporte ou outros servi�os'
	D= 'Funcion�rio p�blico do governo federal, estadual, ou do munic�pio, ou militar'
	E= 'Profissional liberal, professor ou t�cnico de n�vel superior'
	F= 'Trabalhador do setor informal (sem carteira assinada)'
	G= 'Trabalha em casa em servi�os (costura, cozinha, aulas particulares, etc)'
	H= 'No lar'
	I= 'N�o trabalha'
	J= 'N�o sei';
 value  $Qvinteum /*Q14*/
	A= 'Gerente, administrador ou diretor de empresa privada'
	B= 'Funcion�rio p�blico (federal, estadual ou municipal), com fun��es de dire��o'
	C= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando'
	D= 'Empregado no setor privado, com carteira assinada'
	E= 'Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o'
	F= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando'
	G= 'Trabalho tempor�rio, informal, sem carteira assinada'
	H= 'Trabalho por conta pr�pria'
	I= 'Desempregado'
	J= 'Aposentado'
	K= 'Outra situa��o';
 value  $Qvintedois /*Q15*/
	A= 'At� 1 sal�rio m�nimo (at� R$ 200,00).'
	B= 'De 1 a 2 sal�rios m�nimos (R$ 200,00 a R$ 400,00 inclusive)'
	C= 'De 2 a 5 sal�rios m�nimos (R$ 400,00 a R$ 1.000,00 inclusive).'
	D= 'De 5 a 10 sal�rios m�nimos (R$ 1.000,00 a R$ 2.000,00 inclusive).'
	E= 'De 10 a 30 sal�rios m�nimos (R$ 2.000,00 a R$ 6.000,00 inclusive).'
	F= 'De 30 a 50 sal�rios m�nimos (R$ 6.000,00 a R$ 10.000,00 inclusive).'
	G= 'Mais de 50 sal�rios m�nimos (mais de R$ 10.000,00).'
	H= 'Nenhuma renda.';
 value  $Qvintetres /*Q16_1*/
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qvintequatro /*Q16_2*/
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qvintecinco /*Q16_3*/	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qvinteseis /*Q16_4*/	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qvintesete /*Q16_5*/	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qvinteoito /*Q16_6*/	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qvintenove /*Q16_7*/	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qtrinta /*Q16_8*/	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qtrintaum /*Q16_9*/	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qtrintadois /*Q16_10*/	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5 ou +'
	F= 'N�o h�';
 value  $Qtrintatres /*Q17_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintaquatro /*Q17_2*/
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintacinco /*Q17_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintaseis /*Q17_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintasete /*Q17_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintaoito /*Q18*/
	A= 'Para testar seus conhecimentos / capacidade de racioc�nio'
	B= 'Para entrar na faculdade / conseguir pontos para o vestibular'
	C= 'Para ter um bom emprego / saber se est� preparado(a) para o futuro profissional'
	D= 'N�o sei';
 value  $Qtrintanove /*Q19*/
	A= 'Para ter mais responsabilidade'
	B= 'Independ�ncia financeira'
	C= 'Adquirir experi�ncia'
	D= 'Crescer profissionalmente'
	E= 'Sentir-me �til'
	F= 'Para fazer amigos, conhecer pessoas'
	G= 'N�o acho importante ter um trabalho';
 value  $Qquarenta /*Q20*/
	A= 'Sim'
	B= 'Nunca trabalhei'
	C= 'Nunca trabalhei, mas estou procurando trabalho';
 value  $Qquarentaum /*Q21*/
	A= 'Sim, todo o tempo'
	B= 'Sim, menos de 1 ano'
	C= 'Sim, de 1 a 2 anos'
	D= 'Sim, de 2 a 3 anos'
	E= 'N�o';
 value  $Qquarentadois /*Q22*/
	A= 'Sem jornada fixa, at� 10 horas semanais'
	B= 'De 11 a 20 horas semanais'
	C= 'De 21 a 30 horas semanais'
	D= 'De 31 a 40 horas semanais'
	E= 'Mais de 40 horas semanais';
 value  $Qquarentatres /*Q23*/
	A= 'Para ajudar meus pais nas despesas com a casa, sustentar a fam�lia'
	B= 'Para ser independente (ter meu sustento, ganhar meu pr�prio dinheiro)'
	C= 'Para adquirir experi�ncia'
	D= 'Para ajudar minha comunidade'
	E= 'Outra finalidade';
 value  $Qquarentaquatro /*Q24*/
	A= 'Antes dos 14 anos'
	B= 'Entre 14 e 16 anos'
	C= 'Entre 17 e 18 anos'
	D= 'Ap�s 18 anos';
 value  $Qquarentacinco /*Q25*/
	A= 'At� 1 sal�rio m�nimo (at� R$ 200,00).'
	B= 'De 1 a 2 sal�rios m�nimos (R$ 200,00 a R$ 400,00 inclusive)'
	C= 'De 2 a 5 sal�rios m�nimos (R$ 400,00 a R$ 1.000,00 inclusive).'
	D= 'De 5 a 10 sal�rios m�nimos (R$ 1.000,00 a R$ 2.000,00 inclusive).'
	E= 'De 10 a 30 sal�rios m�nimos (R$ 2.000,00 a R$ 6.000,00 inclusive).'
	F= 'De 30 a 50 sal�rios m�nimos (R$ 6.000,00 a R$ 10.000,00 inclusive).'
	G= 'Mais de 50 sal�rios m�nimos (mais de R$ 10.000,00).'
	H= 'Nenhuma renda.';
 value  $Qquarentaseis /*Q26*/
	A= 'Sim'
	B= 'N�o';
 value  $Qquarentasete /*Q27*/
	A= 'Na agricultura (campo, fazenda, pesca).'
	B= 'Na ind�stria.'
	C= 'No com�rcio, banco, transporte ou outros servi�os.'
	D= 'Como empregado(a) em casa de fam�lia.'
	E= 'Como funcion�rio(a) do governo federal, do estado ou do munic�pio, ou militar.'
	F= 'Como profissional liberal, professor(a) ou t�cnico(a) de n�vel superior.'
	G= 'No lar.'
	H= 'Trabalho em casa em servi�os (costura, comida, aulas particulares, etc.).'
	I= 'N�o trabalha';
 value  $Qquarentaoito /*Q28*/
	A= 'Gerente, administrador(a) ou diretor(a) de empresa privada.'
	B= 'Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), com fun��es de dire��o.'
	C= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando'
	D= 'Empregado(a) no setor privado, com carteira assinada'
	E= 'Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), sem fun��o de dire��o.'
	F= 'Trabalho tempor�rio, informal, sem carteira assinada'
	G= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando.'
	H= 'Trabalho por conta pr�pria'
	I= 'Aposentado(a).'
	J= 'Outra situa��o.';
 value  $Qquarentanove /*Q29*/
	A= 'Menos de 1 ano'
	B= 'Entre 1 e 2 anos'
	C= 'Entre 2 e 4 anos'
	D= 'Mais de 4 anos';
 value  $Qcinquenta /*Q30_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentaum /*Q30_2*/		
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentadois /*Q30_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentatres /*Q30_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentaquatro /*Q31*/
	A= 'Atrapalhou os estudos'
	B= 'Possibilitou crescimento pessoal'
	C= 'Atrapalhou os estudos, mas possibilitou crescimento pessoal'
	D= 'N�o atrapalhou os estudos'
	E= 'N�o trabalho / n�o trabalhei';
 value  $Qcinquentacinco /*Q32*/
	A= 'Sim'
	B= 'N�o'
	C= 'N�o sei';
 value  $Qcinquentaseis /*Q33_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentasete /*Q33_2*/
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentaoito /*Q33_3*/
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentanove /*Q33_4*/
	A= 'Sim'
	B= 'N�o';
 value  $Qsessenta /*Q33_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentaum /*Q33_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentadois /*Q33_7*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentatres /*Q34_1*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentaquatro /*Q34_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentacinco /*Q34_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentaseis /*Q34_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentasete /*Q34_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentaoito /*Q34_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentanove /*Q34_7*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsetenta /*Q35*/
	A= 'Menos de 8 anos'
	B= '8 anos'
	C= '9 anos'
	D= '10 anos'
	E= '11 anos'
	F= 'Mais de 11 anos';
 value  $Qsetentaum /*Q36*/
	A= 'Somente em escola p�blica'
	B= 'Parte em escola p�blica e parte em escola particular'
	C= 'Somente em escola particular';
 value  $Qsetentadois /*Q37*/
	A= 'Vou conclu�-lo no segundo semestre de 2002.'
	B= 'No primeiro semestre de 2002.'
	C= 'Em 2001.'
	D= 'Em 2000.'
	E= 'Em 1999.'
	F= 'Entre 1995 e 1996.'
	G= 'Antes de 1995.';
 value  $Qsetentatres /*Q38*/
	A= 'Menos de 3 anos'
	B= '3 anos'
	C= '4 anos'
	D= '5 anos'
	E= '6 anos'
	F= 'Mais de 6 anos';
 value  $Qsetentaquatro /*Q39*/
	A= 'Somente no turno diurno'
	B= 'Parte no turno diurno e parte no turno noturno'
	C= 'Somente no turno noturno';
 value  $Qsetentacinco /*Q40*/
	A= 'Somente em escola p�blica'
	B= 'Parte em escola p�blica e parte em escola particular'
	C= 'Somente em escola particular';
 value  $Qsetentaseis /*Q41*/
	A= 'Ensino regular'
	B= 'Educa��o para jovens e adultos (antigo supletivo)'
	C= 'Ensino t�cnico / ensino profissional';
 value  $Qsetentasete /*Q42_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qsetentaoito /*Q42_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qsetentanove /*Q42_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qoitenta /*Q42_4*/		
	A= 'Sim'
	B= 'N�o';
 value  $Qoitentaum /*Q42_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qoitentadois /*Q43_1*/
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentatres /*Q43_2*/
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentaquatro /*Q43_3*/
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentacinco /*Q43_4*/
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentaseis /*Q43_5*/
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qcemtres /*Q45_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquatro /*Q45_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcinco /*Q45_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemseis /*Q45_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsete /*Q45_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoito /*Q45_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemnove /*Q45_7*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdez /*Q45_8*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemonze /*Q46*/
	A= 'Eu me considero preparado(a) para entrar no mercado de trabalho'
	B= 'Apesar de ter frequentado uma boa escola, eu me considero despreparado(a), pois n�o aprendi o suficiente para conseguir um emprego'
	C= 'Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola, que n�o me preparou o suficiente'
	D= 'J� estou empregado'
	E= 'N�o sei';
 value  $Qcemdoze /*Q47_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtreze /*Q47_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcatorze /*Q47_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquinze /*Q47_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdezesseis /*Q47_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdezessete /*Q47_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdezoito /*Q47_7*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtrintaum /*Q49*/
	A= '0'
	B= '1'
	C= '2'
	D= '3'
	E= '4'
	F= '5'
	G= '6'
	H= '7'
	I= '8'
	J= '9'
	K= '10'
	L= 'N�o sei';
 value  $Qcemtrintadois /*Q50*/
	A= '0'
	B= '1'
	C= '2'
	D= '3'
	E= '4'
	F= '5'
	G= '6'
	H= '7'
	I= '8'
	J= '9'
	K= '10'
	L= 'N�o sei';
 value  $Qcemtrintatres /*Q51*/
	A= 'Autoconfian�a. '
	B= 'Clareza de objetivos.'
	C= 'Capacidade de solu��o de problemas.'
	D= 'Lideran�a.'
	E= 'Saber me relacionar com pessoas, trabalhar em grupo.'
	F= 'N�o me falta nada.';
 value  $Qcemtrintaquatro /*Q52*/
	A= 'Evang�lica pentecostal '
	B= 'Evang�lica n�o pentecostal '
	C= 'Umbanda'
	D= 'Candombl�. '
	E= 'Esp�rita kardecista. '
	F= 'Cat�lica.'
	G= 'Jud�ica  '
	H= 'Outra religi�o.'
	I= 'Acredita em Deus, mas n�o tem religi�o.'
	J= '� ateu / n�o acredita em Deus.';
 value  $Qcemtrintacinco /*Q53*/
	A= 'Mais de uma vez por semana. '
	B= '1 vez por semana.'
	C= '1 vez por m�s.'
	D= 'Somente em ocasi�es especiais. '
	E= 'Nunca.';
 value  $Qcemtrintaseis /*Q54_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtrintasete /*Q54_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtrintaoito /*Q54_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtrintanove /*Q54_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarenta /*Q54_5*/		
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentaum /*Q54_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentadois /*Q54_7*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentatres /*Q54_8*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentaquatro /*Q55*/
	A= 'Sozinho(a)'
	B= 'Meus amigos da escola, minha turma '
	C= 'Meus amigos de fora da escola'
	D= 'Meus irm�os/minha fam�lia/marido/esposa/filhos'
	E= 'S� com o namorado(a)';
 value  $Qcemquarentacinco /*Q56*/
A= 'Assisto a programas de TV.'
	B= 'Leio livros/revistas, escuto m�sica. '
	C= 'Vou ao shopping.'
	D= 'Vou � igreja.'
	E= 'Saio com amigos. '
	F= 'Acesso a Internet. '
	G= 'Nenhum desses itens.';
 value  $Qcemquarentaseis /*Q57_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentasete /*Q57_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentaoito /*Q57_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentanove /*Q57_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcinquenta /*Q57_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcinquentaum /*Q57_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcinquentadois /*Q57_7*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcinquentatres /*Q58_1*/
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentaquatro /*Q58_2*/	
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentacinco /*Q58_3*/	
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentaseis /*Q58_4*/	
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentasete /*Q58_5*/	
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentaoito /*Q58_6*/	
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentanove /*Q58_7*/	
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemsessenta /*Q58_8*/			
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemsessentaum /*Q58_9*/		
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemsessentadois /*Q58_10*/	
	A= 'Muito '
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemsessentatres /*Q59_1*/
	A= 'Amizade '
	B= 'Sinceridade '
	C= 'Honestidade'
	D= 'Igualdade'
	E= 'Solidariedade';
 value  $Qcemsessentaquatro /*Q59_2*/
	A= 'Amizade '
	B= 'Sinceridade '
	C= 'Honestidade'
	D= 'Igualdade'
	E= 'Solidariedade';
 value  $Qcemsessentacinco /*Q60_1*/
	A= 'Lealdade '
	B= '�tica '
	C= 'Liberdade '
	D= 'Independ�ncia '
	E= 'Justi�a'
	F= 'Deus/minha religi�o';
 value  $Qcemsessentaseis /*Q60_2*/
	A= 'Lealdade '
	B= '�tica '
	C= 'Liberdade '
	D= 'Independ�ncia '
	E= 'Justi�a'
	F= 'Deus/minha religi�o';
 value  $Qcemsessentasete /*Q61_1*/
	A= 'Trabalho / profiss�o '
	B= 'Fam�lia'
	C= 'Estudos / aprender coisas novas / ter cultura '
	D= 'Divers�o / tempo livre'
	E= 'Namorado(a) / companheiro(a) '
	F= 'Dinheiro'
	G= 'Seguran�a material';
 value  $Qcemsessentaoito /*Q61_2*/
	A= 'Trabalho / profiss�o '
	B= 'Fam�lia'
	C= 'Estudos / aprender coisas novas / ter cultura '
	D= 'Divers�o / tempo livre'
	E= 'Namorado(a) / companheiro(a) '
	F= 'Dinheiro'
	G= 'Seguran�a material';
 value  $Qcemsessentanove /*Q62_1*/
	A= 'Conseguir trabalho / emprego '
	B= 'Meu futuro em geral'
	C= 'Terminar meus estudos / os exames / provas '
	D= 'Dinheiro'
	E= 'Estar bem com meus amigos'
	F= 'Conseguir entrar na faculdade / universidade'
	G= 'A falta de liberdade, a depend�ncia de minha fam�lia'
	H= 'Casar / constituir fam�lia / ter filhos';
 value  $Qcemsetenta /*Q62_2*/
	A= 'Conseguir trabalho / emprego '
	B= 'Meu futuro em geral'
	C= 'Terminar meus estudos / os exames / provas '
	D= 'Dinheiro'
	E= 'Estar bem com meus amigos'
	F= 'Conseguir entrar na faculdade / universidade'
	G= 'A falta de liberdade, a depend�ncia de minha fam�lia'
	H= 'Casar / constituir fam�lia / ter filhos';
 value  $Qcemsetentaum /*Q63_1*/
	A= 'O meio ambiente'
	B= 'A Aids e as doen�as perigosas e sem cura'
	C= 'O racismo e o desrespeito �s pessoas de outra ra�a ou religi�o'
	D= 'A pobreza, as favelas, os meninos de rua '
	E= 'As drogas e a viol�ncia'
	F= 'A situa��o do pa�s';
 value  $Qcemsetentadois /*Q63_2*/
	A= 'O meio ambiente'
	B= 'A Aids e as doen�as perigosas e sem cura'
	C= 'O racismo e o desrespeito �s pessoas de outra ra�a ou religi�o'
	D= 'A pobreza, as favelas, os meninos de rua '
	E= 'As drogas e a viol�ncia'
	F= 'A situa��o do pa�s';
 value  $Qcemsetentatres /*Q64_1*/
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemsetentaquatro /*Q64_2*/
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemsetentacinco /*Q64_3*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemsetentaseis /*Q64_4*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemsetentasete /*Q64_5*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemsetentaoito /*Q64_6*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemsetentanove /*Q64_7*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemoitenta /*Q64_8*/		
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemoitentaum /*Q64_9*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemoitentadois /*Q64_10*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemoitentatres /*Q64_11*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemoitentaquatro /*Q64_12*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemoitentacinco /*Q64_13*/	
	A= 'Concorda'
	B= 'Discorda';
 value  $Qcemoitentaseis /*Q65_1*/
	A= 'Obten��o de um certificado de conclus�o de curso/ obten��o de um diploma'
	B= 'Forma��o b�sica necess�ria para obter um emprego melhor'
	C= 'Condi��es de melhorar minha posi��o no emprego atual'
	D= 'Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E= 'Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer v�rias pessoas'
	G= 'Atender � expectativa de meus pais sobre meus estudos';
 value  $Qcemoitentasete /*Q65_2*/
	A= 'Obten��o de um certificado de conclus�o de curso/ obten��o de um diploma'
	B= 'Forma��o b�sica necess�ria para obter um emprego melhor'
	C= 'Condi��es de melhorar minha posi��o no emprego atual'
	D= 'Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E= 'Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer v�rias pessoas'
	G= 'Atender � expectativa de meus pais sobre meus estudos';
 value  $Qcemoitentaoito /*Q65_3*/
	A= 'Obten��o de um certificado de conclus�o de curso/ obten��o de um diploma'
	B= 'Forma��o b�sica necess�ria para obter um emprego melhor'
	C= 'Condi��es de melhorar minha posi��o no emprego atual'
	D= 'Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E= 'Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer v�rias pessoas'
	G= 'Atender � expectativa de meus pais sobre meus estudos';
 value  $Qcemoitentanove /*Q66*/
	A= 'J� conclui o ensino m�dio (2� Grau)'
	B= 'Prestar vestibular e continuar os estudos no ensino superior'
	C= 'Procurar um emprego'
	D= 'Prestar vestibular e continuar a trabalhar'
	E= 'Fazer curso(s) profissionalizante(s) e me preparar para o trabalho'
	F= 'Trabalhar por conta pr�pria / trabalhar em neg�cio da fam�lia'
	G= 'Ainda n�o decidiu'
	H= 'Outro plano';
 value  $Qcemnoventa /*Q67*/
	A= 'Gostaria de ter um diploma universit�rio para conseguir um bom emprego'
	B= 'Gostaria de prestar um concurso e trabalhar no setor p�blico'
	C= 'Gostaria de ganhar dinheiro em meu pr�prio neg�cio'
	D= 'Gostaria de ter um emprego '
	E= 'N�o planejei'
	F= 'Outro plano';
 value  $Qcemnoventaum /*Q68*/
	A= 'Ainda n�o escolhi'
	B= 'Profiss�o ligada �s Engenharias / Ci�ncias Tecnol�gicas'
	C= 'Profiss�o ligada �s Ci�ncias Humanas '
	D= 'Profiss�o ligada �s Artes'
	E= 'Profiss�o ligadas �s Ci�ncias Biol�gicas e de Sa�de'
	F= 'Professor(a) de Ensino Fundamental e M�dio (1� e 2� graus)'
	G= 'N�o vou seguir nenhuma profiss�o';
 value  $Qduzentos /*Q70*/
	A= 'Sim, estou estudando no momento atual'
	B= 'Sim, mas n�o estou estudando no momento atual '
	C= 'N�o';
 value  $Qduzentosum /*Q71_1*/
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosdois /*Q71_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentostres /*Q71_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosquatro /*Q71_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentoscinco /*Q71_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosseis /*Q71_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentossete /*Q72_1*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosoito /*Q72_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosnove /*Q72_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosdez /*Q72_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosonze /*Q72_5*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosdoze /*Q72_6*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentostreze /*Q72_7*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentoscatorze /*Q73_1*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosquinze /*Q73_2*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosdezesseis /*Q73_3*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosdezessete /*Q73_4*/	
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosdezoito /*Q73_5*/		
	A= 'Sim'
	B= 'N�o';
 value  $Qduzentosdezenove /*Q73_6*/	
	A= 'Sim'
	B= 'N�o';

run;


DATA WORK.DADOS_ENEM_2002;
INFILE 'C:\MICRODADOS_ENEM_2002.csv' /*local do arquivo*/
        LRECL=1727
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
			NU_INSCRICAO       : $char8.
			NU_ANO       : BEST8.
			TP_FAIXA_ETARIA       : $char2.
			TP_SEXO       : $char1.
			CO_MUNICIPIO_RESIDENCIA       : BEST8.
			NO_MUNICIPIO_RESIDENCIA       : $char50.
			CO_UF_RESIDENCIA       : BEST8.
			SG_UF_RESIDENCIA       : $char2.
			CO_MUNICIPIO_ESC       : BEST8.
			NO_MUNICIPIO_ESC       : $char50.
			CO_UF_ESC       : BEST8.
			SG_UF_ESC       : $char2.
			TP_DEPENDENCIA_ADM_ESC       : $char1.
			TP_LOCALIZACAO_ESC       : $char1.
			TP_SIT_FUNC_ESC       : $char1.
			TP_PRESENCA       : $char1.
			CO_PROVA       : $char1.
			VL_PERC_COMP1       : BEST9.2
			VL_PERC_COMP2       : BEST9.2
			VL_PERC_COMP3       : BEST9.2
			VL_PERC_COMP4       : BEST9.2
			VL_PERC_COMP5       : BEST9.2
			NU_NOTA_OBJETIVA       : BEST9.2
			TX_RESPOSTAS_OBJETIVA       : $char63.
			TX_GABARITO_OBJETIVA       : $char63.
			TP_STATUS_REDACAO       : $char1.
			NU_NOTA_COMP1       : BEST9.2
			NU_NOTA_COMP2       : BEST9.2
			NU_NOTA_COMP3       : BEST9.2
			NU_NOTA_COMP4       : BEST9.2
			NU_NOTA_COMP5       : BEST9.2
			NU_NOTA_REDACAO       : BEST9.2
			IN_QSE       : $char1.
		   Q1       : $char1.
		   Q2       : $char1.
		   Q3       : $char1.
		   Q4       : $char1.
		   Q5       : $char1.
		   Q6_1       : $char1.
		   Q6_2       : $char1.
		   Q6_3       : $char1.
		   Q6_4       : $char1.
		   Q6_5       : $char1.
		   Q6_6       : $char1.
		   Q6_7       : $char1.
		   Q6_8       : $char1.
		   Q7       : $char1.
		   Q8       : $char1.
		   Q9       : $char1.
		   Q10       : $char1.
		   Q11       : $char1.
		   Q12       : $char1.
		   Q13       : $char1.
		   Q14       : $char1.
		   Q15       : $char1.
		   Q16_1       : $char1.
		   Q16_2       : $char1.
		   Q16_3       : $char1.
		   Q16_4       : $char1.
		   Q16_5       : $char1.
		   Q16_6       : $char1.
		   Q16_7       : $char1.
		   Q16_8       : $char1.
		   Q16_9       : $char1.
		   Q16_10       : $char1.
		   Q17_1       : $char1.
		   Q17_2       : $char1.
		   Q17_3       : $char1.
		   Q17_4       : $char1.
		   Q17_5       : $char1.
		   Q18       : $char1.
		   Q19       : $char1.
		   Q20       : $char1.
		   Q21       : $char1.
		   Q22       : $char1.
		   Q23       : $char1.
		   Q24       : $char1.
		   Q25       : $char1.
		   Q26       : $char1.
		   Q27       : $char1.
		   Q28       : $char1.
		   Q29       : $char1.
		   Q30_1       : $char1.
		   Q30_2       : $char1.
		   Q30_3       : $char1.
		   Q30_4       : $char1.
		   Q31       : $char1.
		   Q32       : $char1.
		   Q33_1       : $char1.
		   Q33_2       : $char1.
		   Q33_3       : $char1.
		   Q33_4       : $char1.
		   Q33_5       : $char1.
		   Q33_6       : $char1.
		   Q33_7       : $char1.
		   Q34_1       : $char1.
		   Q34_2       : $char1.
		   Q34_3       : $char1.
		   Q34_4       : $char1.
		   Q34_5       : $char1.
		   Q34_6       : $char1.
		   Q34_7       : $char1.
		   Q35       : $char1.
		   Q36       : $char1.
		   Q37       : $char1.
		   Q38       : $char1.
		   Q39       : $char1.
		   Q40       : $char1.
		   Q41       : $char1.
		   Q42_1       : $char1.
		   Q42_2       : $char1.
		   Q42_3       : $char1.
		   Q42_4       : $char1.
		   Q42_5       : $char1.
		   Q43_1       : $char1.
		   Q43_2       : $char1.
		   Q43_3       : $char1.
		   Q43_4       : $char1.
		   Q43_5       : $char1.
		   Q44_1       : $char1.
		   Q44_2       : $char1.
		   Q44_3       : $char1.
		   Q44_4       : $char1.
		   Q44_5       : $char1.
		   Q44_6       : $char1.
		   Q44_7       : $char1.
		   Q44_8       : $char1.
		   Q44_9       : $char1.
		   Q44_10       : $char1.
		   Q44_11       : $char1.
		   Q44_12       : $char1.
		   Q44_13       : $char1.
		   Q44_14       : $char1.
		   Q44_15       : $char1.
		   Q44_16       : $char1.
		   Q45_1       : $char1.
		   Q45_2       : $char1.
		   Q45_3       : $char1.
		   Q45_4       : $char1.
		   Q45_5       : $char1.
		   Q45_6       : $char1.
		   Q45_7       : $char1.
		   Q45_8       : $char1.
		   Q46       : $char1.
		   Q47_1       : $char1.
		   Q47_2       : $char1.
		   Q47_3       : $char1.
		   Q47_4       : $char1.
		   Q47_5       : $char1.
		   Q47_6       : $char1.
		   Q47_7       : $char1.
		   Q48_1       : $char1.
		   Q48_2       : $char1.
		   Q48_3       : $char1.
		   Q48_4       : $char1.
		   Q48_5       : $char1.
		   Q48_6       : $char1.
		   Q48_7       : $char1.
		   Q48_8       : $char1.
		   Q48_9       : $char1.
		   Q48_10       : $char1.
		   Q48_11       : $char1.
		   Q48_12       : $char1.
		   Q49       : $char1.
		   Q50       : $char1.
		   Q51       : $char1.
		   Q52       : $char1.
		   Q53       : $char1.
		   Q54_1       : $char1.
		   Q54_2       : $char1.
		   Q54_3       : $char1.
		   Q54_4       : $char1.
		   Q54_5       : $char1.
		   Q54_6       : $char1.
		   Q54_7       : $char1.
		   Q54_8       : $char1.
		   Q55       : $char1.
		   Q56       : $char1.
		   Q57_1       : $char1.
		   Q57_2       : $char1.
		   Q57_3       : $char1.
		   Q57_4       : $char1.
		   Q57_5       : $char1.
		   Q57_6       : $char1.
		   Q57_7       : $char1.
		   Q58_1       : $char1.
		   Q58_2       : $char1.
		   Q58_3       : $char1.
		   Q58_4       : $char1.
		   Q58_5       : $char1.
		   Q58_6       : $char1.
		   Q58_7       : $char1.
		   Q58_8       : $char1.
		   Q58_9       : $char1.
		   Q58_10       : $char1.
		   Q59_1       : $char1.
		   Q59_2       : $char1.
		   Q60_1       : $char1.
		   Q60_2       : $char1.
		   Q61_1       : $char1.
		   Q61_2       : $char1.
		   Q62_1       : $char1.
		   Q62_2       : $char1.
		   Q63_1       : $char1.
		   Q63_2       : $char1.
		   Q64_1       : $char1.
		   Q64_2       : $char1.
		   Q64_3       : $char1.
		   Q64_4       : $char1.
		   Q64_5       : $char1.
		   Q64_6       : $char1.
		   Q64_7       : $char1.
		   Q64_8       : $char1.
		   Q64_9       : $char1.
		   Q64_10       : $char1.
		   Q64_11       : $char1.
		   Q64_12       : $char1.
		   Q64_13       : $char1.
		   Q65_1       : $char1.
		   Q65_2       : $char1.
		   Q65_3       : $char1.
		   Q66       : $char1.
		   Q67       : $char1.
		   Q68       : $char1.
		   Q69_1       : $char1.
		   Q69_2       : $char1.
		   Q69_3       : $char1.
		   Q69_4       : $char1.
		   Q69_5       : $char1.
		   Q69_6       : $char1.
		   Q69_7       : $char1.
		   Q69_8       : $char1.
		   Q70       : $char1.
		   Q71_1       : $char1.
		   Q71_2       : $char1.
		   Q71_3       : $char1.
		   Q71_4       : $char1.
		   Q71_5       : $char1.
		   Q71_6       : $char1.
		   Q72_1       : $char1.
		   Q72_2       : $char1.
		   Q72_3       : $char1.
		   Q72_4       : $char1.
		   Q72_5       : $char1.
		   Q72_6       : $char1.
		   Q72_7       : $char1.
		   Q73_1       : $char1.
		   Q73_2       : $char1.
		   Q73_3       : $char1.
		   Q73_4       : $char1.
		   Q73_5       : $char1.
		   Q73_6       : $char1.

;

ATTRIB TP_FAIXA_ETARIA FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB TP_SEXO FORMAT=$SEXO10.;
ATTRIB TP_DEPENDENCIA_ADM_ESC FORMAT=$DEPENDENCIA_ADM10.;
ATTRIB TP_LOCALIZACAO_ESC FORMAT=$LOCALIZACAO6.;
ATTRIB TP_SIT_FUNC_ESC FORMAT=$SIT_FUNC_ESC15.;
ATTRIB TP_PRESENCA FORMAT=$PRESENCA20.;
ATTRIB CO_PROVA FORMAT=$PROVA7.;
ATTRIB TP_STATUS_REDACAO FORMAT=$STATUS_REDACAO30.;
ATTRIB IN_QSE FORMAT=$QSE.;
ATTRIB Q1 FORMAT=$Qum.;
ATTRIB Q2 FORMAT=$Qdois.;
ATTRIB Q3 FORMAT=$Qtres.;
ATTRIB Q4 FORMAT=$Qquatro.;
ATTRIB Q5 FORMAT=$Qcinco.;
ATTRIB Q6_1 FORMAT=$Qseis.;
ATTRIB Q6_2 FORMAT=$Qsete.;
ATTRIB Q6_3 FORMAT=$Qoito.;
ATTRIB Q6_4 FORMAT=$Qnove.;
ATTRIB Q6_5 FORMAT=$Qdez.;
ATTRIB Q6_6 FORMAT=$Qonze.;
ATTRIB Q6_7 FORMAT=$Qdoze.;
ATTRIB Q6_8 FORMAT=$Qtreze.;
ATTRIB Q7 FORMAT=$Qcatorze.;
ATTRIB Q8 FORMAT=$Qquinze.;
ATTRIB Q9 FORMAT=$Qdezesseis.;
ATTRIB Q10 FORMAT=$Qdezessete.;
ATTRIB Q11 FORMAT=$Qdezoito.;
ATTRIB Q12 FORMAT=$Qdezenove.;
ATTRIB Q13 FORMAT=$Qvinte.;
ATTRIB Q14 FORMAT=$Qvinteum.;
ATTRIB Q15 FORMAT=$Qvintedois.;
ATTRIB Q16_1 FORMAT=$Qvintetres.;
ATTRIB Q16_2 FORMAT=$Qvintequatro.;
ATTRIB Q16_3 FORMAT=$Qvintecinco.;
ATTRIB Q16_4 FORMAT=$Qvinteseis.;
ATTRIB Q16_5 FORMAT=$Qvintesete.;
ATTRIB Q16_6 FORMAT=$Qvinteoito.;
ATTRIB Q16_7 FORMAT=$Qvintenove.;
ATTRIB Q16_8 FORMAT=$Qtrinta.;
ATTRIB Q16_9 FORMAT=$Qtrintaum.;
ATTRIB Q16_10 FORMAT=$Qtrintadois.;
ATTRIB Q17_1 FORMAT=$Qtrintatres.;
ATTRIB Q17_2 FORMAT=$Qtrintaquatro.;
ATTRIB Q17_3 FORMAT=$Qtrintacinco.;
ATTRIB Q17_4 FORMAT=$Qtrintaseis.;
ATTRIB Q17_5 FORMAT=$Qtrintasete.;
ATTRIB Q18 FORMAT=$Qtrintaoito.;
ATTRIB Q19 FORMAT=$Qtrintanove.;
ATTRIB Q20 FORMAT=$Qquarenta.;
ATTRIB Q21 FORMAT=$Qquarentaum.;
ATTRIB Q22 FORMAT=$Qquarentadois.;
ATTRIB Q23 FORMAT=$Qquarentatres.;
ATTRIB Q24 FORMAT=$Qquarentaquatro.;
ATTRIB Q25 FORMAT=$Qquarentacinco.;
ATTRIB Q26 FORMAT=$Qquarentaseis.;
ATTRIB Q27 FORMAT=$Qquarentasete.;
ATTRIB Q28 FORMAT=$Qquarentaoito.;
ATTRIB Q29 FORMAT=$Qquarentanove.;
ATTRIB Q30_1 FORMAT=$Qcinquenta.;
ATTRIB Q30_2 FORMAT=$Qcinquentaum.;
ATTRIB Q30_3 FORMAT=$Qcinquentadois.;
ATTRIB Q30_4 FORMAT=$Qcinquentatres.;
ATTRIB Q31 FORMAT=$Qcinquentaquatro.;
ATTRIB Q32 FORMAT=$Qcinquentacinco.;
ATTRIB Q33_1 FORMAT=$Qcinquentaseis.;
ATTRIB Q33_2 FORMAT=$Qcinquentasete.;
ATTRIB Q33_3 FORMAT=$Qcinquentaoito.;
ATTRIB Q33_4 FORMAT=$Qcinquentanove.;
ATTRIB Q33_5 FORMAT=$Qsessenta.;
ATTRIB Q33_6 FORMAT=$Qsessentaum.;
ATTRIB Q33_7 FORMAT=$Qsessentadois.;
ATTRIB Q34_1 FORMAT=$Qsessentatres.;
ATTRIB Q34_2 FORMAT=$Qsessentaquatro.;
ATTRIB Q34_3 FORMAT=$Qsessentacinco.;
ATTRIB Q34_4 FORMAT=$Qsessentaseis.;
ATTRIB Q34_5 FORMAT=$Qsessentasete.;
ATTRIB Q34_6 FORMAT=$Qsessentaoito.;
ATTRIB Q34_7 FORMAT=$Qsessentanove.;
ATTRIB Q35 FORMAT=$Qsetenta.;
ATTRIB Q36 FORMAT=$Qsetentaum.;
ATTRIB Q37 FORMAT=$Qsetentadois.;
ATTRIB Q38 FORMAT=$Qsetentatres.;
ATTRIB Q39 FORMAT=$Qsetentaquatro.;
ATTRIB Q40 FORMAT=$Qsetentacinco.;
ATTRIB Q41 FORMAT=$Qsetentaseis.;
ATTRIB Q42_1 FORMAT=$Qsetentasete.;
ATTRIB Q42_2 FORMAT=$Qsetentaoito.;
ATTRIB Q42_3 FORMAT=$Qsetentanove.;
ATTRIB Q42_4 FORMAT=$Qoitenta.;
ATTRIB Q42_5 FORMAT=$Qoitentaum.;
ATTRIB Q43_1 FORMAT=$Qoitentadois.;
ATTRIB Q43_2 FORMAT=$Qoitentatres.;
ATTRIB Q43_3 FORMAT=$Qoitentaquatro.;
ATTRIB Q43_4 FORMAT=$Qoitentacinco.;
ATTRIB Q43_5 FORMAT=$Qoitentaseis.;
ATTRIB Q45_1 FORMAT=$Qcemtres.;
ATTRIB Q45_2 FORMAT=$Qcemquatro.;
ATTRIB Q45_3 FORMAT=$Qcemcinco.;
ATTRIB Q45_4 FORMAT=$Qcemseis.;
ATTRIB Q45_5 FORMAT=$Qcemsete.;
ATTRIB Q45_6 FORMAT=$Qcemoito.;
ATTRIB Q45_7 FORMAT=$Qcemnove.;
ATTRIB Q45_8 FORMAT=$Qcemdez.;
ATTRIB Q46 FORMAT=$Qcemonze.;
ATTRIB Q47_1 FORMAT=$Qcemdoze.;
ATTRIB Q47_2 FORMAT=$Qcemtreze.;
ATTRIB Q47_3 FORMAT=$Qcemcatorze.;
ATTRIB Q47_4 FORMAT=$Qcemquinze.;
ATTRIB Q47_5 FORMAT=$Qcemdezesseis.;
ATTRIB Q47_6 FORMAT=$Qcemdezessete.;
ATTRIB Q47_7 FORMAT=$Qcemdezoito.;
ATTRIB Q49 FORMAT=$Qcemtrintaum.;
ATTRIB Q50 FORMAT=$Qcemtrintadois.;
ATTRIB Q51 FORMAT=$Qcemtrintatres.;
ATTRIB Q52 FORMAT=$Qcemtrintaquatro.;
ATTRIB Q53 FORMAT=$Qcemtrintacinco.;
ATTRIB Q54_1 FORMAT=$Qcemtrintaseis.;
ATTRIB Q54_2 FORMAT=$Qcemtrintasete.;
ATTRIB Q54_3 FORMAT=$Qcemtrintaoito.;
ATTRIB Q54_4 FORMAT=$Qcemtrintanove.;
ATTRIB Q54_5 FORMAT=$Qcemquarenta.;
ATTRIB Q54_6 FORMAT=$Qcemquarentaum.;
ATTRIB Q54_7 FORMAT=$Qcemquarentadois.;
ATTRIB Q54_8 FORMAT=$Qcemquarentatres.;
ATTRIB Q55 FORMAT=$Qcemquarentaquatro.;
ATTRIB Q56 FORMAT=$Qcemquarentacinco.;
ATTRIB Q57_1 FORMAT=$Qcemquarentaseis.;
ATTRIB Q57_2 FORMAT=$Qcemquarentasete.;
ATTRIB Q57_3 FORMAT=$Qcemquarentaoito.;
ATTRIB Q57_4 FORMAT=$Qcemquarentanove.;
ATTRIB Q57_5 FORMAT=$Qcemcinquenta.;
ATTRIB Q57_6 FORMAT=$Qcemcinquentaum.;
ATTRIB Q57_7 FORMAT=$Qcemcinquentadois.;
ATTRIB Q58_1 FORMAT=$Qcemcinquentatres.;
ATTRIB Q58_2 FORMAT=$Qcemcinquentaquatro.;
ATTRIB Q58_3 FORMAT=$Qcemcinquentacinco.;
ATTRIB Q58_4 FORMAT=$Qcemcinquentaseis.;
ATTRIB Q58_5 FORMAT=$Qcemcinquentasete.;
ATTRIB Q58_6 FORMAT=$Qcemcinquentaoito.;
ATTRIB Q58_7 FORMAT=$Qcemcinquentanove.;
ATTRIB Q58_8 FORMAT=$Qcemsessenta.;
ATTRIB Q58_9 FORMAT=$Qcemsessentaum.;
ATTRIB Q58_10 FORMAT=$Qcemsessentadois.;
ATTRIB Q59_1 FORMAT=$Qcemsessentatres.;
ATTRIB Q59_2 FORMAT=$Qcemsessentaquatro.;
ATTRIB Q60_1 FORMAT=$Qcemsessentacinco.;
ATTRIB Q60_2 FORMAT=$Qcemsessentaseis.;
ATTRIB Q61_1 FORMAT=$Qcemsessentasete.;
ATTRIB Q61_2 FORMAT=$Qcemsessentaoito.;
ATTRIB Q62_1 FORMAT=$Qcemsessentanove.;
ATTRIB Q62_2 FORMAT=$Qcemsetenta.;
ATTRIB Q63_1 FORMAT=$Qcemsetentaum.;
ATTRIB Q63_2 FORMAT=$Qcemsetentadois.;
ATTRIB Q64_1 FORMAT=$Qcemsetentatres.;
ATTRIB Q64_2 FORMAT=$Qcemsetentaquatro.;
ATTRIB Q64_3 FORMAT=$Qcemsetentacinco.;
ATTRIB Q64_4 FORMAT=$Qcemsetentaseis.;
ATTRIB Q64_5 FORMAT=$Qcemsetentasete.;
ATTRIB Q64_6 FORMAT=$Qcemsetentaoito.;
ATTRIB Q64_7 FORMAT=$Qcemsetentanove.;
ATTRIB Q64_8 FORMAT=$Qcemoitenta.;
ATTRIB Q64_9 FORMAT=$Qcemoitentaum.;
ATTRIB Q64_10 FORMAT=$Qcemoitentadois.;
ATTRIB Q64_11 FORMAT=$Qcemoitentatres.;
ATTRIB Q64_12 FORMAT=$Qcemoitentaquatro.;
ATTRIB Q64_13 FORMAT=$Qcemoitentacinco.;
ATTRIB Q65_1 FORMAT=$Qcemoitentaseis.;
ATTRIB Q65_2 FORMAT=$Qcemoitentasete.;
ATTRIB Q65_3 FORMAT=$Qcemoitentaoito.;
ATTRIB Q66 FORMAT=$Qcemoitentanove.;
ATTRIB Q67 FORMAT=$Qcemnoventa.;
ATTRIB Q68 FORMAT=$Qcemnoventaum.;
ATTRIB Q70 FORMAT=$Qduzentos.;
ATTRIB Q71_1 FORMAT=$Qduzentosum.;
ATTRIB Q71_2 FORMAT=$Qduzentosdois.;
ATTRIB Q71_3 FORMAT=$Qduzentostres.;
ATTRIB Q71_4 FORMAT=$Qduzentosquatro.;
ATTRIB Q71_5 FORMAT=$Qduzentoscinco.;
ATTRIB Q71_6 FORMAT=$Qduzentosseis.;
ATTRIB Q72_1 FORMAT=$Qduzentossete.;
ATTRIB Q72_2 FORMAT=$Qduzentosoito.;
ATTRIB Q72_3 FORMAT=$Qduzentosnove.;
ATTRIB Q72_4 FORMAT=$Qduzentosdez.;
ATTRIB Q72_5 FORMAT=$Qduzentosonze.;
ATTRIB Q72_6 FORMAT=$Qduzentosdoze.;
ATTRIB Q72_7 FORMAT=$Qduzentostreze.;
ATTRIB Q73_1 FORMAT=$Qduzentoscatorze.;
ATTRIB Q73_2 FORMAT=$Qduzentosquinze.;
ATTRIB Q73_3 FORMAT=$Qduzentosdezesseis.;
ATTRIB Q73_4 FORMAT=$Qduzentosdezessete.;
ATTRIB Q73_5 FORMAT=$Qduzentosdezoito.;
ATTRIB Q73_6 FORMAT=$Qduzentosdezenove.;


LABEL
NU_INSCRICAO = 'N�mero de inscri��o no ENEM.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA = 'Faixa et�ria do inscrito'
TP_SEXO = 'Sexo do inscrito'
CO_MUNICIPIO_RESIDENCIA = 'C�digo do Munic�pio em que o inscrito mora:'
NO_MUNICIPIO_RESIDENCIA = 'Nome do munic�pio em que o inscrito mora'
CO_UF_RESIDENCIA = 'C�digo da Unidade da Federa��o da residencia do inscrito'
SG_UF_RESIDENCIA = 'Sigla da Unidade da Federa��o da residencia do inscrito'
CO_MUNICIPIO_ESC = 'C�digo do Munic�pio da escola em que estudou:'
NO_MUNICIPIO_ESC = 'Nome do munic�pio da escola'
CO_UF_ESC = 'C�digo da Unidade da Federa��o da escola'
SG_UF_ESC = 'Sigla da UF da escola'
TP_DEPENDENCIA_ADM_ESC = 'Depend�ncia administrativa'
TP_LOCALIZACAO_ESC = 'Localiza��o/Zona da escola'
TP_SIT_FUNC_ESC = 'Situa��o de funcionamento'
TP_PRESENCA = 'Presen�a a prova objetiva'
CO_PROVA = 'Tipo de prova'
VL_PERC_COMP1 = 'Nota da compet�ncia 1'
VL_PERC_COMP2 = 'Nota da compet�ncia 2'
VL_PERC_COMP3 = 'Nota da compet�ncia 3'
VL_PERC_COMP4 = 'Nota da compet�ncia 4'
VL_PERC_COMP5 = 'Nota da compet�ncia 5'
NU_NOTA_OBJETIVA = 'Nota da prova objetiva'
TX_RESPOSTAS_OBJETIVA = 'Vetor com as respostas da parte objetiva da prova'
TX_GABARITO_OBJETIVA = 'Vetor com o gabarito da parte objetiva da prova'
TP_STATUS_REDACAO = 'Presen�a � reda��o'
NU_NOTA_COMP1 = 'Nota da compet�ncia 1'
NU_NOTA_COMP2 = 'Nota da compet�ncia 2'
NU_NOTA_COMP3 = 'Nota da compet�ncia 3'
NU_NOTA_COMP4 = 'Nota da compet�ncia 4'
NU_NOTA_COMP5 = 'Nota da compet�ncia 5'
NU_NOTA_REDACAO = 'Nota da prova de reda��o'
IN_QSE = 'Resposta ao Question�rio Socioecon�mico'
Q1 = 'Sexo'
Q2 = 'Ano em que nasceu'
Q3 = 'Como se considera'
Q4 = 'Qual o estado civil'
Q5 = 'Onde e como mora atualmente'
Q6_1 = 'Mora sozinho(a)'
Q6_2 = 'Mora com o pai'
Q6_3 = 'Mora com a m�e'
Q6_4 = 'Mora com esposa / marido / companheiro(a)'
Q6_5 = 'Mora com filho(s)'
Q6_6 = 'Mora com irm�o(s)'
Q6_7 = 'Mora com outro(s) parente(s)'
Q6_8 = 'Mora com amigo(s) ou colega(s)'
Q7 = 'Quantidade de pessoas que moram na casa'
Q8 = 'Quantos filhos tem'
Q9 = 'At� quando o pai estudou'
Q10 = 'At� quando a m�e estudou'
Q11 = '�rea que o pai trabalha ou trabalhou, na maior parte da vida'
Q12 = 'Qual a posi��o do pai neste trabalho, na maior parte do tempo'
Q13 = '�rea que a m�e trabalha ou trabalhou, na maior parte da vida'
Q14 = 'Qual a posi��o da m�e neste trabalho, na maior parte do tempo'
Q15 = 'Renda familiar (somando a do respondente e com a das pessoas que moram com ele)'
Q16_1 = 'Tem TV em cores e quantas'
Q16_2 = 'Tem Videocassete e/ou DVD e quantos'
Q16_3 = 'Tem R�dio e quantos'
Q16_4 = 'Tem Microcomputador e quantos'
Q16_5 = 'Tem Autom�vel e quantos'
Q16_6 = 'Tem M�quina de lavar roupa e quantos'
Q16_7 = 'Aspirador de p�'
Q16_8 = 'Geladeira'
Q16_9 = 'Freezer'
Q16_10 = 'Telefone fixo'
Q17_1 = 'Tem casa pr�pria'
Q17_2 = 'Se a casa � em rua cal�ada ou asfaltada'
Q17_3 = 'Se a casa tem �gua corrente de torneira'
Q17_4 = 'Se a casa tem eletricidade'
Q17_5 = 'Tem empregada dom�stica'
Q18 = 'Motivo para fazer o Enem'
Q19 = 'O motivo mais importante para se ter um trabalho'
Q20 = 'Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento'
Q21 = 'Trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)'
Q22 = 'Quantas horas trabalhava, durante o ensino m�dio (2� grau)'
Q23 = 'Com que finalidade trabalhava'
Q24 = 'Com que idade come�ou a exercer atividade remunerada'
Q25 = 'Se estiver trabalhando atualmente, qual a renda ou sal�rio mensal'
Q26 = 'Trabalha em alguma atividade para o qual se preparou'
Q27 = 'Em que trabalha atualmente'
Q28 = 'Qual a posi��o no trabalho'
Q29 = 'Quanto tempo est� trabalhando na atividade'
Q30_1 = 'Os conhecimentos no ensino m�dio foram adequados ao que o mercado de trabalho solicita'
Q30_2 = 'Os conhecimentos no ensino m�dio tiveram rela��o com a profiss�o que escolheu / que exerce'
Q30_3 = 'Os conhecimentos no ensino m�dio foram bem desenvolvidos, com aulas pr�ticas, laborat�rios, etc'
Q30_4 = 'Os conhecimentos no ensino m�dio proporcionaram cultura e conhecimento'
Q31 = 'Avalia��o de ter estudado e trabalhado, simultaneamente, durante o ensino m�dio'
Q32 = 'A escola que freq�enta ou freq�entou durante o ensino m�dio levou em conta que trabalhava ao mesmo tempo que estudava'
Q33_1 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o hor�rio flex�vel'
Q33_2 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse'
Q33_3 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recupera��o de notas'
Q33_4 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas'
Q33_5 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais din�micas, com did�tica diferenciada'
Q33_6 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revis�o da mat�ria aos  interessados'
Q33_7 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refei��o aos alunos'
Q34_1 = 'A escola deve oferecer hor�rio flex�vel para o aluno que trabalha'
Q34_2 = 'A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha'
Q34_3 = 'A escola deve oferecer programa de recupera��o de notas para o aluno que trabalha'
Q34_4 = 'A escola deve oferecer abono de faltas para o aluno que trabalha'
Q34_5 = 'A escola deve oferecer aulas mais din�micas, com did�tica diferenciada para o aluno que trabalha'
Q34_6 = 'A escola deve oferecer aulas de revis�o da mat�ria  aos alunos que interessados que trabalham'
Q34_7 = 'A escola deve oferecer fornecimento de refei��o para o aluno que trabalha'
Q35 = 'Anos que levou para concluir o ensino fundamental (1� grau)'
Q36 = 'Em que tipo de escola cursou o ensino fundamental (1� grau)'
Q37 = 'Em que ano concluiu ou concluir� o ensino m�dio (2� grau)'
Q38 = 'Quantos anos levou para cursas o ensino m�dio (2� grau)'
Q39 = 'Em que turno cursou ou esta cursando o ensino m�dio (2� grau)'
Q40 = 'Em que  tipo escola cursou ou est� cursando o ensino m�dio (2� grau)'
Q41 = 'Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)'
Q42_1 = 'Fez curso de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)'
Q42_2 = 'Fez curso de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)'
Q42_3 = 'Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)'
Q42_4 = 'Fez artes pl�sticas ou atividades art�sticas em geral fora da escola durante o ensino m�dio (2� grau)'
Q42_5 = 'Fez esportes, atividades f�sicas fora da escola durante o ensino m�dio (2� grau)'
Q43_1 = 'Com que freq��ncia l� jornais'
Q43_2 = 'Com que freq��ncia l� revistas de informa��o geral (Veja, Isto �, �poca, etc)'
Q43_3 = 'Com que freq��ncia l� revistas de humor / quadrinhos'
Q43_4 = 'Com que freq��ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc)'
Q43_5 = 'Com que freq��ncia l� romances, livros de fic��o'
Q44_1 = 'Avalia��o da escola que fez o ensino m�dio quanto o conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo'
Q44_2 = 'Avalia��o da escola que fez o ensino m�dio quanto a dedica��o dos professores para preparar aulas e atender aos alunos'
Q44_3 = 'Avalia��o da escola que fez o ensino m�dio quanto as iniciativas da escola para realizar excurs�es, estudos do meio'
Q44_4 = 'Avalia��o da escola que fez o ensino m�dio quanto a biblioteca  da escola'
Q44_5 = 'Avalia��o da escola que fez o ensino m�dio quanto as condi��es das salas de aula'
Q44_6 = 'Avalia��o da escola que fez o ensino m�dio quanto as condi��es dos laborat�rios'
Q44_7 = 'Avalia��o da escola que fez o ensino m�dio quanto o acesso a computadores e outros recursos de inform�tica'
Q44_8 = 'Avalia��o da escola que fez o ensino m�dio quanto o ensino de l�ngua estrangeira'
Q44_9 = 'Avalia��o da escola que fez o ensino m�dio quanto o interesse dos alunos'
Q44_10 = 'Avalia��o da escola que fez o ensino m�dio quanto o trabalho de grupo'
Q44_11 = 'Avalia��o da escola que fez o ensino m�dio quanto a pr�ticas de esportes'
Q44_12 = 'Avalia��o da escola que fez o ensino m�dio quanto a aten��o e o respeito dos funcion�rios'
Q44_13 = 'Avalia��o da escola que fez o ensino m�dio quanto a dire��o dela'
Q44_14 = 'Avalia��o da escola que fez o ensino m�dio quanto a organiza��o dos hor�rios de aulas'
Q44_15 = 'Avalia��o da escola que fez o ensino m�dio quanto a localiza��o dela'
Q44_16 = 'Avalia��o da escola que fez o ensino m�dio quanto a seguran�a (ilumina��o, policiamento, etc)'
Q45_1 = 'A escola em que estuda ou estudou realiza palestras / debates'
Q45_2 = 'A escola em que estuda ou estudou realiza jogos / esportes / campeonatos'
Q45_3 = 'A escola em que estuda ou estudou realiza teatro'
Q45_4 = 'A escola em que estuda ou estudou realiza coral'
Q45_5 = 'A escola em que estuda ou estudou realiza dan�a / m�sica'
Q45_6 = 'A escola em que estuda ou estudou realiza estudos do meio / passeios'
Q45_7 = 'A escola em que estuda ou estudou realiza feira de ci�ncias / feira cultural'
Q45_8 = 'A escola em que estuda ou estudou realiza festas / gincanas'
Q46 = 'De acordo com os ensinamentos no ensino m�dio, como considera o preparo para conseguir um emprego, exercer alguma atividade'
Q47_1 = 'Sua rea��o � de amizade'
Q47_2 = 'Os(as) professores(as) t�m autoridade, firmeza'
Q47_3 = 'Os(as) professores(as) s�o distantes, t�m pouco envolvimento'
Q47_4 = 'Os(as) professores(as) t�m respeito'
Q47_5 = 'Os(as) professores(as) s�o indiferentes, ignoram sua exist�ncia'
Q47_6 = 'Os(as) professores(as) s�o preocupados(as) e dedicados(as)'
Q47_7 = 'Os(as) professores(as) s�o autorit�rios(as), r�gidos(as), abusam do poder'
Q48_1 = 'Avalia��o sobre a escola quanto a liberdade de expressar a id�ias'
Q48_2 = 'Avalia��o sobre a escola quanto o respeito aos alunos'
Q48_3 = 'Avalia��o sobre a escola quanto a amizade e respeito entre alunos(as) e funcion�rios(as)'
Q48_4 = 'Avalia��o sobre a escola quanto a levar em conta suas opini�es'
Q48_5 = 'Avalia��o sobre a escola quanto a discuss�o dos problemas da atualidade nas aulas'
Q48_6 = 'Avalia��o sobre a escola quanto a conviv�ncia entre alunos'
Q48_7 = 'Avalia��o sobre a escola quanto a organiza��o para apoiar a resolu��o de problemas de relacionamento entre alunos'
Q48_8 = 'Avalia��o sobre a escola quanto a iniciativa para apoiar a resolu��o de problemas de relacionamento entre alunos e professores'
Q48_9 = 'Avalia��o sobre a escola quanto a levar em conta seus problemas pessoais e familiares'
Q48_10 = 'Avalia��o sobre a escola quanto a realiza��o de Programas e Palestras contra drogas'
Q48_11 = 'Avalia��o sobre a escola quanto a capacidade relacionar os conte�dos das mat�rias com o cotidiano'
Q48_12 = 'Avalia��o sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu'
Q49 = 'Nota para a forma��o que obteve no ensino m�dio'
Q50 = 'Nota para ensino m�dio no pa�s, em geral'
Q51 = 'O que o candidato acha que mais faz falta em sua forma��o pessoal para enfrentar a vida'
Q52 = 'Religi�o do candidato'
Q53 = 'Frequ�ncia que vai � Igreja'
Q54_1 = 'O candidato j� procurou pela fam�lia para resolver seus problemas pessoais'
Q54_2 = 'O candidato j� procurou cartomante para resolver seus problemas pessoais'
Q54_3 = 'O candidato j� consultou o jogo de b�zios para resolver os seus problemas pessoais'
Q54_4 = 'O candidato foi � Igreja/procurou padre/pastor para resolver seus problemas pessoais'
Q54_5 = 'O candidato buscou ajuda profissional (psic�logo, m�dico,etc) para resolver seus problemas pessoais'
Q54_6 = 'O candidato consultou hor�scopo para resolver os seus problemas pessoais'
Q54_7 = 'O candidato j� procurou pelos amigos para resolver'
Q54_8 = 'O candidato buscou orienta��o em livros e revistas para resolver dados pessoais'
Q55 = 'Pessoas com quem o candidato mais passa seu tempo livre ,depois da escola ou do trabalho, nos fins de semana?'
Q56 = 'O que o candidato faz com maior freq��ncia no tempo livre, depois da escola, do trabalho ou nos finais de semana?'
Q57_1 = 'Participa de um Gr�mio estudantil'
Q57_2 = 'Participa de um Sindicato ou Associa��o Profissional'
Q57_3 = 'Participa de um Grupo de bairro ou associa��o comunit�ria'
Q57_4 = 'Participa de uma Igreja ou grupo religioso'
Q57_5 = 'Participa de um partido pol�tico'
Q57_6 = 'Participa de uma Ong ou movimento social'
Q57_7 = 'Participa de um clube recreativo ou associa��o esportiva'
Q58_1 = 'O quanto voc� se interessa pela pol�tica nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da Rep�blica, etc'
Q58_2 = 'O quanto voc� se interessa pela pol�tica dos outros pa�ses'
Q58_3 = 'O quanto voc� se interessa pela economia nacional, a quest�o da infla��o,  o plano real'
Q58_4 = 'O quanto voc� se interessa a pol�tica da sua cidade, o prefeito, os vereadores'
Q58_5 = 'O quanto voc� se interessa por esportes'
Q58_6 = 'O quanto voc� se interessa pelas quest�es sobre o meio ambiente, polui��o, etc'
Q58_7 = 'O quanto voc� se interessa pelas quest�es sociais como a desigualdade, a pobreza, o desemprego, a mis�ria'
Q58_8 = 'O quanto voc� se interessa pelas quest�es sobre artes, teatro, cinema'
Q58_9 = 'O quanto voc� se interessa sobre a quest�o das drogas e suas conseq��ncias'
Q58_10 = 'O quanto voc� se interessa sobre assuntos sobre seu �dolo (cantor/a, artista, ou conjunto musical)'
Q59_1 = 'Qual dos pontos o candidato valoriza  em 1� lugar no momento'
Q59_2 = 'Qual dos pontos o candidato valoriza  em 2� lugar no momento'
Q60_1 = 'Qual dos pontos o candidato valoriza  em 1� lugar no momento'
Q60_2 = 'Qual dos pontos o candidato valoriza  em 2� lugar no momento'
Q61_1 = 'Qual dos pontos o candidato valoriza  em 1� lugar no momento'
Q61_2 = 'Qual dos pontos o candidato valoriza  em 2� lugar no momento'
Q62_1 = 'O que mais preocupa o candidato em 1� lugar no momento'
Q62_2 = 'O que mais preocupa o candidato em 2� lugar no momento'
Q63_1 = 'O que mais preocupa o candidato em 1� lugar no momento'
Q63_2 = 'O que mais preocupa o candidato em 2� lugar no momento'
Q64_1 = 'Para se conseguir alguma coisa na vida � preciso ter sorte.'
Q64_2 = '� importante ser honesto e trabalhador, mas n�o se consegue nada na vida.'
Q64_3 = 'S� se realiza quem cursa uma faculdade e consegue um diploma superior.'
Q64_4 = 'Quando se � perseverante se consegue tudo.'
Q64_5 = '� bom ter amigos influentes, pois est� cada vez mais dif�cil conseguir o que se quer.'
Q64_6 = 'O sucesso s� vale a pena se for obtido com honestidade e trabalho.'
Q64_7 = '� a compet�ncia de cada um que leva ao sucesso profissional.'
Q64_8 = '� preciso ter f� para conseguir as coisas.'
Q64_9 = 'N�o tem nada de mais fumar maconha.'
Q64_10 = 'Cada vez mais a sociedade valoriza quem estuda.'
Q64_11 = 'Existe pobreza e mis�ria no pa�s porque n�o h� vontade de trabalhar.'
Q64_12 = 'Vale tudo para conseguir meus objetivos.'
Q64_13 = 'O uso de drogas e do �lcool s�o duas das piores coisas do mundo de hoje.'
Q65_1 = '� a primeira mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)'
Q65_2 = '� a segunda mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)'
Q65_3 = '� a terceira mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)'
Q66 = 'A principal decis�o que vai tomar quando concluir o ensino m�dio (2� grau)'
Q67 = 'E a m�dio prazo, daqui a uns 4 ou 5 anos j� planejou o que gostaria que acontecesse'
Q68 = 'Que profiss�o escolheu seguir'
Q69_1 = 'Meus pais ajudaram a tomar minha decis�o sobre minha profiss�o'
Q69_2 = 'A escola ajudou a tomar minha decis�o sobre minha profiss�o'
Q69_3 = 'Meus amigos ajudaram a tomar minha decis�o sobre minha profiss�o'
Q69_4 = 'Informa��es gerais, revistas, jornais, TV ajudaram a tomar minha decis�o sobre minha profiss�o'
Q69_5 = 'Meu trabalho ajudou a tomar minha decis�o sobre minha profiss�o'
Q69_6 = 'Est�mulo financeiro ajudou a tomar minha decis�o sobre minha profiss�o'
Q69_7 = 'Facilidade de obter emprego ajudou a tomar minha decis�o sobre minha profiss�o'
Q69_8 = 'Minha identifica��o com a profiss�o me ajudou a tomar minha decis�o sobre minha profiss�o'
Q70 = 'Continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)'
Q71_1 = 'Est� freq�entando um curso profissionalizante'
Q71_2 = 'Est� freq�entando um curso preparat�rio para vestibular'
Q71_3 = 'Est� freq�entando um curso superior'
Q71_4 = 'Est� freq�entando um curso de l�ngua estrangeira'
Q71_5 = 'Est� freq�entando um curso de computa��o ou inform�tica'
Q71_6 = 'Est� freq�entando outro curso'
Q72_1 = 'Concluiu curso profissionalizante'
Q72_2 = 'Concluiu curso preparat�rio para vestibular, mas n�o ingressei no curso superior'
Q72_3 = 'Concluiu curso superior'
Q72_4 = 'Fiz curso superior mas n�o me formei'
Q72_5 = 'Concluiu curso de l�ngua estrangeira'
Q72_6 = 'Concluiu curso de computa��o ou inform�tica'
Q72_7 = 'Concluiu outro curso'
Q73_1 = 'O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q73_2 = 'O curso preparat�rio para vestibular fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q73_3 = 'O curso superior fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q73_4 = 'O curso de l�ngua estrangeira fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q73_5 = 'O curso de computa��o ou inform�tica fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q73_6 = 'Outro curso fez mais falta para minha vida, depois que terminei o ensino m�dio'


;IF NU_INSCRICAO = . THEN DELETE;

RUN;