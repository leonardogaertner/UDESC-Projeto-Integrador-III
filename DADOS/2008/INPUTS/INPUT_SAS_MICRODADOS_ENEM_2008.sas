
/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Estudos, Pesquisas e Disseminação				  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_MICRODADOS_ENEM_2008.sas                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS MICRODADOS DO ENEM DE 2008       */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* MICRODADOS_ENEM_2008.CSV no diretório C:\ do computador.			      */
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
		1='Já concluiu'
		2='Concluirá em 2008'
		3='Concluirá após 2008';
	value  $ENSINO
		1='Ensino Regular'
		2='Educação Especial - Modalidade Substitutiva'
		3='Educação de Jovens e Adultos'
		4='Educação Profissional';
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
	   4='Extinta no ano anterior';
	value  $PRESENCA
		0='Faltou à prova'
		1='Presente na prova';
	value  $PROVA
		1='Amarela'
		2='Azul'
		3='Branca'
		4='Rosa';
	value  $STATUS_REDACAO
		B='Entregou a redação em branco'
		F='Faltou à prova'
		N='Redação anulada'
		P='Presente à prova';
	value  $QSE
		0='Não respondeu o questionário socioecômico'
		1='Respondeu o questionário socioecômico';
	value  $Qum
		A='Feminino'
		B='Masculino';
	value  $Qdois
		A='Após 1991.'
		B='Em 1991.'
		C='Em 1990.'
		D='Em 1989.'
		E='Em 1988.'
		F='Em 1987.'
		G='Em 1986.'
		H='Entre 1982 e 1985.'
		I='Antes de 1982.';
	value  $Qtres
		A='Branco(a)'
		B='Pardo(a)'
		C='Preto(a)'
		D='Amarelo(a)'
		E='Indígena';
	value  $Qquatro
		A='Minha língua materna é o português'
		B='Falo uma língua indígena e o português'
		C='Falo mais de uma língua indígena e o português'
		D='Falo uma língua indígena, o português e o espanhol'
		E='Falo mais de uma língua indígena, o português e o espanhol'
		F='Além do português, falo francês e inglês'
		G='Além do português, falo o creole';
	value  $Qcinco
		A='Solteiro(a)'
		B='Casado(a) / mora com um(a) companheiro(a)'
		C='Separado(a) / divorciado(a) / desquitado(a)'
		D='Viúvo(a)';
	value  $Qseis
		A='Em casa ou apartamento, com sua família'
		B='Em casa ou apartamento, sozinho(a)'
		C='Em quarto ou cômodo alugado, sozinho(a)'
		D='Em habitação coletiva: hotel, hospedaria, quartel, pensionato, república, etc'
		E='Outra situação';
	value  $Qsete
		A='Sim'
		B='Não';
	value  $Qoito	
		A='Sim'
		B='Não';
	value  $Qnove	
		A='Sim'
		B='Não';
	value  $Qdez	
		A='Sim'
		B='Não';
	value  $Qonze	
		A='Sim'
		B='Não';
	value  $Qdoze	
		A='Sim'
		B='Não';
	value  $Qtreze	
		A='Sim'
		B='Não';
	value  $Qcatorze	
		A='Sim'
		B='Não';
	value  $Qquinze
		A='Duas pessoas'
		B='Três pessoas'
		C='Quatro pessoas'
		D='Cinco pessoas'
		E='Seis pessoas'
		F='Mais de 6 pessoas'
		G='Moro sozinho';
	value  $Qdezesseis
		A='Um filho '
		B='Dois filhos'
		C='Três filhos'
		D='Quatro ou mais filhos'
		E='Não tenho filhos';
	value  $Qdezessete
		A='Não estudou'
		B='Da 1ª a 4ª série do ensino fundamental (antigo primário)'
		C='Da 5ª a 8ª do ensino fundamental (antigo ginásio)'
		D='Ensino Médio (2º grau) incompleto'
		E=' Ensino Médio (2º grau) completo'
		F='Ensino Superior incompleto'
		G='Ensino Superior completo'
		H='Pós-graduação'
		I='Não sei';
	value  $Qdezoito
		A='Não estudou'
		B='Da 1ª a 4ª série do ensino fundamental (antigo primário)'
		C='Da 5ª a 8ª do ensino fundamental (antigo ginásio)'
		D='Ensino Médio (2º grau) incompleto'
		E='Ensino Médio (2º grau) completo'
		F='Ensino Superior incompleto'
		G='Ensino Superior completo'
		H='Pós-graduação'
		I='Não sei';
	value  $Qdezenove
		A='Na agricultura, no campo, em fazenda ou na pesca'
		B='Na indústria'
		C='No comércio, banco, transporte ou outros serviços'
		D='Funcionário público do governo federal, estadual, ou do município, ou militar'
		E='Profissional liberal, professor ou técnico de nível superior'
		F='Trabalhador do setor informal (sem carteira assinada)'
		G='Trabalha em casa em serviços (costura, cozinha, aulas particulares,etc) '
		H='No lar'
		I='Não trabalha'
		J='Não sei';
	value  $Qvinte
		A='Gerente, administrador ou diretor de empresa privada'
		B='Funcionário público (federal, estadual, ou municipal), com funções de direção'
		C='Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando'
		D='Empregado no setor privado, com carteira assinada'
		E='Funcionário público (federal, estadual, ou municipal), sem função de direção'
		F='Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando'
		G='Trabalho temporário, informal, sem carteira assinada'
		H='Trabalho por conta própria'
		I=' Desempregado'
		J='Aposentado'
		K='Outra situação';
	value  $Qvinteum
		A='Na agricultura, no campo, em fazenda ou na pesca'
		B='Na indústria'
		C='No comércio, banco, transporte ou outros serviços'
		D='Funcionário público do governo federal, estadual, ou do município, ou militar'
		E='Profissional liberal, professor ou técnico de nível superior'
		F='Trabalhador do setor informal (sem carteira assinada)'
		G='Trabalha em casa em serviços (costura, cozinha, aulas particulares,etc) '
		H='No lar'
		I='Não trabalha'
		J='Não sei';
	value  $Qvintedois
		A='Gerente, administrador ou diretor de empresa privada'
		B='Funcionário público (federal, estadual, ou municipal), com funções de direção'
		C='Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando'
		D='Empregado no setor privado, com carteira assinada'
		E='Funcionário público (federal, estadual, ou municipal), sem função de direção'
		F='Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando'
		G='Trabalho temporário, informal, sem carteira assinada'
		H='Trabalho por conta própria'
		I='Desempregado'
		J='Aposentado'
		K='Outra situação';
	value  $Qvintetres
		A='Até 1 salário mínimo (até R$ 415,00 inclusive)'
		B='De 1 a 2 salários mínimos (R$ 415,00 a R$ 830,00 inclusive)'
		C='De 2 a 5 salários mínimos (R$ 830,00 a R$ 2.075,00 inclusive)'
		D='De 5 a 10 salários mínimos (R$ 2.075,00 a R$ 4.150,00 inclusive)'
		E='De 10 a 30 salários mínimos (R$ 4.150,00 a R$ 12.450,00 inclusive)'
		F='De 30 a 50 salários mínimos (R$ 12.450,00 a R$ 20.750,00 inclusive)'
		G='Mais de 50 salários mínimos (mais de R$ 20.750,00)'
		H='Nenhuma renda';
	value  $Qvintequatro
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qvintecinco
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qvinteseis
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qvintesete	
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qvinteoito	
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qvintenove	
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qtrinta	
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qtrintaum	
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qtrintadois	
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qtrintatres	
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qtrintaquatro	
		A='1'
		B='2'
		C='3 ou mais '
		D='Não tem';
	value  $Qtrintacinco
		A='Sim'
		B='Não';
	value  $Qtrintaseis	
		A='Sim'
		B='Não';
	value  $Qtrintasete	
		A='Sim'
		B='Não';
	value  $Qtrintaoito	
		A='Sim'
		B='Não';
	value  $Qtrintanove	
		A='Sim'
		B='Não';
	value  $Qquarenta
		A='Para testar seus conhecimentos / capacidade de raciocínio'
		B='Para entrar na faculdade / conseguir pontos para o vestibular'
		C='Para ter um bom emprego / saber se está preparado(a) para o futuro profissional'
		D='Não sei';
	value  $Qquarentaum
		A='Para ter mais responsabilidade'
		B='Independência financeira '
		C='Adquirir experiência'
		D='Crescer profissionalmente '
		E='Sentir-me útil'
		F='Para fazer amigos, conhecer pessoas'
		G='Não acho importante ter um trabalho'
		H='Para ajudar minha comunidade indígena';
	value  $Qquarentadois
		A='Sim'
		B='Nunca trabalhei'
		C='Nunca trabalhei, mas estou procurando trabalho';
	value  $Qquarentatres
		A='Sim, todo o tempo '
		B='Sim, menos de 1 ano'
		C='Sim, de 1 a 2 anos'
		D='Sim, de 2 a 3 anos'
		E='Não';
	value  $Qquarentaquatro
		A='Sem jornada fixa, até 10 horas semanais'
		B='De 11 a 20 horas semanais'
		C='De 21 a 30 horas semanais'
		D='De 31 a 40 horas semanais '
		E='Mais de 40 horas semanais';
	value  $Qquarentacinco
		A='Para ajudar meus pais nas despesas com a casa, sustentar a família'
		B='Para ser independente (ter meu sustento, ganhar meu próprio dinheiro)'
		C='Para adquirir experiência'
		D='Para ajudar minha comunidade '
		E='Outra finalidade';
	value  $Qquarentaseis
		A='Antes dos 14 anos '
		B='Entre 14 e 16 anos'
		C='Entre 17 e 18 anos'
		D='Após 18 anos';
	value  $Qquarentasete
		A='Até 1 salário mínimo (até R$ 415,00 inclusive)'
		B='De 1 a 2 salários mínimos (R$ 415,00 a R$ 830,00 inclusive)'
		C='De 2 a 5 salários mínimos (R$ 830,00 a R$ 2.075,00 inclusive)'
		D='De 5 a 10 salários mínimos (R$ 2.075,00 a R$ 4.150,00 inclusive)'
		E='De 10 a 30 salários mínimos (R$ 4.150,00 a R$ 12.450,00 inclusive)'
		F='De 30 a 50 salários mínimos (R$ 12.450,00 a R$ 20.750,00 inclusive)'
		G='Mais de 50 salários mínimos (mais de R$ 20.750,00)'
		H='Nenhuma renda';
	value  $Qquarentaoito
		A='Sim'
		B='Não';
	value  $Qquarentanove
		A='Na agricultura, no campo, em fazenda ou na pesca'
		B='Na indústria'
		C='No comércio, banco, transporte ou outros serviços'
		D='Como trabalhador(a) doméstico(a)'
		E='Como funcionária do governo federal, do estado ou do município ou militar'
		F='Como profissional liberal, professor ou técnica de nível superior'
		G='No lar'
		H='Trabalho em casa em serviços (costura, cozinha, aulas particulares)'
		I='Não trabalha';
	value  $Qcinquenta
		A='Gerente, administrador(a) ou diretor(a) de empresa privada.'
		B='Funcionário(a) público(a) (federal, estadual ou municipal), com funções de direção.'
		C='Militar (guarda-civil, polícia estadual ou Forças Armadas), com posto de comando.'
		D='Empregado(a) no setor privado, com carteira assinada.'
		E='Funcionário(a) público(a) (federal, estadual ou municipal), sem funções de direção.'
		F='Trabalho temporário, informal, sem carteira assinada.'
		G='Militar (guarda-civil, polícia estadual ou Forças Armadas), sem posto de comando.'
		H='Trabalho por conta própria.'
		I='Aposentado(a).'
		J='Outra situação.';
	value  $Qcinquentaum
		A='Menos de 1 ano '
		B='Entre 1 e 2 anos'
		C='Entre 2 e 4 anos'
		D='Mais de 4 anos';
	value  $Qcinquentadois
		A='Sim'
		B='Não';
	value  $Qcinquentatres	
		A='Sim'
		B='Não';
	value  $Qcinquentaquatro	
		A='Sim'
		B='Não';
	value  $Qcinquentacinco	
		A='Sim'
		B='Não';
	value  $Qcinquentaseis
		A='Atrapalhou os estudos'
		B='Possibilitou crescimento pessoal'
		C='Atrapalhou os estudos, mas possibilitou crescimento pessoal'
		D='Não atrapalhou os estudos'
		E='Não trabalho / não trabalhei';
	value  $Qcinquentasete
		A='Sim '
		B='Não'
		C='Não sei';
	value  $Qcinquentaoito
		A='Sim'
		B='Não';
	value  $Qcinquentanove	
		A='Sim'
		B='Não';
	value  $Qsessenta	
		A='Sim'
		B='Não';
	value  $Qsessentaum	
		A='Sim'
		B='Não';
	value  $Qsessentadois	
		A='Sim'
		B='Não';
	value  $Qsessentatres	
		A='Sim'
		B='Não';
	value  $Qsessentaquatro	
		A='Sim'
		B='Não';
	value  $Qsessentacinco	
		A='Sim'
		B='Não';
	value  $Qsessentaseis	
		A='Sim'
		B='Não';
	value  $Qsessentasete	
		A='Sim'
		B='Não';
	value  $Qsessentaoito	
		A='Sim'
		B='Não';
	value  $Qsessentanove	
		A='Sim'
		B='Não';
	value  $Qsetenta	
		A='Sim'
		B='Não';
	value  $Qsetentaum	
		A='Sim'
		B='Não';
	value  $Qsetentadois
		A='Menos de 8 anos'
		B='8 anos'
		C='9  anos'
		D='10  anos'
		E='11  anos'
		F='Mais de 11 anos';
	value  $Qsetentatres
		A='Somente em escola pública'
		B='Parte em escola pública e parte em escola particular'
		C='Somente em escola particular '
		D='Somente em escola indígena'
		E='Parte na escola indígena e parte em escola não-indígena';
	value  $Qsetentaquatro
		A='Vai concluir após 2008'
		B='Vai concluir no segundo semestre de 2008'
		C='No primeiro semestre de 2008'
		D='Em 2007.'
		E='Em 2006.'
		F='Em 2005.'
		G='Em 2004.'
		H='Em 2003.'
		I='Entre 2002 e 2001.'
		J='Antes de 2001.';
	value  $Qsetentacinco
		A='Menos de 3 anos '
		B='3 anos'
		C='4  anos'
		D='5  anos'
		E='6  anos'
		F='Mais de 6 anos';
	value  $Qsetentaseis
		A='Somente no turno diurno'
		B='Maior parte no turno diurno '
		C='Somente no turno noturno'
		D='Maior parte no turno noturno';
	value  $Qsetentasete
		A='Somente em escola pública '
		B='Maior parte em escola pública '
		C='Somente em escola particular'
		D='Maior parte em escola particular '
		E='Somente em escola indígena'
		F='Maior parte em escola não-ingígena';
	value  $Qsetentaoito
		A='Ensino regular'
		B='Educação para jovens e adultos (antigo supletivo)'
		C='Ensino técnico / ensino profissional';
	value  $Qsetentanove
		A='Sim'
		B='Não';
	value  $Qoitenta	
		A='Sim'
		B='Não';
	value  $Qoitentaum	
		A='Sim'
		B='Não';
	value  $Qoitentadois	
		A='Sim'
		B='Não';
	value  $Qoitentatres	
		A='Sim'
		B='Não';
	value  $Qoitentaquatro	
		A='Sim'
		B='Não';
	value  $Qoitentacinco	
		A='Freqüentemente (todo dia ou quase todo dia) '
		B='Às vezes'
		C='Nunca';
	value  $Qoitentaseis	
		A='Freqüentemente (todo dia ou quase todo dia) '
		B='Às vezes'
		C='Nunca';
	value  $Qoitentasete	
		A='Freqüentemente (todo dia ou quase todo dia) '
		B='Às vezes'
		C='Nunca';
	value  $Qoitentaoito	
		A='Freqüentemente (todo dia ou quase todo dia) '
		B='Às vezes'
		C='Nunca';
	value  $Qoitentanove	
		A='Freqüentemente (todo dia ou quase todo dia) '
		B='Às vezes'
		C='Nunca';
	value  $Qnoventa
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventaum		
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventadois	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventatres	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventaquatro	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventacinco	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventaseis	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventasete	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventaoito	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qnoventanove	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcem		
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemum		
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemdois	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemtres	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemquatro	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemcinco	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemseis	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemsete
		A='Sim'
		B='Não';
	value  $Qcemoito	
		A='Sim'
		B='Não';
	value  $Qcemnove	
		A='Sim'
		B='Não';
	value  $Qcemdez		
		A='Sim'
		B='Não';
	value  $Qcemonze	
		A='Sim'
		B='Não';
	value  $Qcemdoze	
		A='Sim'
		B='Não';
	value  $Qcemtreze	
		A='Sim'
		B='Não';
	value  $Qcemcatorze	
		A='Sim'
		B='Não';
	value  $Qcemquinze
		A='Eu me considero preparado(a) para entrar no mercado de trabalho'
		B='Apesar de ter freqüentado uma boa escola, eu me considero despreparado(a), pois não aprendi o suficiente para conseguir um emprego'
		C='Eu me considero despreparado(a) devido à baixa qualidade do ensino de minha escola, que não me preparou o suficiente'
		D='Não sei';
	value  $Qcemdezesseis	
		A='Sim'
		B='Não';
	value  $Qcemdezessete	
		A='Sim'
		B='Não';
	value  $Qcemdezoito		
		A='Sim'
		B='Não';
	value  $Qcemdezenove	
		A='Sim'
		B='Não';
	value  $Qcemvinte		
		A='Sim'
		B='Não';
	value  $Qcemvinteum		
		A='Sim'
		B='Não';
	value  $Qcemvintedois	
		A='Sim'
		B='Não';
	value  $Qcemvintetres	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemvintequatro	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemvintecinco	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemvinteseis	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemvintesete	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemvinteoito	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemvintenove	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemtrinta		
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemtrintaum	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemtrintadois	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemtrintatres	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemtrintaquatro
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemtrintacinco	
		A='Insuficiente a regular '
		B='Regular a bom'
		C='Bom a excelente';
	value  $Qcemtrintaseis
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
		L='Não sei';
	value  $Qcemtrintasete
		A='Sim'
		B='Não';
	value  $Qcemtrintaoito		
		A='Sim'
		B='Não';
	value  $Qcemtrintanove		
		A='Sim'
		B='Não';
	value  $Qcemquarenta		
		A='Sim'
		B='Não';
	value  $Qcemquarentaum		
		A='Sim'
		B='Não';
	value  $Qcemquarentadois	
		A='Sim'
		B='Não';
	value  $Qcemquarentatres	
		A='Sim'
		B='Não';
	value  $Qcemquarentaquatro	
		A='Sim'
		B='Não';
	value  $Qcemquarentacinco	
		A='Sim'
		B='Não';
	value  $Qcemquarentaseis	
		A='Sim'
		B='Não';
	value  $Qcemquarentasete	
		A='Sim'
		B='Não';
	value  $Qcemquarentaoito	
		A='Sim'
		B='Não';
	value  $Qcemquarentanove	
		A='Sim'
		B='Não';
	value  $Qcemcinquenta	
		A='Sim'
		B='Não';
	value  $Qcemcinquentaum	
		A='Sim'
		B='Não';
	value  $Qcemcinquentadois	
		A='Sim'
		B='Não';
	value  $Qcemcinquentatres	
		A='Sim'
		B='Não';
	value  $Qcemcinquentaquatro	
		A='Sim'
		B='Não';
	value  $Qcemcinquentacinco	
		A='Sim'
		B='Não';
	value  $Qcemcinquentaseis	
		A='Sim'
		B='Não';
	value  $Qcemcinquentasete	
		A='Sim'
		B='Não';
	value  $Qcemcinquentaoito	
		A='Sim'
		B='Não';
	value  $Qcemcinquentanove	
		A='Sim'
		B='Não';
	value  $Qcemsessenta	
		A='Sim'
		B='Não';
	value  $Qcemsessentaum	
		A='Sim'
		B='Não';
	value  $Qcemsessentadois	
		A='Sim'
		B='Não';
	value  $Qcemsessentatres	
		A='Sim'
		B='Não';
	value  $Qcemsessentaquatro	
		A='Sim'
		B='Não';
	value  $Qcemsessentacinco	
		A='Sim'
		B='Não';
	value  $Qcemsessentaseis	
		A='Sim'
		B='Não';
	value  $Qcemsessentasete	
		A='Sim'
		B='Não';
	value  $Qcemsessentaoito	
		A='Sim'
		B='Não';
	value  $Qcemsessentanove	
		A='Sim'
		B='Não';
	value  $Qcemsetenta		
		A='Sim'
		B='Não';
	value  $Qcemsetentaum	
		A='Sim'
		B='Não';
	value  $Qcemsetentadois	
		A='Sim'
		B='Não';
	value  $Qcemsetentatres	
		A='Sim'
		B='Não';
	value  $Qcemsetentaquatro	
		A='Sim'
		B='Não';
	value  $Qcemsetentacinco
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemsetentaseis
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemsetentasete	
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemsetentaoito	
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemsetentanove	
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemoitenta		
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemoitentaum	
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemoitentadois	
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemoitentatres	
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemoitentaquatro	
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemoitentacinco	
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemoitentaseis		
		A='Muito'
		B='Pouco'
		C='Não me interesso';
	value  $Qcemoitentasete
		A='O meio ambiente'
		B='A aids e as doenças sexualmente transmissíveis'
		C='O racismo e a discriminação étnico-racial'
		D='A discriminação de gênero'
		E='A discriminação contra homossexuais'
		F='A discriminação etária'
		G='A discriminação religiosa e os conflitos religiosos'
		H='A desigualdade social no Brasil'
		I='A pobreza, as favelas, os meninos de rua'
		J='As drogas e a violência'
		K='A situação econômica do país'
		L='A precariedade dos serviços públicos de saúde e de educação';
	value  $Qcemoitentaoito
		A='O meio ambiente'
		B='A aids e as doenças sexualmente transmissíveis'
		C='O racismo e a discriminação étnico-racial'
		D='A discriminação de gênero'
		E='A discriminação contra homossexuais'
		F='A discriminação etária'
		G='A discriminação religiosa e os conflitos religiosos'
		H='A desigualdade social no Brasil'
		I='A pobreza, as favelas, os meninos de rua'
		J='As drogas e a violência'
		K='A situação econômica do país'
		L='A precariedade dos serviços públicos de saúde e de educação';
	value  $Qcemoitentanove
		A='Obtenção de um certificado de conclusão de curso / obtenção de um diploma'
		B='Formação básica necessária para obter um emprego melhor'
		C='Condições de melhorar minha posição no emprego atual'
		D='Obtenção de cultura geral / ampliação de minha formação pessoal'
		E='Formação básica necessária para continuar os estudos em uma universidade / faculdade'
		F='Fazer muitos amigos / conhecer várias pessoas'
		G='Atender à expectativa de meus pais sobre meus estudos'
		H='Ajudar minha comunidade indígena';
	value  $Qcemnoventa
		A='Obtenção de um certificado de conclusão de curso / obtenção de um diploma'
		B='Formação básica necessária para obter um emprego melhor'
		C='Condições de melhorar minha posição no emprego atual'
		D='Obtenção de cultura geral / ampliação de minha formação pessoal'
		E='Formação básica necessária para continuar os estudos em uma universidade / faculdade'
		F='Fazer muitos amigos / conhecer várias pessoas'
		G='Atender à expectativa de meus pais sobre meus estudos'
		H='Ajudar minha comunidade indígena';
	value  $Qcemnoventaum
		A='Obtenção de um certificado de conclusão de curso / obtenção de um diploma'
		B='Formação básica necessária para obter um emprego melhor'
		C='Condições de melhorar minha posição no emprego atual'
		D='Obtenção de cultura geral / ampliação de minha formação pessoal'
		E='Formação básica necessária para continuar os estudos em uma universidade / faculdade'
		F='Fazer muitos amigos / conhecer várias pessoas'
		G='Atender à expectativa de meus pais sobre meus estudos'
		H='Ajudar minha comunidade indígena';
	value  $Qcemnoventaum
		A='Obtenção de um certificado de conclusão de curso / obtenção de um diploma'
		B='Formação básica necessária para obter um emprego melhor'
		C='Condições de melhorar minha posição no emprego atual'
		D='Obtenção de cultura geral / ampliação de minha formação pessoal'
		E='Formação básica necessária para continuar os estudos em uma universidade / faculdade'
		F='Fazer muitos amigos / conhecer várias pessoas'
		G='Atender à expectativa de meus pais sobre meus estudos'
		H='Ajudar minha comunidade indígena';
	value  $Qcemnoventadois
		A='Já conclui o ensino médio'
		B='Prestar vestibular e continuar os estudos no ensino superior'
		C='Procurar um emprego'
		D='Prestar vestibular e continuar a trabalhar'
		E='Fazer curso(s) profissionalizante(s) e me preparar para o trabalho '
		F='Trabalhar por conta própria / trabalhar em negócio da família'
		G='Trabalhar em atividade ligada à comunidade indígena'
		H='Ainda não decidiu'
		I='Outro plano';
	value  $Qcemnoventatres
		A='Gostaria de ter um diploma universitário para conseguir um bom emprego'
		B='Gostaria de prestar um concurso e trabalhar no setor público'
		C='Gostaria de ganhar dinheiro em meu próprio negócio'
		D='Gostaria de ter um emprego'
		E='Gostaria de estar envolvido em projeto de desenvolvimento de minha comunidade indígena'
		F='Não planejei'
		G='Outro plano';
	value  $Qcemnoventaquatro
		A='Ainda não escolhi'
		B='Profissão ligada às Engenharias / Ciências Tecnológicas'
		C='Profissão ligada às Ciências Humanas'
		D='Profissão ligada às Artes '
		E='Profissão ligadas às Ciências Biológicas e de Saúde'
		F='Professor(a) de Ensino Fundamental e Médio (1º e 2º graus)'
		G='Não vou seguir nenhuma profissão';
	value  $Qcemnoventacinco
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qcemnoventaseis	
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qcemnoventasete	
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qcemnoventaoito	
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qcemnoventanove	
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qduzentos	
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qduzentosum	
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qduzentosdois	
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qduzentostres	
		A='Ajudou muito '
		B='Ajudou pouco'
		C='Não ajudou';
	value  $Qduzentosquatro
		A='Sim, estou estudando no momento atual'
		B='Sim, mas não estou estudando no momento atual'
		C='Não';
	value  $Qduzentoscinco
		A='Sim'
		B='Não';
	value  $Qduzentosseis	
		A='Sim'
		B='Não';
	value  $Qduzentossete	
		A='Sim'
		B='Não';
	value  $Qduzentosoito	
		A='Sim'
		B='Não';
	value  $Qduzentosnove	
		A='Sim'
		B='Não';
	value  $Qduzentosdez	
		A='Sim'
		B='Não';
	value  $Qduzentosonze	
		A='Sim'
		B='Não';
	value  $Qduzentosdoze	
		A='Sim'
		B='Não';
	value  $Qduzentostreze	
		A='Sim'
		B='Não';
	value  $Qduzentoscatorze	
		A='Sim'
		B='Não';
	value  $Qduzentosquinze		
		A='Sim'
		B='Não';
	value  $Qduzentosdezesseis	
		A='Sim'
		B='Não';
	value  $Qduzentosdezessete	
		A='Sim'
		B='Não';
	value  $Qduzentosdezoito	
		A='Sim'
		B='Não';
	value  $Qduzentosdezenove	
		A='Sim'
		B='Não';
	value  $Qduzentosvinte		
		A='Sim'
		B='Não';
	value  $Qduzentosvinteum	
		A='Sim'
		B='Não';
	value  $Qduzentosvintedois	
		A='Sim'
		B='Não';
	value  $Qduzentosvintetres	
		A='Sim'
		B='Não';

run;


DATA WORK.DADOS_ENEM_2008;
INFILE 'C:\MICRODADOS_ENEM_2008.csv' /*local do arquivo*/
        LRECL=1600
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;
INPUT
			NU_INSCRICAO       : BEST12.
			NU_ANO       : BEST8.
			TP_FAIXA_ETARIA       : $char2.
			TP_SEXO       : $char1.
			TP_ST_CONCLUSAO       : $char1.
			TP_ENSINO       : $char1.
			CO_MUNICIPIO_ESC       : BEST8.
			NO_MUNICIPIO_ESC       : $char50.
			CO_UF_ESC       : BEST8.
			SG_UF_ESC       : $char2.
			TP_DEPENDENCIA_ADM_ESC       : $char1.
			TP_LOCALIZACAO_ESC       : $char1.
			TP_SIT_FUNC_ESC       : $char1.
			CO_MUNICIPIO_PROVA       : BEST8.
			NO_MUNICIPIO_PROVA       : $char50.
			CO_UF_PROVA       : BEST8.
			SG_UF_PROVA       : $char2.
			TP_PRESENCA       : $char1.
			CO_PROVA       : $char1.
			VL_PERC_COMP1       : BEST8.2
			VL_PERC_COMP2       : BEST8.2
			VL_PERC_COMP3       : BEST8.2
			VL_PERC_COMP4       : BEST8.2
			VL_PERC_COMP5       : BEST8.2
			NU_NOTA_OBJETIVA       : BEST8.2
			TX_RESPOSTAS_OBJETIVA       : $char63.
			TX_GABARITO_OBJETIVA       : $char63.
			TP_STATUS_REDACAO       : $char1.
			NU_NOTA_COMP1       : BEST8.2
			NU_NOTA_COMP2       : BEST8.2
			NU_NOTA_COMP3       : BEST8.2
			NU_NOTA_COMP4       : BEST8.2
			NU_NOTA_COMP5       : BEST8.2
			NU_NOTA_REDACAO       : BEST8.2
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
			Q206       : $char1.
			Q207       : $char1.
			Q208       : $char1.
			Q209       : $char1.
			Q210       : $char1.
			Q211       : $char1.
			Q212       : $char1.
			Q213       : $char1.
			Q214       : $char1.
			Q215       : $char1.
			Q216       : $char1.
			Q217       : $char1.
			Q218       : $char1.
			Q219       : $char1.
			Q220       : $char1.
			Q221       : $char1.
			Q222       : $char1.
			Q223       : $char1.

;
ATTRIB TP_FAIXA_ETARIA				FORMAT=$TP_FAIXA_ETARIA35.;
ATTRIB TP_SEXO FORMAT=$SEXO10.;
ATTRIB TP_ST_CONCLUSAO FORMAT=$CONCLUSAO.;
ATTRIB TP_ENSINO FORMAT=$ENSINO30.;
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

LABEL
NU_INSCRICAO = 'Número de inscrição no ENEM 2006.'
NU_ANO = 'Ano do Enem'
TP_FAIXA_ETARIA = 'Faixa Etária'
TP_SEXO = 'Sexo do inscrito'
TP_ST_CONCLUSAO = 'Situação de conclusão do Ensino Médio'
TP_ENSINO = 'Aluno do ensino médio ou da educação de jovens e adultos'
CO_MUNICIPIO_ESC = 'Código do Município da escola em que estudou:'
NO_MUNICIPIO_ESC = 'Nome do município da escola'
CO_UF_ESC = 'Código da Unidade da Federação da escola'
SG_UF_ESC = 'Sigla da UF da escola'
TP_DEPENDENCIA_ADM_ESC = 'Dependência administrativa'
TP_LOCALIZACAO_ESC = 'Localização/Zona da escola'
TP_SIT_FUNC_ESC = 'Condição de funcionamento'
CO_MUNICIPIO_PROVA='Código do Município em que o inscrito fez a prova'
NO_MUNICIPIO_PROVA='Nome do município em que o inscrito fez a prova'
CO_UF_PROVA='Código da Unidade da Federação em que o inscrito fez a prova'
SG_UF_PROVA='Sigla da Unidade da Federação em que o inscrito fez a prova'
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
Q4 = 'Se indicou indígena, qual(is) língua(s) você domina'
Q5 = 'Qual o estado civil'
Q6 = 'Onde e como mora atualmente'
Q7 = 'Mora sozinho(a)'
Q8 = 'Mora com o pai'
Q9 = 'Mora com a mãe'
Q10 = 'Mora com esposa / marido / companheiro(a)'
Q11 = 'Mora com filho(s)'
Q12 = 'Mora com irmão(s)'
Q13 = 'Mora com outro(s) parente(s)'
Q14 = 'Mora com amigo(s) ou colega(s)'
Q15 = 'Quantidade de pessoas que moram em sua casa'
Q16 = 'Quantos filhos tem'
Q17 = 'Até quando seu pai estudou'
Q18 = 'Até quando sua mãe estudou'
Q19 = 'Área que o pai trabalha ou trabalhou, na maior parte da vida'
Q20 = 'Qual a posição do seu pai neste trabalho, na maior parte do tempo'
Q21 = 'Área que sua mãe trabalha ou trabalhou, na maior parte da vida'
Q22 = 'Qual a posição de sua mãe neste trabalho, na maior parte do tempo'
Q23 = 'Renda familiar (somando a do respondente e com a das pessoas que moram com ele)'
Q24 = 'Tem TV e quantas'
Q25 = 'Tem Videocassete e/ou DVD e quantos'
Q26 = 'Tem Rádio e quantos'
Q27 = 'Tem Microcomputador e quantos'
Q28 = 'Tem Automóvel e quantos'
Q29 = 'Tem Máquina de lavar roupa e quantos'
Q30 = 'Tem Geladeira e quantas'
Q31 = 'Tem Telefone fixo e quantos'
Q32 = 'Tem Telefone celular e quantos'
Q33 = 'Tem Acesso à Internet e quantos'
Q34 = 'Tem TV por assinatura e quantas'
Q35 = 'Tem casa própria'
Q36 = 'Se a casa é em rua calçada ou asfaltada'
Q37 = 'Se a casa tem água corrente de torneira'
Q38 = 'Se a casa tem eletricidade'
Q39 = 'Se a casa é situada em comunidade indígena'
Q40 = 'Motivo para fazer o Enem'
Q41 = 'O motivo mais importante para se ter um trabalho?'
Q42 = 'Trabalha, ou já trabalhou, ganhando algum salário ou rendimento'
Q43 = 'Trabalhou ou teve alguma atividade remunerada durante o ensino médio (2º grau)'
Q44 = 'Quantas horas trabalhava, durante o ensino médio (2º grau)'
Q45 = 'Com que finalidade você trabalhava enquanto estudava o ensino médio (2º grau)'
Q46 = 'Com que idade você começou a exercer atividade remunerada enquanto estudava o ensino médio (2º grau)'
Q47 = 'Se você está trabalhando atualmente, qual a sua renda ou seu salário mensal?'
Q48 = 'Você está trabalha atualmente em alguma atividade para o qual se preparou'
Q49 = 'Em que trabalha atualmente'
Q50 = 'Qual a sua posição neste trabalho'
Q51 = 'Quanto tempo está trabalhando na atividade'
Q52 = 'Os conhecimentos no ensino médio foram adequados ao que o mercado de trabalho solicita'
Q53 = 'Os conhecimentos no ensino médio tiveram relação com a profissão que escolheu / que exerce'
Q54 = 'Os conhecimentos no ensino médio foram bem desenvolvidos, com aulas práticas, laboratórios, etc'
Q55 = 'Os conhecimentos no ensino médio proporcionaram cultura e conhecimento'
Q56 = 'Avaliação de ter estudado e trabalhado, simultaneamente, durante o ensino médio'
Q57 = 'A escola que freqüenta ou freqüentou durante o ensino médio levou em conta que trabalhava ao mesmo tempo que estudava'
Q58 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha o horário flexível'
Q59 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha menor carga de trabalho ou de tarefas extraclasse'
Q60 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha programa de recuperação de notas'
Q61 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha abono de faltas'
Q62 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas mais dinâmicas, com didática difenciada'
Q63 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha aulas de revisão da matéria aos (às) interessados(as)'
Q64 = 'Como prova de consideração por parte da escola em consideração pelo aluno trabalhar e estudar ao mesmo tempo, a escola tinha fornecimento de refeição aos (às) alunos(as)'
Q65 = 'A escola deve oferecer horário flexível para o aluno que trabalha'
Q66 = 'A escola deve oferecer menor carga de trabalho ou de tarefas extraclasse para o aluno que trabalha'
Q67 = 'A escola deve oferecer programa de recuperação de notas para o aluno que trabalha'
Q68 = 'A escola deve oferecer abono de faltas para o aluno que trabalha'
Q69 = 'A escola deve oferecer aulas mais dinâmicas, com didática diferenciada para o aluno que trabalha'
Q70 = 'A escola deve oferecer aulas de revisão da matéria aos alunos que interessados que trabalham'
Q71 = 'A escola deve oferecer fornecimento de refeição para o aluno que trabalha'
Q72 = 'Anos que levou para concluir o ensino fundamental (1º grau)'
Q73 = 'Em que tipo de escola cursou o ensino fundamental (1ª grau)'
Q74 = 'Em que ano concluiu ou concluirá o ensino médio (2º grau)'
Q75 = 'Quantos anos levou para cursas o ensino médio (2º grau)'
Q76 = 'Em que turno cursou ou esta cursando o ensino médio'
Q77 = 'Em que escola cursou ou está cursando o ensino médio (2º grau)'
Q78 = 'Em que modalidade de ensino concluiu ou vai concluir o ensino médio (2º grau)'
Q79 = 'Fez curso de língua estrangeira fora da escola durante o ensino médio (2º grau)'
Q80 = 'Fez curso de computação ou informática fora da escola durante o ensino médio (2º grau)'
Q81 = 'Fez curso preparatório para o vestibular (cursinho) fora da escola durante o ensino médio (2º grau)'
Q82 = 'Fez artes plásticas ou atividades artísticas em geral fora da escola durante o ensino médio (2º grau)'
Q83 = 'Fez esportes, atividades físicas fora da escola durante o ensino médio (2º grau)'
Q84 = 'Fez outro curso fora da escola durante o ensino médio (2º grau)'
Q85 = 'Com que freqüência lê jornais'
Q86 = 'Com que freqüência lê revistas de informação geral (Veja, Isto é, Época, etc)'
Q87 = 'Com que freqüência lê revistas de humor / quadrinhos'
Q88 = 'Com que freqüência lê revistas de divulgação científica (Ciência Hoje, Galileu, etc)'
Q89 = 'Com que freqüência lê romances, livros de ficção'
Q90 = 'Avaliação da escola que fez o ensino médio quanto o conhecimento que os(as) professores(as) têm das matérias e a maneira de transmiti-lo'
Q91 = 'Avaliação da escola que fez o ensino médio quanto a dedicação dos(as) professores(as) para preparar aulas e atender aos alunos'
Q92 = 'Avaliação da escola que fez o ensino médio quanto as iniciativas da escola para realizar excursões, estudos do meio ambiente'
Q93 = 'Avaliação da escola que fez o ensino médio quanto a biblioteca'
Q94 = 'Avaliação da escola que fez o ensino médio quanto as condições das salas de aula'
Q95 = 'Avaliação da escola que fez o ensino médio quanto as condições dos laboratórios'
Q96 = 'Avaliação da escola que fez o ensino médio quanto o acesso a computadores e outros recursos de informática'
Q97 = 'Avaliação da escola que fez o ensino médio quanto o ensino de língua estrangeira'
Q98 = 'Avaliação da escola que fez o ensino médio quanto o interesse dos(as) alunos(as)'
Q99 = 'Avaliação da escola que fez o ensino médio quanto o trabalho de grupo'
Q100 = 'Avaliação da escola que fez o ensino médio quanto a práticas de esportes'
Q101 = 'Avaliação da escola que fez o ensino médio quanto a atenção e o respeito dos(as) funcionários(as)'
Q102 = 'Avaliação da escola que fez o ensino médio quanto a direção dela'
Q103 = 'Avaliação da escola que fez o ensino médio quanto a organização dos horários de aulas'
Q104 = 'Avaliação da escola que fez o ensino médio quanto a localização dela'
Q105 = 'Avaliação da escola que fez o ensino médio quanto a segurança (iluminação, policiamento, etc)'
Q106 = 'Avaliação da escola que fez o ensino médio quanto a atenção à identificação étnica dos(as) alunos(as)'
Q107 = 'A escola em que estuda ou estudou realiza palestras / debates'
Q108 = 'A escola em que estuda ou estudou realiza jogos / esportes / campeonatos'
Q109 = 'A escola em que estuda ou estudou realiza teatro'
Q110 = 'A escola em que estuda ou estudou realiza coral'
Q111 = 'A escola em que estuda ou estudou realiza dança / música'
Q112 = 'A escola em que estuda ou estudou realiza estudos do meio ambiente / passeios'
Q113 = 'A escola em que estuda ou estudou realiza feira de ciências / feira cultural'
Q114 = 'A escola em que estuda ou estudou realiza festas / gincanas'
Q115 = 'De acordo com os ensinamentos no ensino médio, como considera o preparo para conseguir um emprego, exercer alguma atividade'
Q116 = 'Os(as) professores(as) têm autoridade, firmeza'
Q117 = 'Os(as) professores(as) são distantes, têm pouco envolvimento'
Q118 = 'Os(as) professores(as) têm respeito'
Q119 = 'Os(as) professores(as) são indiferentes, ignoram sua existência'
Q120 = 'Os(as) professores(as) são preocupados(as) e dedicados(as)'
Q121 = 'Os(as) professores(as) são autoritários(as), rígidos(as), abusam do poder'
Q122 = 'Os(as) professores(as) valorizam a identidade étnica dos(as) alunos(as)'
Q123 = 'Avaliação sobre a escola quanto a liberdade de expressar a idéias'
Q124 = 'Avaliação sobre a escola quanto o respeito aos alunos e alunas'
Q125 = 'Avaliação sobre a escola quanto a amizade e respeito entre alunos(as) e funcionários(as)'
Q126 = 'Avaliação sobre a escola quanto a levar em conta suas opiniões'
Q127 = 'Avaliação sobre a escola quanto a discussão dos problemas da atualidade nas aulas'
Q128 = 'Avaliação sobre a escola quanto a convivência entre alunos(as)'
Q129 = 'Avaliação sobre a escola quanto a organização para apoiar a resolução de problemas de relacionamento entre alunos(as)'
Q130 = 'Avaliação sobre a escola quanto a iniciativa para apoiar a resolução de problemas de relacionamento entre alunos(as) e professores(as)'
Q131 = 'Avaliação sobre a escola quanto a levar em conta seus problemas pessoais e familiares'
Q132 = 'Avaliação sobre a escola quanto a realização de Programas e Palestras contra drogas'
Q133 = 'Avaliação sobre a escola quanto a capacidade relacionar os conteúdos das matérias com o cotidiano'
Q134 = 'Avaliação sobre a escola quanto a capacidade de a escola avaliar conhecimento, o que aprendeu'
Q135 = 'Avaliação sobre a escola quanto o reconhecimento e valorização da identidade étnica dos(as) alunos(as)'
Q136 = 'Nota para a formação que obteve no ensino médio'
Q137 = 'Considera-se racista'
Q138 = 'Parentes racistas'
Q139 = 'Amigos(as) racistas'
Q140 = 'Colegas de escola e/ou de trabalho racistas'
Q141 = 'Vizinhos e/ou conhecidos em geral racistas'
Q142 = 'Já sofreu discriminação econômica'
Q143 = 'Já sofreu discriminação étnica, racial ou de cor'
Q144 = 'Já sofreu discriminação de gênero (ou por ser mulher ou por ser homem)'
Q145 = 'Já sofreu discriminação por ser (ou parecer ser) homossexuais'
Q146 = 'Já sofreu discriminação religiosa'
Q147 = 'Já sofreu discriminação por causa do local de origem'
Q148 = 'Já sofreu discriminação por causa da idade'
Q149 = 'Já sofreu discriminação por ser portador de necessidades especiais'
Q150 = 'Já sofreu discriminação por outro(s) motivo(s)'
Q151 = 'Já presenciou discriminação econômica'
Q152 = 'Já presenciou discriminação étnica, racial ou de cor'
Q153 = 'Já presenciou discriminação de gênero (ou por ser mulher ou por ser homem)'
Q154 = 'Já presenciou discriminação contra homossexuais'
Q155 = 'Já presenciou discriminação religiosa'
Q156 = 'Já presenciou discriminação por causa do local de origem'
Q157 = 'Já presenciou discriminação por causa da idade'
Q158 = 'Já presenciou discriminação por ser portador de necessidades especiais'
Q159 = 'Já presenciou discriminação por outro(s) motivo(s)'
Q160 = 'Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra classe social'
Q161 = 'Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra cor ou etnia'
Q162 = 'Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra religião'
Q163 = 'Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa com posições político-ideológicas diferentes'
Q164 = 'Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa de outra origem geográfica'
Q165 = 'Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa homossexual'
Q166 = 'Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa muito mais nova ou mais velha'
Q167 = 'Se incomodaria se tivesse como parente ou colega de escola ou de trabalho uma pessoa com necessidades especiais'
Q168 = 'Participa de um Grêmio estudantil'
Q169 = 'Participa de um Sindicato ou Associação Profissional'
Q170 = 'Participa de um Grupo de bairro ou associação comunitária'
Q171 = 'Participa de uma Igreja ou grupo religioso'
Q172 = 'Participa de um partido político'
Q173 = 'Participa de uma Ong ou movimento social'
Q174 = 'Participa de um clube recreativo ou associação esportiva'
Q175 = 'O quanto você se interessa pela política nacional, o papel dos(as) deputados(as) e senadores(as), o Presidente da República, etc'
Q176 = 'O quanto você se interessa pela política dos outros países'
Q177 = 'O quanto você se interessa pela economia nacional, a questão da inflação'
Q178 = 'O quanto você se interessa a política da sua cidade, o prefeito, os vereadores'
Q179 = 'O quanto você se interessa por esportes'
Q180 = 'O quanto você se interessa pelas questões sobre o meio ambiente, poluição, etc'
Q181 = 'O quanto você se interessa pelas questões sociais como a desigualdade, a pobreza, o desemprego, a miséria'
Q182 = 'O quanto você se interessa pelas questões sobre artes, teatro, cinema'
Q183 = 'O quanto você se interessa sobre a questão das drogas e suas conseqüências'
Q184 = 'O quanto você se interessa sobre assuntos sobre seu ídolo (cantor/a, artista, ou conjunto musical)'
Q185 = 'O quanto você se interessa sobre questões sociais como acesso aos servidores públicos de saúde e educação'
Q186 = 'O quanto você se interessa sobre sexualidade'
Q187 = 'Qual dos pontos te preocupa em 1º lugar no momento'
Q188 = 'Qual dos pontos te preocupa em 2º lugar no momento'
Q189 = 'É a mais importante contribuição que obteve ao realizar o ensino médio(2º grau)'
Q190 = 'É a segunda mais importante contribuição que obteve ao realizar o ensino médio(2º grau)'
Q191 = 'É a terceira mais importante contribuição que obteve ao realizar o ensino médio(2º grau)'
Q191 = 'É a terceira mais importante contribuição que obteve ao realizar o ensino médio(2º grau)'
Q192 = 'A principal decisão que vai tomar quando concluir o ensino médio (2º grau)'
Q193 = 'E a médio prazo, daqui a uns 4 ou 5 anos já planejou o que gostaria que acontecesse'
Q194 = 'Que profissão escolheu seguir'
Q195 = 'Meus pais ajudaram a tomar minha decisão sobre minha profissão'
Q196 = 'A escola ajudou a tomar minha decisão sobre minha profissão'
Q197 = 'Meus amigos ajudaram a tomar minha decisão sobre minha profissão'
Q198 = 'Informações gerais, revistas, jornais, TV ajudaram a tomar minha decisão sobre minha profissão'
Q199 = 'Meu trabalho ajudou a tomar minha decisão sobre minha profissão'
Q200 = 'Estímulo financeiro ajudou a tomar minha decisão sobre minha profissão'
Q201 = 'Facilidade de obter emprego ajudou a tomar minha decisão sobre minha profissão'
Q202 = 'Minha identificação com a profissão me ajudou a tomar minha decisão sobre minha profissão'
Q203 = 'Querer ajudar minha comunidade indígena ajudou a tomar minha decisão sobre minha profissão'
Q204 = 'Continuou os estudos depois de ter concluído o ensino médio (2º grau)'
Q205 = 'Está freqüentando um curso profissionalizante'
Q206 = 'Está freqüentando um curso preparatório para vestibular'
Q207 = 'Está freqüentando um curso superior'
Q208 = 'Está freqüentando um curso de língua estrangeira'
Q209 = 'Está freqüentando um curso de computação ou informática'
Q210 = 'Está freqüentando outro curso'
Q211 = 'Concluiu curso profissionalizante'
Q212 = 'Concluiu curso preparatório para vestibular, mas não ingressei no curso superior'
Q213 = 'Concluiu curso superior'
Q214 = 'Fiz curso superior mas não me formei'
Q215 = 'Concluiu curso de língua estrangeira'
Q216 = 'Concluiu curso de computação ou informática'
Q217 = 'Concluiu outro curso'
Q218 = 'O curso profissionalizante fez mais falta para minha vida, depois que terminei o ensino médio'
Q219 = 'O curso preparatório para vestibular fez mais falta para minha vida, depois que terminei o ensino médio'
Q220 = 'O curso superior fez mais falta para minha vida, depois que terminei o ensino médio'
Q221 = 'O curso de língua estrangeira fez mais falta para minha vida, depois que terminei o ensino médio'
Q222 = 'O curso de computação ou informática fez mais falta para minha vida, depois que terminei o ensino médio'
Q223 = 'Outro curso fez mais falta para minha vida, depois que terminei o ensino médio'
;
IF NU_INSCRICAO = . THEN DELETE;

RUN;