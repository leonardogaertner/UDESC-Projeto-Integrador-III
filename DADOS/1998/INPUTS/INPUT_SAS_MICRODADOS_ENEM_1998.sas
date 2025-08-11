
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Estudos, Pesquisas e Disseminação				  */
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* MICRODADOS_ENEM_1998.CSV no diretório C:\ do computador.			      */
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
	value  $PRESENCA
		0='Faltou à prova'
		1='Presente à prova';
	value  $PROVA
		A= 'Amarela'
		B= 'Branca'
		G= 'Grafite'
		Z= 'Azul';
	value  $STATUS_REDACAO
		F='Faltou à prova'
		P='Presente à prova';
	value  $QSE
		0='Não respondeu o questionário socioecômico'
		1='Respondeu o questionário socioecômico';	
 value  $Qum
	A= 'Feminino'
	B= 'Masculino';
 value  $Qdois
	A= 'Após 1981'
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
	E= 'Indígena.';
 value  $Qcinco
	A= 'Solteiro(a)'
	B= 'Casado(a) / mora com um(a) companheiro(a)'
	C= 'Separado(a) / divorciado(a) / desquitado(a)'
	D= 'Viúvo(a)';
 value  $Qseis
	A= 'Com o pai e mãe'
	B= 'Só com o pai'
	C= 'Só com a mãe'
	D= 'Com parentes/amigos'
	E= 'Com pai e mãe em nova união'
	F= 'Sozinho(a)'
	G= 'Outra situação';
 value  $Qsete
	A= 'Uma pessoa'
	B= 'Duas pessoas'
	C= 'Três pessoas'
	D= 'Quatro pessoas'
	E= 'Cinco pessoas'
	F= 'Seis pessoas'
	G= 'Mais de seis pessoas';
 value  $Qoito
	A= 'Não tenho irmãos'
	B= 'Um irmão'
	C= 'Dois irmãos'
	D= 'Três irmãos'
	E= 'Quatro ou mais irmãos';
 value  $Qnove
	A= 'Não tenho filhos'
	B= 'Um filho'
	C= 'Dois filhos'
	D= 'Três filhos'
	E= 'Quatro ou mais filhos';
 value  $Qdez
	A= 'Nunca frequentou a escola'
	B= 'Da primeira à quarta série do ensino fundamental (antigo primário)'
	C= 'Da quinta à oitava série do ensino fundamental (antigo ginásio)'
	D= 'Ensino Médio (2º grau) incompleto'
	E= 'Ensino Médio (2º grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'Pós-graduação';
 value  $Qonze
	A= 'Trabalhador do setor de produção industrial (com registro ou carteira assinada)'
	B= 'Trabalhador do setor primário/agricultura/pecuária/pesca (com registro ou carteira assinada)'
	C= 'Trabalhador do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)'
	D= 'Funcionário do setor público'
	E= 'Gerente, administrador ou diretor de empresa privada'
	F= 'Trabalha no próprio negócio/empresa ou comércio próprio'
	G= 'Profissional liberal, professor, técnico de nível superior'
	H= 'Trabalhador do setor informal (sem carteira assinada)'
	I= 'Desempregado'
	J= 'Aposentado'
	L= 'Não sei';
 value  $Qdoze
	A= 'Nunca frequentou a escola'
	B= 'Da primeira à quarta série do ensino fundamental (antigo primário)'
	C= 'Da quinta à oitava série do ensino fundamental (antigo ginásio)'
	D= 'Ensino Médio (2º grau) incompleto'
	E= 'Ensino Médio (2º grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'Pós-graduação';
 value  $Qtreze
	A= 'Trabalhadora do setor de produção industrial (com registro ou carteira assinada)'
	B= 'Trabalhadora do setor primário/agricultura/pecuária/pesca (com registro ou carteira assinada)'
	C= 'Trabalhadora do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)'
	D= 'Funcionária do setor público'
	E= 'Gerente, administradora ou diretora de empresa privada'
	F= 'Trabalha no próprio negócio/empresa ou comércio próprio'
	G= 'Profissional liberal, professora, técnica de nível superior'
	H= 'Trabalhadora do setor informal (sem carteira assinada)'
	I= 'Desempregada '
	J= 'Aposentada '
	L= 'Dona de casa'
	M= 'Não sei';
 value  $Qcatorze
	A= 'Menos de 8 anos '
	B= '8 anos'
	C= '9 anos'
	D= '10 anos'
	E= '11 anos'
	F= 'Mais de 11 anos';
 value  $Qquinze
	A= 'Somente em escola pública'
	B= 'Parte em escola pública e parte em escola particular '
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
	A= 'Vou concluí-lo no segundo semestre de 1998 '
	B= 'Concluí-o no primeiro semestre de 1998 '
	C= 'Concluí-o em 1997'
	D= 'Concluí-o em 1996'
	E= 'Concluí-o em 1995'
	F= 'Concluí-o entre 1991 e 1994 '
	G= 'Concluí-o antes de 1991';
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
	A= 'Somente em escola pública'
	B= 'Parte em escola pública e parte em escola particular '
	C= 'Somente em escola particular';
 value  $Qvintequatro
	A= 'Ensino regular'
	B= 'Ensino supletivo';
 value  $Qvintecinco
	A= 'Sim'
	B= 'Não';
 value  $Qvinteseis
	A= 'Sim'
	B= 'Não';
 value  $Qvintesete
	A= 'Sim'
	B= 'Não';
 value  $Qvinteoito
	A= 'Sim'
	B= 'Não';
 value  $Qvintenove
	A= 'Sim'
	B= 'Não';
 value  $Qtrinta
	A= 'Sim'
	B= 'Não';
 value  $Qtrintaum
	A= 'Sim'
	B= 'Não';
 value  $Qtrintadois
	A= 'Sempre '
	B= 'Ás vezes'
	C= 'Não';
 value  $Qtrintatres	
	A= 'Sempre '
	B= 'Ás vezes'
	C= 'Não';
 value  $Qtrintaquatro	
	A= 'Sempre '
	B= 'Ás vezes'
	C= 'Não';
 value  $Qtrintacinco	
	A= 'Sempre '
	B= 'Ás vezes'
	C= 'Não';
 value  $Qtrintaseis	
	A= 'Sempre '
	B= 'Ás vezes'
	C= 'Não';
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
	A= 'Não sei'
	B= 'Já consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentacinco	
	A= 'Não sei'
	B= 'Já consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentaseis	
	A= 'Não sei'
	B= 'Já consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentasete	
	A= 'Não sei'
	B= 'Já consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentaoito	
	A= 'Não sei'
	B= 'Já consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qquarentanove	
	A= 'Não sei'
	B= 'Já consegui'
	C= 'Boa oportunidade '
	D= 'Pouca oportunidade '
	E= 'Nenhuma oportunidade';
 value  $Qcinquenta
	A= 'Não '
	B= 'Preferencialmente não '
	C= 'Talvez'
	D= 'Certamente';
 value  $Qcinquentaum
	A= 'Sim, na escola obtive algum conhecimento de informática e uso de computadores'
	B= 'Sim, mas obtive os conhecimentos de informática fora da escola regular'
	C= 'Não, nunca tive acesso ao conhecimento de computadores e informática';
 value  $Qcinquentadois
	A= 'Sim, na escola obtive algum conhecimento de informática e uso de computadores'
	B= 'Sim, mas obtive os conhecimentos de informática fora da escola regular'
	C= 'Não, nunca tive acesso ao conhecimento de computadores e informática';
 value  $Qcinquentatres
	A= 'Não pretendo'
	B= 'Imediatamente após estar formado'
	C= 'No decorrer dos próximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentaquatro
	A= 'Não pretendo'
	B= 'Imediatamente após estar formado'
	C= 'No decorrer dos próximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentacinco
	A= 'Não pretendo'
	B= 'Imediatamente após estar formado'
	C= 'No decorrer dos próximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentaseis
	A= 'Não pretendo'
	B= 'Imediatamente após estar formado'
	C= 'No decorrer dos próximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentasete
	A= 'Não pretendo'
	B= 'Imediatamente após estar formado'
	C= 'No decorrer dos próximos 1 ou 2 anos '
	D= 'Num futuro mais distante';
 value  $Qcinquentaoito
	A= 'Sim, muito'
	B= 'Conheço razoavelmente '
	C= 'Conheço pouco'
	D= 'Não conheço nada sobre essa atividade';
 value  $Qcinquentanove
	A= 'Sim'
	B= 'Adquiri-as razoavelmente '
	C= 'Adquiri algumas'
	D= 'Não adquiri nenhuma habilidade ou técnica necessárias a essa atividade';
 value  $Qsessenta
	A= 'Muito importante '
	B= 'Importante  '
	C= 'Pouco importante'
	D= 'Nem um pouco importante';
 value  $Qsessentaum
	A= 'Sim'
	B= 'Não';
 value  $Qsessentadois	
	A= 'Sim'
	B= 'Não';
 value  $Qsessentatres	
	A= 'Sim'
	B= 'Não';
 value  $Qsessentaquatro
	A= 'Sim'
	B= 'Não';
 value  $Qsessentacinco	
	A= 'Sim'
	B= 'Não';
 value  $Qsessentaseis	
	A= 'Sim'
	B= 'Não';
 value  $Qsessentasete	
	A= 'Sim'
	B= 'Não';
 value  $Qsessentaoito
	A= 'Sim, amigos próximos.'
	B= 'Sim, amigos distantes.'
	C= 'Não.';
 value  $Qsessentanove
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'Só um pouco'
	D= 'Não, não me interesso';
 value  $Qsetenta
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'Só um pouco'
	D= 'Não, não me interesso';
 value  $Qsetentaum	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'Só um pouco'
	D= 'Não, não me interesso';
 value  $Qsetentadois	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'Só um pouco'
	D= 'Não, não me interesso';
 value  $Qsetentatres	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'Só um pouco'
	D= 'Não, não me interesso';
 value  $Qsetentaquatro	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'Só um pouco'
	D= 'Não, não me interesso';
 value  $Qsetentacinco	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'Só um pouco'
	D= 'Não, não me interesso';
 value  $Qsetentaseis	
	A= 'Sim, muito'
	B= 'Sim, mais ou menos '
	C= 'Só um pouco'
	D= 'Não, não me interesso';
 value  $Qsetentasete
	A= 'Sim, sempre '
	B= 'Sim, às vezes'
	C= 'Não';
 value  $Qsetentaoito	
	A= 'Sim, sempre '
	B= 'Sim, às vezes'
	C= 'Não';
 value  $Qsetentanove	
	A= 'Sim, sempre '
	B= 'Sim, às vezes'
	C= 'Não';
 value  $Qoitenta	
	A= 'Sim, sempre '
	B= 'Sim, às vezes'
	C= 'Não';
 value  $Qoitentaum	
	A= 'Sim, sempre '
	B= 'Sim, às vezes'
	C= 'Não';
 value  $Qoitentadois	
	A= 'Sim, sempre '
	B= 'Sim, às vezes'
	C= 'Não';
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
	A= 'Sim, trabalhei durante todo o curso (até 20 horas semanais)'
	B= 'Sim, trabalhei durante todo o curso (de 21 a 30 horas semanais)'
	C= 'Sim, trabalhei durante todo o curso (de 31 a 40 horas semanais)'
	D= 'Sim, mas trabalhei apenas durante alguns períodos'
	E= 'Não trabalhei durante esse tempo';
 value  $Qnoventaseis
	A= 'Antes dos 14 anos'
	B= 'Entre 14 e 16 anos'
	C= 'Entre 17 e 18 anos'
	D= 'Após os 18 anos';
 value  $Qnoventasete
	A= 'Sim'
	B= 'Não, estou desempregado/estou procurando emprego';
 value  $Qnoventaoito
	A= 'Até 1 salário mínimo (até R$130,00)'
	B= 'Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)'
	C= 'De 2 a 5 salários mínimos (de R$261,00 a R$650,00)'
	D= 'De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)'
	E= 'De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)'
	F= 'De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)'
	G= 'Mais de 50 salários mínimos (mais de R$6.500,00)';
 value  $Qnoventanove
	A= 'Sim, estou estudando no momento atual'
	B= 'Sim, mas não estou estudando no momento atual'
	C= 'Não.';
 value  $Qcem
	A= 'Sim'
	B= 'Não';
 value  $Qcemum
	A= 'Sim'
	B= 'Não';
 value  $Qcemdois	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtres	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquatro	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinco	
	A= 'Sim'
	B= 'Não';
 value  $Qcemseis	
	A= 'Sim'
	B= 'Não';
 value  $Qcemsete	
	A= 'Sim'
	B= 'Não';
 value  $Qcemoito	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnove	
	A= 'Sim'
	B= 'Não';
 value  $Qcemdez	
	A= 'Sim'
	B= 'Não';
 value  $Qcemonze	
	A= 'Sim'
	B= 'Não';
 value  $Qcemdoze	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtreze	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcatorze
	A= 'Trabalhador do setor de produção industrial'
	B= 'Trabalhador do setor primário/agricultura/pecuária/pesca'
	C= 'Trabalhador do setor de prestação de serviços/comércio/banco/transporte, etc. (com registro ou carteira assinada)'
	D= 'Funcionário do setor público'
	E= 'Gerente, administrador ou diretor de empresa privada'
	F= 'Trabalha no próprio negócio/empresa ou comércio próprio'
	G= 'Profissional liberal, professor, técnico de nível superior'
	H= 'Trabalhador do setor informal (sem carteira assinada)';
 value  $Qcemquinze
	A= 'Sim'
	B= 'Não, porque não consegui trabalho na minha profissão'
	C= 'Não me preparei para um trabalho em específico/minha formação foi geral';
 value  $Qcemdezesseis
	A= 'Menos de 1 ano'
	B= 'Entre 1 e 2 anos'
	C= 'Entre 2 e 4 anos'
	D= 'Mais de 4 anos';
 value  $Qcemdezessete
	A= 'Até 1 salário mínimo (até R$130,00)'
	B= 'Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)'
	C= 'De 2 a 5 salários mínimos (de R$261,00 a R$650,00)'
	D= 'De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)'
	E= 'De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)'
	F= 'De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)'
	G= 'Mais de 50 salários mínimos (mais de R$6.500,00)';
 value  $Qcemdezoito
	A= 'Não preciso trabalhar'
	B= 'Estava trabalhando, mas estou desempregado(a)'
	C= 'Não consigo encontrar um trabalho na minha ocupação'
	D= 'Estou estudando';
 value  $Qcemdezenove
	A= 'Sim, com todo o meu rendimento'
	B= 'Sim, com parte do meu rendimento'
	C= 'Não, tenho família, mas meus rendimentos são para meu próprio uso'
	D= 'Não tenho rendimentos'
	E= 'Não tenho família/meus rendimentos são só para meu próprio uso';
 value  $Qcemvinte
	A= 'Até 1 salário mínimo (até R$130,00)'
	B= 'Entre 1 e 2 salários mínimos (entre R$131,00 e R$260,00)'
	C= 'De 2 a 5 salários mínimos (de R$261,00 a R$650,00)'
	D= 'De 5 a 10 salário mínimos (de R$651,00 a R$1.300,00)'
	E= 'De 10 a 30 salários mínimos (de R$1.301,00 a R$3.900,00)'
	F= 'De 30 a 50 salários mínimos (de R$3.901,00 a R$6.500,00)'
	G= 'Mais de 50 salários mínimos (mais de R$6.500,00)'
	H= 'Não sabe';
 value  $Qcemvinteum
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintedois
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintetres
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintequatro
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintecinco
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvinteseis
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintesete
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvinteoito
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemvintenove
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemtrinta
	A= 'Não tem'
	B= '1'
	C= '2'
	D= '3 ou +';
 value  $Qcemtrintaum
	A= 'Sim'
	B= 'Não'
	C= 'Não, mas pretendo ter num futuro próximo';
 value  $Qcemtrintadois
	A= 'Sim'
	B= 'Não'
	C= 'Não, mas pretendo ter num futuro próximo';
 value  $Qcemtrintatres
	A= 'Sim'
	B= 'Não'
	C= 'Não, mas pretendo ter num futuro próximo';
 value  $Qcemtrintaquatro
	A= 'Sim'
	B= 'Não'
	C= 'Não, mas pretendo ter num futuro próximo';
 value  $Qcemtrintacinco	
	A= 'Sim'
	B= 'Não'
	C= 'Não, mas pretendo ter num futuro próximo';
 value  $Qcemtrintaseis	
	A= 'Sim'
	B= 'Não'
	C= 'Não, mas pretendo ter num futuro próximo';
 value  $Qcemtrintasete	
	A= 'Sim'
	B= 'Não'
	C= 'Não, mas pretendo ter num futuro próximo';
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
NU_INSCRICAO = 'Número de inscrição no ENEM.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA = 'Faixa etária do inscrito'
TP_SEXO = 'Sexo do inscrito'
CO_MUNICIPIO_RESIDENCIA = 'Código do Município em que o inscrito mora:'
NO_MUNICIPIO_RESIDENCIA = 'Nome do município em que o inscrito mora'
CO_UF_RESIDENCIA = 'Código da Unidade da Federação da residencia do inscrito'
SG_UF_RESIDENCIA = 'Sigla da Unidade da Federação da residencia do inscrito'
TP_PRESENCA = 'Presença a prova objetiva'
CO_PROVA = 'Tipo de prova'
VL_PERC_COMP1 = 'Nota da competência 1'
VL_PERC_COMP2 = 'Nota da competência 2'
VL_PERC_COMP3 = 'Nota da competência 3'
VL_PERC_COMP4 = 'Nota da competência 4'
VL_PERC_COMP5 = 'Nota da competência 5'
NU_NOTA_OBJETIVA = 'Nota da prova objetiva'
TX_RESPOSTAS_OBJETIVA = 'Vetor com as respostas da parte objetiva da prova'
TX_GABARITO_OBJETIVA = 'Vetor com o gabarito da parte objetiva da prova'
TP_STATUS_REDACAO = 'Presença à redação'
NU_NOTA_COMP1 = 'Nota da competência 1'
NU_NOTA_COMP2 = 'Nota da competência 2'
NU_NOTA_COMP3 = 'Nota da competência 3'
NU_NOTA_COMP4 = 'Nota da competência 4'
NU_NOTA_COMP5 = 'Nota da competência 5'
NU_NOTA_REDACAO = 'Nota da prova de redação'
IN_QSE = 'Resposta ao Questionário Socioeconômico'
Q1 = 'Sexo'
Q2 = 'Ano em que nasceu'
Q3 = 'Entre que meses nasceu'
Q4 = 'Como se considera'
Q5 = 'Qual o estado civil'
Q6 = 'Com quem  mora'
Q7 = 'Quantidade de pessoas que moram no domicílio incluindo o candidato'
Q8 = 'Quantidade de irmãos do candidato do ENEM'
Q9 = 'Quantidade de filhos do candidato do ENEM'
Q10 = 'O grau de escolaridade do pai do candidato'
Q11 = 'Qual a profissão ou ocupação do pai'
Q12 = 'O grau de escolaridade da mãe do candidato'
Q13 = 'Qual a profissão ou ocupação da mãe'
Q14 = 'Anos que levou para concluir o ensino fundamental (1º grau)'
Q15 = 'Tipo de escola que cursou o ensino fundamental (1º grau)'
Q16 = 'Dependência administrativa do estabelecimento que o candidato do ENEM concluiu o ensino fundamental (1º grau)'
Q17 = 'Modalidade de ensino que o candidato concluiu o ensino fundamental'
Q18 = 'Ano de conclusão do ensino médio (2º grau)'
Q19 = 'Anos que levou para concluir o ensino médio (2º grau)'
Q20 = 'Turno que cursou o ensino médio (2º grau)'
Q21 = 'Turno que concluirá ou concluiu o ensino médio (2º grau)'
Q22 = 'Tipo de estabelecimento que concluirá ou conclui o ensino médio (2º grau)'
Q23 = 'Tipo de escola que cursou o ensino médio (2ºgrau)'
Q24 = 'Modalidade de ensino que o candidato concluiu o ensino médio (2º grau)'
Q25 = 'Fez curso/atividade: de língua estrangeira fora da escola durante o ensino médio (2º grau)'
Q26 = 'Fez curso/atividade: de computação ou informática fora da escola durante o ensino médio (2º grau)'
Q27 = 'Fez curso/atividade: de instrumento musical fora da escola durante o ensino médio (2º grau)'
Q28 = 'Fez curso/atividade: ginastica, esportes fora da escola durante o ensino médio (2º grau)'
Q29 = 'Fez curso/atividade: artes plásticas em geral fora da escola durante o ensino médio (2º grau)'
Q30 = 'Fez curso preparatório para o vestibular (cursinho) fora da escola durante o ensino médio (2º grau)'
Q31 = 'Fez outra atividade ou curso l fora da escola durante o ensino médio (2º grau)'
Q32 = 'Com que frequência lê jornais'
Q33 = 'Com que frequência lê revistas de informação geral'
Q34 = 'Com que frequência lê revistas de humor / quadrinhos'
Q35 = 'Com que frequência lê revistas científicas (Ciência Hoje, Super Interessante, etc.)'
Q36 = 'Com que frequência lê romances, livros de ficção'
Q37 = 'O quanto é importante para o candidato ser um sucesso na sua carreira ou no seu trabalho'
Q38 = 'O quanto é importante para o candidato ter um bom trabalho ou uma boa profissão'
Q39 = 'O quanto é importante para o candidato  ter um diploma universitário'
Q40 = 'O quanto é importante para o candidato conseguir um emprego'
Q41 = 'O quanto é importante para o candidato ganhar um bom salário'
Q42 = 'O quanto é importante para o candidato construir uma família, ter filhos? (se ainda não tem sua própria família)'
Q43 = 'O quanto é importante para o candidato encontrar um(a) parceiro(a) e casar? (se ainda não é casado  ou casada)'
Q44 = 'Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de conseguir um emprego'
Q45 = 'Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de utilizar no trabalho ou na profissão as habilidades que   desenvolveu no ensino médio (2º grau)'
Q46 = 'Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de ganhar um bom salário'
Q47 = 'Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de  ser um sucesso no trabalho ou na profissão'
Q48 = 'Ao concluir o ensino médio (2° grau), o candidato do ENEM considera que terá oportunidade de trabalhar por conta própria/abrir seu próprio negócio'
Q49 = 'Em relação a sua experiência educacional em todo o período do ensino médio (2° grau), o candidato do ENEM se sente:'
Q50 = 'Você continuará seus estudos ou seu trabalho utilizando o conhecimento teórico e prático recebido no ensino médio (2º grau)'
Q51 = 'Ao terminar o ensino médio (2° grau) o candidato do ENEM se considera capacitado(a) para desenvolver uma carreira ou um trabalho na sociedade moderna utilizando os conhecimentos de informática adquiridos na escola;'
Q52 = 'Ao terminar o ensino médio (2° grau) o candidato do ENEM se considera capacitado(a) para desenvolver uma carreira ou um trabalho na sociedade moderna utilizando os de língua estrangeira adquiridos na escola:'
Q53 = 'Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende procurar um emprego e trabalhar'
Q54 = 'Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende prestar vestibular e continuar os estudos no ensino superior'
Q55 = 'Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende fazer curso(s) profissionalizante(s) e me preparar para o trabalho'
Q56 = 'Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende trabalhar por conta própria/trabalhar em negócio da família'
Q57 = 'Ao concluir o ensino médio (2° grau) o candidato do ENEM pretende constituir uma família/encontrar um(a) companheiro(a) e casar/casar e ter filhos'
Q58 = 'Você considera que conhece suficientemente a atividade de trabalho que você escolheu'
Q59 = 'Você considera que desenvolveu no ensino médio (2º grau) as habilidades e técnicas necessárias para trabalhar na atividade que você escolheu'
Q60 = 'O quanto é importante para o candidato estar formando ou ter-se formado no ensino médio (2º grau)'
Q61 = 'A obtenção de um certificado de conclusão de curso/obtenção de um diploma foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?'
Q62 = 'Formação básica necessária para obter um emprego melhor  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?'
Q63 = 'Formação básica necessária para obter um emprego melhor  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?'
Q64 = 'À aquisição de cultura geral/ampliação de minha formação pessoal  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?'
Q65 = 'À formação básica necessária para continuar os estudos em uma universidade/faculdade  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?'
Q66 = 'Fazer muitos amigos/conhecer várias pessoas foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?'
Q67 = 'Atender a expectativa de meus pais em relação a meus estudos  foi uma contribuição do ensino médio (2° Grau) para a sua vida pessoal?'
Q68 = 'Você tem amigos que usam drogas'
Q69 = 'Você se interessa  em acompanhar a politica ?'
Q70 = 'Você se interessa  em  acompanhar esportes?'
Q71 = 'Você se interessa  em  acompanhar assuntos econômicos?'
Q72 = 'Você se interessa  em acompanhar assuntos de moda?'
Q73 = 'Você se interessa  em acompanhar atividades culturais, como teatro, pintura, arte, etc.?'
Q74 = 'Você se interessa  em  acompanhar questões sobre comportamento sexual, como a AIDS, a gravidez indesejada etc.'
Q75 = 'Você se interessa  em acompanhar questões sobre o meio ambiente?'
Q76 = 'Você se interessa  em  questões sociais, como pobreza, o desemprego, a violência etc.'
Q77 = 'Você frequenta ou participa: igreja ou grupo religioso'
Q78 = 'Você frequenta ou participa:  partido político ou movimento social.'
Q79 = 'Você frequenta ou participa: sindicato ou associação profissional.'
Q80 = 'Você frequenta ou participa:  grupo de bairro ou associação comunitária'
Q81 = 'Você frequenta ou participa: clube recreativo ou associação esportiva.'
Q82 = 'Você frequenta ou participa:  grêmio estudantil'
Q83 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Estudar.'
Q84 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Trabalhar.'
Q85 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Conviver com os amigos.'
Q86 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Estar com a família.'
Q87 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Ter um envolvimento amoroso, namorar.'
Q88 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Programas culturais, ir ao teatro, ao cinema, etc.'
Q89 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Escutar rádio, assistir televisão.'
Q90 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Ir a festas, bares.'
Q91 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Ler livros de ficção, romances.'
Q92 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Fazer algum trabalho para a comunidade, ajudar as pessoas.'
Q93 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Praticar esportes, fazer ginástica, cuidar do físico.'
Q94 = 'Qual o grau de importâncias dessa atividade em sua vida? (onde 1 é o mais importante e 12 o menos importante) – Ter uma atividade política, participar de movimentos ou partidos.'
Q95 = 'Trabalha, ou já trabalhou, ganhando algum salário ou rendimento durante o ensino médio (2° grau)'
Q96 = 'Caso o candidato tenha trabalhado durante o ensino médio (2° grau), com que idade ele começou a exercer atividade remunerada'
Q97 = 'Você está trabalhando atualmente?'
Q98 = 'Se você está trabalhando atualmente, qual é a sua renda ou o seu salário mensal?'
Q99 = 'Você continuou seus estudos depois de ter concluído o ensino médio (2º Grau)'
Q100 = 'Se você está estudando no momento atual, você está desenvolvendo/frequentando: curso de especialização/curso técnico'
Q101 = 'Se você está estudando no momento atual, você está desenvolvendo/frequentando:  curso preparatório para vestibular'
Q102 = 'Se você está estudando no momento atual, você está desenvolvendo/frequentando: curso superior/universidade/faculdade'
Q103 = 'Se você está estudando no momento atual, você está desenvolvendo/frequentando: curso de línguas'
Q104 = 'Se você está estudando no momento atual, você está desenvolvendo/frequentando: curso de computação'
Q105 = 'Se você está estudando no momento atual, você está desenvolvendo/frequentando: outro curso'
Q106 = 'Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo: curso de especialização/curso técnico'
Q107 = 'Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo: curso preparatório para vestibular, mas não ingressei no  curso superior'
Q108 = 'Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo: Ingressou no curso superior/universidade/faculdade e me formei'
Q109 = 'Ingressou no curso superior/universidade/faculdade, mas não  me formei'
Q110 = 'Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo:  curso de língua estrangeira'
Q111 = 'Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo:  curso de computação ou informática'
Q112 = 'Se você está estudando no momento atual, mas continuou seus estudos depois de ter concluído o ensino médio (2º Grau), você está desenvolvendo: outro curso'
Q113 = 'Você está trabalhando?'
Q114 = 'Se está trabalhando, qual é a sua atividade'
Q115 = 'Está atualmente trabalhando na ocupação para a qual você se preparou nos estudos'
Q116 = 'Há quanto tempo está trabalhando nessa atividade'
Q117 = 'Se está trabalhando atualmente, qual é a renda ou o seu salário mensal'
Q118 = 'Se não está trabalhando atualmente, qual é o principal motivo'
Q119 = 'Você participa com sua renda mensal no sustento econômico de sua família'
Q120 = 'Se você tem família qual a renda total mensal aproximada, no seu domicílio?'
Q121 = 'Sua família tem Automóvel'
Q122 = 'Sua família tem TV em cores'
Q123 = 'Sua família tem Microcomputador'
Q124 = 'Sua família tem Videocassete'
Q125 = 'Sua família tem Máquina de lavar roupa'
Q126 = 'Sua família tem aspirador de pó'
Q127 = 'Sua família tem geladeira'
Q128 = 'Sua família tem freezer'
Q129 = 'Sua família tem  casa própria'
Q130 = 'Sua família tem  empregada mensalista'
Q131 = 'Sua família tem bicicleta'
Q132 = 'Sua família tem motocicleta'
Q133 = 'Sua família tem automóvel'
Q134 = 'Sua família tem instrumento musical'
Q135 = 'Sua família tem mesa de estudos própria'
Q136 = 'Sua família tem calculadora de bolso'
Q137 = 'Sua família tem microcomputador'


;IF NU_INSCRICAO = . THEN DELETE;

RUN;