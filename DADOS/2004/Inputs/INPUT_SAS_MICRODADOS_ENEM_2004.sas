
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Estudos, Pesquisas e Disseminação				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2004.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2004       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2004.CSV no diretório C:\ do computador.			      */
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
		0='Nenhum dos anteriores'
		1='Já concluiu'
		2='Concluirá em 2004'
		3='Concluirá após 2004';
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
		0='Faltou à prova'
		1='Presente na prova';
	value  $PROVA
		A= 'Amarela'
		B= 'Branca'
		R= 'Rosa'
		V= 'Verde';
	value  $STATUS_REDACAO
		B='Entregou a redação em branco'
		F='Faltou à prova'
		N='Redação anulada'
		P='Presente à prova';
	value  $QSE
		0='Não respondeu o questionário socioecômico'
		1='Respondeu o questionário socioecômico';	
 value  $Qum
	A= 'Feminino'
	B= 'Masculino';
 value  $Qdois
	A= 'Após 1987.'
	B= 'Em 1987.'
	C= 'Em 1986.'
	D= 'Em 1985.'
	E= 'Em 1984.'
	F= 'Em 1983.'
	G= 'Em 1982.'
	H= 'Entre 1978 e 1981.'
	I= 'Antes de 1978.';
 value  $Qtres
	A= 'Branco(a).'
	B= 'Pardo(a) / mulato(a).'
	C= 'Negro(a).'
	D= 'Amarelo(a).'
	E= 'Indígena.';
 value  $Qquatro
	A= 'Solteiro(a)'
	B= 'Casado(a) / mora com um(a) companheiro(a)'
	C= 'Separado(a) / divorciado(a) / desquitado(a)'
	D= 'Viúvo(a)';
 value  $Qcinco
	A= 'Em casa ou apartamento, com sua família'
	B= 'Em casa ou apartamento, sozinho(a)'
	C= 'Em quarto ou cômodo alugado, sozinho(a)'
	D= 'Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc'
	E= 'Outra situação';
 value  $Qseis
	A= 'Sim'
	B= 'Não';
 value  $Qsete
	A= 'Sim'
	B= 'Não';
 value  $Qoito
	A= 'Sim'
	B= 'Não';
 value  $Qnove	
	A= 'Sim'
	B= 'Não';
 value  $Qdez	
	A= 'Sim'
	B= 'Não';
 value  $Qonze	
	A= 'Sim'
	B= 'Não';
 value  $Qdoze	
	A= 'Sim'
	B= 'Não';
 value  $Qtreze	
	A= 'Sim'
	B= 'Não';
 value  $Qcatorze
	A= 'Duas pessoas'
	B= 'Três pessoas'
	C= 'Quatro pessoas'
	D= 'Cinco pessoas'
	E= 'Seis pessoas'
	F= 'Mais de 6 pessoas'
	G= 'Moro sozinho';
 value  $Qquinze
	A= 'Um filho'
	B= 'Dois filhos'
	C= 'Três filhos'
	D= 'Quatro ou mais filhos'
	E= 'Não tenho filhos';
 value  $Qdezesseis
	A= 'Não estudou'
	B= 'Da 1ª a 4ª série do ensino fundamental (antigo primário)'
	C= 'Da 5ª a 8ª do ensino fundamental (antigo ginásio)'
	D= 'Ensino Médio (2º grau) incompleto'
	E= 'Ensino Médio (2º grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'Pós-graduação'
	I= 'Não sei';
 value  $Qdezessete
	A= 'Não estudou'
	B= 'Da 1ª a 4ª série do ensino fundamental (antigo primário)'
	C= 'Da 5ª a 8ª do ensino fundamental (antigo ginásio)'
	D= 'Ensino Médio (2º grau) incompleto'
	E= 'Ensino Médio (2º grau) completo'
	F= 'Ensino Superior incompleto'
	G= 'Ensino Superior completo'
	H= 'Pós-graduação'
	I= 'Não sei';
 value  $Qdezoito
	A= 'Na agricultura, no campo, em fazenda ou na pesca'
	B= 'Na indústria'
	C= 'No comércio, banco, transporte ou outros serviços'
	D= 'Funcionário público do governo federal, estadual, ou do município, ou militar'
	E= 'Profissional liberal, professor ou técnico de nível superior'
	F= 'Trabalhador do setor informal (sem carteira assinada)'
	G= 'Trabalha em casa em serviços (costura, cozinha, aulas particulares, etc)'
	H= 'No lar'
	I= 'Não trabalha'
	J= 'Não sei';
 value  $Qdezenove
	A= 'Gerente, administrador ou diretor de empresa privada'
	B= 'Funcionário público (federal, estadual, ou municipal), com funções de direção'
	C= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando'
	D= 'Empregado no setor privado, com carteira assinada'
	E= 'Funcionário público (federal, estadual, ou municipal), sem função de direção'
	F= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando'
	G= 'Trabalho temporário, informal, sem carteira assinada'
	H= 'Trabalho por conta própria'
	I= 'Desempregado'
	J= 'Aposentado'
	K= 'Outra situação';
 value  $Qvinte
	A= 'Na agricultura, no campo, em fazenda ou na pesca'
	B= 'Na indústria'
	C= 'No comércio, banco, transporte ou outros serviços'
	D= 'Funcionário público do governo federal, estadual, ou do município, ou militar'
	E= 'Profissional liberal, professor ou técnico de nível superior'
	F= 'Trabalhador do setor informal (sem carteira assinada)'
	G= 'Trabalha em casa em serviços (costura, cozinha, aulas particulares, etc)'
	H= 'No lar'
	I= 'Não trabalha'
	J= 'Não sei';
 value  $Qvinteum
	A= 'Gerente, administrador ou diretor de empresa privada'
	B= 'Funcionário público (federal, estadual, ou municipal), com funções de direção'
	C= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando'
	D= 'Empregado no setor privado, com carteira assinada'
	E= 'Funcionário público (federal, estadual, ou municipal), sem função de direção'
	F= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando'
	G= 'Trabalho temporário, informal, sem carteira assinada'
	H= 'Trabalho por conta própria'
	I= 'Desempregado'
	J= 'Aposentado'
	K= 'Outra situação';
 value  $Qvintedois
	A= 'Até 1 salário mínimo (até R$ 260,00 inclusive).'
	B= 'De 1 a 2 salários mínimos (R$ 260,00 a R$ 520,00 inclusive)'
	C= 'De 2 a 5 salários mínimos (R$ 520,00 a R$ 1.300,00 inclusive).'
	D= 'De 5 a 10 salários mínimos (R$ 1.300,00 a R$ 2.600,00 inclusive).'
	E= 'De 10 a 30 salários mínimos (R$ 2.600,00 a R$ 7.800,00 inclusive).'
	F= 'De 30 a 50 salários mínimos (R$ 7.800,00 a R$ 13.000,00 inclusive).'
	G= 'Mais de 50 salários mínimos (mais de R$ 13.000,00).'
	H= 'Nenhuma renda.';
 value  $Qvintetres
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qvintequatro
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qvintecinco
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qvinteseis	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qvintesete	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qvinteoito	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qvintenove	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qtrinta	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qtrintaum	
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qtrintadois
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qtrintatres
	A= '1'
	B= '2'
	C= '3 ou mais'
	D= 'Não tem';
 value  $Qtrintaquatro
	A= 'Sim'
	B= 'Não';
 value  $Qtrintacinco	
	A= 'Sim'
	B= 'Não';
 value  $Qtrintaseis	
	A= 'Sim'
	B= 'Não';
 value  $Qtrintasete	
	A= 'Sim'
	B= 'Não';
 value  $Qtrintaoito
	A= 'Para testar seus conhecimentos / capacidade de raciocínio'
	B= 'Para entrar na faculdade / conseguir pontos para o vestibular'
	C= 'Para ter um bom emprego / saber se está preparado(a) para o futuro profissional'
	D= 'Não sei';
 value  $Qtrintanove
	A= 'Para ter mais responsabilidade'
	B= 'Independência financeira'
	C= 'Adquirir experiência'
	D= 'Crescer profissionalmente'
	E= 'Sentir-me útil'
	F= 'Para fazer amigos, conhecer pessoas'
	G= 'Não acho importante ter um trabalho'
	H= 'Para ajudar minha comunidade indígena';
 value  $Qquarenta
	A= 'Sim'
	B= 'Nunca trabalhei'
	C= 'Nunca trabalhei, mas estou procurando trabalho';
 value  $Qquarentaum
	A= 'Sim, todo o tempo'
	B= 'Sim, menos de 1 ano'
	C= 'Sim, de 1 a 2 anos'
	D= 'Sim, de 2 a 3 anos'
	E= 'Não';
 value  $Qquarentadois
	A= 'Sem jornada fixa, até 10 horas semanais'
	B= 'De 11 a 20 horas semanais'
	C= 'De 21 a 30 horas semanais'
	D= 'De 31 a 40 horas semanais'
	E= 'Mais de 40 horas semanais';
 value  $Qquarentatres
	A= 'Para ajudar meus pais nas despesas com a casa, sustentar a família'
	B= 'Para ser independente (ter meu sustento, ganhar meu próprio dinheiro)'
	C= 'Para adquirir experiência'
	D= 'Para ajudar minha comunidade'
	E= 'Outra finalidade';
 value  $Qquarentaquatro
	A= 'Antes dos 14 anos'
	B= 'Entre 14 e 16 anos'
	C= 'Entre 17 e 18 anos'
	D= 'Após 18 anos';
 value  $Qquarentacinco
	A= 'Até 1 salário mínimo (até R$ 260,00 inclusive).'
	B= 'De 1 a 2 salários mínimos (R$ 260,00 a R$ 520,00 inclusive)'
	C= 'De 2 a 5 salários mínimos (R$ 520,00 a R$ 1.300,00 inclusive).'
	D= 'De 5 a 10 salários mínimos (R$ 1.300,00 a R$ 2.600,00 inclusive).'
	E= 'De 10 a 30 salários mínimos (R$ 2.600,00 a R$ 7.800,00 inclusive).'
	F= 'De 30 a 50 salários mínimos (R$ 7.800,00 a R$ 13.000,00 inclusive).'
	G= 'Mais de 50 salários mínimos (mais de R$ 13.000,00).'
	H= 'Nenhuma renda.';
 value  $Qquarentaseis
	A= 'Sim'
	B= 'Não';
 value  $Qquarentasete
	A= 'Na agricultura (campo, fazenda, pesca).'
	B= 'Na indústria.'
	C= 'No comércio, banco, transporte ou outros serviços.'
	D= 'Como empregado(a) em casa de família.'
	E= 'Como funcionário(a) do governo federal, do estado ou do município, ou militar.'
	F= 'Como profissional liberal, professor(a) ou técnico(a) de nível superior.'
	G= 'No lar.'
	H= 'Trabalho em casa em serviços (costura, comida, aulas particulares, etc.).'
	I= 'Não trabalha';
 value  $Qquarentaoito
	A= 'Gerente, administrador ou diretor de empresa privada'
	B= 'Funcionário público (federal, estadual, ou municipal), com funções de direção'
	C= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando'
	D= 'Empregado no setor privado, com carteira assinada'
	E= 'Funcionário público (federal, estadual, ou municipal), sem função de direção'
	F= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando'
	G= 'Trabalho temporário, informal, sem carteira assinada'
	H= 'Trabalho por conta própria'
	I= 'Desempregado'
	J= 'Aposentado'
	K= 'Outra situação';
 value  $Qquarentanove
	A= 'Menos de 1 ano'
	B= 'Entre 1 e 2 anos'
	C= 'Entre 2 e 4 anos'
	D= 'Mais de 4 anos';
 value  $Qcinquenta
	A= 'Sim'
	B= 'Não';
 value  $Qcinquentaum	
	A= 'Sim'
	B= 'Não';
 value  $Qcinquentadois	
	A= 'Sim'
	B= 'Não';
 value  $Qcinquentatres	
	A= 'Sim'
	B= 'Não';
 value  $Qcinquentaquatro
	A= 'Atrapalhou os estudos'
	B= 'Possibilitou crescimento pessoal'
	C= 'Atrapalhou os estudos, mas possibilitou crescimento pessoal'
	D= 'Não atrapalhou os estudos'
	E= 'Não trabalho / não trabalhei';
 value  $Qcinquentacinco
	A= 'Sim'
	B= 'Não'
	C= 'Não sei';
 value  $Qcinquentaseis	
	A= 'Sim'
	B= 'Não';
 value  $Qcinquentasete	
	A= 'Sim'
	B= 'Não';
 value  $Qcinquentaoito	
	A= 'Sim'
	B= 'Não';
 value  $Qcinquentanove	
	A= 'Sim'
	B= 'Não';
 value  $Qsessenta	
	A= 'Sim'
	B= 'Não';
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
	A= 'Sim'
	B= 'Não';
 value  $Qsessentanove	
	A= 'Sim'
	B= 'Não';
 value  $Qsetenta
	A= 'Menos de 8 anos'
	B= '8 anos'
	C= '9 anos'
	D= '10 anos'
	E= '11 anos'
	F= 'Mais de 11 anos';
 value  $Qsetentaum
	A= 'Somente em escola pública'
	B= 'Parte em escola pública e parte em escola particular'
	C= 'Somente em escola particular';
 value  $Qsetentadois
	A= 'Vou concluí-lo após 2004.'
	B= 'Vou concluí-lo no segundo semestre de 2004.'
	C= 'No primeiro semestre de 2004.'
	D= 'Em 2003.'
	E= 'Em 2002.'
	F= 'Em 2001.'
	G= 'Em 2000.'
	H= 'Em 1999.'
	I= 'Entre 1997 e 1998.'
	J= 'Antes de 1997.';
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
	A= 'Somente em escola pública'
	B= 'Maior parte em escola pública'
	C= 'Somente em escola particular'
	D= 'Maior parte em escola particular';
 value  $Qsetentaseis
	A= 'Ensino regular'
	B= 'Educação para jovens e adultos (antigo supletivo)'
	C= 'Ensino técnico / ensino profissional';
 value  $Qsetentasete
	A= 'Sim'
	B= 'Não';
 value  $Qsetentaoito	
	A= 'Sim'
	B= 'Não';
 value  $Qsetentanove	
	A= 'Sim'
	B= 'Não';
 value  $Qoitenta	
	A= 'Sim'
	B= 'Não';
 value  $Qoitentaum	
	A= 'Sim'
	B= 'Não';
 value  $Qoitentadois
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= 'Às vezes'
	C= 'Nunca';
 value  $Qoitentatres	
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= 'Às vezes'
	C= 'Nunca';
 value  $Qoitentaquatro	
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= 'Às vezes'
	C= 'Nunca';
 value  $Qoitentacinco	
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= 'Às vezes'
	C= 'Nunca';
 value  $Qoitentaseis	
	A= 'Frequentemente (todo dia ou quase todo dia)'
	B= 'Às vezes'
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
	A= 'Eu me considero preparado(a) para entrar no mercado de trabalho'
	B= 'Apesar de ter frequentado uma boa escola, eu me considero despreparado(a), pois não aprendi o suficiente para conseguir um emprego'
	C= 'Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola, que não me preparou o suficiente'
	D= 'Não sei';
 value  $Qcemdoze	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtreze	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcatorze	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquinze	
	A= 'Sim'
	B= 'Não';
 value  $Qcemdezesseis	
	A= 'Sim'
	B= 'Não';
 value  $Qcemdezessete	
	A= 'Sim'
	B= 'Não';
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
	L= 'Não sei';
 value  $Qcemtrintaum
	A= 'Sim'
	B= 'Não';
 value  $Qcemtrintadois	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtrintatres	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtrintaquatro	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtrintacinco	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtrintaseis	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtrintasete	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtrintaoito	
	A= 'Sim'
	B= 'Não';
 value  $Qcemtrintanove	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarenta	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentaum	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentadois	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentatres	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentaquatro	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentacinco	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentaseis	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentasete	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentaoito	
	A= 'Sim'
	B= 'Não';
 value  $Qcemquarentanove	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquenta	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentaum	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentadois	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentatres	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentaquatro
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentacinco	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentaseis	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentasete	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentaoito	
	A= 'Sim'
	B= 'Não';
 value  $Qcemcinquentanove	
	A= 'Sim'
	B= 'Não';
 value  $Qcemsessenta
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentaum		
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentadois	
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentatres	
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentaquatro	
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentacinco	
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentaseis	
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentasete	
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentaoito	
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsessentanove	
	A= 'Muito'
	B= 'Pouco'
	C= 'Não me interesso';
 value  $Qcemsetenta
	A= 'O meio ambiente'
	B= 'A Aids e as doenças sem cura'
	C= 'O racismo e o desrespeito às pessoas de outra raça ou religião'
	D= 'A pobreza, as favelas, os meninos de rua'
	E= 'As drogas e a violência'
	F= 'A situação econômica do país';
 value  $Qcemsetentaum
	A= 'O meio ambiente'
	B= 'A Aids e as doenças sem cura'
	C= 'O racismo e o desrespeito às pessoas de outra raça ou religião'
	D= 'A pobreza, as favelas, os meninos de rua'
	E= 'As drogas e a violência'
	F= 'A situação econômica do país';
 value  $Qcemsetentadois
	A= 'Obtenção de um certificado de conclusão de curso / obtenção de um diploma'
	B= 'Formação básica necessária para obter um emprego melhor'
	C= 'Condições de melhorar minha posição no emprego atual'
	D= 'Obtenção de cultura geral / ampliação de minha formação pessoal'
	E= 'Formação básica necessária para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer várias pessoas'
	G= 'Atender à expectativa de meus pais sobre meus estudos';
 value  $Qcemsetentatres
	A= 'Obtenção de um certificado de conclusão de curso / obtenção de um diploma'
	B= 'Formação básica necessária para obter um emprego melhor'
	C= 'Condições de melhorar minha posição no emprego atual'
	D= 'Obtenção de cultura geral / ampliação de minha formação pessoal'
	E= 'Formação básica necessária para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer várias pessoas'
	G= 'Atender à expectativa de meus pais sobre meus estudos';
 value  $Qcemsetentaquatro
	A= 'Obtenção de um certificado de conclusão de curso / obtenção de um diploma'
	B= 'Formação básica necessária para obter um emprego melhor'
	C= 'Condições de melhorar minha posição no emprego atual'
	D= 'Obtenção de cultura geral / ampliação de minha formação pessoal'
	E= 'Formação básica necessária para continuar os estudos em uma universidade / faculdade'
	F= 'Fazer muitos amigos / conhecer várias pessoas'
	G= 'Atender à expectativa de meus pais sobre meus estudos';
 value  $Qcemsetentacinco
	A= 'Já conclui o ensino médio'
	B= 'Prestar vestibular e continuar os estudos no ensino superior'
	C= 'Procurar um emprego'
	D= 'Prestar vestibular e continuar a trabalhar'
	E= 'Fazer curso(s) profissionalizante(s) e me preparar para o trabalho'
	F= 'Trabalhar por conta própria / trabalhar em negócio da família'
	G= 'Trabalhar em atividade ligada à comunidade indígena'
	H= 'Ainda não decidiu'
	I= 'Outro plano';
 value  $Qcemsetentaseis
	A= 'Gostaria de ter um diploma universitário para conseguir um bom emprego'
	B= 'Gostaria de prestar um concurso e trabalhar no setor público'
	C= 'Gostaria de ganhar dinheiro em meu próprio negócio'
	D= 'Gostaria de ter um emprego'
	E= 'Não planejei'
	F= 'Outro plano';
 value  $Qcemsetentasete
	A= 'Ainda não escolhi'
	B= 'Profissão ligada às Engenharias / Ciências Tecnológicas'
	C= 'Profissão ligada às Ciências Humanas'
	D= 'Profissão ligada às Artes'
	E= 'Profissão ligadas às Ciências Biológicas e de Saúde'
	F= 'Professor(a) de Ensino Fundamental e Médio (1º e 2º graus)'
	G= 'Não vou seguir nenhuma profissão';
 value  $Qcemsetentaoito
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'Não ajudou';
 value  $Qcemsetentanove	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'Não ajudou';
 value  $Qcemoitenta		
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'Não ajudou';
 value  $Qcemoitentaum		
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'Não ajudou';
 value  $Qcemoitentadois	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'Não ajudou';
 value  $Qcemoitentatres	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'Não ajudou';
 value  $Qcemoitentaquatro	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'Não ajudou';
 value  $Qcemoitentacinco	
	A= 'Ajudou muito'
	B= 'Ajudou pouco'
	C= 'Não ajudou';
 value  $Qcemoitentaseis
	A= 'Sim, estou estudando no momento atual'
	B= 'Sim, mas não estou estudando no momento atual'
	C= 'Não';
 value  $Qcemoitentasete
	A= 'Sim'
	B= 'Não';
 value  $Qcemoitentaoito	
	A= 'Sim'
	B= 'Não';
 value  $Qcemoitentanove	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventa		
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventaum		
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventadois	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventatres	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventaquatro	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventacinco	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventaseis	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventasete	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventaoito	
	A= 'Sim'
	B= 'Não';
 value  $Qcemnoventanove	
	A= 'Sim'
	B= 'Não';
 value  $Qduzentos		
	A= 'Sim'
	B= 'Não';
 value  $Qduzentosum	
	A= 'Sim'
	B= 'Não';
 value  $Qduzentosdois	
	A= 'Sim'
	B= 'Não';
 value  $Qduzentostres	
	A= 'Sim'
	B= 'Não';
 value  $Qduzentosquatro
	A= 'Sim'
	B= 'Não';
 value  $Qduzentoscinco	
	A= 'Sim'
	B= 'Não';

run;


DATA WORK.DADOS_ENEM_2004;
INFILE 'C:\MICRODADOS_ENEM_2004.csv' /*local do arquivo*/
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
			Q189       : $char1.
			Q190       : $char1.
			Q191       : $char1.
			Q192       : $char1.
			Q193       : $char1.
			Q194       : $char1.
			Q195       : $char1.
			Q196       : $char1.
			Q197       : $char1.
			Q198       : $char1.
			Q199       : $char1.
			Q200       : $char1.
			Q201       : $char1.
			Q202       : $char1.
			Q203       : $char1.
			Q204       : $char1.
			Q205       : $char1.
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


LABEL
NU_INSCRICAO = 'Número de inscrição no ENEM.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA = 'Faixa etária do inscrito'
TP_SEXO = 'Sexo do inscrito'
CO_MUNICIPIO_RESIDENCIA = 'Código do Município em que o inscrito mora:'
NO_MUNICIPIO_RESIDENCIA = 'Nome do município em que o inscrito mora'
CO_UF_RESIDENCIA = 'Código da Unidade da Federação da residencia do inscrito'
SG_UF_RESIDENCIA = 'Sigla da Unidade da Federação da residencia do inscrito'
TP_ST_CONCLUSAO = 'Situação de conclusão do Ensino Médio'
CO_MUNICIPIO_ESC = 'Código do Município da escola em que estudou:'
NO_MUNICIPIO_ESC = 'Nome do município da escola'
CO_UF_ESC = 'Código da Unidade da Federação da escola'
SG_UF_ESC = 'Sigla da UF da escola'
TP_DEPENDENCIA_ADM_ESC = 'Dependência administrativa'
TP_LOCALIZACAO_ESC = 'Localização/Zona da escola'
TP_SIT_FUNC_ESC = 'Situação de funcionamento'
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
Q3 = 'Como se considera'
Q4 = 'Qual o estado civil'
Q5 = 'Onde e como mora atualmente'
Q6 = 'Mora sozinho(a)'
Q7 = 'Mora com o pai'
Q8 = 'Mora com a mãe'
Q9 = 'Mora com esposa / marido / companheiro(a)'
Q10 = 'Mora com filho(s)'
Q11 = 'Mora com irmão(s)'
Q12 = 'Mora com outro(s) parente(s)'
Q13 = 'Mora com amigo(s) ou colega(s)'
Q14 = 'Quantidade de pessoas que moram na casa'
Q15 = 'Quantos filhos tem'
Q16 = 'Até quando o pai estudou'
Q17 = 'Até quando a mãe estudou'
Q18 = 'Área que o pai trabalha ou trabalhou, na maior parte da vida'
Q19 = 'Qual a posição do pai neste trabalho, na maior parte do tempo'
Q20 = 'Área que a mãe trabalha ou trabalhou, na maior parte da vida'
Q21 = 'Qual a posição da mãe neste trabalho, na maior parte do tempo'
Q22 = 'Renda familiar (somando a do respondente e com a das pessoas que moram com ele)'
Q23 = 'Tem TV e quantas'
Q24 = 'Tem Videocassete e/ou DVD e quantos'
Q25 = 'Tem Rádio e quantos'
Q26 = 'Tem Microcomputador e quantos'
Q27 = 'Tem Automóvel e quantos'
Q28 = 'Tem Máquina de lavar roupa e quantos'
Q29 = 'Tem Geladeira e quantas'
Q30 = 'Tem Telefone fixo e quantos'
Q31 = 'Tem Telefone celular e quantos'
Q32 = 'Tem Acesso à Internet e quantos'
Q33 = 'Tem TV por assinatura e quantas'
Q34 = 'Tem casa própria'
Q35 = 'Se a casa é em rua calçada ou asfaltada'
Q36 = 'Se a casa tem água corrente de torneira'
Q37 = 'Se a casa tem eletricidade'
Q38 = 'Motivo para fazer o Enem'
Q39 = 'O motivo mais importante para se ter um trabalho'
Q40 = 'Trabalha, ou já trabalhou, ganhando algum salário ou rendimento'
Q41 = 'Trabalhou ou teve alguma atividade remunerada durante o ensino médio (2º grau)'
Q42 = 'Quantas horas trabalhava, durante o ensino médio (2º grau)'
Q43 = 'Com que finalidade trabalhava'
Q44 = 'Com que idade começou a exercer atividade remunerada'
Q45 = 'Se estiver trabalhando atualmente, qual a renda ou salário mensal'
Q46 = 'Trabalha em alguma atividade para o qual se preparou'
Q47 = 'Em que trabalha atualmente'
Q48 = 'Qual a posição no trabalho'
Q49 = 'Quanto tempo está trabalhando na atividade'
Q50 = 'Os conhecimentos no ensino médio foram adequados ao que o mercado de trabalho solicita'
Q51 = 'Os conhecimentos no ensino médio tiveram relação com a profissão que escolheu / que exerce'
Q52 = 'Os conhecimentos no ensino médio foram bem desenvolvidos, com aulas práticas, laboratórios, etc'
Q53 = 'Os conhecimentos no ensino médio proporcionaram cultura e conhecimento'
Q54 = 'Avaliação de ter estudado e trabalhado, simultaneamente, durante o ensino médio'
Q55 = 'A escola que freqüenta ou freqüentou durante o ensino médio levou em conta que trabalhava ao mesmo tempo que estudava'
Q56 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o horário flexível'
Q57 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse'
Q58 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recuperação de notas'
Q59 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas'
Q60 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais dinâmicas, com didática diferenciada'
Q61 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revisão da matéria aos  interessados'
Q62 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refeição aos alunos'
Q63 = 'A escola deve oferecer horário flexível para o aluno que trabalha'
Q64 = 'A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha'
Q65 = 'A escola deve oferecer programa de recuperação de notas para o aluno que trabalha'
Q66 = 'A escola deve oferecer abono de faltas para o aluno que trabalha'
Q67 = 'A escola deve oferecer aulas mais dinâmicas, com didática diferenciada para o aluno que trabalha'
Q68 = 'A escola deve oferecer aulas de revisão da matéria  aos alunos que interessados que trabalham'
Q69 = 'A escola deve oferecer fornecimento de refeição para o aluno que trabalha'
Q70 = 'Anos que levou para concluir o ensino fundamental (1º grau)'
Q71 = 'Em que tipo de escola cursou o ensino fundamental (1ª grau)'
Q72 = 'Em que ano concluiu ou concluirá o ensino médio (2º grau)'
Q73 = 'Quantos anos levou para cursas o ensino médio (2º grau)'
Q74 = 'Em que turno cursou ou esta cursando o ensino médio (2º grau)'
Q75 = 'Em que  tipo escola cursou ou está cursando o ensino médio (2º grau)'
Q76 = 'Em que modalidade de ensino concluiu ou vai concluir o ensino médio (2º grau)'
Q77 = 'Fez curso de língua estrangeira fora da escola durante o ensino médio (2º grau)'
Q78 = 'Fez curso de computação ou informática fora da escola durante o ensino médio (2º grau)'
Q79 = 'Fez curso preparatório para o vestibular (cursinho) fora da escola durante o ensino médio (2º grau)'
Q80 = 'Fez artes plásticas ou atividades artísticas em geral fora da escola durante o ensino médio (2º grau)'
Q81 = 'Fez esportes, atividades físicas fora da escola durante o ensino médio (2º grau)'
Q82 = 'Com que freqüência lê jornais'
Q83 = 'Com que freqüência lê revistas de informação geral (Veja, Isto é, Época, etc)'
Q84 = 'Com que freqüência lê revistas de humor/ quadrinhos'
Q85 = 'Com que freqüência lê revistas de divulgação científica (Ciência Hoje, Galileu, etc)'
Q86 = 'Com que freqüência lê romances, livros de ficção'
Q87 = 'Avaliação da escola que fez o ensino médio quanto o conhecimento que os(as) professores(as) têm das matérias e a maneira de transmiti-lo'
Q88 = 'Avaliação da escola que fez o ensino médio quanto a dedicação dos(as) professores(as) para preparar aulas e atender aos alunos'
Q89 = 'Avaliação da escola que fez o ensino médio quanto as iniciativas da escola para realizar excursões, estudos do meio ambiente'
Q90 = 'Avaliação da escola que fez o ensino médio quanto a biblioteca'
Q91 = 'Avaliação da escola que fez o ensino médio quanto as condições das salas de aula'
Q92 = 'Avaliação da escola que fez o ensino médio quanto as condições dos laboratórios'
Q93 = 'Avaliação da escola que fez o ensino médio quanto o acesso a computadores e outros recursos de informática'
Q94 = 'Avaliação da escola que fez o ensino médio quanto o ensino de língua estrangeira'
Q95 = 'Avaliação da escola que fez o ensino médio quanto o interesse dos alunos'
Q96 = 'Avaliação da escola que fez o ensino médio quanto o trabalho de grupo'
Q97 = 'Avaliação da escola que fez o ensino médio quanto a práticas de esportes'
Q98 = 'Avaliação da escola que fez o ensino médio quanto a atenção e o respeito dos(as) funcionários(as)'
Q99 = 'Avaliação da escola que fez o ensino médio quanto a direção dela'
Q100 = 'Avaliação da escola que fez o ensino médio quanto a organização dos horários de aulas'
Q101 = 'Avaliação da escola que fez o ensino médio quanto a localização dela'
Q102 = 'Avaliação da escola que fez o ensino médio quanto a segurança (iluminação, policiamento, etc)'
Q103 = 'A escola em que estuda ou estudou realiza palestras / debates'
Q104 = 'A escola em que estuda ou estudou realiza jogos / esportes / campeonatos'
Q105 = 'A escola em que estuda ou estudou realiza teatro'
Q106 = 'A escola em que estuda ou estudou realiza coral'
Q107 = 'A escola em que estuda ou estudou realiza dança / música'
Q108 = 'A escola em que estuda ou estudou realiza estudos do meio ambiente /passeios'
Q109 = 'A escola em que estuda ou estudou realiza feira de ciências / feira cultural'
Q110 = 'A escola em que estuda ou estudou realiza festas / gincanas'
Q111 = 'De acordo com os ensinamentos no ensino médio, como considera o preparo para conseguir um emprego, exercer alguma atividade'
Q112 = 'Os(as) professores(as) têm autoridade, firmeza'
Q113 = 'Os(as) professores(as) são distantes, têm pouco envolvimento'
Q114 = 'Os(as) professores(as) têm respeito'
Q115 = 'Os(as) professores(as) são indiferentes, ignoram sua existência'
Q116 = 'Os(as) professores(as) são preocupados(as) e dedicados(as)'
Q117 = 'Os(as) professores(as) são autoritários(as), rígidos(as), abusam do poder'
Q118 = 'Avaliação sobre a escola quanto a liberdade de expressar a idéias'
Q119 = 'Avaliação sobre a escola quanto o respeito aos alunos'
Q120 = 'Avaliação sobre a escola quanto a amizade e respeito entre alunos(as) e funcionários(as)'
Q121 = 'Avaliação sobre a escola quanto a levar em conta suas opiniões'
Q122 = 'Avaliação sobre a escola quanto a discussão dos problemas da atualidade nas aulas'
Q123 = 'Avaliação sobre a escola quanto a convivência entre alunos(as)'
Q124 = 'Avaliação sobre a escola quanto a organização para apoiar a resolução de problemas de relacionamento entre alunos'
Q125 = 'Avaliação sobre a escola quanto a iniciativa para apoiar a resolução de problemas de relacionamento entre alunos e professores'
Q126 = 'Avaliação sobre a escola quanto a levar em conta seus problemas pessoais e familiares'
Q127 = 'Avaliação sobre a escola quanto a realização de Programas e Palestras contra drogas'
Q128 = 'Avaliação sobre a escola quanto a capacidade relacionar os conteúdos das matérias com o cotidiano'
Q129 = 'Avaliação sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu'
Q130 = 'Nota para a formação que obteve no ensino médio'
Q131 = 'Considera-se racista'
Q132 = 'Parentes e ou/ colegas racistas'
Q133 = 'Colegas de escola e/ou de trabalho racistas'
Q134 = 'Vizinhos e/ou conhecidos em geral racistas'
Q135 = 'Já sofreu discriminação econômica'
Q136 = 'Já sofreu discriminação étnica, racial ou de cor'
Q137 = 'Já sofreu discriminação de gênero (ou por ser mulher ou por ser homem)'
Q138 = 'Já sofreu discriminação por ser (ou parecer ser) homossexuais'
Q139 = 'Já sofreu discriminação religiosa'
Q140 = 'Já sofreu discriminação por causa do local de origem'
Q141 = 'Já sofreu discriminação por causa da idade'
Q142 = 'Já sofreu discriminação por ser portador de necessidades especiais'
Q143 = 'Já sofreu discriminação por outro(s) motivo(s)'
Q144 = 'Já presenciou discriminação econômica'
Q145 = 'Já presenciou discriminação étnica, racial ou de cor'
Q146 = 'Já presenciou discriminação de gênero (ou por ser mulher ou por ser homem)'
Q147 = 'Já presenciou discriminação contra homossexuais'
Q148 = 'Já presenciou discriminação religiosa'
Q149 = 'Já presenciou discriminação por causa do local de origem'
Q150 = 'Já presenciou discriminação por causa da idade'
Q151 = 'Já presenciou discriminação por ser portador de necessidades especiais'
Q152 = 'Já presenciou discriminação por outro(s) motivo(s)'
Q153 = 'Participa de um Grêmio estudantil'
Q154 = 'Participa de um Sindicato ou Associação Profissional'
Q155 = 'Participa de um Grupo de bairro ou associação comunitária'
Q156 = 'Participa de uma Igreja ou grupo religioso'
Q157 = 'Participa de um partido político'
Q158 = 'Participa de uma Ong ou movimento social'
Q159 = 'Participa de um clube recreativo ou associação esportiva'
Q160 = 'O quanto você se interessa pela política nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da República, etc'
Q161 = 'O quanto você se interessa pela política dos outros países'
Q162 = 'O quanto você se interessa pela economia nacional, a questão da inflação,  o plano real'
Q163 = 'O quanto você se interessa a política da sua cidade, o prefeito, os vereadores'
Q164 = 'O quanto você se interessa por esportes'
Q165 = 'O quanto você se interessa pelas questões sobre o meio ambiente, poluição, etc'
Q166 = 'O quanto você se interessa pelas questões sociais como a desigualdade, a pobreza, o desemprego, a miséria'
Q167 = 'O quanto você se interessa pelas questões sobre artes, teatro, cinema'
Q168 = 'O quanto você se interessa sobre a questão das drogas e suas conseqüências'
Q169 = 'O quanto você se interessa sobre assuntos sobre seu ídolo (cantor/a, artista, ou conjunto musical)'
Q170 = 'Qual dos pontos te preocupa em 1º lugar no momento'
Q171 = 'Qual dos pontos te preocupa em 2º lugar no momento'
Q172 = 'É a mais importante contribuição que obteve ao realizar o ensino médio(2º grau)'
Q173 = 'É a segunda mais importante contribuição que obteve ao realizar o ensino médio(2º grau)'
Q174 = 'É a terceira mais importante contribuição que obteve ao realizar o ensino médio(2º grau)'
Q175 = 'A principal decisão que vai tomar quando concluir o ensino médio (2º grau)'
Q176 = 'E a médio prazo, daqui a uns 4 ou 5 anos já planejou o que gostaria que acontecesse'
Q177 = 'Que profissão escolheu seguir'
Q178 = 'Meus pais ajudaram a tomar minha decisão sobre minha profissão'
Q179 = 'A escola ajudou a tomar minha decisão sobre minha profissão'
Q180 = 'Meus amigos ajudaram a tomar minha decisão sobre minha profissão'
Q181 = 'Informações gerais, revistas, jornais, TV ajudaram a tomar minha decisão sobre minha profissão'
Q182 = 'Meu trabalho ajudou a tomar minha decisão sobre minha profissão'
Q183 = 'Estímulo financeiro ajudou a tomar minha decisão sobre minha profissão'
Q184 = 'Facilidade de obter emprego ajudou a tomar minha decisão sobre minha profissão'
Q185 = 'Minha identificação com a profissão me ajudou a tomar minha decisão sobre minha profissão'
Q186 = 'Continuou os estudos depois de ter concluído o ensino médio (2º grau)'
Q187 = 'Está freqüentando um curso profissionalizante'
Q188 = 'Está freqüentando um curso preparatório para vestibular'
Q189 = 'Está freqüentando um curso superior'
Q190 = 'Está freqüentando um curso de língua estrangeira'
Q191 = 'Está freqüentando um curso de computação ou informática'
Q192 = 'Está freqüentando outro curso'
Q193 = 'Concluiu curso profissionalizante'
Q194 = 'Concluiu curso preparatório para vestibular, mas não ingressei no curso superior'
Q195 = 'Concluiu curso superior'
Q196 = 'Fiz curso superior mas não me formei'
Q197 = 'Concluiu curso de língua estrangeira'
Q198 = 'Concluiu curso de computação ou informática'
Q199 = 'Concluiu outro curso'
Q200 = 'O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino médio'
Q201 = 'O curso preparatório para vestibular fez mais falta para minha vida, depois que terminei o ensino médio'
Q202 = 'O curso superior fez mais falta para minha vida, depois que terminei o ensino médio'
Q203 = 'O curso de língua estrangeira fez mais falta para minha vida, depois que terminei o ensino médio'
Q204 = 'O curso de computação ou informática fez mais falta para minha vida, depois que terminei o ensino médio'
Q205 = 'Outro curso fez mais falta para minha vida, depois que terminei o ensino médio';
;
IF NU_INSCRICAO = . THEN DELETE;

RUN;