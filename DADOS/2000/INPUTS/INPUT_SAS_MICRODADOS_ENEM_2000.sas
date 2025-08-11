
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Estudos, Pesquisas e Disseminação				  */
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
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2000.CSV no diretório C:\ do computador.			      */
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
		2='Concluirá em 2000'
		3='Concluirá após 2000'
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
		D='Desconsiderada'
		F='Faltou à prova'
		N='Redação anulada'
		P='Presente à prova';
	value  $QSE
		0='Não respondeu o questionário socioecômico'
		1='Respondeu o questionário socioecômico';	
		 value  $Qum
			A= 'Masculino'
			B= 'Feminino';
		 value  $Qdois
			A= 'Após 1983.'
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
			D= 'Amarelo(a) (De origem asiática)'
			E= 'Indígena.';
		 value  $Qquatro
			A= 'Solteiro(a)'
			B= 'Casado(a) / mora com um(a) companheiro(a) '
			C= 'Separado(a) / divorciado(a) / desquitado(a) '
			D= 'Viúvo(a)';
		 value  $Qcinco
			A= 'Em casa ou apartamento, com sua família '
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
			A= 'Sim'
			B= 'Não';
		 value  $Qquinze
			A= 'Moro sozinho '
			B= 'Duas pessoas '
			C= 'Três pessoas '
			D= 'Quatro pessoas '
			E= 'Cinco pessoas '
			F= 'Seis pessoas'
			G= 'Mais de seis pessoas.';
		 value  $Qdezesseis
			A= 'Não tenho filhos '
			B= 'Um filho'
			C= 'Dois filhos '
			D= 'Três filhos'
			E= 'Quatro ou mais filhos';
		 value  $Qdezessete
			A= 'Não estudou'
			B= 'Da primeira à quarta série do ensino fundamental (antigo primário)'
			C= 'Da quinta à oitava série do ensino fundamental (antigo ginásio)'
			D= 'Ensino Médio (2º grau) incompleto '
			E= 'Ensino Médio (2º grau) completo '
			F= 'Ensino Superior incompleto '
			G= 'Ensino Superior completo'
			H= 'Pós-graduação (mestrado, especialização, doutorado)'
			I= 'Não sei';
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
			A= 'Na agricultura, no campo, em fazenda ou na pesca'
			B= 'Na indústria'
			C= 'No comércio, banco, transporte ou outros serviços'
			D= 'Como empregado em casa de família'
			E= 'Como funcionário do governo federal, do estado ou município, ou militar'
			F= 'Profissional liberal, professor ou técnico de nível superior'
			G= 'No lar'
			H= 'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa'
			I= 'Não trabalha'
			J= 'Não sei';
		 value  $Qvinte
			A= 'Gerente, administrador ou diretor de empresa privada'
			B= 'Funcionário público (federal, estadual, municipal), com funções de direção'
			C= 'Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando'
			D= 'Empregado no setor privado, com carteira assinada'
			E= 'Funcionário público (federal, estadual ou municipal), sem função de direção'
			F= 'Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando'
			G= 'Trabalho temporário, informal, sem carteira assinada'
			H= 'Trabalha por conta própria'
			I= 'Aposentado'
			J= 'Não trabalha'
			K= 'Outra situação';
		 value  $Qvinteum
			A= 'Na agricultura, no campo, em fazenda ou na pesca'
			B= 'Na indústria'
			C= 'No comércio, banco, transporte ou outros serviços'
			D= 'Como empregado em casa de família'
			E= 'Como funcionário do governo federal, do estado ou município, ou militar'
			F= 'Profissional liberal, professor ou técnico de nível superior'
			G= 'No lar'
			H= 'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa'
			I= 'Não trabalha'
			J= 'Não sei';
		 value  $Qvintedois
			A= 'Gerente, administradora ou diretora de empresa privada'
			B= 'Funcionária pública (federal, estadual ou municipal), com funções de direção'
			C= 'Militar (guarda civil, polícia estadual ou Forças Armadas), com posto de comando'
			D= 'Empregada no setor privado, com carteira assinada'
			E= 'Funcionária pública (federal, estadual e municipal), sem função de direção'
			F= 'Militar (guarda civil, polícia estadual ou Forças Armadas), sem posto de comando'
			G= 'Trabalho temporário, informal, sem carteira assinada'
			H= 'Trabalha por conta própria'
			I= 'Desempregada'
			J= 'Aposentada'
			K= 'Outra situação';
		 value  $Qvintetres
			A= 'Até 1 salário mínimo (R$ 151,00)'
			B= 'De 1 a 2 salários mínimos (de R$ 151,01 a R$ 302,00)'
			C= 'De 2 a 5 salários mínimos (de R$ 302,01 a R$ 755,00)'
			D= 'De 5 a 10 salários mínimos (de R$ 755,01 a R$ 1.510,00)'
			E= 'De 10 a 30 salários mínimos (de R$ 1.510,01 a R$ 4.530,00)'
			F= 'De 30 a 50 salários mínimos (de R$ 4.530,01 a R$ 7.550,00)'
			G= 'Mais de 50 salários mínimos (mais de R$ 7.550,00)'
			H= 'Nenhuma renda';
		 value  $Qvintequatro
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qvintecinco	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qvinteseis	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qvintesete	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qvinteoito	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qvintenove	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qtrinta	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qtrintaum	
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qtrintadois
			A= '1'
			B= '2'
			C= '3 ou +'
			D= 'Não tem';
		 value  $Qtrintatres
			A= 'Sim'
			B= 'Não';
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
			B= 'Nunca trabalhei'
			C= 'Nunca trabalhei, mas estou procurando trabalho';
		 value  $Qtrintanove
			A= 'Sim, menos de 1 ano'
			B= 'Sim, de 1 a 2 anos'
			C= 'Sim, de 2 a 3 anos'
			D= 'Sim, todo o tempo'
			E= 'Não';
		 value  $Qquarenta
			A= 'Sem jornada fixa, até 10 horas semanais'
			B= 'De 11 a 20 horas semanais'
			C= 'De 21 a 30 horas semanais'
			D= 'De 31 a 40 horas semanais'
			E= 'Mais de 40 horas semanais';
		 value  $Qquarentaum
			A= 'Para ajudar meus pais '
			B= 'Para meu próprio sustento '
			C= 'Para as duas finalidades'
			D= 'Para outra(s) finalidade(s)';
		 value  $Qquarentadois
			A= 'Antes dos 14 anos '
			B= 'Entre 14 e 16 anos'
			C= 'Entre 17 e 18 anos'
			D= 'Após 18 anos';
		 value  $Qquarentatres
			A= 'Até 1 salário mínimo (R$ 151,00)'
			B= 'De 1 a 2 salários mínimos (de R$ 151,01 a R$ 302,00)'
			C= 'De 2 a 5 salários mínimos (de R$ 302,01 a R$ 755,00)'
			D= 'De 5 a 10 salários mínimos (de R$ 755,01 a R$ 1.510,00)'
			E= 'De 10 a 30 salários mínimos (de R$ 1.510,01 a R$ 4.530,00)'
			F= 'De 30 a 50 salários mínimos (de R$ 4.530,01 a R$ 7.550,00)'
			G= 'Mais de 50 salários mínimos (mais de R$ 7.550,00)'
			H= 'Não estou trabalhando';
		 value  $Qquarentaquatro
			A= 'Para ajudar meus pais '
			B= 'Para meu próprio sustento '
			C= 'Para as duas finalidades'
			D= 'Para outra(s) finalidade(s)';
		 value  $Qquarentacinco
			A= 'Na agricultura (campo, fazenda, pesca).'
			B= 'Na indústria.'
			C= 'No comércio, banco, transporte ou outros serviços.'
			D= 'Como empregado(a) em casa de família.'
			E= 'Como funcionário(a) do governo federal, do estado ou do município, ou militar.'
			F= 'Como profissional liberal, professor(a) ou técnico(a) de nível superior.'
			G= 'No lar.'
			H= 'Na produção (comida, costura etc.) ou em serviços (aula particular etc.) em casa'
			I= 'Não trabalha';
		 value  $Qquarentaseis
			A= 'Gerente, administrador(a) ou diretor(a) de empresa privada.'
			B= 'Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção.'
			C= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando'
			D= 'Empregado(a) no setor privado, com carteira assinada'
			E= 'Funcionário(a) público(a) (federal, estadual ou municipal), sem função de direção.'
			F= 'Trabalho temporário, informal, sem carteira assinada'
			G= 'Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando.'
			H= 'Trabalho por conta própria Aposentado(a).'
			I= 'Não trabalho'
			J= 'Outra situação.';
		 value  $Qquarentasete
			A= 'Sim'
			B= 'Não, porque não consegui trabalho na minha profissão'
			C= 'Não me preparei para um trabalho em específico/minha formação foi geral';
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
			A= 'Somente em escola pública'
			B= 'Parte em escola pública e parte em escola particular '
			C= 'Somente em escola particular';
		 value  $Qcinquentaum
			A= 'Vou concluí-lo no segundo semestre de 2000.'
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
			A= 'Somente em escola pública'
			B= 'Parte em escola pública e parte em escola particular '
			C= 'Somente em escola particular';
		 value  $Qcinquentacinco
			A= 'Ensino regular'
			B= 'Ensino supletivo';
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
			E= 'Péssimo';
		 value  $Qsessentanove
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'Péssimo';
		 value  $Qsetenta	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'Péssimo';
		 value  $Qsetentaum	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'Péssimo';
		 value  $Qsetentadois	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'Péssimo';
		 value  $Qsetentatres	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'Péssimo';
		 value  $Qsetentaquatro	
			A= 'Excelente '
			B= 'Bom '
			C= 'Mais ou menos '
			D= 'Ruim '
			E= 'Péssimo';
		 value  $Qsetentacinco
			A= 'Sim'
			B= 'Não';
		 value  $Qsetentaseis	
			A= 'Sim'
			B= 'Não';
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
			A= 'Sim'
			B= 'Não';
		 value  $Qoitentatres
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qoitentaquatro	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qoitentacinco	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qoitentaseis	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qoitentasete	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qoitentaoito	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qoitentanove	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qnoventa	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qnoventaum	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qnoventadois	
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qnoventatres
			A= 'Muito '
			B= 'Pouco'
			C= 'Não me interesso';
		 value  $Qnoventaquatro
			A= 'Com frequência '
			B= 'Ás vezes'
			C= 'Não participo';
		 value  $Qnoventacinco	
			A= 'Com frequência '
			B= 'Ás vezes'
			C= 'Não participo';
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
			A= 'Melhorou '
			B= 'Piorou'
			C= 'Nem melhorou nem piorou';
		 value  $Qcemum
			A= 'Melhorou '
			B= 'Piorou'
			C= 'Nem melhorou nem piorou';
		 value  $Qcemdois
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemtres	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemquatro	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemcinco	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemseis	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemsete	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemoito	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemnove	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemdez	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemonze	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemdoze	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemtreze	
			A= 'Importante'
			B= 'Sem importância';
		 value  $Qcemcatorze
			A= 'Sim, estou estudando no momento atual'
			B= 'Sim, mas não estou estudando no momento atual '
			C= 'Não';
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
Q1 = 'Sexo'
Q2 = 'Ano em que nasceu'
Q3 = 'Como se considera'
Q4 = 'Qual o estado civil'
Q5 = 'Como mora'
Q6 = 'Mora sozinho(a)'
Q7 = 'Mora com o pai'
Q8 = 'Mora com a mãe'
Q9 = 'Mora com mulher, marido, companheiro ou companheira.'
Q10 = 'Mora com filhos'
Q11 = 'Mora com irmãos'
Q12 = 'Mora com outros parentes'
Q13 = 'Mora com amigos ou colegas'
Q14 = 'Outra situação.'
Q15 = 'Quantidade de pessoas que moram na casa'
Q16 = 'Quantos filhos tem'
Q17 = 'O grau de escolaridade do pai do candidato'
Q18 = 'O grau de escolaridade de mãe do candidato'
Q19 = 'Área que o pai trabalha ou trabalhou, na maior parte da vida'
Q20 = 'Qual a posição do pai neste trabalho, na maior parte do tempo'
Q21 = 'Área que a mãe trabalha ou trabalhou, na maior parte da vida'
Q22 = 'Qual a posição da mãe neste trabalho, na maior parte do tempo'
Q23 = 'Renda  total (Todos que moram na mesma casa)'
Q24 = 'Quais e quantos dos itens abaixo há em sua casa? Automóvel'
Q25 = 'Quais e quantos dos itens abaixo há em sua casa? TV em cores'
Q26 = 'Quais e quantos dos itens abaixo há em sua casa?  Microcomputador'
Q27 = 'Quais e quantos dos itens abaixo há em sua casa? Videocassete'
Q28 = 'Quais e quantos dos itens abaixo há em sua casa? Máquina de lavar roupa'
Q29 = 'Quais e quantos dos itens abaixo há em sua casa? Aspirador de pó'
Q30 = 'Quais e quantos dos itens abaixo há em sua casa? Geladeira'
Q31 = 'Quais e quantos dos itens abaixo há em sua casa? Freezer'
Q32 = 'Quais e quantos dos itens abaixo há em sua casa? Telefone'
Q33 = 'Tem casa própria'
Q34 = 'Tem casa em rua urbanizada (com calçamento ou asfaltada)'
Q35 = 'Se a casa tem água corrente de torneira'
Q36 = 'Se a casa tem eletricidade'
Q37 = 'Tem empregada doméstica mensalista'
Q38 = 'Trabalha, ou já trabalhou, ganhando algum salário ou rendimento'
Q39 = 'Trabalhou ou teve alguma atividade remunerada durante o ensino médio (2º grau)'
Q40 = 'Quantas horas trabalhava, durante o ensino médio (2º grau)'
Q41 = 'Com que finalidade trabalhava, enquanto estudava no ensino médio (antigo 2º grau)'
Q42 = 'Com que idade começou a exercer atividade remunerada'
Q43 = 'Se estiver trabalhando atualmente, qual a renda ou salário mensal'
Q44 = 'Por que trabalha atualmente'
Q45 = 'Em que trabalha atualmente'
Q46 = 'Qual a sua posição no trabalho'
Q47 = 'Trabalha na ocupação para a qual se preparou nos estudos'
Q48 = 'Quanto tempo está trabalhando nessa atividade'
Q49 = 'Anos que levou para concluir o ensino fundamental (1º grau)'
Q50 = 'Em que tipo de escola cursou o ensino fundamental (1ª grau)'
Q51 = 'Em que ano concluiu ou concluirá o ensino médio (2º grau)'
Q52 = 'Quantos anos levou para cursar o ensino médio (2º grau)'
Q53 = 'Em que turno cursou ou esta cursando o ensino médio (2º grau)'
Q54 = 'Em que  tipo escola cursou ou está cursando o ensino médio (2º grau)'
Q55 = 'Em que modalidade de ensino concluiu ou vai concluir o ensino médio (2º grau)'
Q56 = 'Fez curso de língua estrangeira fora da escola durante o ensino médio (2º grau)'
Q57 = 'Fez curso de computação ou informática fora da escola durante o ensino médio (2º grau)'
Q58 = 'Fez curso preparatório para o vestibular (cursinho) fora da escola durante o ensino médio (2º grau)'
Q59 = 'Fez artes plásticas em geral fora da escola durante o ensino médio (2º grau)'
Q60 = 'Fez atividades artistica em geral fora da escola durante o ensino médio (2º grau)'
Q61 = 'Fez atividade esportiva fora da escola durante o ensino médio (2º grau)'
Q62 = 'Outro(s) curso(s) ou outra(s) atividade(s)'
Q63 = 'Com que freqüência lê jornais'
Q64 = 'Com que freqüência lê revistas de informação geral'
Q65 = 'Com que freqüência lê revistas de humor / quadrinhos'
Q66 = 'Com que freqüência lê revistas de divulgação científica (Ciência Hoje, Galileu, etc)'
Q67 = 'Com que freqüência lê romances, livros de ficção'
Q68 = 'Qual a sua avaliação da escola que fez o ensino médio quanto ao conhecimento que os(as) professores(as) têm das matérias e a maneira de transmiti-lo'
Q69 = 'Qual a sua avaliação da escola que fez o ensino médio quanto ao  dedicação dos professores para preparar aulas e atender aos alunos'
Q70 = 'Qual a sua avaliação da escola que fez o ensino médio quanto as iniciativas da escola para realizar excursões, trabalhos em equipe, projetos e outras atividades fora da rotina'
Q71 = 'Qual a sua avaliação da escola que fez o ensino médio quanto aos recursos pedagógicos: laboratórios, bibliotecas, TV, vídeos etc. disponíveis'
Q72 = 'Qual a sua avaliação da escola que fez o ensino médio quanto as condições físicas da escola – condição das salas, banheiros, limpeza'
Q73 = 'Qual a sua avaliação da escola que fez o ensino médio quanto ao  acesso a computadores e outros recursos de informática'
Q74 = 'Qual a sua avaliação da escola que fez o ensino médio quanto ao  ensino de língua estrangeira'
Q75 = 'Nos próximos três anos pretende: Continuar estudando'
Q76 = 'Nos próximos três anos pretende: conseguir um emprego'
Q77 = 'Nos próximos três anos pretende: melhorar a posição no emprego atual'
Q78 = 'Nos próximos três anos pretende: fazer um concurso público'
Q79 = 'Nos próximos três anos pretende: trabalhar por conta própria, abrir meu próprio negócio.'
Q80 = 'Nos próximos três anos pretende: constituir família'
Q81 = 'Nos próximos três anos pretende: mudar para outra cidade ou estado do Brasil.'
Q82 = 'Nos próximos três anos pretende: mudar para o Exterior'
Q83 = 'Você tem: interesse  em acompanhar a politica nacional'
Q84 = 'Você tem: interesse em acompanhar a politica internacional'
Q85 = 'Você tem: interesse em acompanhar esportes'
Q86 = 'Você tem: interesse em acompanhar a economia'
Q87 = 'Você tem: interesse em acompanhar a moda'
Q88 = 'Você tem: interesse em acompanhar atividades culturais, como teatro, pintura, arte, etc'
Q89 = 'Você tem: interesse em acompanhar questões sobre comportamento sexual, como a AIDS, a gravidez indesejada etc'
Q90 = 'Você tem: interesse em mudar para o exterior'
Q91 = 'Você tem: interesse em acompanhar questões sobre o meio ambiente'
Q92 = 'Você tem: interesse em questões relativas aos direitos de minorias'
Q93 = 'Você tem: interesse em questões sociais, como pobreza, o desemprego, a violência etc.'
Q94 = 'Você participa: igreja ou grupo religioso'
Q95 = 'Você participa:  partido político ou movimento social.'
Q96 = 'Você participa: sindicato ou associação profissional.'
Q97 = 'Você participa: grupo de bairro ou associação comunitária'
Q98 = 'Você participa:  clube recreativo ou associação esportiva.'
Q99 = 'Você participa:  grêmio estudantil'
Q100 = 'Qual a sua opinião  em relação ao Brasil, nos últimos anos'
Q101 = 'Qual a sua opinião  em relação a sua situação e a de sua família, nos últimos anos'
Q102 = 'Para ter uma boa vida no futuro você considera importante ter sido um um bom(a) aluno(a) na escola ou na faculdade'
Q103 = 'Para ter uma boa vida no futuro você considera importante ter cursado uma boa escola ou facudade'
Q104 = 'Para ter uma boa vida no futuro você considera importante ter conhecimentos profissionais práticos e úteis'
Q105 = 'Para ter uma boa vida no futuro você considera importante ter cultura geral (conhecer lígua, ler livros etc)'
Q106 = 'Para ter uma boa vida no futuro você considera importante ter amigos influentes'
Q107 = 'Para ter uma boa vida no futuro você considera importante  vir de uma família rica'
Q108 = 'Para ter uma boa vida no futuro você considera importante ser esperto(a)'
Q109 = 'Para ter uma boa vida no futuro você considera importante ter sorte na vida'
Q110 = 'Para ter uma boa vida no futuro você considera importante ser honesto(a) e justo(a)'
Q111 = 'Para ter uma boa vida no futuro você considera importante ser trabalhador'
Q112 = 'Para ter uma boa vida no futuro você considera importante ser gerneroso(a) e solidário(a) ckom os outros'
Q113 = 'Para ter uma boa vida no futuro você considera importante ser fé e seguir os ensinamentos religiosos'
Q114 = 'Você continuou os estudos depois de ter concluído o ensino médio (2º grau)'
Q115 = 'Está freqüentando um curso profissionalizante'
Q116 = 'Está freqüentando um curso preparatório para vestibular'
Q117 = 'Está freqüentando um curso superior'
Q118 = 'Está freqüentando um curso de língua estrangeira'
Q119 = 'Está freqüentando um curso de computação ou informática'
Q120 = 'Está freqüentando outro curso'
Q121 = 'Fez curso profissionalizante'
Q122 = 'Fez curso preparatório para vestibular, mas não ingressei no curso superior'
Q123 = 'Fez curso superior e se formou'
Q124 = 'Fez curso superior mas não se formou'
Q125 = 'Fez curso de língua estrangeira'
Q126 = 'Fez curso de computação ou informática'
Q127 = 'Fez outro curso'

;IF NU_INSCRICAO = . THEN DELETE;

RUN;