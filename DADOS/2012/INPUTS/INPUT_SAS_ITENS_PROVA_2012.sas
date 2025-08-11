/**************************************************************************/
/*  INEP/Daeb-Diretoria de Avaliação da Educação Básica              	  */      
/*                                   									  */	
/*  Coordenação-Geral de Instrumentos e Medidas (CGIM)					  */
/*------------------------------------------------------------------------*/
/*  PROGRAMA:                                                             */
/*           INPUT_SAS_ITENS_PROVA_2012.sas	                        	  */
/*------------------------------------------------------------------------*/
/*  DESCRICAO: PROGRAMA PARA LEITURA DOS ITENS DAS PROVAS DO ENEM DE 2012 */    
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/* Obs:                                                                   */
/* 		                                                                  */
/* Para abrir os microdados é necessário salvar este programa e o arquivo */
/* ITENS_PROVA_2012.CSV no diretório C:\ do computador.				      */
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
Value $SG_AREA
		CH='Ciências Humanas'
		CN='Ciências da Natureza'
		LC='Linguagens e Códigos'
		MT='Matemática';

Value $IN_ITEM_ABAN
		0='Não'
		1='Sim';

Value $TP_LINGUA
                0='Inglês'
                1='Espanhol';

DATA WORK.ITENS_2012;
INFILE 'C:\ITENS_PROVA_2012.csv' /*local do arquivo*/
        LRECL=100
        FIRSTOBS=2
        DLM=';'
        MISSOVER
        DSD ;

INPUT
        CO_POSICAO       : BEST3.
        SG_AREA          : $CHAR2.
        CO_ITEM          : BEST7.
        TX_GABARITO      : $CHAR1.
        CO_HABILIDADE    : BEST2.
		IN_ITEM_ABAN	 : $CHAR1.
		TX_MOTIVO_ABAN   : $CHAR40.
		NU_PARAM_A		 : BEST9.
		NU_PARAM_B		 : BEST9.
		NU_PARAM_C		 : BEST9.
        TX_COR           : $CHAR15.
        CO_PROVA         : BEST3.
        TP_LINGUA        : $CHAR1.;

ATTRIB  SG_AREA          FORMAT = $SG_AREA20.;         
ATTRIB  IN_ITEM_ABAN	 FORMAT = $IN_ITEM_ABAN.;
ATTRIB  TP_LINGUA        FORMAT = $TP_LINGUA.;

LABEL
CO_POSICAO='Posição do Item na Prova'
SG_AREA='Área de Conhecimento do Item'
CO_ITEM='Código do Item'
TX_GABARITO='Gabarito do Item'
CO_HABILIDADE='Habilidade do Item'
IN_ITEM_ABAN='Indicador de item abandonado'	
TX_MOTIVO_ABAN='Motivo para o abandono do item'  
NU_PARAM_A='Parâmetro de discriminação (a)'		
NU_PARAM_B='Parâmetro de dificuldade (b)'		
NU_PARAM_C='Parâmetro de acerto ao acaso (c)'
TX_COR='Cor da Prova'
CO_PROVA='Identificador da Prova'
TP_LINGUA='Língua Estrangeira'

;RUN;