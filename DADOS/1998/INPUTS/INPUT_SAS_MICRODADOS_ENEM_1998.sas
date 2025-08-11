
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avalia��o da Educa��o B�sica              	  */      
/*                                   									  */	
/*  Coordena��o-Geral de Estudos, Pesquisas e Dissemina��o				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_1998.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 1998       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados � necess�rio salvar este programa e o arquivo */
/* MICRODADOS_ENEM_1998.CSV no diret�rio C:\ do computador.			      */
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
	value  $PRESENCA
		0='Faltou � prova'
		1='Presente � prova';
	value  $PROVA
		A= 'Amarela'
		B= 'Branca'
		G= 'Grafite'
		Z= 'Azul';
	value  $STATUS_REDACAO
		F='Faltou � prova'
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
	A= 'Janeiro e Julho'
	B= 'Agosto a Dezembro';
 value  $Qquatro
	A= 'Branco(a).'
	B= 'Pardo(a)'
	C= 'Negro(a).'
	D= 'Amarelo(a)'
	E= 'Ind�gena.';
 value  $Qcinco
	A= 'Solteiro(a)'
	B= 'Casado(a) / mora com um(a) companheiro(a)'
	C= 'Separado(a) / divorciado(a) / desquitado(a)'
	D= 'Vi�vo(a)';
 value  $Qseis
	A= 'Com o pai e m�e'
	B= 'S� com o pai'
	C= 'S� com a m�e'
	D= 'Com parentes/amigos'
	E= 'Com pai e m�e em nova uni�o'
	F= 'Sozinho(a)'
	G= 'Outra situa��o';
 value  $Qsete
	A= 'Uma pessoa'
	B= 'Duas pessoas'
	C= 'Tr�s pessoas'
	D= 'Quatro pessoas'
	E= 'Cinco pessoas'
	F= 'Seis pessoas'
	G= 'Mais de seis pessoas';
 value  $Qoito
	A= 'N�o tenho irm�os'
	B= 'Um irm�o'
	C= 'Dois irm�os'
	D= 'Tr�s irm�os'
	E= 'Quatro ou mais irm�os';
 value  $Qnove
	A= 'N�o tenho filhos'
	B= 'Um filho'
	C= 'Dois filhos'
	D= 'Tr�s filhos'
	E= 'Quatro ou mais filhos';
 value  $Qdez
	A= 'Nunca frequentou a escola'
	B= 'Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)'
	C= 'Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)'
	D= 'Ensino M�dio (2� grau) incompleto'
	E= 'Ensino M�dio (2� grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'P�s-gradua��o';
 value  $Qonze
	A= 'Trabalhador do setor de produ��o industrial (com registro ou carteira assinada)'
	B= 'Trabalhador do setor prim�rio/agricultura/pecu�ria/pesca (com registro ou carteira assinada)'
	C= 'Trabalhador do setor de presta��o de servi�os/com�rcio/banco/transporte, etc. (com registro ou carteira assinada)'
	D= 'Funcion�rio do setor p�blico'
	E= 'Gerente, administrador ou diretor de empresa privada'
	F= 'Trabalha no pr�prio neg�cio/empresa ou com�rcio pr�prio'
	G= 'Profissional liberal, professor, t�cnico de n�vel superior'
	H= 'Trabalhador do setor informal (sem carteira assinada)'
	I= 'Desempregado'
	J= 'Aposentado'
	L= 'N�o sei';
 value  $Qdoze
	A= 'Nunca frequentou a escola'
	B= 'Da primeira � quarta s�rie do ensino fundamental (antigo prim�rio)'
	C= 'Da quinta � oitava s�rie do ensino fundamental (antigo gin�sio)'
	D= 'Ensino M�dio (2� grau) incompleto'
	E= 'Ensino M�dio (2� grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'P�s-gradua��o';
 value  $Qtreze
	A= 'Trabalhadora do setor de produ��o industrial (com registro ou carteira assinada)'
	B= 'Trabalhadora do setor prim�rio/agricultura/pecu�ria/pesca (com registro ou carteira assinada)'
	C= 'Trabalhadora do setor de presta��o de servi�os/com�rcio/banco/transporte, etc. (com registro ou carteira assinada)'
	D= 'Funcion�ria do setor p�blico'
	E= 'Gerente, administradora ou diretora de empresa privada'
	F= 'Trabalha no pr�prio neg�cio/empresa ou com�rcio pr�prio'
	G= 'Profissional liberal, professora, t�cnica de n�vel superior'
	H= 'Trabalhadora do setor informal (sem carteira assinada)'
	I= 'Desempregada '
	J= 'Aposentada '
	L= 'Dona de casa'
	M= 'N�o sei';
 value  $Qcatorze
	A= 'Menos de 8 anos '
	B= '8 anos'
	C= '9 anos'
	D= '10 anos'
	E= '11 anos'
	F= 'Mais de 11 anos';
 value  $Qquinze
	A= 'Somente em escola p�blica'
	B= 'Parte em escola p�blica e parte em escola particular '
	C= 'Somente em escola particular';
 value  $Qdezesseis
	A= 'Federal '
	B= 'Estadual '
	C= 'Municipal'
	D= 'Particular';
 value  $Qdezessete
	A= 'Ensino regular'
	B= 'Ensino supletivo';
 value  $Qdezoito
	A= 'Vou conclu�-lo no segundo semestre de 1998 '
	B= 'Conclu�-o no primeiro semestre de 1998 '
	C= 'Conclu�-o em 1997'
	D= 'Conclu�-o em 1996'
	E= 'Conclu�-o em 1995'
	F= 'Conclu�-o entre 1991 e 1994 '
	G= 'Conclu�-o antes de 1991';
 value  $Qdezenove
	A= 'Menos de 3 anos '
	B= '3 anos'
	C= '4 anos'
	D= '5 anos'
	E= '6 anos'
	F= 'Mais de 6 anos';
 value  $Qvinte
	A= 'Somente no turno diurno'
	B= 'Parte no turno diurno e parte no turno noturno '
	C= 'Somente no turno noturno';
 value  $Qvinteum
	A= 'Somente no turno diurno'
	B= 'Somente no turno noturno';
 value  $Qvintedois
	A= 'Federal '
	B= 'Estadual '
	C= 'Municipal'
	D= 'Particular';
 value  $Qvintetres
	A= 'Somente em escola p�blica'
	B= 'Parte em escola p�blica e parte em escola particular '
	C= 'Somente em escola particular';
 value  $Qvintequatro
	A= 'Ensino regular'
	B= 'Ensino supletivo';
 value  $Qvintecinco
	A= 'Sim'
	B= 'N�o';
 value  $Qvinteseis
	A= 'Sim'
	B= 'N�o';
 value  $Qvintesete
	A= 'Sim'
	B= 'N�o';
 value  $Qvinteoito
	A= 'Sim'
	B= 'N�o';
 value  $Qvintenove
	A= 'Sim'
	B= 'N�o';
 value  $Qtrinta
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintaum
	A= 'Sim'
	B= 'N�o';
 value  $Qtrintadois
	A= 'Sempre '
	B= '�s vezes'
	C= 'N�o';
 value  $Qtrintatres	
	A= 'Sempre '
	B= '�s vezes'
	C= 'N�o';
 value  $Qtrintaquatro	
	A= 'Sempre '
	B= '�s vezes'
	C= 'N�o';
 value  $Qtrintacinco	
	A= 'Sempre '
	B= '�s vezes'
	C= 'N�o';
 value  $Qtrintaseis	
	A= 'Sempre '
	B= '�s vezes'
	C= 'N�o';
 value  $Qtrintasete
	A= 'Muito importante '
	B= 'Importante'
	C= 'Nem um pouco importante';
 value  $Qtrintaoito	
	A= 'Muito importante '
	B= 'Importante'
	C= 'Nem um pouco importante';
 value  $Qtrintanove	
	A= 'Muito importante '
	B= 'Importante'
	C= 'Nem um pouco importante';
 value  $Qquarenta
	A= 'Muito importante '
	B= 'Importante'
	C= 'Nem um pouco importante';
 value  $Qquarentaum	
	A= 'Muito importante '
	B= 'Importante'
	C= 'Nem um pouco importante';
 value  $Qquarentadois	
	A= 'Muito importante '
	B= 'Importante'
	C= 'Nem um pouco importante';
 value  $Qquarentatres	
	A= 'Muito importante '
	B= 'Importante'
	C= 'Nem um pouco importante';
 value  $Qquarentaquatro
	A= 'N�o sei'
	B= 'J� consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentacinco	
	A= 'N�o sei'
	B= 'J� consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentaseis	
	A= 'N�o sei'
	B= 'J� consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentasete	
	A= 'N�o sei'
	B= 'J� consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentaoito	
	A= 'N�o sei'
	B= 'J� consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentanove	
	A= 'N�o sei'
	B= 'J� consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qcinquenta
	A= 'N�o '
	B= 'Preferencialmente n�o '
	C= 'Talvez'
	D= 'Certamente';
 value  $Qcinquentaum
	A= 'Sim, na escola obtive algum conhecimento de inform�tica e uso de computadores'
	B= 'Sim, mas obtive os conhecimentos de inform�tica fora da escola regular'
	C= 'N�o, nunca tive acesso ao conhecimento de computadores e inform�tica';
 value  $Qcinquentadois
	A= 'Sim, na escola obtive algum conhecimento de inform�tica e uso de computadores'
	B= 'Sim, mas obtive os conhecimentos de inform�tica fora da escola regular'
	C= 'N�o, nunca tive acesso ao conhecimento de computadores e inform�tica';
 value  $Qcinquentatres
	A= 'N�o pretendo'
	B= 'Imediatamente ap�s estar formado'
	C= 'No decorrer dos pr�ximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentaquatro
	A= 'N�o pretendo'
	B= 'Imediatamente ap�s estar formado'
	C= 'No decorrer dos pr�ximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentacinco
	A= 'N�o pretendo'
	B= 'Imediatamente ap�s estar formado'
	C= 'No decorrer dos pr�ximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentaseis
	A= 'N�o pretendo'
	B= 'Imediatamente ap�s estar formado'
	C= 'No decorrer dos pr�ximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentasete
	A= 'N�o pretendo'
	B= 'Imediatamente ap�s estar formado'
	C= 'No decorrer dos pr�ximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentaoito
	A= 'Sim, muito'
	B= 'Conhe�o razoavelmente '
	C= 'Conhe�o pouco'
	D= 'N�o conhe�o nada sobre essa atividade';
 value  $Qcinquentanove
	A= 'Sim'
	B= 'Adquiri-as razoavelmente '
	C= 'Adquiri algumas'
	D= 'N�o adquiri nenhuma habilidade ou t�cnica necess�rias a essa atividade';
 value  $Qsessenta
	A= 'Muito importante '
	B= 'Importante  '
	C= 'Pouco importante'
	D= 'Nem um pouco importante';
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
	A= 'Sim, amigos pr�ximos.'
	B= 'Sim, amigos distantes.'
	C= 'N�o.';
 value  $Qsessentanove
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'S� um pouco'
	D= 'N�o, n�o me interesso';
 value  $Qsetenta
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'S� um pouco'
	D= 'N�o, n�o me interesso';
 value  $Qsetentaum	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'S� um pouco'
	D= 'N�o, n�o me interesso';
 value  $Qsetentadois	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'S� um pouco'
	D= 'N�o, n�o me interesso';
 value  $Qsetentatres	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'S� um pouco'
	D= 'N�o, n�o me interesso';
 value  $Qsetentaquatro	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'S� um pouco'
	D= 'N�o, n�o me interesso';
 value  $Qsetentacinco	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'S� um pouco'
	D= 'N�o, n�o me interesso';
 value  $Qsetentaseis	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'S� um pouco'
	D= 'N�o, n�o me interesso';
 value  $Qsetentasete
	A= 'Sim, sempre '
	B= 'Sim, �s vezes'
	C= 'N�o';
 value  $Qsetentaoito	
	A= 'Sim, sempre '
	B= 'Sim, �s vezes'
	C= 'N�o';
 value  $Qsetentanove	
	A= 'Sim, sempre '
	B= 'Sim, �s vezes'
	C= 'N�o';
 value  $Qoitenta	
	A= 'Sim, sempre '
	B= 'Sim, �s vezes'
	C= 'N�o';
 value  $Qoitentaum	
	A= 'Sim, sempre '
	B= 'Sim, �s vezes'
	C= 'N�o';
 value  $Qoitentadois	
	A= 'Sim, sempre '
	B= 'Sim, �s vezes'
	C= 'N�o';
 value  $Qoitentatres
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qoitentaquatro
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qoitentacinco
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qoitentaseis
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qoitentasete	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qoitentaoito	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qoitentanove	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qnoventa	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qnoventaum	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
value  $Qnoventadois	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qnoventatres	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qnoventaquatro	
	A= '1'
	B= '2'
	C= '3'
	D= '4'
	E= '5'
	F= '6'
	G= '7'
	H= '8'
	I= '9'
	J= '10'
	L= '11'
	M= '12';
 value  $Qnoventacinco
	A= 'Sim, trabalhei durante todo o curso (at� 20 horas semanais)'
	B= 'Sim, trabalhei durante todo o curso (de 21 a 30 horas semanais)'
	C= 'Sim, trabalhei durante todo o curso (de 31 a 40 horas semanais)'
	D= 'Sim, mas trabalhei apenas durante alguns per�odos'
	E= 'N�o trabalhei durante esse tempo';
 value  $Qnoventaseis
	A= 'Antes dos 14 anos'
	B= 'Entre 14 e 16 anos'
	C= 'Entre 17 e 18 anos'
	D= 'Ap�s os 18 anos';
 value  $Qnoventasete
	A= 'Sim'
	B= 'N�o, estou desempregado/estou procurando emprego';
 value  $Qnoventaoito
	A= 'At� 1 sal�rio m�nimo (at� R$130,00)'
	B= 'Entre 1 e 2 sal�rios m�nimos (entre R$131,00 e R$260,00)'
	C= 'De 2 a 5 sal�rios m�nimos (de R$261,00 a R$650,00)'
	D= 'De 5 a 10 sal�rio m�nimos (de R$651,00 a R$1.300,00)'
	E= 'De 10 a 30 sal�rios m�nimos (de R$1.301,00 a R$3.900,00)'
	F= 'De 30 a 50 sal�rios m�nimos (de R$3.901,00 a R$6.500,00)'
	G= 'Mais de 50 sal�rios m�nimos (mais de R$6.500,00)';
 value  $Qnoventanove
	A= 'Sim, estou estudando no momento atual'
	B= 'Sim, mas n�o estou estudando no momento atual'
	C= 'N�o.';
 value  $Qcem
	A= 'Sim'
	B= 'N�o';
 value  $Qcemum
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdois	
	A= 'Sim'
	B= 'N�o';
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
	A= 'Sim'
	B= 'N�o';
 value  $Qcemdoze	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemtreze	
	A= 'Sim'
	B= 'N�o';
 value  $Qcemcatorze
	A= 'Trabalhador do setor de produ��o industrial'
	B= 'Trabalhador do setor prim�rio/agricultura/pecu�ria/pesca'
	C= 'Trabalhador do setor de presta��o de servi�os/com�rcio/banco/transporte, etc. (com registro ou carteira assinada)'
	D= 'Funcion�rio do setor p�blico'
	E= 'Gerente, administrador ou diretor de empresa privada'
	F= 'Trabalha no pr�prio neg�cio/empresa ou com�rcio pr�prio'
	G= 'Profissional liberal, professor, t�cnico de n�vel superior'
	H= 'Trabalhador do setor informal (sem carteira assinada)';
 value  $Qcemquinze
	A= 'Sim'
	B= 'N�o, porque n�o consegui trabalho na minha profiss�o'
	C= 'N�o me preparei para um trabalho em espec�fico/minha forma��o foi geral';
 value  $Qcemdezesseis
	A= 'Menos de 1 ano'
	B= 'Entre 1 e 2 anos'
	C= 'Entre 2 e 4 anos'
	D= 'Mais de 4 anos';
 value  $Qcemdezessete
	A= 'At� 1 sal�rio m�nimo (at� R$130,00)'
	B= 'Entre 1 e 2 sal�rios m�nimos (entre R$131,00 e R$260,00)'
	C= 'De 2 a 5 sal�rios m�nimos (de R$261,00 a R$650,00)'
	D= 'De 5 a 10 sal�rio m�nimos (de R$651,00 a R$1.300,00)'
	E= 'De 10 a 30 sal�rios m�nimos (de R$1.301,00 a R$3.900,00)'
	F= 'De 30 a 50 sal�rios m�nimos (de R$3.901,00 a R$6.500,00)'
	G= 'Mais de 50 sal�rios m�nimos (mais de R$6.500,00)';
 value  $Qcemdezoito
	A= 'N�o preciso trabalhar'
	B= 'Estava trabalhando, mas estou desempregado(a)'
	C= 'N�o consigo encontrar um trabalho na minha ocupa��o'
	D= 'Estou estudando';
 value  $Qcemdezenove
	A= 'Sim, com todo o meu rendimento'
	B= 'Sim, com parte do meu rendimento'
	C= 'N�o, tenho fam�lia, mas meus rendimentos s�o para meu pr�prio uso'
	D= 'N�o tenho rendimentos'
	E= 'N�o tenho fam�lia/meus rendimentos s�o s� para meu pr�prio uso';
 value  $Qcemvinte
	A= 'At� 1 sal�rio m�nimo (at� R$130,00)'
	B= 'Entre 1 e 2 sal�rios m�nimos (entre R$131,00 e R$260,00)'
	C= 'De 2 a 5 sal�rios m�nimos (de R$261,00 a R$650,00)'
	D= 'De 5 a 10 sal�rio m�nimos (de R$651,00 a R$1.300,00)'
	E= 'De 10 a 30 sal�rios m�nimos (de R$1.301,00 a R$3.900,00)'
	F= 'De 30 a 50 sal�rios m�nimos (de R$3.901,00 a R$6.500,00)'
	G= 'Mais de 50 sal�rios m�nimos (mais de R$6.500,00)'
	H= 'N�o sabe';
 value  $Qcemvinteum
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintedois
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintetres
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintequatro
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintecinco
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvinteseis
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintesete
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvinteoito
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintenove
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemtrinta
	A= 'N�o tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemtrintaum
	A= 'Sim'
	B= 'N�o'
	C= 'N�o, mas pretendo ter num futuro pr�ximo';
 value  $Qcemtrintadois
	A= 'Sim'
	B= 'N�o'
	C= 'N�o, mas pretendo ter num futuro pr�ximo';
 value  $Qcemtrintatres
	A= 'Sim'
	B= 'N�o'
	C= 'N�o, mas pretendo ter num futuro pr�ximo';
 value  $Qcemtrintaquatro
	A= 'Sim'
	B= 'N�o'
	C= 'N�o, mas pretendo ter num futuro pr�ximo';
 value  $Qcemtrintacinco	
	A= 'Sim'
	B= 'N�o'
	C= 'N�o, mas pretendo ter num futuro pr�ximo';
 value  $Qcemtrintaseis	
	A= 'Sim'
	B= 'N�o'
	C= 'N�o, mas pretendo ter num futuro pr�ximo';
 value  $Qcemtrintasete	
	A= 'Sim'
	B= 'N�o'
	C= 'N�o, mas pretendo ter num futuro pr�ximo';
run;


DATA WORK.DADOS_ENEM_1998;
INFILE 'C:\MICRODADOS_ENEM_1998.csv' /*local do arquivo*/
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

;

ATTRIB TP_FAIXA_ETARIA FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB TP_SEXO FORMAT=$SEXO10.;
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

LABEL
NU_INSCRICAO = 'N�mero de inscri��o no ENEM.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA = 'Faixa et�ria do inscrito'
TP_SEXO = 'Sexo do inscrito'
CO_MUNICIPIO_RESIDENCIA = 'C�digo do Munic�pio em que o inscrito mora:'
NO_MUNICIPIO_RESIDENCIA = 'Nome do munic�pio em que o inscrito mora'
CO_UF_RESIDENCIA = 'C�digo da Unidade da Federa��o da residencia do inscrito'
SG_UF_RESIDENCIA = 'Sigla da Unidade da Federa��o da residencia do inscrito'
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
Q3 = 'Entre que meses nasceu'
Q4 = 'Como se considera'
Q5 = 'Qual o estado civil'
Q6 = 'Com quem  mora'
Q7 = 'Quantidade de pessoas que moram no domic�lio incluindo o candidato'
Q8 = 'Quantidade de irm�os do candidato do ENEM'
Q9 = 'Quantidade de filhos do candidato do ENEM'
Q10 = 'O grau de escolaridade do pai do candidato'
Q11 = 'Qual a profiss�o ou ocupa��o do pai'
Q12 = 'O grau de escolaridade da m�e do candidato'
Q13 = 'Qual a profiss�o ou ocupa��o da m�e'
Q14 = 'Anos que levou para concluir o ensino fundamental (1� grau)'
Q15 = 'Tipo de escola que cursou o ensino fundamental (1� grau)'
Q16 = 'Depend�ncia administrativa do estabelecimento que o candidato do ENEM concluiu o ensino fundamental (1� grau)'
Q17 = 'Modalidade de ensino que o candidato concluiu o ensino fundamental'
Q18 = 'Ano de conclus�o do ensino m�dio (2� grau)'
Q19 = 'Anos que levou para concluir o ensino m�dio (2� grau)'
Q20 = 'Turno que cursou o ensino m�dio (2� grau)'
Q21 = 'Turno que concluir� ou concluiu o ensino m�dio (2� grau)'
Q22 = 'Tipo de estabelecimento que concluir� ou conclui o ensino m�dio (2� grau)'
Q23 = 'Tipo de escola que cursou o ensino m�dio (2�grau)'
Q24 = 'Modalidade de ensino que o candidato concluiu o ensino m�dio (2� grau)'
Q25 = 'Fez curso/atividade: de l�ngua estrangeira fora da escola durante o ensino m�dio (2� grau)'
Q26 = 'Fez curso/atividade: de computa��o ou inform�tica fora da escola durante o ensino m�dio (2� grau)'
Q27 = 'Fez curso/atividade: de instrumento musical fora da escola durante o ensino m�dio (2� grau)'
Q28 = 'Fez curso/atividade: ginastica, esportes fora da escola durante o ensino m�dio (2� grau)'
Q29 = 'Fez curso/atividade: artes pl�sticas em geral fora da escola durante o ensino m�dio (2� grau)'
Q30 = 'Fez curso preparat�rio para o vestibular (cursinho) fora da escola durante o ensino m�dio (2� grau)'
Q31 = 'Fez outra atividade ou curso l fora da escola durante o ensino m�dio (2� grau)'
Q32 = 'Com que frequ�ncia l� jornais'
Q33 = 'Com que frequ�ncia l� revistas de informa��o geral'
Q34 = 'Com que frequ�ncia l� revistas de humor / quadrinhos'
Q35 = 'Com que frequ�ncia l� revistas cient�ficas (Ci�ncia Hoje, Super Interessante, etc.)'
Q36 = 'Com que frequ�ncia l� romances, livros de fic��o'
Q37 = 'O quanto � importante para o candidato ser um sucesso na sua carreira ou no seu trabalho'
Q38 = 'O quanto � importante para o candidato ter um bom trabalho ou uma boa profiss�o'
Q39 = 'O quanto � importante para o candidato  ter um diploma universit�rio'
Q40 = 'O quanto � importante para o candidato conseguir um emprego'
Q41 = 'O quanto � importante para o candidato ganhar um bom sal�rio'
Q42 = 'O quanto � importante para o candidato construir uma fam�lia, ter filhos? (se ainda n�o tem sua pr�pria fam�lia)'
Q43 = 'O quanto � importante para o candidato encontrar um(a) parceiro(a) e casar? (se ainda n�o � casado  ou casada)'
Q44 = 'Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de conseguir um emprego'
Q45 = 'Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de utilizar no trabalho ou na profiss�o as habilidades que   desenvolveu no ensino m�dio (2� grau)'
Q46 = 'Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de ganhar um bom sal�rio'
Q47 = 'Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de  ser um sucesso no trabalho ou na profiss�o'
Q48 = 'Ao concluir o ensino m�dio (2� grau), o candidato do ENEM considera que ter� oportunidade de trabalhar por conta pr�pria/abrir seu pr�prio neg�cio'
Q49 = 'Em rela��o a sua experi�ncia educacional em todo o per�odo do ensino m�dio (2� grau), o candidato do ENEM se sente:'
Q50 = 'Voc� continuar� seus estudos ou seu trabalho utilizando o conhecimento te�rico e pr�tico recebido no ensino m�dio (2� grau)'
Q51 = 'Ao terminar o ensino m�dio (2� grau) o candidato do ENEM se considera capacitado(a) para desenvolver uma carreira ou um trabalho na sociedade moderna utilizando os conhecimentos de inform�tica adquiridos na escola;'
Q52 = 'Ao terminar o ensino m�dio (2� grau) o candidato do ENEM se considera capacitado(a) para desenvolver uma carreira ou um trabalho na sociedade moderna utilizando os de l�ngua estrangeira adquiridos na escola:'
Q53 = 'Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende procurar um emprego e trabalhar'
Q54 = 'Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende prestar vestibular e continuar os estudos no ensino superior'
Q55 = 'Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende fazer curso(s) profissionalizante(s) e me preparar para o trabalho'
Q56 = 'Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende trabalhar por conta pr�pria/trabalhar em neg�cio da fam�lia'
Q57 = 'Ao concluir o ensino m�dio (2� grau) o candidato do ENEM pretende constituir uma fam�lia/encontrar um(a) companheiro(a) e casar/casar e ter filhos'
Q58 = 'Voc� considera que conhece suficientemente a atividade de trabalho que voc� escolheu'
Q59 = 'Voc� considera que desenvolveu no ensino m�dio (2� grau) as habilidades e t�cnicas necess�rias para trabalhar na atividade que voc� escolheu'
Q60 = 'O quanto � importante para o candidato estar formando ou ter-se formado no ensino m�dio (2� grau)'
Q61 = 'A obten��o de um certificado de conclus�o de curso/obten��o de um diploma foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?'
Q62 = 'Forma��o b�sica necess�ria para obter um emprego melhor  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?'
Q63 = 'Forma��o b�sica necess�ria para obter um emprego melhor  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?'
Q64 = '� aquisi��o de cultura geral/amplia��o de minha forma��o pessoal  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?'
Q65 = '� forma��o b�sica necess�ria para continuar os estudos em uma universidade/faculdade  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?'
Q66 = 'Fazer muitos amigos/conhecer v�rias pessoas foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?'
Q67 = 'Atender a expectativa de meus pais em rela��o a meus estudos  foi uma contribui��o do ensino m�dio (2� Grau) para a sua vida pessoal?'
Q68 = 'Voc� tem amigos que usam drogas'
Q69 = 'Voc� se interessa  em acompanhar a politica ?'
Q70 = 'Voc� se interessa  em  acompanhar esportes?'
Q71 = 'Voc� se interessa  em  acompanhar assuntos econ�micos?'
Q72 = 'Voc� se interessa  em acompanhar assuntos de moda?'
Q73 = 'Voc� se interessa  em acompanhar atividades culturais, como teatro, pintura, arte, etc.?'
Q74 = 'Voc� se interessa  em  acompanhar quest�es sobre comportamento sexual, como a AIDS, a gravidez indesejada etc.'
Q75 = 'Voc� se interessa  em acompanhar quest�es sobre o meio ambiente?'
Q76 = 'Voc� se interessa  em  quest�es sociais, como pobreza, o desemprego, a viol�ncia etc.'
Q77 = 'Voc� frequenta ou participa: igreja ou grupo religioso'
Q78 = 'Voc� frequenta ou participa:  partido pol�tico ou movimento social.'
Q79 = 'Voc� frequenta ou participa: sindicato ou associa��o profissional.'
Q80 = 'Voc� frequenta ou participa:  grupo de bairro ou associa��o comunit�ria'
Q81 = 'Voc� frequenta ou participa: clube recreativo ou associa��o esportiva.'
Q82 = 'Voc� frequenta ou participa:  gr�mio estudantil'
Q83 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Estudar.'
Q84 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Trabalhar.'
Q85 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Conviver com os amigos.'
Q86 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Estar com a fam�lia.'
Q87 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Ter um envolvimento amoroso, namorar.'
Q88 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Programas culturais, ir ao teatro, ao cinema, etc.'
Q89 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Escutar r�dio, assistir televis�o.'
Q90 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Ir a festas, bares.'
Q91 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Ler livros de fic��o, romances.'
Q92 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Fazer algum trabalho para a comunidade, ajudar as pessoas.'
Q93 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Praticar esportes, fazer gin�stica, cuidar do f�sico.'
Q94 = 'Qual o grau de import�ncias dessa atividade em sua vida? (onde 1 � o mais importante e 12 o menos importante) � Ter uma atividade pol�tica, participar de movimentos ou partidos.'
Q95 = 'Trabalha, ou j� trabalhou, ganhando algum sal�rio ou rendimento durante o ensino m�dio (2� grau)'
Q96 = 'Caso o candidato tenha trabalhado durante o ensino m�dio (2� grau), com que idade ele come�ou a exercer atividade remunerada'
Q97 = 'Voc� est� trabalhando atualmente?'
Q98 = 'Se voc� est� trabalhando atualmente, qual � a sua renda ou o seu sal�rio mensal?'
Q99 = 'Voc� continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau)'
Q100 = 'Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: curso de especializa��o/curso t�cnico'
Q101 = 'Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando:  curso preparat�rio para vestibular'
Q102 = 'Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: curso superior/universidade/faculdade'
Q103 = 'Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: curso de l�nguas'
Q104 = 'Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: curso de computa��o'
Q105 = 'Se voc� est� estudando no momento atual, voc� est� desenvolvendo/frequentando: outro curso'
Q106 = 'Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo: curso de especializa��o/curso t�cnico'
Q107 = 'Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo: curso preparat�rio para vestibular, mas n�o ingressei no  curso superior'
Q108 = 'Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo: Ingressou no curso superior/universidade/faculdade e me formei'
Q109 = 'Ingressou no curso superior/universidade/faculdade, mas n�o  me formei'
Q110 = 'Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo:  curso de l�ngua estrangeira'
Q111 = 'Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo:  curso de computa��o ou inform�tica'
Q112 = 'Se voc� est� estudando no momento atual, mas continuou seus estudos depois de ter conclu�do o ensino m�dio (2� Grau), voc� est� desenvolvendo: outro curso'
Q113 = 'Voc� est� trabalhando?'
Q114 = 'Se est� trabalhando, qual � a sua atividade'
Q115 = 'Est� atualmente trabalhando na ocupa��o para a qual voc� se preparou nos estudos'
Q116 = 'H� quanto tempo est� trabalhando nessa atividade'
Q117 = 'Se est� trabalhando atualmente, qual � a renda ou o seu sal�rio mensal'
Q118 = 'Se n�o est� trabalhando atualmente, qual � o principal motivo'
Q119 = 'Voc� participa com sua renda mensal no sustento econ�mico de sua fam�lia'
Q120 = 'Se voc� tem fam�lia qual a renda total mensal aproximada, no seu domic�lio?'
Q121 = 'Sua fam�lia tem Autom�vel'
Q122 = 'Sua fam�lia tem TV em cores'
Q123 = 'Sua fam�lia tem Microcomputador'
Q124 = 'Sua fam�lia tem Videocassete'
Q125 = 'Sua fam�lia tem M�quina de lavar roupa'
Q126 = 'Sua fam�lia tem aspirador de p�'
Q127 = 'Sua fam�lia tem geladeira'
Q128 = 'Sua fam�lia tem freezer'
Q129 = 'Sua fam�lia tem  casa pr�pria'
Q130 = 'Sua fam�lia tem  empregada mensalista'
Q131 = 'Sua fam�lia tem bicicleta'
Q132 = 'Sua fam�lia tem motocicleta'
Q133 = 'Sua fam�lia tem autom�vel'
Q134 = 'Sua fam�lia tem instrumento musical'
Q135 = 'Sua fam�lia tem mesa de estudos pr�pria'
Q136 = 'Sua fam�lia tem calculadora de bolso'
Q137 = 'Sua fam�lia tem microcomputador'


;IF NU_INSCRICAO = . THEN DELETE;

RUN;