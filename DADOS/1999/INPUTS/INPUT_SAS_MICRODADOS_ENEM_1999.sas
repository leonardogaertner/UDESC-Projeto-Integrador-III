
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Estudos, Pesquisas e Dissemina��o				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_1999.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 1999       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_1999.CSV no diret�rio C:\ do computador.			      */
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
		2='Concluir� em 1999'
		3='Concluir� ap�s 1999'
		4='N�o conclu� e n�o estou cursando o Ensino M�dio';
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
	 value  $Qum
		A= 'Feminino'
		B= 'Masculino';
	 value  $Qdois
		A= 'Ap�s 1981'
		B= '1981'
		C= '1980'
		D= '1979'
		E= '1978'
		F= '1977'
		G= 'Entre 1973 e 1976'
		H= 'Antes de 1973';
	 value  $Qtres
		A= 'Branco(a).'
		B= 'Pardo(a) / mulato(a).'
		C= 'Negro(a).'
		D= 'Amarelo(a) (De origem asi�tica)'
		E= 'Ind�gena.';
	 value  $Qquatro
		A= 'Solteiro(a)'
		B= 'Casado(a) / mora com um(a) companheiro(a)'
		C= 'Separado(a) / divorciado(a) / desquitado(a)'
		D= 'Vi�vo(a)';
	 value  $Qcinco
		A= 'Em casa ou apartamento, com sua fam�lia '
		B= 'Em casa ou apartamento, sozinho(a)'
		C= 'Em quarto ou c�modo alugado, sozinho(a)'
		D= 'Em habita��o coletiva: hotel, hospedaria, quartel, pensionato, rep�blica, etc.'
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
		A= 'Sim'
		B= 'N�o';
	 value  $Qquinze	
		A= 'Sim'
		B= 'N�o';
	 value  $Qdezesseis
		A= 'Moro sozinho '
		B= 'Duas pessoas '
		C= 'Tr�s pessoas '
		D= 'Quatro pessoas '
		E= 'Cinco pessoas '
		F= 'Seis pessoas'
		G= 'Mais de seis pessoas.';
	 value  $Qdezessete
		A= 'N�o tenho filhos '
		B= 'Um filho'
		C= 'Dois filhos '
		D= 'Tr�s filhos'
		E= 'Quatro ou mais filhos';
	 value  $Qdezoito
		A= 'N�o estudou'
		B= 'Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)'
		C= 'Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)'
		D= 'Ensino M�dio (2� grau) incompleto '
		E= 'Ensino M�dio (2� grau) completo '
		F= 'Ensino Superior incompleto '
		G= 'Ensino Superior completo'
		H= 'P�s-gradua��o (mestrado, especializa��o, doutorado)'
		I= 'N�o sei';
	 value  $Qdezenove
		A= 'N�o estudou'
		B= 'Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)'
		C= 'Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)'
		D= 'Ensino M�dio (2� grau) incompleto '
		E= 'Ensino M�dio (2� grau) completo '
		F= 'Ensino Superior incompleto '
		G= 'Ensino Superior completo'
		H= 'P�s-gradua��o (mestrado, especializa��o, doutorado)'
		I= 'N�o sei';
	 value  $Qvinte
		A= 'Na agricultura, no campo, em fazenda, na pesca '
		B= 'Na ind�stria'
		C= 'No com�rcio, bancos, transporte ou outros servi�os'
		D= 'Como empregado em casa de fam�lia'
		E= 'Como funcion�rio do governo federal, do estado ou munic�pio, ou militar'
		F= 'Profissional liberal, professor ou t�cnico de n�vel superior'
		G= 'No lar'
		H= 'Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa'
		I= 'N�o trabalha'
		J= 'N�o sei';
	 value  $Qvinteum
		A= 'Gerente, administrador ou diretor de empresa privada'
		B= 'Funcion�rio p�blico (federal, estadual, municipal), com fun��es de dire��o'
		C= 'Militar (guarda civil, pol�cia estadual ou For�as Armadas), com posto de comando'
		D= 'Empregado no setor privado, com carteira assinada'
		E= 'Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o'
		F= 'Militar (guarda civil, pol�cia estadual ou For�as Armadas), sem posto de comando'
		G= 'Trabalho tempor�rio, informal, sem carteira assinada '
		H= 'Trabalha por conta pr�pria'
		I= 'Desempregado'
		J= 'Aposentado '
		K= 'N�o trabalha'
		L= 'Outra situa��o';
	 value  $Qvintedois
		A= 'Na agricultura, no campo, em fazenda, na pesca '
		B= 'Na ind�stria'
		C= 'No com�rcio, bancos, transporte e outros servi�os'
		D= 'Como empregada em casa de fam�lia'
		E= 'Como funcion�ria do governo federal, do estado ou munic�pio, ou militar'
		F= 'Como profissional liberal, professor ou t�cnico de n�vel superior'
		G= 'No lar'
		H= 'Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa'
		I= 'N�o trabalha'
		J= 'N�o sei';
	 value  $Qvintetres
		A= 'Gerente, administrador ou diretor de empresa privada'
		B= 'Funcion�rio p�blico (federal, estadual ou municipal), com fun��es de dire��o'
		C= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando'
		D= 'Empregado no setor privado, com carteira assinada'
		E= 'Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o'
		F= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando'
		G= 'Trabalho tempor�rio, informal, sem carteira assinada '
		H= 'Trabalho por conta pr�pria'
		I= 'Desempregado '
		J= 'Aposentado '
		K= 'N�o trabalha'
		L= 'Outra situa��o';
	 value  $Qvintequatro
		A= 'At� 1 sal�rio m�nimo (at� R$ 136,00)'
		B= 'De 1 a 2 sal�rios m�nimos (R$ 137,00 a R$ 272,00)'
		C= 'De 2 a 5 sal�rios m�nimos (R$ 273,00 a R$ 680,00)'
		D= 'De 5 a 10 sal�rios m�nimos (R$ 681,00 a R$ 1.360,00)'
		E= 'De 10 a 30 sal�rios m�nimos (R$ 1.361,00 a R$ 4.080,00)'
		F= 'De 30 a 50 sal�rios m�nimos (R$ 4.081,00 a R$ 6.800,00)'
		G= 'Mais de 50 sal�rios m�nimos (mais de R$ 6.800,00)'
		H= 'Nenhuma renda';
	 value  $Qvintecinco
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'N�o tem';
	 value  $Qvinteseis	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'N�o tem';
	 value  $Qvintesete	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'N�o tem';
	 value  $Qvinteoito	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'N�o tem';
	 value  $Qvintenove	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'N�o tem';
	 value  $Qtrinta	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'N�o tem';
	 value  $Qtrintaum	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'N�o tem';
	 value  $Qtrintadois
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'N�o tem';
	 value  $Qtrintatres
		A= '1'
		B= '2'
		C= '3 ou + '
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
		A= 'Sim'
		B= 'N�o';
	 value  $Qtrintanove	
		A= 'Sim'
		B= 'N�o';
	 value  $Qquarenta
		A= 'Sim'
		B= 'Nunca trabalhou'
		C= 'Nunca trabalhou, mas est� procurando trabalho';
	 value  $Qquarentaum
		A= 'Sim, todo o tempo'
		B= 'Sim, pelo menos durante um ano '
		C= 'Sim, mas s� eventualmente'
		D= 'N�o';
	 value  $Qquarentadois
		A= 'Sem jornada fixa, at� 10 horas semanais '
		B= 'De 11 a 20 horas semanais'
		C= 'De 21 a 30 horas semanais'
		D= 'De 31 a 40 horas semanais';
	 value  $Qquarentatres
		A= 'Para ajudar meus pais '
		B= 'Para meu pr�prio sustento'
		C= 'Para as duas finalidades';
	 value  $Qquarentaquatro
		A= 'Antes dos 14 anos '
		B= 'Entre 14 e 16 anos'
		C= 'Entre 17 e 18 anos'
		D= 'Ap�s 18 anos';
	 value  $Qquarentacinco
		A= 'At� 1 sal�rio m�nimo (at� R$ 136,00)'
		B= 'De 1 a 2 sal�rios m�nimos (R$ 137,00 a R$ 272,00)'
		C= 'De 2 a 5 sal�rios m�nimos (R$ 273,00 a R$ 680,00)'
		D= 'De 5 a 10 sal�rios m�nimos (R$ 681,00 a R$ 1.360,00)'
		E= 'De 10 a 30 sal�rios m�nimos (R$ 1.361,00 a R$ 4.080,00)'
		F= 'De 30 a 50 sal�rios m�nimos (R$ 4.081,00 a R$ 6.800,00)'
		G= 'Mais de 50 sal�rios m�nimos (mais de R$ 6.800,00)'
		H= 'N�o estou trabalhando';
	 value  $Qquarentaseis
		A= 'Para ajudar meus pais '
		B= 'Para meu pr�prio sustento'
		C= 'Para as duas finalidades';
	 value  $Qquarentasete
		A= 'Na agricultura (campo, fazenda, pesca). '
		B= 'Na ind�stria.'
		C= 'No com�rcio, banco, transporte ou outros servi�os.'
		D= 'Como empregado(a) em casa de fam�lia.'
		E= 'Como funcion�rio(a) do governo federal, do estado ou do munic�pio, ou militar.'
		F= 'Como profissional liberal, professor(a) ou t�cnico(a) de n�vel superior.'
		G= 'No lar.'
		H= 'Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa'
		I= 'N�o trabalha';
	 value  $Qquarentaoito
		A= 'Gerente, administrador(a) ou diretor(a) de empresa privada.'
		B= 'Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), com fun��es de dire��o.'
		C= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando'
		D= 'Empregado(a) no setor privado, com carteira assinada'
		E= 'Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), sem fun��o de dire��o.'
		F= 'Trabalho tempor�rio, informal, sem carteira assinada'
		G= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando.'
		H= 'Trabalho por conta pr�pria '
		I= 'Desempregado(a) '
		J= 'Aposentado(a)'
		K= 'N�o trabalha'
		L= 'Outra situa��o';
	 value  $Qquarentanove
		A= 'Sim'
		B= 'N�o, porque n�o consegui trabalho na minha profiss�o'
		C= 'N�o me preparei para um trabalho em espec�fico/minha forma��o foi geral';
	 value  $Qcinquenta
		A= 'Menos de 1 ano '
		B= 'Entre 1 e 2 anos'
		C= 'Entre 2 e 4 anos'
		D= 'Mais de 4 anos';
	 value  $Qcinquentaum
		A= 'Menos de 8 anos '
		B= '8 anos'
		C= '9 anos'
		D= '10 anos'
		E= '11 anos'
		F= 'Mais de 11 anos';
	 value  $Qcinquentadois
		A= 'Somente em escola p�blica'
		B= 'Parte em escola p�blica e parte em escola particular '
		C= 'Somente em escola particular';
	 value  $Qcinquentatres
		A= 'Vou conclu�-lo no segundo semestre de 1999 '
		B= 'No primeiro semestre de 1999'
		C= '1998'
		D= '1997'
		E= '1996'
		F= 'Entre 1992 e1995'
		G= 'Antes de 1992';
	 value  $Qcinquentaquatro
		A= 'Menos de 3 anos '
		B= '3 anos'
		C= '4 anos'
		D= '5 anos'
		E= '6 anos'
		F= 'Mais de 6 anos';
	 value  $Qcinquentacinco
		A= 'Somente no turno diurno'
		B= 'Parte no turno diurno e parte no turno noturno '
		C= 'Somente no turno noturno';
	 value  $Qcinquentaseis
		A= 'Somente em escola p�blica'
		B= 'Parte em escola p�blica e parte em escola particular '
		C= 'Somente em escola particular';
	 value  $Qcinquentasete
		A= 'Ensino regular'
		B= 'Ensino supletivo';
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
		B= 'Mais ou menos '
		C= 'Pouco'
		D= 'N�o';
	 value  $Qsessentacinco
		A= 'Frequentemente (todo dia ou quase todo dia) '
		B= 'Eventualmente'
		C= 'Nunca';
	 value  $Qsessentaseis	
		A= 'Frequentemente (todo dia ou quase todo dia) '
		B= 'De vez em quando'
		C= 'Nunca';
	 value  $Qsessentasete	
		A= 'Frequentemente (todo dia ou quase todo dia) '
		B= 'De vez em quando'
		C= 'Nunca';
	 value  $Qsessentaoito	
		A= 'Frequentemente (todo dia ou quase todo dia) '
		B= 'De vez em quando'
		C= 'Nunca';
	 value  $Qsessentanove	
		A= 'Frequentemente (todo dia ou quase todo dia) '
		B= 'De vez em quando'
		C= 'Nunca';
	 value  $Qsetenta
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'P�ssimo';
	 value  $Qsetentaum
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'P�ssimo';
	 value  $Qsetentadois	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'P�ssimo';
	value  $Qsetentatres	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'P�ssimo';
	 value  $Qsetentaquatro	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'P�ssimo';
	 value  $Qsetentacinco	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'P�ssimo';
	value  $Qsetentaseis	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'P�ssimo';
	 value  $Qsetentasete
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'N�o';
	 value  $Qsetentaoito	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'N�o';
	 value  $Qsetentanove	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'N�o';
	 value  $Qoitenta	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'N�o';
	 value  $Qoitentaum	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'N�o';
	 value  $Qoitentadois	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'N�o';
	 value  $Qoitentatres	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'N�o';
	 value  $Qoitentaquatro	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'N�o';
	 value  $Qoitentacinco
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qoitentaseis	
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qoitentasete	
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qoitentaoito	
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qoitentanove	
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qnoventa
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qnoventaum
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qnoventadois	
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qnoventatres	
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qnoventaquatro	
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qnoventacinco	
		A= 'Muito'
		B= 'Um pouco'
		C= 'N�o me interesso';
	 value  $Qnoventaseis
		A= 'Com frequ�ncia '
		B= '�s vezes'
		C= 'N�o participo';
	 value  $Qnoventasete	
		A= 'Com frequ�ncia '
		B= '�s vezes'
		C= 'N�o participo';
	 value  $Qnoventaoito	
		A= 'Com frequ�ncia '
		B= '�s vezes'
		C= 'N�o participo';
	 value  $Qnoventanove	
		A= 'Com frequ�ncia '
		B= '�s vezes'
		C= 'N�o participo';
	 value  $Qcem	
		A= 'Com frequ�ncia '
		B= '�s vezes'
		C= 'N�o participo';
	 value  $Qcemum	
		A= 'Com frequ�ncia '
		B= '�s vezes'
		C= 'N�o participo';
	 value  $Qcemdois
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemtres	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemquatro	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemcinco	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemseis	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemsete	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemoito	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemnove	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemdez	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemonze	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemdoze	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemtreze	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem import�ncia';
	 value  $Qcemcatorze
		A= 'Melhorou muito '
		B= 'Melhorou um pouco '
		C= 'N�o melhorou '
		D= 'Piorou'
		E= 'Piorou muito';
	 value  $Qcemquinze
		A= 'Melhorou muito '
		B= 'Melhorou um pouco '
		C= 'N�o melhorou '
		D= 'Piorou'
		E= 'Piorou muito';
	 value  $Qcemdezesseis
		A= 'Sim, estou estudando no momento atual'
		B= 'Sim, mas n�o estou estudando no momento atual '
		C= 'N�o';
	 value  $Qcemdezessete
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemdezoito	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemdezenove	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvinte
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvinteum	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvintedois	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvintetres	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvintequatro
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvintecinco	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvinteseis	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvintesete	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvinteoito	
		A= 'Sim'
		B= 'N�o';
	 value  $Qcemvintenove	
		A= 'Sim'
		B= 'N�o';

run;


DATA WORK.DADOS_ENEM_1999;
INFILE 'C:\MICRODADOS_ENEM_1999.csv' /*local do arquivo*/
        LRECL=1540
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
			NU_INSCRICAO       : $char8.
			NU_ANO       : BEST8.
			TP_FAIXA_ETARIA  : $CHAR2.
			TP_SEXO       : $char1.
			CO_MUNICIPIO_RESIDENCIA       : BEST8.
			NO_MUNICIPIO_RESIDENCIA       : $char50.
			CO_UF_RESIDENCIA       : BEST8.
			SG_UF_RESIDENCIA       : $char2.
			TP_ST_CONCLUSAO       : $char1.
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
;

ATTRIB TP_FAIXA_ETARIA FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB TP_SEXO FORMAT=$SEXO10.;
ATTRIB TP_PRESENCA FORMAT=$PRESENCA20.;
ATTRIB TP_ST_CONCLUSAO FORMAT=$CONCLUSAO.;
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
Q1 = 'Seu sexo'
Q2 = 'Ano em que voc� nasceu'
Q3 = 'Como  voc� se considera'
Q4 = 'Qual o seu estado civil'
Q5 = 'Como voc� mora'
Q6 = 'Quem mora com voc�?: moro sozinho(a)'
Q7 = 'Quem mora com voc�?:  pai'
Q8 = 'Quem mora com voc�?:  m�e'
Q9 = 'Quem mora com voc�?: mulher, marido, companheiro ou companheira.'
Q10 = 'Quem mora com voc�?:  filhos'
Q11 = 'Quem mora com voc�?:  irm�os'
Q12 = 'Quem mora com voc�?: outros parentes'
Q13 = 'Quem mora com voc�?:  amigos ou colegas'
Q14 = 'Quem mora com voc�?:  pessoas'
Q15 = 'Quem mora com voc�?: Outra situa��o.'
Q16 = 'Quantas pessoas moram em sua casa?'
Q17 = 'Quantos filhos tem'
Q18 = 'At� quanto seu pai estudou?'
Q19 = 'At� quanto sua m�e estudou?'
Q20 = 'Em que seu pai trabalha ou trabalhou, na maior parte da vida?'
Q21 = 'Qual a posi��o do seu pai neste trabalho, na maior parte do tempo'
Q22 = 'Em que sua m�e trabalha ou trabalhou, na maior parte da vida?'
Q23 = 'Qual a posi��o da sua m�e neste trabalho, na maior parte do tempo?'
Q24 = 'Qual a renda total do seu domic�lio?'
Q25 = 'Quais e quanto itens  sua casa tem?: autom�vel'
Q26 = 'Quais e quanto itens  sua casa tem?: TV em cores'
Q27 = 'Quais e quanto itens  sua casa tem?: microcomputador'
Q28 = 'Quais e quanto itens  sua casa tem?: videocassete'
Q29 = 'Quais e quanto itens  sua casa tem?:  m�quina de lavar roupa'
Q30 = 'Quais e quanto itens  sua casa tem?: aspirador de p�'
Q31 = 'Quais e quanto itens  sua casa tem?: geladeira'
Q32 = 'Quais e quanto itens  sua casa tem?: Freezer'
Q33 = 'Quais e quanto itens  sua casa tem?:Telefone'
Q34 = 'Quais e quanto itens  sua casa tem?: tem casa pr�pria'
Q35 = 'Quais e quanto itens  sua casa tem?: mora de aluguel'
Q36 = 'Quais e quanto itens  sua casa tem?: est� em rua urbanizada (com cal�amento ou asfaltada)'
Q37 = 'Quais e quanto itens  sua casa tem?:  tem �gua corrente de torneira'
Q38 = 'Quais e quanto itens  sua casa tem?:  tem eletricidade'
Q39 = 'Quais e quanto itens  sua casa tem?: empregada dom�stica mensalista'
Q40 = 'Voc� trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento?'
Q41 = 'Voc� trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)?'
Q42 = 'Quantas horas voc� trabalhava por dia, durante seus estudos no ensino m�dio (2� grau)?'
Q43 = 'Com que finalidade voc� trabalhava, enquanto estudava no ensino m�dio (antigo 2� grau)?'
Q44 = 'Se voc� trabalhava durante seus estudos no ensino m�dio, com que idade come�ou a exercer atividade remunerada'
Q45 = 'Se estiver trabalhando atualmente, qual a renda ou sal�rio mensal'
Q46 = 'Por que trabalha atualmente:'
Q47 = 'Em que voc� trabalha atualmente?'
Q48 = 'Qual a sua posi��o no trabalho'
Q49 = 'Voc� est� atualmente trabalhando em alguma atividade para o qual se preparou nos estudos?'
Q50 = 'Quanto tempo voc� est� trabalhando na atividade?'
Q51 = 'Anos que levou para concluir o ensino fundamental (1� grau)'
Q52 = 'Em que tipo de escola cursou o ensino fundamental (1� grau)'
Q53 = 'Em que ano concluiu ou concluir� o ensino m�dio (2� grau)'
Q54 = 'Quantos anos voc� levou para cursar o ensino m�dio (2� grau)?'
Q55 = 'Em que turno voc� cursou ou esta cursando o ensino m�dio (2� grau)'
Q56 = 'Em que  tipo escola cursou ou est� cursando o ensino m�dio (2� grau)'
Q57 = 'Em que modalidade de ensino voc� concluiu ou vai concluir o ensino m�dio (2� grau)'
Q58 = 'Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): curso e l�ngua estrangeira.'
Q59 = 'Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): curso de computa��o ou inform�tica'
Q60 = 'Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): curso preparat�rio para o vestibular (cursinho)'
Q61 = 'Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): artes pl�sticas em geral'
Q62 = 'Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): atividades art�stica'
Q63 = 'Voc� realiza ou realizou durante o ensino m�dio (2� Grau), como atividade ou curso extracurricular(es): atividade esportiva'
Q64 = 'A partir dos conhecimentos adquiridos no ensino m�dio (2� grau), o  candidato se considera apto a exercer uma profiss�o?'
Q65 = 'Com que frequ�ncia voc� l� jornais?'
Q66 = 'Com que frequ�ncia l� revistas de informa��o geral'
Q67 = 'Com que frequ�ncia l� revistas de humor / quadrinhos'
Q68 = 'Com que frequ�ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc.)'
Q69 = 'Com que frequ�ncia l� romances, livros de fic��o'
Q70 = 'Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a: conhecimento que os professores tem da mat�ria'
Q71 = 'Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  dedica��o dos professores � pontualidade, prepara��o das aulas, etc.'
Q72 = 'Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  capacidade da escola  em motivar os estudantes com pesquisa, excurs�es, trabalhos de equipe, projetos e outras atividades fora da rotina'
Q73 = 'Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a: recursos pedag�gicos: laborat�rios, bibliotecas, TV, v�deos etc.'
Q74 = 'Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  condi��es f�sicas da escola - condi��o das salas, banheiros, limpeza'
Q75 = 'Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  acesso a computadores e outros recursos de inform�tica'
Q76 = 'Qual  � a sua avalia��o da escola secund�ria ou de n�vel m�dio, que voc� frequentou, em rela��o a:  ensino de l�ngua estrangeira'
Q77 = 'O que voc� pretende fazer nos pr�ximos 3 anos: continuar estudando'
Q78 = 'O que voc� pretende fazer nos pr�ximos 3 anos: conseguir um emprego'
Q79 = 'O que voc� pretende fazer nos pr�ximos 3 anos: melhorar a posi��o no emprego atual'
Q80 = 'O que voc� pretende fazer nos pr�ximos 3 anos: fazer um concurso p�blico'
Q81 = 'O que voc� pretende fazer nos pr�ximos 3 anos: trabalhar por conta pr�pria, abrir meu pr�prio neg�cio.'
Q82 = 'O que voc� pretende fazer nos pr�ximos 3 anos: constituir fam�lia'
Q83 = 'O que voc� pretende fazer nos pr�ximos 3 anos: mudar para outra cidade ou estado do Brasil.'
Q84 = 'O que voc� pretende fazer nos pr�ximos 3 anos: mudar para o Exterior'
Q85 = 'O quanto voc� se interessa e acompanha: politica nacional'
Q86 = 'O quanto voc� se interessa e acompanha: a politica internacional'
Q87 = 'O quanto voc� se interessa e acompanha: esportes'
Q88 = 'O quanto voc� se interessa e acompanha: a economia'
Q89 = 'O quanto voc� se interessa e acompanha: a moda'
Q90 = 'O quanto voc� se interessa e acompanha: atividades culturais, como teatro, pintura, arte, etc.'
Q91 = 'O quanto voc� se interessa e acompanha: m�sica popular'
Q92 = 'O quanto voc� se interessa e acompanha: quest�es sobre comportamento sexual, como a AIDS, a gravidez indesejada etc.'
Q93 = 'O quanto voc� se interessa e acompanha: quest�es sobre o meio ambiente'
Q94 = 'O quanto voc� se interessa e acompanha: quest�es relativas aos direitos de minorias'
Q95 = 'O quanto voc� se interessa e acompanha: quest�es sociais, como pobreza, o desemprego, a viol�ncia etc.'
Q96 = 'Voc� participa de:  igreja ou grupo religioso'
Q97 = 'Voc� participa de: partido pol�tico ou movimento social.'
Q98 = 'Voc� participa de:  sindicato ou associa��o profissional.'
Q99 = 'Voc� participa de:  grupo de bairro ou associa��o comunit�ria'
Q100 = 'Voc� participa de:  clube recreativo ou associa��o esportiva.'
Q101 = 'Voc� participa de:  gr�mio estudantil'
Q102 = 'Para ter um bom futuro na vida voc� considera importante: ter sido um bom(a) aluno(a) na escola ou na faculdade'
Q103 = 'Para ter um bom futuro na vida voc� considera importante:  ter cursado uma boa escola ou faculdade'
Q104 = 'Para ter um bom futuro na vida voc� considera importante:  ter conhecimentos profissionais pr�ticos e �teis'
Q105 = 'Para ter um bom futuro na vida voc� considera importante: ter cultura geral (conhecer l�ngua, ler livros etc.)'
Q106 = 'Para ter um bom futuro na vida voc� considera importante:  ter amigos influentes'
Q107 = 'Para ter um bom futuro na vida voc� considera importante:  vir de uma fam�lia rica'
Q108 = 'O candidato do ENEM considera importante ser esperto'
Q109 = 'Para ter um bom futuro na vida voc� considera importante:  ter sorte na vida'
Q110 = 'Para ter um bom futuro na vida voc� considera importante:  ser honesto e justo'
Q111 = 'Para ter um bom futuro na vida voc� considera importante:  ser trabalhador'
Q112 = 'Para ter um bom futuro na vida voc� considera importante:  ser generoso(a) e solid�rio(a) com os outros'
Q113 = 'Para ter um bom futuro na vida voc� considera importante:  ter f� e seguir os ensinamentos religiosos'
Q114 = 'Voc� acha que o Brasil nos �ltimos anos:'
Q115 = 'Voc� acha que, nos �ltimos anos, sua situa��o e da sua fam�lia'
Q116 = 'Voc� continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)'
Q117 = 'Se voc� est� estudando no momento atual, est� desenvolvendo: um curso profissionalizante'
Q118 = 'Se voc� est� estudando no momento atual, est� desenvolvendo: curso preparat�rio para vestibular'
Q119 = 'Se voc� est� estudando no momento atual, est� desenvolvendo: curso superior'
Q120 = 'Se voc� est� estudando no momento atual, est� desenvolvendo: curso de l�ngua estrangeira'
Q121 = 'Se voc� est� estudando no momento atual, est� desenvolvendo: um curso de computa��o ou inform�tica'
Q122 = 'Se voc� est� estudando no momento atual, est� desenvolvendo: outro curso'
Q123 = 'Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso profissionalizante'
Q124 = 'Se voc� n�o est� estuando no momento atual, mas continou seus estudos depois de ter concluido o ensino m�dio (2� Grau), desenvolveu: curso preparat�rio para vestibular, mas n�o ingressei no curso superior'
Q125 = 'Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso superior e se formou'
Q126 = 'Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso superior mas n�o se formou'
Q127 = 'Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso de l�ngua estrangeira'
Q128 = 'Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: curso de computa��o ou inform�tica'
Q129 = 'Se voc� n�o est� estuando no momento atual, mas continuo seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), desenvolveu: outro curso'

;IF NU_INSCRICAO = . THEN DELETE;

RUN;