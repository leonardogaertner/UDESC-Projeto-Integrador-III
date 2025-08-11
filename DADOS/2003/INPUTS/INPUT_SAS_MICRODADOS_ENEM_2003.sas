
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Estudos, Pesquisas e Dissemina��o				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2003.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2003       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2003.CSV no diret�rio C:\ do computador.			      */
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
		0='Nenhum dos anteriores'
		1='J� concluiu'
		2='Concluir� em 2003'
		3='Concluir� ap�s 2003';
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
		1='Presente na prova';
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
 value  $Qum
	A= 'Feminino'
	B= 'Masculino';
 value  $Qdois
	A= 'Ap�s 1986.'
	B= 'Em 1986.'
	C= 'Em 1985.'
	D= 'Em 1984.'
	E= 'Em 1983.'
	F= 'Em 1982.'
	G= 'Em 1981.'
	H= 'Entre 1977 e 1980.'
	I= 'Antes de 1977.';
 value  $Qtres
	A= 'Branco(a).'
	B= 'Pardo(a) / mulato(a).'
	C= 'Negro(a).'
	D= 'Amarelo(a).'
	E= 'Ind�gena.';
 value  $Qquatro
	A= 'Solteiro(a)'
	B= 'Casado(a) / mora com um(a) companheiro(a)'
	C= 'Separado(a) / divorciado(a) / desquitado(a)'
	D= 'Vi�vo(a)';
 value  $Qcinco
	A= 'Em casa ou apartamento, com sua fam�lia'
	B= 'Em casa ou apartamento, sozinho(a)'
	C= 'Em quarto ou c�modo alugado, sozinho(a)'
	D= 'Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc'
	E= 'Outra situa��o';
 value  $Qseis
	A= 'Sim'
	B= 'N�o';
 value  $Qsete
	A= 'Sim'
	B= 'N�o';
 value  $Qoito
	A= 'Sim'
	B= 'N�o';
 value  $Qnove
	A= 'Sim'
	B= 'N�o';
 value  $Qdez
	A= 'Sim'
	B= 'N�o';
 value  $Qonze
	A= 'Sim'
	B= 'N�o';
 value  $Qdoze
	A= 'Sim'
	B= 'N�o';
 value  $Qtreze
	A= 'Sim'
	B= 'N�o';
 value  $Qcatorze
	A= 'Duas pessoas'
	B= 'Tr�s pessoas'
	C= 'Quatro pessoas'
	D= 'Cinco pessoas'
	E= 'Seis pessoas'
	F= 'Mais de 6 pessoas'
	G= 'Moro sozinho';
 value  $Qquinze
	A= 'Um filho'
	B= 'Dois filhos'
	C= 'Tr�s filhos'
	D= 'Quatro ou mais filhos'
	E= 'N�o tenho filhos';
 value  $Qdezesseis
	A= 'N�o estudou'
	B= 'Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)'
	C= 'Da 5� a 8� do ensino fundamental (antigo gin�sio)'
	D= 'Ensino M�dio (2� grau) incompleto'
	E= 'Ensino M�dio (2� grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'P�s-gradua��o'
	I= 'N�o sei';
 value  $Qdezessete
	A= 'N�o estudou'
	B= 'Da 1� a 4� s�rie do ensino fundamental (antigo prim�rio)'
	C= 'Da 5� a 8� do ensino fundamental (antigo gin�sio)'
	D= 'Ensino M�dio (2� grau) incompleto'
	E= 'Ensino M�dio (2� grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'P�s-gradua��o'
	I= 'N�o sei';
 value  $Qdezoito
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
 value  $Qdezenove
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
 value  $Qvinte
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
 value  $Qvinteum
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
 value  $Qvintedois
	A= 'At� 1 sal�rio m�nimo (at� R$ 240,00).'
	B= 'De 1 a 2 sal�rios m�nimos (R$ 240,00 a R$ 480,00 inclusive)'
	C= 'De 2 a 5 sal�rios m�nimos (R$ 480,00 a R$ 1.200,00 inclusive).'
	D= 'De 5 a 10 sal�rios m�nimos (R$ 1.200,00 a R$ 2.400,00 inclusive).'
	E= 'De 10 a 30 sal�rios m�nimos (R$ 2.400,00 a R$ 7.200,00 inclusive).'
	F= 'De 30 a 50 sal�rios m�nimos (R$ 7.200,00 a R$ 12.000,00 inclusive).'
	G= 'Mais de 50 sal�rios m�nimos (mais de R$ 12.000,00).'
	H= 'Nenhuma renda.';
 value  $Qvintetres
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qvintequatro
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qvintecinco
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qvinteseis	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qvintesete	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qvinteoito	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qvintenove	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qtrinta	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qtrintaum	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qtrintadois	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qtrintatres	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'N�o tem';
 value  $Qtrintaquatro
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintacinco	
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintaseis	
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintasete	
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintaoito
	A= 'Para testar seus conhecimentos / capacidade de racioc�nio'
	B= 'Para entrar na faculdade / conseguir pontos para o vestibular'
	C= 'Para ter um bom emprego / saber se est� preparado(a) para o futuro profissional'
	D= 'N�o sei';
 value  $Qtrintanove
	A= 'Para ter mais responsabilidade'
	B= 'Independ�ncia financeira'
	C= 'Adquirir experi�ncia'
	D= 'Crescer profissionalmente'
	E= 'Sentir-me �til'
	F= 'Para fazer amigos, conhecer pessoas'
	G= 'N�o acho importante ter um trabalho';
 value  $Qquarenta
	A= 'Sim'
	B= 'Nunca trabalhei'
	C= 'Nunca trabalhei, mas estou procurando trabalho';
 value  $Qquarentaum
	A= 'Sim, todo o tempo'
	B= 'Sim, menos de 1 ano'
	C= 'Sim, de 1 a 2 anos'
	D= 'Sim, de 2 a 3 anos'
	E= 'N�o';
 value  $Qquarentadois
	A= 'Sem jornada fixa, at� 10 horas semanais'
	B= 'De 11 a 20 horas semanais'
	C= 'De 21 a 30 horas semanais'
	D= 'De 31 a 40 horas semanais'
	E= 'Mais de 40 horas semanais';
 value  $Qquarentatres
	A= 'Para ajudar meus pais nas despesas com a casa, sustentar a fam�lia'
	B= 'Para ser independente (ter meu sustento, ganhar meu pr�prio dinheiro)'
	C= 'Para adquirir experi�ncia'
	D= 'Para ajudar minha comunidade'
	E= 'Outra finalidade';
 value  $Qquarentaquatro
	A= 'Antes dos 14 anos'
	B= 'Entre 14 e 16 anos'
	C= 'Entre 17 e 18 anos'
	D= 'Ap�s 18 anos';
 value  $Qquarentacinco
	A= 'At� 1 sal�rio m�nimo (at� R$ 240,00).'
	B= 'De 1 a 2 sal�rios m�nimos (R$ 240,00 a R$ 480,00 inclusive)'
	C= 'De 2 a 5 sal�rios m�nimos (R$ 480,00 a R$ 1.200,00 inclusive).'
	D= 'De 5 a 10 sal�rios m�nimos (R$ 1.200,00 a R$ 2.400,00 inclusive).'
	E= 'De 10 a 30 sal�rios m�nimos (R$ 2.400,00 a R$ 7.200,00 inclusive).'
	F= 'De 30 a 50 sal�rios m�nimos (R$ 7.200,00 a R$ 12.000,00 inclusive).'
	G= 'Mais de 50 sal�rios m�nimos (mais de R$ 12.000,00).'
	H= 'Nenhuma renda.';
 value  $Qquarentaseis
	A= 'Sim'
	B= 'N�o';
 value  $Qquarentasete
	A= 'Na agricultura (campo, fazenda, pesca).'
	B= 'Na ind�stria.'
	C= 'No com�rcio, banco, transporte ou outros servi�os.'
	D= 'Como empregado(a) em casa de fam�lia.'
	E= 'Como funcion�rio(a) do governo federal, do estado ou do munic�pio, ou militar.'
	F= 'Como profissional liberal, professor(a) ou t�cnico(a) de n�vel superior.'
	G= 'No lar.'
	H= 'Trabalho em casa em servi�os (costura, comida, aulas particulares, etc.).'
	I= 'N�o trabalha';
 value  $Qquarentaoito
	A= 'Gerente, administrador(a) ou diretor(a) de empresa privada.'
	B= 'Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), com fun��es de dire��o.'
	C= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando.'
	D= 'Empregado(a) no setor privado, com carteira assinada'
	E= 'Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), sem fun��o de dire��o.'
	F= 'Trabalho tempor�rio, informal, sem carteira assinada.'
	G= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando.'
	H= 'Trabalho por conta pr�pria.'
	I= 'Aposentado(a)'
	J= 'Outra situa��o.';
 value  $Qquarentanove
	A= 'Menos de 1 ano'
	B= 'Entre 1 e 2 anos'
	C= 'Entre 2 e 4 anos'
	D= 'Mais de 4 anos';
 value  $Qcinquenta
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentaum	
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentadois	
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentatres	
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentaquatro
	A= 'Atrapalhou os estudos'
	B= 'Possibilitou crescimento pessoal'
	C= 'Atrapalhou os estudos, mas possibilitou crescimento pessoal'
	D= 'N�o atrapalhou os estudos'
	E= 'N�o trabalho / n�o trabalhei';
 value  $Qcinquentacinco
	A= 'Sim'
	B= 'N�o'
	C= 'N�o sei';
 value  $Qcinquentaseis
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentasete	
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentaoito	
	A= 'Sim'
	B= 'N�o';
 value  $Qcinquentanove	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessenta	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentaum	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentadois	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentatres	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentaquatro
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentacinco	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentaseis	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentasete	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentaoito	
	A= 'Sim'
	B= 'N�o';
 value  $Qsessentanove	
	A= 'Sim'
	B= 'N�o';
 value  $Qsetenta
	A= 'Menos de 8 anos '
	B= '8 anos'
	C= '9 anos'
	D= '10 anos'
	E= '11 anos'
	F= 'Mais de 11 anos';
 value  $Qsetentaum
	A= 'Somente em escola p�blica'
	B= 'Parte em escola p�blica e parte em escola particular'
	C= 'Somente em escola particular';
 value  $Qsetentadois
	A= 'Vou conclu�-lo ap�s 2003.'
	B= 'Vou conclu�-lo no segundo semestre de 2003.'
	C= 'No primeiro semestre de 2003.'
	D= 'Em 2002.'
	E= 'Em 2001.'
	F= 'Em 2000.'
	G= 'Em 1999.'
	H= 'Em 1998.'
	I= 'Entre 1996 e 1997.'
	J= 'Antes de 1996.';
 value  $Qsetentatres
	A= 'Menos de 3 anos'
	B= '3 anos'
	C= '4 anos'
	D= '5 anos'
	E= '6 anos'
	F= 'Mais de 6 anos';
 value  $Qsetentaquatro
	A= 'Somente no turno diurno'
	B= 'Maior parte no turno diurno'
	C= 'Somente no turno noturno'
	D= 'Maior parte no turno noturno';
 value  $Qsetentacinco
	A= 'Somente em escola p�blica'
	B= 'Maior parte em escola p�blica'
	C= 'Somente em escola particular'
	D= 'Maior parte em escola particular';
 value  $Qsetentaseis
	A= 'Ensino regular'
	B= 'Educa��o para jovens e adultos (antigo supletivo)'
	C= 'Ensino t�cnico / ensino profissional';
 value  $Qsetentasete
	A= 'Sim'
	B= 'N�o';
 value  $Qsetentaoito	
	A= 'Sim'
	B= 'N�o';
 value  $Qsetentanove	
	A= 'Sim'
	B= 'N�o';
 value  $Qoitenta	
	A= 'Sim'
	B= 'N�o';
 value  $Qoitentaum	
	A= 'Sim'
	B= 'N�o';
 value  $Qoitentadois
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentatres	
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentaquatro	
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentacinco	
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentaseis	
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= '�s vezes'
	C= 'Nunca';
 value  $Qoitentasete
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qoitentaoito	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qoitentanove	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventa	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventaum	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventadois	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventatres	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventaquatro	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventacinco	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventaseis	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventasete	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventaoito	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qnoventanove	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcem	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemum	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemdois	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemtres
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquatro	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcinco
	A= 'Sim'
	B= 'N�o';
 value  $Qcemseis	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsete	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoito	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemnove	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdez	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemonze
	A= 'Eu me considero preparado(a) para entrar no mercado de trabalho'
	B= 'Apesar de ter freq�entado uma boa escola, eu me considero despreparado(a), pois n�o aprendi o suficiente para conseguir um emprego'
	C= 'Eu me considero despreparado(a) devido � baixa qualidade do ensino de minha escola, que n�o me preparou o suficiente'
	D= 'N�o sei';
 value  $Qcemdoze	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtreze	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcatorze	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquinze	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdezesseis	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdezessete	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdezoito
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemdezenove	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvinte	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvinteum	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvintedois	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvintetres	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvintequatro
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvintecinco	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvinteseis	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvintesete	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvinteoito	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemvintenove	
	A= 'Insuficiente a regular'
	B= 'Regular a bom'
	C= 'Bom a excelente';
 value  $Qcemtrinta
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
 value  $Qcemtrintaum
	A= 'Autoconfian�a.'
	B= 'Clareza de objetivos.'
	C= 'Capacidade de solu��o de problemas.'
	D= 'Lideran�a.'
	E= 'Saber me relacionar com pessoas, trabalhar em grupo.'
	F= 'N�o me falta nada.';
 value  $Qcemtrintadois
	A= 'Evang�lica'
	B= 'Umbanda ou Candombl�.'
	C= 'Esp�rita kardecista.'
	D= 'Cat�lica.'
	E= 'Outra religi�o.'
	F= 'Acredita em Deus, mas n�o tem religi�o.'
	G= '� ateu / n�o acredita em Deus.';
 value  $Qcemtrintatres
	A= 'Mais de uma vez por semana.'
	B= '1 vez por semana.'
	C= '1 vez por m�s.'
	D= 'Somente em ocasi�es especiais.'
	E= 'Nunca.';
 value  $Qcemtrintaquatro
	A= 'Sozinho(a)'
	B= 'Meus amigos da escola, minha turma'
	C= 'Meus amigos de fora da escola'
	D= 'Meus irm�os/minha fam�lia/marido/esposa/filhos'
	E= 'S� com o namorado(a)';
 value  $Qcemtrintacinco
	A= 'Assisto a programas de TV.'
	B= 'Leio livros/revistas, escuto m�sica.'
	C= 'Vou ao shopping.'
	D= 'Vou � igreja.'
	E= 'Saio com amigos.'
	F= 'Acesso � Internet.'
	G= 'Nenhum desses itens.';
 value  $Qcemtrintaseis
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtrintasete	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtrintaoito	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtrintanove	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarenta	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentaum	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentadois	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemquarentatres
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemquarentaquatro	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemquarentacinco	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemquarentaseis	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemquarentasete	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemquarentaoito	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemquarentanove	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquenta	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentaum	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentadois	
	A= 'Muito'
	B= 'Pouco'
	C= 'N�o me interesso';
 value  $Qcemcinquentatres
	A= 'O meio ambiente'
	B= 'A Aids e as doen�as sem cura'
	C= 'O racismo e o desrespeito �s pessoas de outra ra�a ou religi�o'
	D= 'A pobreza, as favelas, os meninos de rua'
	E= 'As drogas e a viol�ncia'
	F= 'A situa��o econ�mica do pa�s';
 value  $Qcemcinquentaquatro
	A= 'O meio ambiente'
	B= 'A Aids e as doen�as sem cura'
	C= 'O racismo e o desrespeito �s pessoas de outra ra�a ou religi�o'
	D= 'A pobreza, as favelas, os meninos de rua'
	E= 'As drogas e a viol�ncia'
	F= 'A situa��o econ�mica do pa�s';
 value  $Qcemcinquentacinco
	A= 'Obten��o de um certificado de conclus�o de curso / obten��o de um diploma'
	B= 'Forma��o b�sica necess�ria para obter um emprego melhor'
	C= 'Condi��es de melhorar minha posi��o no emprego atual'
	D= 'Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E= 'Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer v�rias pessoas'
	G= 'Atender � expectativa de meus pais sobre meus estudos';
 value  $Qcemcinquentaseis
	A= 'Obten��o de um certificado de conclus�o de curso / obten��o de um diploma'
	B= 'Forma��o b�sica necess�ria para obter um emprego melhor'
	C= 'Condi��es de melhorar minha posi��o no emprego atual'
	D= 'Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E= 'Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer v�rias pessoas'
	G= 'Atender � expectativa de meus pais sobre meus estudos';
 value  $Qcemcinquentasete
	A= 'Obten��o de um certificado de conclus�o de curso / obten��o de um diploma'
	B= 'Forma��o b�sica necess�ria para obter um emprego melhor'
	C= 'Condi��es de melhorar minha posi��o no emprego atual'
	D= 'Obten��o de cultura geral / amplia��o de minha forma��o pessoal'
	E= 'Forma��o b�sica necess�ria para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer v�rias pessoas'
	G= 'Atender � expectativa de meus pais sobre meus estudos';
 value  $Qcemcinquentaoito
	A= 'J� conclui o ensino m�dio'
	B= 'Prestar vestibular e continuar os estudos no ensino superior'
	C= 'Procurar um emprego'
	D= 'Prestar vestibular e continuar a trabalhar'
	E= 'Fazer curso(s) profissionalizante(s) e me preparar para o trabalho'
	F= 'Trabalhar por conta pr�pria / trabalhar em neg�cio da fam�lia'
	G= 'Trabalhar em atividade ligada � comunidade ind�gena'
	H= 'Ainda n�o decidiu';
 value  $Qcemcinquentanove
	A= 'Gostaria de ter um diploma universit�rio para conseguir um bom emprego'
	B= 'Gostaria de prestar um concurso e trabalhar no setor p�blico'
	C= 'Gostaria de ganhar dinheiro em meu pr�prio neg�cio'
	D= 'Gostaria de ter um emprego'
	E= 'N�o planejei'
	F= 'Outro plano';
 value  $Qcemsessenta
	A= 'Ainda n�o escolhi'
	B= 'Profiss�o ligada �s Engenharias / Ci�ncias Tecnol�gicas'
	C= 'Profiss�o ligada �s Ci�ncias Humanas'
	D= 'Profiss�o ligada �s Artes'
	E= 'Profiss�o ligadas �s Ci�ncias Biol�gicas e de Sa�de'
	F= 'Professor(a) de Ensino Fundamental e M�dio (1� e 2� graus)'
	G= 'N�o vou seguir nenhuma profiss�o';
 value  $Qcemsessentaum
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'N�o ajudou';
 value  $Qcemsessentadois
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'N�o ajudou';
 value  $Qcemsessentatres	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'N�o ajudou';
 value  $Qcemsessentaquatro	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'N�o ajudou';
 value  $Qcemsessentacinco	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'N�o ajudou';
 value  $Qcemsessentaseis	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'N�o ajudou';
 value  $Qcemsessentasete	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'N�o ajudou';
 value  $Qcemsessentaoito	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'N�o ajudou';
 value  $Qcemsessentanove
	A= 'Sim, estou estudando no momento atual'
	B= 'Sim, mas n�o estou estudando no momento atual'
	C= 'N�o';
 value  $Qcemsetenta
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentaum		
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentadois	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentatres	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentaquatro	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentacinco	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentaseis	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentasete	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentaoito	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemsetentanove	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitenta	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitentaum	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitentadois	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitentatres	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitentaquatro	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitentacinco	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitentaseis	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitentasete	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemoitentaoito	
	A= 'Sim'
	B= 'N�o';

run;


DATA WORK.DADOS_ENEM_2003;
INFILE 'C:\MICRODADOS_ENEM_2003.csv' /*local do arquivo*/
        LRECL=1540
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
			NU_INSCRICAO       : BEST8.
			NU_ANO       : BEST8.
			TP_FAIXA_ETARIA       : $char2.
			TP_SEXO       : $char1.
			CO_MUNICIPIO_RESIDENCIA       : BEST8.
			NO_MUNICIPIO_RESIDENCIA       : $char50.
			CO_UF_RESIDENCIA       : BEST8.
			SG_UF_RESIDENCIA       : $char2.
			TP_ST_CONCLUSAO       : $char1.
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
			Q6       : $char1.
			Q7       : $char1.
			Q8       : $char1.
			Q9       : $char1.
			Q10       : $char1.
			Q11       : $char1.
			Q12       : $char1.
			Q13       : $char1.
			Q14       : $char1.
			Q15       : $char1.
			Q16       : $char1.
			Q17       : $char1.
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
			Q30       : $char1.
			Q31       : $char1.
			Q32       : $char1.
			Q33       : $char1.
			Q34       : $char1.
			Q35       : $char1.
			Q36       : $char1.
			Q37       : $char1.
			Q38       : $char1.
			Q39       : $char1.
			Q40       : $char1.
			Q41       : $char1.
			Q42       : $char1.
			Q43       : $char1.
			Q44       : $char1.
			Q45       : $char1.
			Q46       : $char1.
			Q47       : $char1.
			Q48       : $char1.
			Q49       : $char1.
			Q50       : $char1.
			Q51       : $char1.
			Q52       : $char1.
			Q53       : $char1.
			Q54       : $char1.
			Q55       : $char1.
			Q56       : $char1.
			Q57       : $char1.
			Q58       : $char1.
			Q59       : $char1.
			Q60       : $char1.
			Q61       : $char1.
			Q62       : $char1.
			Q63       : $char1.
			Q64       : $char1.
			Q65       : $char1.
			Q66       : $char1.
			Q67       : $char1.
			Q68       : $char1.
			Q69       : $char1.
			Q70       : $char1.
			Q71       : $char1.
			Q72       : $char1.
			Q73       : $char1.
			Q74       : $char1.
			Q75       : $char1.
			Q76       : $char1.
			Q77       : $char1.
			Q78       : $char1.
			Q79       : $char1.
			Q80       : $char1.
			Q81       : $char1.
			Q82       : $char1.
			Q83       : $char1.
			Q84       : $char1.
			Q85       : $char1.
			Q86       : $char1.
			Q87       : $char1.
			Q88       : $char1.
			Q89       : $char1.
			Q90       : $char1.
			Q91       : $char1.
			Q92       : $char1.
			Q93       : $char1.
			Q94       : $char1.
			Q95       : $char1.
			Q96       : $char1.
			Q97       : $char1.
			Q98       : $char1.
			Q99       : $char1.
			Q100       : $char1.
			Q101       : $char1.
			Q102       : $char1.
			Q103       : $char1.
			Q104       : $char1.
			Q105       : $char1.
			Q106       : $char1.
			Q107       : $char1.
			Q108       : $char1.
			Q109       : $char1.
			Q110       : $char1.
			Q111       : $char1.
			Q112       : $char1.
			Q113       : $char1.
			Q114       : $char1.
			Q115       : $char1.
			Q116       : $char1.
			Q117       : $char1.
			Q118       : $char1.
			Q119       : $char1.
			Q120       : $char1.
			Q121       : $char1.
			Q122       : $char1.
			Q123       : $char1.
			Q124       : $char1.
			Q125       : $char1.
			Q126       : $char1.
			Q127       : $char1.
			Q128       : $char1.
			Q129       : $char1.
			Q130       : $char1.
			Q131       : $char1.
			Q132       : $char1.
			Q133       : $char1.
			Q134       : $char1.
			Q135       : $char1.
			Q136       : $char1.
			Q137       : $char1.
			Q138       : $char1.
			Q139       : $char1.
			Q140       : $char1.
			Q141       : $char1.
			Q142       : $char1.
			Q143       : $char1.
			Q144       : $char1.
			Q145       : $char1.
			Q146       : $char1.
			Q147       : $char1.
			Q148       : $char1.
			Q149       : $char1.
			Q150       : $char1.
			Q151       : $char1.
			Q152       : $char1.
			Q153       : $char1.
			Q154       : $char1.
			Q155       : $char1.
			Q156       : $char1.
			Q157       : $char1.
			Q158       : $char1.
			Q159       : $char1.
			Q160       : $char1.
			Q161       : $char1.
			Q162       : $char1.
			Q163       : $char1.
			Q164       : $char1.
			Q165       : $char1.
			Q166       : $char1.
			Q167       : $char1.
			Q168       : $char1.
			Q169       : $char1.
			Q170       : $char1.
			Q171       : $char1.
			Q172       : $char1.
			Q173       : $char1.
			Q174       : $char1.
			Q175       : $char1.
			Q176       : $char1.
			Q177       : $char1.
			Q178       : $char1.
			Q179       : $char1.
			Q180       : $char1.
			Q181       : $char1.
			Q182       : $char1.
			Q183       : $char1.
			Q184       : $char1.
			Q185       : $char1.
			Q186       : $char1.
			Q187       : $char1.
			Q188       : $char1.
;

ATTRIB TP_FAIXA_ETARIA FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB TP_SEXO FORMAT=$SEXO10.;
ATTRIB TP_ST_CONCLUSAO FORMAT=$CONCLUSAO.;
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

LABEL
NU_INSCRICAO = 'N�mero de inscri��o no ENEM.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA = 'Faixa et�ria do inscrito'
TP_SEXO = 'Sexo do inscrito'
CO_MUNICIPIO_RESIDENCIA = 'C�digo do Munic�pio em que o inscrito mora:'
NO_MUNICIPIO_RESIDENCIA = 'Nome do munic�pio em que o inscrito mora'
CO_UF_RESIDENCIA = 'C�digo da Unidade da Federa��o da residencia do inscrito'
SG_UF_RESIDENCIA = 'Sigla da Unidade da Federa��o da residencia do inscrito'
TP_ST_CONCLUSAO = 'Situa��o de conclus�o do Ensino M�dio'
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
Q6 = 'Mora sozinho(a)'
Q7 = 'Mora com o pai'
Q8 = 'Mora com a m�e'
Q9 = 'Mora com esposa / marido / companheiro(a)'
Q10 = 'Mora com filho(s)'
Q11 = 'Mora com irm�o(s)'
Q12 = 'Mora com outro(s) parente(s)'
Q13 = 'Mora com amigo(s) ou colega(s)'
Q14 = 'Quantidade de pessoas que moram na casa'
Q15 = 'Quantos filhos tem'
Q16 = 'At� quando o pai estudou'
Q17 = 'At� quando a m�e estudou'
Q18 = '�rea que o pai trabalha ou trabalhou, na maior parte da vida'
Q19 = 'Qual a posi��o do pai neste trabalho, na maior parte do tempo'
Q20 = '�rea que a m�e trabalha ou trabalhou, na maior parte da vida'
Q21 = 'Qual a posi��o da m�e neste trabalho, na maior parte do tempo'
Q22 = 'Renda familiar (somando a do respondente e com a das pessoas que moram com ele)'
Q23 = 'Tem TV e quantas'
Q24 = 'Tem Videocassete e/ou DVD e quantos'
Q25 = 'Tem R�dio e quantos'
Q26 = 'Tem Microcomputador e quantos'
Q27 = 'Tem Autom�vel e quantos'
Q28 = 'Tem M�quina de lavar roupa e quantos'
Q29 = 'Tem Geladeira e quantas'
Q30 = 'Tem Telefone fixo e quantos'
Q31 = 'Tem Telefone celular e quantos'
Q32 = 'Tem Acesso � Internet e quantos'
Q33 = 'Tem TV por assinatura e quantas'
Q34 = 'Tem casa pr�pria'
Q35 = 'Se a casa � em rua cal�ada ou asfaltada'
Q36 = 'Se a casa tem �gua corrente de torneira'
Q37 = 'Se a casa tem eletricidade'
Q38 = 'Motivo para fazer o Enem'
Q39 = 'O motivo mais importante para se ter um trabalho'
Q40 = 'Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento'
Q41 = 'Trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)'
Q42 = 'Quantas horas trabalhava, durante o ensino m�dio (2� grau)'
Q43 = 'Com que finalidade trabalhava'
Q44 = 'Com que idade come�ou a exercer atividade remunerada'
Q45 = 'Se estiver trabalhando atualmente, qual a renda ou sal�rio mensal'
Q46 = 'Trabalha em alguma atividade para o qual se preparou'
Q47 = 'Em que trabalha atualmente'
Q48 = 'Qual a posi��o no trabalho'
Q49 = 'Quanto tempo est� trabalhando na atividade'
Q50 = 'Os conhecimentos no ensino m�dio foram adequados ao que o mercado de trabalho solicita'
Q51 = 'Os conhecimentos no ensino m�dio tiveram rela��o com a profiss�o que escolheu / que exerce'
Q52 = 'Os conhecimentos no ensino m�dio foram bem desenvolvidos, com aulas pr�ticas, laborat�rios, etc'
Q53 = 'Os conhecimentos no ensino m�dio proporcionaram cultura e conhecimento'
Q54 = 'Avalia��o de ter estudado e trabalhado, simultaneamente, durante o ensino m�dio'
Q55 = 'A escola que freq�enta ou freq�entou durante o ensino m�dio levou em conta que trabalhava ao mesmo tempo que estudava'
Q56 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o hor�rio flex�vel'
Q57 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse'
Q58 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recupera��o de notas'
Q59 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas'
Q60 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais din�micas, com did�tica diferenciada'
Q61 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revis�o da mat�ria aos  interessados'
Q62 = 'Como prova de considera��o por parte da escola em considera��o pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refei��o aos alunos'
Q63 = 'A escola deve oferecer hor�rio flex�vel para o aluno que trabalha'
Q64 = 'A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha'
Q65 = 'A escola deve oferecer programa de recupera��o de notas para o aluno que trabalha'
Q66 = 'A escola deve oferecer abono de faltas para o aluno que trabalha'
Q67 = 'A escola deve oferecer aulas mais din�micas, com did�tica diferenciada para o aluno que trabalha'
Q68 = 'A escola deve oferecer aulas de revis�o da mat�ria  aos alunos que interessados que trabalham'
Q69 = 'A escola deve oferecer fornecimento de refei��o para o aluno que trabalha'
Q70 = 'Anos que levou para concluir o ensino fundamental (1� grau)'
Q71 = 'Em que tipo de escola cursou o ensino fundamental (1� grau)'
Q72 = 'Em que ano concluiu ou concluir� o ensino m�dio (2� grau)'
Q73 = 'Quantos anos levou para cursas o ensino m�dio (2� grau)'
Q74 = 'Em que turno cursou ou esta cursando o ensino m�dio (2� grau)'
Q75 = 'Em que  tipo escola cursou ou est� cursando o ensino m�dio (2� grau)'
Q76 = 'Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)'
Q77 = 'Fez curso de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)'
Q78 = 'Fez curso de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)'
Q79 = 'Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)'
Q80 = 'Fez artes pl�sticas ou atividades art�sticas em geral fora da escola durante o ensino m�dio (2� grau)'
Q81 = 'Fez esportes, atividades f�sicas fora da escola durante o ensino m�dio (2� grau)'
Q82 = 'Com que freq��ncia l� jornais'
Q83 = 'Com que freq��ncia l� revistas de informa��o geral (Veja, Isto �, �poca, etc)'
Q84 = 'Com que freq��ncia l� revistas de humor / quadrinhos'
Q85 = 'Com que freq��ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc)'
Q86 = 'Com que freq��ncia l� romances, livros de fic��o'
Q87 = 'Avalia��o da escola que fez o ensino m�dio quanto o conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo'
Q88 = 'Avalia��o da escola que fez o ensino m�dio quanto a dedica��o dos professores para preparar aulas e atender aos alunos'
Q89 = 'Avalia��o da escola que fez o ensino m�dio quanto as iniciativas da escola para realizar excurs�es, estudos do meio'
Q90 = 'Avalia��o da escola que fez o ensino m�dio quanto a biblioteca  da escola'
Q91 = 'Avalia��o da escola que fez o ensino m�dio quanto as condi��es das salas de aula'
Q92 = 'Avalia��o da escola que fez o ensino m�dio quanto as condi��es dos laborat�rios'
Q93 = 'Avalia��o da escola que fez o ensino m�dio quanto o acesso a computadores e outros recursos de inform�tica'
Q94 = 'Avalia��o da escola que fez o ensino m�dio quanto o ensino de l�ngua estrangeira'
Q95 = 'Avalia��o da escola que fez o ensino m�dio quanto o interesse dos alunos'
Q96 = 'Avalia��o da escola que fez o ensino m�dio quanto o trabalho de grupo'
Q97 = 'Avalia��o da escola que fez o ensino m�dio quanto a pr�ticas de esportes'
Q98 = 'Avalia��o da escola que fez o ensino m�dio quanto a aten��o e o respeito dos funcion�rios'
Q99 = 'Avalia��o da escola que fez o ensino m�dio quanto a dire��o dela'
Q100 = 'Avalia��o da escola que fez o ensino m�dio quanto a organiza��o dos hor�rios de aulas'
Q101 = 'Avalia��o da escola que fez o ensino m�dio quanto a localiza��o dela'
Q102 = 'Avalia��o da escola que fez o ensino m�dio quanto a seguran�a (ilumina��o, policiamento, etc)'
Q103 = 'A escola em que estuda ou estudou realiza palestras / debates'
Q104 = 'A escola em que estuda ou estudou realiza jogos / esportes / campeonatos'
Q105 = 'A escola em que estuda ou estudou realiza teatro'
Q106 = 'A escola em que estuda ou estudou realiza coral'
Q107 = 'A escola em que estuda ou estudou realiza dan�a / m�sica'
Q108 = 'A escola em que estuda ou estudou realiza estudos do meio / passeios'
Q109 = 'A escola em que estuda ou estudou realiza feira de ci�ncias / feira cultural'
Q110 = 'A escola em que estuda ou estudou realiza festas / gincanas'
Q111 = 'De acordo com os ensinamentos no ensino m�dio, como considera o preparo para conseguir um emprego, exercer alguma atividade'
Q112 = 'Os(as) professores(as) t�m autoridade, firmeza'
Q113 = 'Os(as) professores(as) s�o distantes, t�m pouco envolvimento'
Q114 = 'Os(as) professores(as) t�m respeito'
Q115 = 'Os(as) professores(as) s�o indiferentes, ignoram sua exist�ncia'
Q116 = 'Os(as) professores(as) s�o preocupados(as) e dedicados(as)'
"Q117 = 'Os(as) professores(as) s�o
autorit�rios(as), r�gidos(as), abusam do poder'"
Q118 = 'Avalia��o sobre a escola quanto a liberdade de expressar a id�ias'
Q119 = 'Avalia��o sobre a escola quanto o respeito aos alunos'
Q120 = 'Avalia��o sobre a escola quanto a amizade e respeito entre alunos(as) e funcion�rios(as)'
Q121 = 'Avalia��o sobre a escola quanto a levar em conta suas opini�es'
Q122 = 'Avalia��o sobre a escola quanto a discuss�o dos problemas da atualidade nas aulas'
Q123 = 'Avalia��o sobre a escola quanto a conviv�ncia entre alunos'
Q124 = 'Avalia��o sobre a escola quanto a organiza��o para apoiar a resolu��o de problemas de relacionamento entre alunos'
Q125 = 'Avalia��o sobre a escola quanto a iniciativa para apoiar a resolu��o de problemas de relacionamento entre alunos e professores'
Q126 = 'Avalia��o sobre a escola quanto a levar em conta seus problemas pessoais e familiares'
Q127 = 'Avalia��o sobre a escola quanto a realiza��o de Programas e Palestras contra drogas'
Q128 = 'Avalia��o sobre a escola quanto a capacidade relacionar os conte�dos das mat�rias com o cotidiano'
Q129 = 'Avalia��o sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu'
Q130 = 'Nota para a forma��o que obteve no ensino m�dio'
Q131 = 'O que o candidato acha que mais faz falta em sua forma��o pessoal para enfrentar a vida'
Q132 = 'Religi�o do candidato'
Q133 = 'Frequ�ncia que vai � Igreja'
Q134 = 'Pessoas com quem o candidato mais passa seu tempo livre ,depois da escola ou do trabalho, nos fins de semana?'
Q135 = 'O que o candidato faz com maior freq��ncia no tempo livre, depois da escola, do trabalho ou nos finais de semana?'
Q136 = 'Participa de um Gr�mio estudantil'
Q137 = 'Participa de um Sindicato ou Associa��o Profissional'
Q138 = 'Participa de um Grupo de bairro ou associa��o comunit�ria'
Q139 = 'Participa de uma Igreja ou grupo religioso'
Q140 = 'Participa de um partido pol�tico'
Q141 = 'Participa de uma Ong ou movimento social'
Q142 = 'Participa de um clube recreativo ou associa��o esportiva'
Q143 = 'O quanto voc� se interessa pela pol�tica nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da Rep�blica, etc'
Q144 = 'O quanto voc� se interessa pela pol�tica dos outros pa�ses'
Q145 = 'O quanto voc� se interessa pela economia nacional, a quest�o da infla��o,  o plano real'
Q146 = 'O quanto voc� se interessa a pol�tica da sua cidade, o prefeito, os vereadores'
Q147 = 'O quanto voc� se interessa por esportes'
Q148 = 'O quanto voc� se interessa pelas quest�es sobre o meio ambiente, polui��o, etc'
Q149 = 'O quanto voc� se interessa pelas quest�es sociais como a desigualdade, a pobreza, o desemprego, a mis�ria'
Q150 = 'O quanto voc� se interessa pelas quest�es sobre artes, teatro, cinema'
Q151 = 'O quanto voc� se interessa sobre a quest�o das drogas e suas conseq��ncias'
Q152 = 'O quanto voc� se interessa sobre assuntos sobre seu �dolo (cantor/a, artista, ou conjunto musical)'
Q153 = 'Qual dos pontos te preocupa em 1� lugar no momento'
Q154 = 'Qual dos pontos te preocupa em 2� lugar no momento'
Q155 = '� a mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)'
Q156 = '� a segunda mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)'
Q157 = '� a terceira mais importante contribui��o que obteve ao realizar o ensino m�dio(2� grau)'
Q158 = 'A principal decis�o que vai tomar quando concluir o ensino m�dio (2� grau)'
Q159 = 'E a m�dio prazo, daqui a uns 4 ou 5 anos j� planejou o que gostaria que acontecesse'
Q160 = 'Que profiss�o escolheu seguir'
Q161 = 'Meus pais ajudaram a tomar minha decis�o sobre minha profiss�o'
Q162 = 'A escola ajudou a tomar minha decis�o sobre minha profiss�o'
Q163 = 'Meus amigos ajudaram a tomar minha decis�o sobre minha profiss�o'
Q164 = 'Informa��es gerais, revistas, jornais, TV ajudaram a tomar minha decis�o sobre minha profiss�o'
Q165 = 'Meu trabalho ajudou a tomar minha decis�o sobre minha profiss�o'
Q166 = 'Est�mulo financeiro ajudou a tomar minha decis�o sobre minha profiss�o'
Q167 = 'Facilidade de obter emprego ajudou a tomar minha decis�o sobre minha profiss�o'
Q168 = 'Minha identifica��o com a profiss�o me ajudou a tomar minha decis�o sobre minha profiss�o'
Q169 = 'Continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)'
Q170 = 'Est� freq�entando um curso profissionalizante'
Q171 = 'Est� freq�entando um curso preparat�rio para vestibular'
Q172 = 'Est� freq�entando um curso superior'
Q173 = 'Est� freq�entando um curso de l�ngua estrangeira'
Q174 = 'Est� freq�entando um curso de computa��o ou inform�tica'
Q175 = 'Est� freq�entando outro curso'
Q176 = 'Concluiu curso profissionalizante'
Q177 = 'Concluiu curso preparat�rio para vestibular, mas n�o ingressei no curso superior'
Q178 = 'Concluiu curso superior'
Q179 = 'Fiz curso superior mas n�o me formei'
Q180 = 'Concluiu curso de l�ngua estrangeira'
Q181 = 'Concluiu curso de computa��o ou inform�tica'
Q182 = 'Concluiu outro curso'
Q183 = 'O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q184 = 'O curso preparat�rio para vestibular fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q185 = 'O curso superior fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q186 = 'O curso de l�ngua estrangeira fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q187 = 'O curso de computa��o ou inform�tica fez mais falta para minha vida, depois que terminei o ensino m�dio'
Q188 = 'Outro curso fez mais falta para minha vida, depois que terminei o ensino m�dio'
;
IF NU_INSCRICAO = . THEN DELETE;

RUN;