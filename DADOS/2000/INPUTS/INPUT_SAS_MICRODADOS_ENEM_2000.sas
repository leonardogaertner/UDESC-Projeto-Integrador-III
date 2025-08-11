
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Estudos, Pesquisas e Dissemina��o				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2000.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2000       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2000.CSV no diret�rio C:\ do computador.			      */
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
		2='Concluir� em 2000'
		3='Concluir� ap�s 2000'
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
		D='Desconsiderada'
		F='Faltou � prova'
		N='Reda��o anulada'
		P='Presente � prova';
	value  $QSE
		0='N�o respondeu o question�rio socioec�mico'
		1='Respondeu o question�rio socioec�mico';	
		 value  $Qum
			A= 'Masculino'
			B= 'Feminino';
		 value  $Qdois
			A= 'Ap�s 1983.'
			B= '1983'
			C= '1982'
			D= '1981'
			E= '1980'
			F= '1979'
			G= 'Entre 1975 e 1978'
			H= 'Antes de 1975';
		 value  $Qtres
			A= 'Branco(a).'
			B= 'Pardo(a) / mulato(a). '
			C= 'Negro(a).'
			D= 'Amarelo(a) (De origem asi�tica)'
			E= 'Ind�gena.';
		 value  $Qquatro
			A= 'Solteiro(a)'
			B= 'Casado(a) / mora com um(a) companheiro(a) '
			C= 'Separado(a) / divorciado(a) / desquitado(a) '
			D= 'Vi�vo(a)';
		 value  $Qcinco
			A= 'Em casa ou apartamento, com sua fam�lia '
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
			A= 'Sim'
			B= 'N�o';
		 value  $Qquinze
			A= 'Moro sozinho '
			B= 'Duas pessoas '
			C= 'Tr�s pessoas '
			D= 'Quatro pessoas '
			E= 'Cinco pessoas '
			F= 'Seis pessoas'
			G= 'Mais de seis pessoas.';
		 value  $Qdezesseis
			A= 'N�o tenho filhos '
			B= 'Um filho'
			C= 'Dois filhos '
			D= 'Tr�s filhos'
			E= 'Quatro ou mais filhos';
		 value  $Qdezessete
			A= 'N�o estudou'
			B= 'Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)'
			C= 'Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)'
			D= 'Ensino M�dio (2� grau) incompleto '
			E= 'Ensino M�dio (2� grau) completo '
			F= 'Ensino Superior incompleto '
			G= 'Ensino Superior completo'
			H= 'P�s-gradua��o (mestrado, especializa��o, doutorado)'
			I= 'N�o sei';
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
			A= 'Na agricultura, no campo, em fazenda ou na pesca'
			B= 'Na ind�stria'
			C= 'No com�rcio, banco, transporte ou outros servi�os'
			D= 'Como empregado em casa de fam�lia'
			E= 'Como funcion�rio do governo federal, do estado ou munic�pio, ou militar'
			F= 'Profissional liberal, professor ou t�cnico de n�vel superior'
			G= 'No lar'
			H= 'Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa'
			I= 'N�o trabalha'
			J= 'N�o sei';
		 value  $Qvinte
			A= 'Gerente, administrador ou diretor de empresa privada'
			B= 'Funcion�rio p�blico (federal, estadual, municipal), com fun��es de dire��o'
			C= 'Militar (guarda civil, pol�cia estadual ou For�as Armadas), com posto de comando'
			D= 'Empregado no setor privado, com carteira assinada'
			E= 'Funcion�rio p�blico (federal, estadual ou municipal), sem fun��o de dire��o'
			F= 'Militar (guarda civil, pol�cia estadual ou For�as Armadas), sem posto de comando'
			G= 'Trabalho tempor�rio, informal, sem carteira assinada'
			H= 'Trabalha por conta pr�pria'
			I= 'Aposentado'
			J= 'N�o trabalha'
			K= 'Outra situa��o';
		 value  $Qvinteum
			A= 'Na agricultura, no campo, em fazenda ou na pesca'
			B= 'Na ind�stria'
			C= 'No com�rcio, banco, transporte ou outros servi�os'
			D= 'Como empregado em casa de fam�lia'
			E= 'Como funcion�rio do governo federal, do estado ou munic�pio, ou militar'
			F= 'Profissional liberal, professor ou t�cnico de n�vel superior'
			G= 'No lar'
			H= 'Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa'
			I= 'N�o trabalha'
			J= 'N�o sei';
		 value  $Qvintedois
			A= 'Gerente, administradora ou diretora de empresa privada'
			B= 'Funcion�ria p�blica (federal, estadual ou municipal), com fun��es de dire��o'
			C= 'Militar (guarda civil, pol�cia estadual ou For�as Armadas), com posto de comando'
			D= 'Empregada no setor privado, com carteira assinada'
			E= 'Funcion�ria p�blica (federal, estadual e municipal), sem fun��o de dire��o'
			F= 'Militar (guarda civil, pol�cia estadual ou For�as Armadas), sem posto de comando'
			G= 'Trabalho tempor�rio, informal, sem carteira assinada'
			H= 'Trabalha por conta pr�pria'
			I= 'Desempregada'
			J= 'Aposentada'
			K= 'Outra situa��o';
		 value  $Qvintetres
			A= 'At� 1 sal�rio m�nimo (R$ 151,00)'
			B= 'De 1 a 2 sal�rios m�nimos (de R$ 151,01 a R$ 302,00)'
			C= 'De 2 a 5 sal�rios m�nimos (de R$ 302,01 a R$ 755,00)'
			D= 'De 5 a 10 sal�rios m�nimos (de R$ 755,01 a R$ 1.510,00)'
			E= 'De 10 a 30 sal�rios m�nimos (de R$ 1.510,01 a R$ 4.530,00)'
			F= 'De 30 a 50 sal�rios m�nimos (de R$ 4.530,01 a R$ 7.550,00)'
			G= 'Mais de 50 sal�rios m�nimos (mais de R$ 7.550,00)'
			H= 'Nenhuma renda';
		 value  $Qvintequatro
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qvintecinco	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qvinteseis	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qvintesete	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qvinteoito	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qvintenove	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qtrinta	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qtrintaum	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qtrintadois
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'N�o tem';
		 value  $Qtrintatres
			A= 'Sim'
			B= 'N�o';
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
			B= 'Nunca trabalhei'
			C= 'Nunca trabalhei, mas estou procurando trabalho';
		 value  $Qtrintanove
			A= 'Sim, menos de 1 ano'
			B= 'Sim, de 1 a 2 anos'
			C= 'Sim, de 2 a 3 anos'
			D= 'Sim, todo o tempo'
			E= 'N�o';
		 value  $Qquarenta
			A= 'Sem jornada fixa, at� 10 horas semanais'
			B= 'De 11 a 20 horas semanais'
			C= 'De 21 a 30 horas semanais'
			D= 'De 31 a 40 horas semanais'
			E= 'Mais de 40 horas semanais';
		 value  $Qquarentaum
			A= 'Para ajudar meus pais '
			B= 'Para meu pr�prio sustento '
			C= 'Para as duas finalidades'
			D= 'Para outra(s) finalidade(s)';
		 value  $Qquarentadois
			A= 'Antes dos 14 anos '
			B= 'Entre 14 e 16 anos'
			C= 'Entre 17 e 18 anos'
			D= 'Ap�s 18 anos';
		 value  $Qquarentatres
			A= 'At� 1 sal�rio m�nimo (R$ 151,00)'
			B= 'De 1 a 2 sal�rios m�nimos (de R$ 151,01 a R$ 302,00)'
			C= 'De 2 a 5 sal�rios m�nimos (de R$ 302,01 a R$ 755,00)'
			D= 'De 5 a 10 sal�rios m�nimos (de R$ 755,01 a R$ 1.510,00)'
			E= 'De 10 a 30 sal�rios m�nimos (de R$ 1.510,01 a R$ 4.530,00)'
			F= 'De 30 a 50 sal�rios m�nimos (de R$ 4.530,01 a R$ 7.550,00)'
			G= 'Mais de 50 sal�rios m�nimos (mais de R$ 7.550,00)'
			H= 'N�o estou trabalhando';
		 value  $Qquarentaquatro
			A= 'Para ajudar meus pais '
			B= 'Para meu pr�prio sustento '
			C= 'Para as duas finalidades'
			D= 'Para outra(s) finalidade(s)';
		 value  $Qquarentacinco
			A= 'Na agricultura (campo, fazenda, pesca).'
			B= 'Na ind�stria.'
			C= 'No com�rcio, banco, transporte ou outros servi�os.'
			D= 'Como empregado(a) em casa de fam�lia.'
			E= 'Como funcion�rio(a) do governo federal, do estado ou do munic�pio, ou militar.'
			F= 'Como profissional liberal, professor(a) ou t�cnico(a) de n�vel superior.'
			G= 'No lar.'
			H= 'Na produ��o (comida, costura etc.) ou em servi�os (aula particular etc.) em casa'
			I= 'N�o trabalha';
		 value  $Qquarentaseis
			A= 'Gerente, administrador(a) ou diretor(a) de empresa privada.'
			B= 'Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), com fun��es de dire��o.'
			C= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), com posto de comando'
			D= 'Empregado(a) no setor privado, com carteira assinada'
			E= 'Funcion�rio(a) p�blico(a) (federal, estadual ou municipal), sem fun��o de dire��o.'
			F= 'Trabalho tempor�rio, informal, sem carteira assinada'
			G= 'Militar (guarda-civil, pol�cia estadual ou For�as Armadas), sem posto de comando.'
			H= 'Trabalho por conta pr�pria Aposentado(a).'
			I= 'N�o trabalho'
			J= 'Outra situa��o.';
		 value  $Qquarentasete
			A= 'Sim'
			B= 'N�o, porque n�o consegui trabalho na minha profiss�o'
			C= 'N�o me preparei para um trabalho em espec�fico/minha forma��o foi geral';
		 value  $Qquarentaoito
			A= 'Menos de 1 ano '
			B= 'Entre 1 e 2 anos'
			C= 'Entre 2 e 4 anos'
			D= 'Mais de 4 anos';
		 value  $Qquarentanove
			A= 'Menos de 8 anos '
			B= '8 anos'
			C= '9 anos'
			D= '10 anos'
			E= '11 anos'
			F= 'Mais de 11 anos';
		 value  $Qcinquenta
			A= 'Somente em escola p�blica'
			B= 'Parte em escola p�blica e parte em escola particular '
			C= 'Somente em escola particular';
		 value  $Qcinquentaum
			A= 'Vou conclu�-lo no segundo semestre de 2000.'
			B= 'No primeiro semestre de 2000'
			C= '1999'
			D= '1998'
			E= '1997'
			F= 'Entre 1993 e1996'
			G= 'Antes de 1993';
		 value  $Qcinquentadois
			A= 'Menos de 3 anos '
			B= '3 anos'
			C= '4 anos'
			D= '5 anos'
			E= '6 anos'
			F= 'Mais de 6 anos';
		 value  $Qcinquentatres
			A= 'Somente no turno diurno'
			B= 'Parte no turno diurno e parte no turno noturno '
			C= 'Somente no turno noturno';
		 value  $Qcinquentaquatro
			A= 'Somente em escola p�blica'
			B= 'Parte em escola p�blica e parte em escola particular '
			C= 'Somente em escola particular';
		 value  $Qcinquentacinco
			A= 'Ensino regular'
			B= 'Ensino supletivo';
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
			A= 'Frequentemente (todo dia ou quase todo dia) '
			B= 'Eventualmente'
			C= 'Nunca';
		 value  $Qsessentaquatro
			A= 'Frequentemente (todo dia ou quase todo dia) '
			B= 'Eventualmente'
			C= 'Nunca';
		 value  $Qsessentacinco	
			A= 'Frequentemente (todo dia ou quase todo dia) '
			B= 'Eventualmente'
			C= 'Nunca';
		 value  $Qsessentaseis	
			A= 'Frequentemente (todo dia ou quase todo dia) '
			B= 'Eventualmente'
			C= 'Nunca';
		 value  $Qsessentasete	
			A= 'Frequentemente (todo dia ou quase todo dia) '
			B= 'Eventualmente'
			C= 'Nunca';
		 value  $Qsessentaoito
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'P�ssimo';
		 value  $Qsessentanove
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'P�ssimo';
		 value  $Qsetenta	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'P�ssimo';
		 value  $Qsetentaum	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'P�ssimo';
		 value  $Qsetentadois	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'P�ssimo';
		 value  $Qsetentatres	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'P�ssimo';
		 value  $Qsetentaquatro	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'P�ssimo';
		 value  $Qsetentacinco
			A= 'Sim'
			B= 'N�o';
		 value  $Qsetentaseis	
			A= 'Sim'
			B= 'N�o';
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
			A= 'Sim'
			B= 'N�o';
		 value  $Qoitentatres
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qoitentaquatro	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qoitentacinco	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qoitentaseis	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qoitentasete	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qoitentaoito	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qoitentanove	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qnoventa	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qnoventaum	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qnoventadois	
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qnoventatres
			A= 'Muito '
			B= 'Pouco'
			C= 'N�o me interesso';
		 value  $Qnoventaquatro
			A= 'Com frequ�ncia '
			B= '�s vezes'
			C= 'N�o participo';
		 value  $Qnoventacinco	
			A= 'Com frequ�ncia '
			B= '�s vezes'
			C= 'N�o participo';
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
			A= 'Melhorou '
			B= 'Piorou'
			C= 'Nem melhorou nem piorou';
		 value  $Qcemum
			A= 'Melhorou '
			B= 'Piorou'
			C= 'Nem melhorou nem piorou';
		 value  $Qcemdois
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemtres	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemquatro	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemcinco	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemseis	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemsete	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemoito	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemnove	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemdez	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemonze	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemdoze	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemtreze	
			A= 'Importante'
			B= 'Sem import�ncia';
		 value  $Qcemcatorze
			A= 'Sim, estou estudando no momento atual'
			B= 'Sim, mas n�o estou estudando no momento atual '
			C= 'N�o';
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

run;


DATA WORK.DADOS_ENEM_2000;
INFILE 'C:\MICRODADOS_ENEM_2000.csv' /*local do arquivo*/
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
Q1 = 'Sexo'
Q2 = 'Ano em que nasceu'
Q3 = 'Como se considera'
Q4 = 'Qual o estado civil'
Q5 = 'Como mora'
Q6 = 'Mora sozinho(a)'
Q7 = 'Mora com o pai'
Q8 = 'Mora com a m�e'
Q9 = 'Mora com mulher, marido, companheiro ou companheira.'
Q10 = 'Mora com filhos'
Q11 = 'Mora com irm�os'
Q12 = 'Mora com outros parentes'
Q13 = 'Mora com amigos ou colegas'
Q14 = 'Outra situa��o.'
Q15 = 'Quantidade de pessoas que moram na casa'
Q16 = 'Quantos filhos tem'
Q17 = 'O grau de escolaridade do pai do candidato'
Q18 = 'O grau de escolaridade de m�e do candidato'
Q19 = '�rea que o pai trabalha ou trabalhou, na maior parte da vida'
Q20 = 'Qual a posi��o do pai neste trabalho, na maior parte do tempo'
Q21 = '�rea que a m�e trabalha ou trabalhou, na maior parte da vida'
Q22 = 'Qual a posi��o da m�e neste trabalho, na maior parte do tempo'
Q23 = 'Renda  total (Todos que moram na mesma casa)'
Q24 = 'Quais e quantos dos itens abaixo h� em sua casa? Autom�vel'
Q25 = 'Quais e quantos dos itens abaixo h� em sua casa? TV em cores'
Q26 = 'Quais e quantos dos itens abaixo h� em sua casa?  Microcomputador'
Q27 = 'Quais e quantos dos itens abaixo h� em sua casa? Videocassete'
Q28 = 'Quais e quantos dos itens abaixo h� em sua casa? M�quina de lavar roupa'
Q29 = 'Quais e quantos dos itens abaixo h� em sua casa? Aspirador de p�'
Q30 = 'Quais e quantos dos itens abaixo h� em sua casa? Geladeira'
Q31 = 'Quais e quantos dos itens abaixo h� em sua casa? Freezer'
Q32 = 'Quais e quantos dos itens abaixo h� em sua casa? Telefone'
Q33 = 'Tem casa pr�pria'
Q34 = 'Tem casa em rua urbanizada (com cal�amento ou asfaltada)'
Q35 = 'Se a casa tem �gua corrente de torneira'
Q36 = 'Se a casa tem eletricidade'
Q37 = 'Tem empregada dom�stica mensalista'
Q38 = 'Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento'
Q39 = 'Trabalhou ou teve alguma atividade remunerada durante o ensino m�dio (2� grau)'
Q40 = 'Quantas horas trabalhava, durante o ensino m�dio (2� grau)'
Q41 = 'Com que finalidade trabalhava, enquanto estudava no ensino m�dio (antigo 2� grau)'
Q42 = 'Com que idade come�ou a exercer atividade remunerada'
Q43 = 'Se estiver trabalhando atualmente, qual a renda ou sal�rio mensal'
Q44 = 'Por que trabalha atualmente'
Q45 = 'Em que trabalha atualmente'
Q46 = 'Qual a sua posi��o no trabalho'
Q47 = 'Trabalha na ocupa��o para a qual se preparou nos estudos'
Q48 = 'Quanto tempo est� trabalhando nessa atividade'
Q49 = 'Anos que levou para concluir o ensino fundamental (1� grau)'
Q50 = 'Em que tipo de escola cursou o ensino fundamental (1� grau)'
Q51 = 'Em que ano concluiu ou concluir� o ensino m�dio (2� grau)'
Q52 = 'Quantos anos levou para cursar o ensino m�dio (2� grau)'
Q53 = 'Em que turno cursou ou esta cursando o ensino m�dio (2� grau)'
Q54 = 'Em que  tipo escola cursou ou est� cursando o ensino m�dio (2� grau)'
Q55 = 'Em que modalidade de ensino concluiu ou vai concluir o ensino m�dio (2� grau)'
Q56 = 'Fez curso de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)'
Q57 = 'Fez curso de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)'
Q58 = 'Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)'
Q59 = 'Fez artes pl�sticas em geral fora da escola durante o ensino m�dio (2� grau)'
Q60 = 'Fez atividades artistica em geral fora da escola durante o ensino m�dio (2� grau)'
Q61 = 'Fez atividade esportiva fora da escola durante o ensino m�dio (2� grau)'
Q62 = 'Outro(s) curso(s) ou outra(s) atividade(s)'
Q63 = 'Com que freq��ncia l� jornais'
Q64 = 'Com que freq��ncia l� revistas de informa��o geral'
Q65 = 'Com que freq��ncia l� revistas de humor / quadrinhos'
Q66 = 'Com que freq��ncia l� revistas de divulga��o cient�fica (Ci�ncia Hoje, Galileu, etc)'
Q67 = 'Com que freq��ncia l� romances, livros de fic��o'
Q68 = 'Qual a sua avalia��o da escola que fez o ensino m�dio quanto ao conhecimento que os(as) professores(as) t�m das mat�rias e a maneira de transmiti-lo'
Q69 = 'Qual a sua avalia��o da escola que fez o ensino m�dio quanto ao  dedica��o dos professores para preparar aulas e atender aos alunos'
Q70 = 'Qual a sua avalia��o da escola que fez o ensino m�dio quanto as iniciativas da escola para realizar excurs�es, trabalhos em equipe, projetos e outras atividades fora da rotina'
Q71 = 'Qual a sua avalia��o da escola que fez o ensino m�dio quanto aos recursos pedag�gicos: laborat�rios, bibliotecas, TV, v�deos etc. dispon�veis'
Q72 = 'Qual a sua avalia��o da escola que fez o ensino m�dio quanto as condi��es f�sicas da escola � condi��o das salas, banheiros, limpeza'
Q73 = 'Qual a sua avalia��o da escola que fez o ensino m�dio quanto ao  acesso a computadores e outros recursos de inform�tica'
Q74 = 'Qual a sua avalia��o da escola que fez o ensino m�dio quanto ao  ensino de l�ngua estrangeira'
Q75 = 'Nos pr�ximos tr�s anos pretende: Continuar estudando'
Q76 = 'Nos pr�ximos tr�s anos pretende: conseguir um emprego'
Q77 = 'Nos pr�ximos tr�s anos pretende: melhorar a posi��o no emprego atual'
Q78 = 'Nos pr�ximos tr�s anos pretende: fazer um concurso p�blico'
Q79 = 'Nos pr�ximos tr�s anos pretende: trabalhar por conta pr�pria, abrir meu pr�prio neg�cio.'
Q80 = 'Nos pr�ximos tr�s anos pretende: constituir fam�lia'
Q81 = 'Nos pr�ximos tr�s anos pretende: mudar para outra cidade ou estado do Brasil.'
Q82 = 'Nos pr�ximos tr�s anos pretende: mudar para o Exterior'
Q83 = 'Voc� tem: interesse  em acompanhar a politica nacional'
Q84 = 'Voc� tem: interesse em acompanhar a politica internacional'
Q85 = 'Voc� tem: interesse em acompanhar esportes'
Q86 = 'Voc� tem: interesse em acompanhar a economia'
Q87 = 'Voc� tem: interesse em acompanhar a moda'
Q88 = 'Voc� tem: interesse em acompanhar atividades culturais, como teatro, pintura, arte, etc'
Q89 = 'Voc� tem: interesse em acompanhar quest�es sobre comportamento sexual, como a AIDS, a gravidez indesejada etc'
Q90 = 'Voc� tem: interesse em mudar para o exterior'
Q91 = 'Voc� tem: interesse em acompanhar quest�es sobre o meio ambiente'
Q92 = 'Voc� tem: interesse em quest�es relativas aos direitos de minorias'
Q93 = 'Voc� tem: interesse em quest�es sociais, como pobreza, o desemprego, a viol�ncia etc.'
Q94 = 'Voc� participa: igreja ou grupo religioso'
Q95 = 'Voc� participa:  partido pol�tico ou movimento social.'
Q96 = 'Voc� participa: sindicato ou associa��o profissional.'
Q97 = 'Voc� participa: grupo de bairro ou associa��o comunit�ria'
Q98 = 'Voc� participa:  clube recreativo ou associa��o esportiva.'
Q99 = 'Voc� participa:  gr�mio estudantil'
Q100 = 'Qual a sua opini�o  em rela��o ao Brasil, nos �ltimos anos'
Q101 = 'Qual a sua opini�o  em rela��o a sua situa��o e a de sua fam�lia, nos �ltimos anos'
Q102 = 'Para ter uma boa vida no futuro voc� considera importante ter sido um um bom(a) aluno(a) na escola ou na faculdade'
Q103 = 'Para ter uma boa vida no futuro voc� considera importante ter cursado uma boa escola ou facudade'
Q104 = 'Para ter uma boa vida no futuro voc� considera importante ter conhecimentos profissionais pr�ticos e �teis'
Q105 = 'Para ter uma boa vida no futuro voc� considera importante ter cultura geral (conhecer l�gua, ler livros etc)'
Q106 = 'Para ter uma boa vida no futuro voc� considera importante ter amigos influentes'
Q107 = 'Para ter uma boa vida no futuro voc� considera importante  vir de uma fam�lia rica'
Q108 = 'Para ter uma boa vida no futuro voc� considera importante ser esperto(a)'
Q109 = 'Para ter uma boa vida no futuro voc� considera importante ter sorte na vida'
Q110 = 'Para ter uma boa vida no futuro voc� considera importante ser honesto(a) e justo(a)'
Q111 = 'Para ter uma boa vida no futuro voc� considera importante ser trabalhador'
Q112 = 'Para ter uma boa vida no futuro voc� considera importante ser gerneroso(a) e solid�rio(a) ckom os outros'
Q113 = 'Para ter uma boa vida no futuro voc� considera importante ser f� e seguir os ensinamentos religiosos'
Q114 = 'Voc� continuou os estudos depois de ter conclu�do o ensino m�dio (2� grau)'
Q115 = 'Est� freq�entando um curso profissionalizante'
Q116 = 'Est� freq�entando um curso preparat�rio para vestibular'
Q117 = 'Est� freq�entando um curso superior'
Q118 = 'Est� freq�entando um curso de l�ngua estrangeira'
Q119 = 'Est� freq�entando um curso de computa��o ou inform�tica'
Q120 = 'Est� freq�entando outro curso'
Q121 = 'Fez curso profissionalizante'
Q122 = 'Fez curso preparat�rio para vestibular, mas n�o ingressei no curso superior'
Q123 = 'Fez curso superior e se formou'
Q124 = 'Fez curso superior mas n�o se formou'
Q125 = 'Fez curso de l�ngua estrangeira'
Q126 = 'Fez curso de computa��o ou inform�tica'
Q127 = 'Fez outro curso'

;IF NU_INSCRICAO = . THEN DELETE;

RUN;