
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Estudos, Pesquisas e Disseminação				  */
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* MICRODADOS_ENEM_1999.CSV no diretório C:\ do computador.			      */
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
		2='Concluirá em 1999'
		3='Concluirá após 1999'
		4='Não concluí e não estou cursando o Ensino Médio';
	value  $PRESENCA
		0='Faltou à prova'
		1='Presente à prova';
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
		A= 'Após 1981'
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
		D= 'Amarelo(a) (De origem asiática)'
		E= 'Indígena.';
	 value  $Qquatro
		A= 'Solteiro(a)'
		B= 'Casado(a) / mora com um(a) companheiro(a)'
		C= 'Separado(a) / divorciado(a) / desquitado(a)'
		D= 'Viúvo(a)';
	 value  $Qcinco
		A= 'Em casa ou apartamento, com sua família '
		B= 'Em casa ou apartamento, sozinho(a)'
		C= 'Em quarto ou cômodo alugado, sozinho(a)'
		D= 'Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc.'
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
		A= 'Sim'
		B= 'Não';
	 value  $Qquinze	
		A= 'Sim'
		B= 'Não';
	 value  $Qdezesseis
		A= 'Moro sozinho '
		B= 'Duas pessoas '
		C= 'Três pessoas '
		D= 'Quatro pessoas '
		E= 'Cinco pessoas '
		F= 'Seis pessoas'
		G= 'Mais de seis pessoas.';
	 value  $Qdezessete
		A= 'Não tenho filhos '
		B= 'Um filho'
		C= 'Dois filhos '
		D= 'Três filhos'
		E= 'Quatro ou mais filhos';
	 value  $Qdezoito
		A= 'Não estudou'
		B= 'Da primeira à quarta série do ensino fundamental (antigo primário)'
		C= 'Da quinta à oitava série do ensino fundamental (antigo ginásio)'
		D= 'Ensino Médio (2º grau) incompleto '
		E= 'Ensino Médio (2º grau) completo '
		F= 'Ensino Superior incompleto '
		G= 'Ensino Superior completo'
		H= 'Pós-graduação (mestrado, especialização, doutorado)'
		I= 'Não sei';
	 value  $Qdezenove
		A= 'Não estudou'
		B= 'Da primeira à quarta série do ensino fundamental (antigo primário)'
		C= 'Da quinta à oitava série do ensino fundamental (antigo ginásio)'
		D= 'Ensino Médio (2º grau) incompleto '
		E= 'Ensino Médio (2º grau) completo '
		F= 'Ensino Superior incompleto '
		G= 'Ensino Superior completo'
		H= 'Pós-graduação (mestrado, especialização, doutorado)'
		I= 'Não sei';
	 value  $Qvinte
		A= 'Na agricultura, no campo, em fazenda, na pesca '
		B= 'Na indústria'
		C= 'No comércio, bancos, transporte ou outros serviços'
		D= 'Como empregado em casa de família'
		E= 'Como funcionário do governo federal, do estado ou município, ou militar'
		F= 'Profissional liberal, professor ou técnico de nível superior'
		G= 'No lar'
		H= 'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa'
		I= 'Não trabalha'
		J= 'Não sei';
	 value  $Qvinteum
		A= 'Gerente, administrador ou diretor de empresa privada'
		B= 'Funcionário público (federal, estadual, municipal), com funções de direção'
		C= 'Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando'
		D= 'Empregado no setor privado, com carteira assinada'
		E= 'Funcionário público (federal, estadual ou municipal), sem função de direção'
		F= 'Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando'
		G= 'Trabalho temporário, informal, sem carteira assinada '
		H= 'Trabalha por conta própria'
		I= 'Desempregado'
		J= 'Aposentado '
		K= 'Não trabalha'
		L= 'Outra situação';
	 value  $Qvintedois
		A= 'Na agricultura, no campo, em fazenda, na pesca '
		B= 'Na indústria'
		C= 'No comércio, bancos, transporte e outros serviços'
		D= 'Como empregada em casa de família'
		E= 'Como funcionária do governo federal, do estado ou município, ou militar'
		F= 'Como profissional liberal, professor ou técnico de nível superior'
		G= 'No lar'
		H= 'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa'
		I= 'Não trabalha'
		J= 'Não sei';
	 value  $Qvintetres
		A= 'Gerente, administrador ou diretor de empresa privada'
		B= 'Funcionário público (federal, estadual ou municipal), com funções de direção'
		C= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando'
		D= 'Empregado no setor privado, com carteira assinada'
		E= 'Funcionário público (federal, estadual ou municipal), sem função de direção'
		F= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando'
		G= 'Trabalho temporário, informal, sem carteira assinada '
		H= 'Trabalho por conta própria'
		I= 'Desempregado '
		J= 'Aposentado '
		K= 'Não trabalha'
		L= 'Outra situação';
	 value  $Qvintequatro
		A= 'Até 1 salário mínimo (até R$ 136,00)'
		B= 'De 1 a 2 salários mínimos (R$ 137,00 a R$ 272,00)'
		C= 'De 2 a 5 salários mínimos (R$ 273,00 a R$ 680,00)'
		D= 'De 5 a 10 salários mínimos (R$ 681,00 a R$ 1.360,00)'
		E= 'De 10 a 30 salários mínimos (R$ 1.361,00 a R$ 4.080,00)'
		F= 'De 30 a 50 salários mínimos (R$ 4.081,00 a R$ 6.800,00)'
		G= 'Mais de 50 salários mínimos (mais de R$ 6.800,00)'
		H= 'Nenhuma renda';
	 value  $Qvintecinco
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'Não tem';
	 value  $Qvinteseis	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'Não tem';
	 value  $Qvintesete	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'Não tem';
	 value  $Qvinteoito	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'Não tem';
	 value  $Qvintenove	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'Não tem';
	 value  $Qtrinta	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'Não tem';
	 value  $Qtrintaum	
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'Não tem';
	 value  $Qtrintadois
		A= '1'
		B= '2'
		C= '3 ou + '
		D= 'Não tem';
	 value  $Qtrintatres
		A= '1'
		B= '2'
		C= '3 ou + '
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
		A= 'Sim'
		B= 'Não';
	 value  $Qtrintanove	
		A= 'Sim'
		B= 'Não';
	 value  $Qquarenta
		A= 'Sim'
		B= 'Nunca trabalhou'
		C= 'Nunca trabalhou, mas está procurando trabalho';
	 value  $Qquarentaum
		A= 'Sim, todo o tempo'
		B= 'Sim, pelo menos durante um ano '
		C= 'Sim, mas só eventualmente'
		D= 'Não';
	 value  $Qquarentadois
		A= 'Sem jornada fixa, até 10 horas semanais '
		B= 'De 11 a 20 horas semanais'
		C= 'De 21 a 30 horas semanais'
		D= 'De 31 a 40 horas semanais';
	 value  $Qquarentatres
		A= 'Para ajudar meus pais '
		B= 'Para meu próprio sustento'
		C= 'Para as duas finalidades';
	 value  $Qquarentaquatro
		A= 'Antes dos 14 anos '
		B= 'Entre 14 e 16 anos'
		C= 'Entre 17 e 18 anos'
		D= 'Após 18 anos';
	 value  $Qquarentacinco
		A= 'Até 1 salário mínimo (até R$ 136,00)'
		B= 'De 1 a 2 salários mínimos (R$ 137,00 a R$ 272,00)'
		C= 'De 2 a 5 salários mínimos (R$ 273,00 a R$ 680,00)'
		D= 'De 5 a 10 salários mínimos (R$ 681,00 a R$ 1.360,00)'
		E= 'De 10 a 30 salários mínimos (R$ 1.361,00 a R$ 4.080,00)'
		F= 'De 30 a 50 salários mínimos (R$ 4.081,00 a R$ 6.800,00)'
		G= 'Mais de 50 salários mínimos (mais de R$ 6.800,00)'
		H= 'Não estou trabalhando';
	 value  $Qquarentaseis
		A= 'Para ajudar meus pais '
		B= 'Para meu próprio sustento'
		C= 'Para as duas finalidades';
	 value  $Qquarentasete
		A= 'Na agricultura (campo, fazenda, pesca). '
		B= 'Na indústria.'
		C= 'No comércio, banco, transporte ou outros serviços.'
		D= 'Como empregado(a) em casa de família.'
		E= 'Como funcionário(a) do governo federal, do estado ou do município, ou militar.'
		F= 'Como profissional liberal, professor(a) ou técnico(a) de nível superior.'
		G= 'No lar.'
		H= 'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa'
		I= 'Não trabalha';
	 value  $Qquarentaoito
		A= 'Gerente, administrador(a) ou diretor(a) de empresa privada.'
		B= 'Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção.'
		C= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando'
		D= 'Empregado(a) no setor privado, com carteira assinada'
		E= 'Funcionário(a) público(a) (federal, estadual ou municipal), sem função de direção.'
		F= 'Trabalho temporário, informal, sem carteira assinada'
		G= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando.'
		H= 'Trabalho por conta própria '
		I= 'Desempregado(a) '
		J= 'Aposentado(a)'
		K= 'Não trabalha'
		L= 'Outra situação';
	 value  $Qquarentanove
		A= 'Sim'
		B= 'Não, porque não consegui trabalho na minha profissão'
		C= 'Não me preparei para um trabalho em específico/minha formação foi geral';
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
		A= 'Somente em escola pública'
		B= 'Parte em escola pública e parte em escola particular '
		C= 'Somente em escola particular';
	 value  $Qcinquentatres
		A= 'Vou concluí-lo no segundo semestre de 1999 '
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
		A= 'Somente em escola pública'
		B= 'Parte em escola pública e parte em escola particular '
		C= 'Somente em escola particular';
	 value  $Qcinquentasete
		A= 'Ensino regular'
		B= 'Ensino supletivo';
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
		B= 'Mais ou menos '
		C= 'Pouco'
		D= 'Não';
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
		E= 'Péssimo';
	 value  $Qsetentaum
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'Péssimo';
	 value  $Qsetentadois	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'Péssimo';
	value  $Qsetentatres	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'Péssimo';
	 value  $Qsetentaquatro	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'Péssimo';
	 value  $Qsetentacinco	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'Péssimo';
	value  $Qsetentaseis	
		A= 'Excelente'
		B= 'Bom'
		C= 'Mais ou menos'
		D= 'Ruim'
		E= 'Péssimo';
	 value  $Qsetentasete
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'Não';
	 value  $Qsetentaoito	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'Não';
	 value  $Qsetentanove	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'Não';
	 value  $Qoitenta	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'Não';
	 value  $Qoitentaum	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'Não';
	 value  $Qoitentadois	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'Não';
	 value  $Qoitentatres	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'Não';
	 value  $Qoitentaquatro	
		A= 'Com certeza '
		B= 'Provavelmente'
		C= 'Não';
	 value  $Qoitentacinco
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qoitentaseis	
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qoitentasete	
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qoitentaoito	
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qoitentanove	
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qnoventa
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qnoventaum
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qnoventadois	
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qnoventatres	
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qnoventaquatro	
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qnoventacinco	
		A= 'Muito'
		B= 'Um pouco'
		C= 'Não me interesso';
	 value  $Qnoventaseis
		A= 'Com frequência '
		B= 'Ás vezes'
		C= 'Não participo';
	 value  $Qnoventasete	
		A= 'Com frequência '
		B= 'Ás vezes'
		C= 'Não participo';
	 value  $Qnoventaoito	
		A= 'Com frequência '
		B= 'Ás vezes'
		C= 'Não participo';
	 value  $Qnoventanove	
		A= 'Com frequência '
		B= 'Ás vezes'
		C= 'Não participo';
	 value  $Qcem	
		A= 'Com frequência '
		B= 'Ás vezes'
		C= 'Não participo';
	 value  $Qcemum	
		A= 'Com frequência '
		B= 'Ás vezes'
		C= 'Não participo';
	 value  $Qcemdois
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemtres	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemquatro	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemcinco	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemseis	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemsete	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemoito	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemnove	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemdez	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemonze	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemdoze	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemtreze	
		A= 'Muito importante '
		B= 'Importante'
		C= 'Sem importância';
	 value  $Qcemcatorze
		A= 'Melhorou muito '
		B= 'Melhorou um pouco '
		C= 'Não melhorou '
		D= 'Piorou'
		E= 'Piorou muito';
	 value  $Qcemquinze
		A= 'Melhorou muito '
		B= 'Melhorou um pouco '
		C= 'Não melhorou '
		D= 'Piorou'
		E= 'Piorou muito';
	 value  $Qcemdezesseis
		A= 'Sim, estou estudando no momento atual'
		B= 'Sim, mas não estou estudando no momento atual '
		C= 'Não';
	 value  $Qcemdezessete
		A= 'Sim'
		B= 'Não';
	 value  $Qcemdezoito	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemdezenove	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvinte
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvinteum	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvintedois	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvintetres	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvintequatro
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvintecinco	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvinteseis	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvintesete	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvinteoito	
		A= 'Sim'
		B= 'Não';
	 value  $Qcemvintenove	
		A= 'Sim'
		B= 'Não';

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
NU_INSCRICAO = 'Número de inscrição no ENEM.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA = 'Faixa etária do inscrito'
TP_SEXO = 'Sexo do inscrito'
CO_MUNICIPIO_RESIDENCIA = 'Código do Município em que o inscrito mora:'
NO_MUNICIPIO_RESIDENCIA = 'Nome do município em que o inscrito mora'
CO_UF_RESIDENCIA = 'Código da Unidade da Federação da residencia do inscrito'
SG_UF_RESIDENCIA = 'Sigla da Unidade da Federação da residencia do inscrito'
TP_ST_CONCLUSAO = 'Situação de conclusão do Ensino Médio'
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
Q1 = 'Seu sexo'
Q2 = 'Ano em que você nasceu'
Q3 = 'Como  você se considera'
Q4 = 'Qual o seu estado civil'
Q5 = 'Como você mora'
Q6 = 'Quem mora com você?: moro sozinho(a)'
Q7 = 'Quem mora com você?:  pai'
Q8 = 'Quem mora com você?:  mãe'
Q9 = 'Quem mora com você?: mulher, marido, companheiro ou companheira.'
Q10 = 'Quem mora com você?:  filhos'
Q11 = 'Quem mora com você?:  irmãos'
Q12 = 'Quem mora com você?: outros parentes'
Q13 = 'Quem mora com você?:  amigos ou colegas'
Q14 = 'Quem mora com você?:  pessoas'
Q15 = 'Quem mora com você?: Outra situação.'
Q16 = 'Quantas pessoas moram em sua casa?'
Q17 = 'Quantos filhos tem'
Q18 = 'Até quanto seu pai estudou?'
Q19 = 'Até quanto sua mãe estudou?'
Q20 = 'Em que seu pai trabalha ou trabalhou, na maior parte da vida?'
Q21 = 'Qual a posição do seu pai neste trabalho, na maior parte do tempo'
Q22 = 'Em que sua mãe trabalha ou trabalhou, na maior parte da vida?'
Q23 = 'Qual a posição da sua mãe neste trabalho, na maior parte do tempo?'
Q24 = 'Qual a renda total do seu domicílio?'
Q25 = 'Quais e quanto itens  sua casa tem?: automóvel'
Q26 = 'Quais e quanto itens  sua casa tem?: TV em cores'
Q27 = 'Quais e quanto itens  sua casa tem?: microcomputador'
Q28 = 'Quais e quanto itens  sua casa tem?: videocassete'
Q29 = 'Quais e quanto itens  sua casa tem?:  máquina de lavar roupa'
Q30 = 'Quais e quanto itens  sua casa tem?: aspirador de pó'
Q31 = 'Quais e quanto itens  sua casa tem?: geladeira'
Q32 = 'Quais e quanto itens  sua casa tem?: Freezer'
Q33 = 'Quais e quanto itens  sua casa tem?:Telefone'
Q34 = 'Quais e quanto itens  sua casa tem?: tem casa própria'
Q35 = 'Quais e quanto itens  sua casa tem?: mora de aluguel'
Q36 = 'Quais e quanto itens  sua casa tem?: está em rua urbanizada (com calçamento ou asfaltada)'
Q37 = 'Quais e quanto itens  sua casa tem?:  tem água corrente de torneira'
Q38 = 'Quais e quanto itens  sua casa tem?:  tem eletricidade'
Q39 = 'Quais e quanto itens  sua casa tem?: empregada doméstica mensalista'
Q40 = 'Você trabalha, ou já trabalhou, ganhando algum salário ou rendimento?'
Q41 = 'Você trabalhou ou teve alguma atividade remunerada durante o ensino médio (2º grau)?'
Q42 = 'Quantas horas você trabalhava por dia, durante seus estudos no ensino médio (2º grau)?'
Q43 = 'Com que finalidade você trabalhava, enquanto estudava no ensino médio (antigo 2º grau)?'
Q44 = 'Se você trabalhava durante seus estudos no ensino médio, com que idade começou a exercer atividade remunerada'
Q45 = 'Se estiver trabalhando atualmente, qual a renda ou salário mensal'
Q46 = 'Por que trabalha atualmente:'
Q47 = 'Em que você trabalha atualmente?'
Q48 = 'Qual a sua posição no trabalho'
Q49 = 'Você está atualmente trabalhando em alguma atividade para o qual se preparou nos estudos?'
Q50 = 'Quanto tempo você está trabalhando na atividade?'
Q51 = 'Anos que levou para concluir o ensino fundamental (1º grau)'
Q52 = 'Em que tipo de escola cursou o ensino fundamental (1ª grau)'
Q53 = 'Em que ano concluiu ou concluirá o ensino médio (2º grau)'
Q54 = 'Quantos anos você levou para cursar o ensino médio (2º grau)?'
Q55 = 'Em que turno você cursou ou esta cursando o ensino médio (2º grau)'
Q56 = 'Em que  tipo escola cursou ou está cursando o ensino médio (2º grau)'
Q57 = 'Em que modalidade de ensino você concluiu ou vai concluir o ensino médio (2º grau)'
Q58 = 'Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): curso e língua estrangeira.'
Q59 = 'Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): curso de computação ou informática'
Q60 = 'Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): curso preparatório para o vestibular (cursinho)'
Q61 = 'Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): artes plásticas em geral'
Q62 = 'Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): atividades artística'
Q63 = 'Você realiza ou realizou durante o ensino médio (2º Grau), como atividade ou curso extracurricular(es): atividade esportiva'
Q64 = 'A partir dos conhecimentos adquiridos no ensino médio (2º grau), o  candidato se considera apto a exercer uma profissão?'
Q65 = 'Com que frequência você lê jornais?'
Q66 = 'Com que frequência lê revistas de informação geral'
Q67 = 'Com que frequência lê revistas de humor / quadrinhos'
Q68 = 'Com que frequência lê revistas de divulgação científica (Ciência Hoje, Galileu, etc.)'
Q69 = 'Com que frequência lê romances, livros de ficção'
Q70 = 'Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a: conhecimento que os professores tem da matéria'
Q71 = 'Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  dedicação dos professores – pontualidade, preparação das aulas, etc.'
Q72 = 'Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  capacidade da escola  em motivar os estudantes com pesquisa, excursões, trabalhos de equipe, projetos e outras atividades fora da rotina'
Q73 = 'Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a: recursos pedagógicos: laboratórios, bibliotecas, TV, vídeos etc.'
Q74 = 'Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  condições físicas da escola - condição das salas, banheiros, limpeza'
Q75 = 'Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  acesso a computadores e outros recursos de informática'
Q76 = 'Qual  é a sua avaliação da escola secundária ou de nível médio, que você frequentou, em relação a:  ensino de língua estrangeira'
Q77 = 'O que você pretende fazer nos próximos 3 anos: continuar estudando'
Q78 = 'O que você pretende fazer nos próximos 3 anos: conseguir um emprego'
Q79 = 'O que você pretende fazer nos próximos 3 anos: melhorar a posição no emprego atual'
Q80 = 'O que você pretende fazer nos próximos 3 anos: fazer um concurso público'
Q81 = 'O que você pretende fazer nos próximos 3 anos: trabalhar por conta própria, abrir meu próprio negócio.'
Q82 = 'O que você pretende fazer nos próximos 3 anos: constituir família'
Q83 = 'O que você pretende fazer nos próximos 3 anos: mudar para outra cidade ou estado do Brasil.'
Q84 = 'O que você pretende fazer nos próximos 3 anos: mudar para o Exterior'
Q85 = 'O quanto você se interessa e acompanha: politica nacional'
Q86 = 'O quanto você se interessa e acompanha: a politica internacional'
Q87 = 'O quanto você se interessa e acompanha: esportes'
Q88 = 'O quanto você se interessa e acompanha: a economia'
Q89 = 'O quanto você se interessa e acompanha: a moda'
Q90 = 'O quanto você se interessa e acompanha: atividades culturais, como teatro, pintura, arte, etc.'
Q91 = 'O quanto você se interessa e acompanha: música popular'
Q92 = 'O quanto você se interessa e acompanha: questões sobre comportamento sexual, como a AIDS, a gravidez indesejada etc.'
Q93 = 'O quanto você se interessa e acompanha: questões sobre o meio ambiente'
Q94 = 'O quanto você se interessa e acompanha: questões relativas aos direitos de minorias'
Q95 = 'O quanto você se interessa e acompanha: questões sociais, como pobreza, o desemprego, a violência etc.'
Q96 = 'Você participa de:  igreja ou grupo religioso'
Q97 = 'Você participa de: partido político ou movimento social.'
Q98 = 'Você participa de:  sindicato ou associação profissional.'
Q99 = 'Você participa de:  grupo de bairro ou associação comunitária'
Q100 = 'Você participa de:  clube recreativo ou associação esportiva.'
Q101 = 'Você participa de:  grêmio estudantil'
Q102 = 'Para ter um bom futuro na vida você considera importante: ter sido um bom(a) aluno(a) na escola ou na faculdade'
Q103 = 'Para ter um bom futuro na vida você considera importante:  ter cursado uma boa escola ou faculdade'
Q104 = 'Para ter um bom futuro na vida você considera importante:  ter conhecimentos profissionais práticos e úteis'
Q105 = 'Para ter um bom futuro na vida você considera importante: ter cultura geral (conhecer língua, ler livros etc.)'
Q106 = 'Para ter um bom futuro na vida você considera importante:  ter amigos influentes'
Q107 = 'Para ter um bom futuro na vida você considera importante:  vir de uma família rica'
Q108 = 'O candidato do ENEM considera importante ser esperto'
Q109 = 'Para ter um bom futuro na vida você considera importante:  ter sorte na vida'
Q110 = 'Para ter um bom futuro na vida você considera importante:  ser honesto e justo'
Q111 = 'Para ter um bom futuro na vida você considera importante:  ser trabalhador'
Q112 = 'Para ter um bom futuro na vida você considera importante:  ser generoso(a) e solidário(a) com os outros'
Q113 = 'Para ter um bom futuro na vida você considera importante:  ter fé e seguir os ensinamentos religiosos'
Q114 = 'Você acha que o Brasil nos últimos anos:'
Q115 = 'Você acha que, nos últimos anos, sua situação e da sua família'
Q116 = 'Você continuou os estudos depois de ter concluído o ensino médio (2º grau)'
Q117 = 'Se você está estudando no momento atual, está desenvolvendo: um curso profissionalizante'
Q118 = 'Se você está estudando no momento atual, está desenvolvendo: curso preparatório para vestibular'
Q119 = 'Se você está estudando no momento atual, está desenvolvendo: curso superior'
Q120 = 'Se você está estudando no momento atual, está desenvolvendo: curso de língua estrangeira'
Q121 = 'Se você está estudando no momento atual, está desenvolvendo: um curso de computação ou informática'
Q122 = 'Se você está estudando no momento atual, está desenvolvendo: outro curso'
Q123 = 'Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso profissionalizante'
Q124 = 'Se você não está estuando no momento atual, mas continou seus estudos depois de ter concluido o ensino médio (2° Grau), desenvolveu: curso preparatório para vestibular, mas não ingressei no curso superior'
Q125 = 'Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso superior e se formou'
Q126 = 'Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso superior mas não se formou'
Q127 = 'Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso de língua estrangeira'
Q128 = 'Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: curso de computação ou informática'
Q129 = 'Se você não está estuando no momento atual, mas continuo seus estudos depois de ter concluído o ensino médio (2° Grau), desenvolveu: outro curso'

;IF NU_INSCRICAO = . THEN DELETE;

RUN;