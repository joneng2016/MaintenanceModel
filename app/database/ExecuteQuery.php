<?php 
 
namespace App\DB;

class ExecuteQuery
{
	public function __construct()
	{
		$this->formalize = new FormalizeQueryToCall;
		$this->sequenceInsertSanction = new SequenceInsertSanction;
	}	
	public function run()
	{
		$f = $this->formalize;

		//$f->insertRAA('fixar primeiro no segundo',3,4);
		//$f->insertCAA(14,35);
		//$f->insertRAA('fixar primeiro no segundo',8,7);
		//$f->insertRAA('fixar primeiro no segundo',7,20);
		// 17, 36 37
		//$f->insertCAA(17,36);
		//$f->insertCAA(17,37);
		//condition 18, bastao_garra->5,colar->4,condutor->12
		//$f->insertRAA('passar primeiro por dentro do segundo',5,4);
		//$f->insertRAA('acoplar primeiro sob o segundo',5,12);
		//$f->insertCAA(18,38);
		//$f->insertCAA(19,39);
		// condition id -> 19, bastao garra->9, condutor -> 12
		// 20 | instalar-sela-colar-coluna-lado-2                   |
		//$f->insertCAA(20,38);
		//$f->insertCAA(21,39);
		// 22 | fixar-carretilha-corda-fibra-sintetica-ponta-bastao
		//$f->insertRAA('fixar a carretilha com a corda na ponta do bastao',4,9);
		//49
		//$f->insertCAA(22,40);
		//23 | girar-sela-erguer-bastao   
		//$f->insertRAA('gerar primeiro até que segundo fique na vertical',)
		//$f->selectArtefactId('torre');
		/*
		$f->insertCAA( 23,
				  $f->insertRAA('girar primeiro até que o segundo fique na vertical',
				  					 $f->selectArtefactId('sela'),
									 $f->selectArtefactId('bastao_garra')
						  			)
						 );
		*/
		/*
		$f->insertCAA(24,
				  $f->insertRAA('enforcar primeiro com o segundo',
				  					 $f->selectArtefactId('estopo'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
						 );

		$f->insertCAA(25,
				  $f->insertRAA('engatar primeiro no segundo',
				  					 $f->selectArtefactId('corda'),
									 $f->selectArtefactId('bastao_universal')
						  			)
						);
		$f->insertCAA(25,
				  $f->insertRAA('engatar primeiro no segundo',
				  					 $f->selectArtefactId('bastao_universal'),
									 $f->selectArtefactId('estopo')
						  			)
						);
		$f->insertCAA(27,
				  $f->insertRAA('acoplar primeiro no segundo',
				  					 $f->selectArtefactId('bastao_universal'),
									 $f->selectArtefactId('chave_catraca')
						  			)
						);
		$f->insertCAA(27,
				  $f->insertRAA('acoplar primeiro no segundo',
				  					 $f->selectArtefactId('chave_catraca'),
									 $f->selectArtefactId('parafuso')
						  			)
						);
		$f->insertCAA(28,
				  $f->insertRAA('primeiro desacolpla segundo',
				  					 $f->selectArtefactId('chave_catraca'),
									 $f->selectArtefactId('parafuso')
						  			)
						);
		$f->insertCAA(28,
				  $f->insertRAA('primeiro é solto do segundo',
				  					 $f->selectArtefactId('parafuso'),
									 $f->selectArtefactId('conector')
						  			)
						);
		$f->insertCAA(28,
				  $f->insertRAA('primeiro é solto do segundo',
				  					 $f->selectArtefactId('conector'),
									 $f->selectArtefactId('condutor')
						  			)
						);
		 */	
		/*
		$f->insertCAA(30,
				  $f->insertRAA('primeiro é fortemente tencionado',
				  					 $f->selectArtefactId('corda'),
									 $f->selectArtefactId('estopo')
						  			)
						);
		$f->insertCAA(31,
				  $f->insertRAA('remove o primeiro da parte de baixo do segundo',
				  					 $f->selectArtefactId('chave_catraca'),
									 $f->selectArtefactId('parafuso')
						  			)
						);

		$f->insertCAA(31,
				  $f->insertRAA('remove o primeiro é removido da parte de baixo do segundo',
				  					 $f->selectArtefactId('parafuso'),
									 $f->selectArtefactId('isolador_de_pedestal_velho')
						  			)
						);
		$f->insertCAA(32,
				  $f->insertRAA('prender primeiro no segundo',
				  					 $f->selectArtefactId('chave_catraca'),
									 $f->selectArtefactId('corda')
						  			)
		 				);
		$f->insertCAA(32,
				  $f->insertRAA('passar primeiro em volta do segundo',
				  					 $f->selectArtefactId('corda'),
									 $f->selectArtefactId('isolador_de_pedestal_velho')
						  			)
		 				);
		$f->insertCAA(33,
				  $f->insertRAA('primeiro envolto do segundo',
				  					 $f->selectArtefactId('corda'),
									 $f->selectArtefactId('isolador_de_pedestal_velho')
						  			)
		 				);
		$f->insertCAA(35,
				  $f->insertRAA('primeiro enforca do segundo',
				  					 $f->selectArtefactId('estopo'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
		 				);
		$f->insertCAA(35,
				  $f->insertRAA('primeiro acoplado no segundo',
				  					 $f->selectArtefactId('corda'),
									 $f->selectArtefactId('estopo')
						  			)
		 				);
	
		$f->insertCAA(36,
				  $f->insertRAA('primeiro usado para suspender segundo',
				  					 $f->selectArtefactId('corda'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
		 				);
		$f->insertCAA(37,
				  $f->insertRAA('primeiro engata segundo',
				  					 $f->selectArtefactId('corda'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
		 				);
		$f->insertCAA(38,
				  $f->insertRAA('primeiro engata segundo',
				  					 $f->selectArtefactId('corda'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
		 				);
		$f->insertCAA(39,
				  $f->insertRAA('posicionar primeiro sobre segundo',
				  					 $f->selectArtefactId('isolador_de_pedestal_novo'),
									 $f->selectArtefactId('torres-subestacao')
						  			)
		 				);
		$f->insertCAA(39,
				  $f->insertRAA('passar primero pelo segundo',
				  					 $f->selectArtefactId('parafuso'),
									 $f->selectArtefactId('torres-subestacao')
						  			)
		 				);
		$f->insertCAA(39,
				  $f->insertRAA('passar primero pelo segundo',
				  					 $f->selectArtefactId('parafuso'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
		 				);
		$f->insertCAA(40,
				  $f->insertRAA('acoplar prmeiro no segundo',
				  					 $f->selectArtefactId('conector'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
		 				);
		$f->insertCAA(40,
				  $f->insertRAA('atravessar primeiro no segundo',
				  					 $f->selectArtefactId('parafuso'),
									 $f->selectArtefactId('conector')
						  			)
		 				);
		$f->insertCAA(40,
				  $f->insertRAA('atravessar primeiro no segundo',
				  					 $f->selectArtefactId('parafuso'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
		 				);
		$f->insertCAA(41,
				  $f->insertRAA('remover primeiro do segundo',
				  					 $f->selectArtefactId('bastao_garra'),
									 $f->selectArtefactId('condutor')
						  			)
		 				);
		$f->insertCAA(41,
				  $f->insertRAA('remover primeiro do segundo',
				  					 $f->selectArtefactId('condutor'),
									 $f->selectArtefactId('conector')
						  			)
		 				);
		$f->insertCAA(42,
				  $f->insertRAA('remover primeiro do segundo',
				  					 $f->selectArtefactId('bastao_garra'),
									 $f->selectArtefactId('colar')
						  			)
		 				);
		$f->insertCAA(43,
				  $f->insertRAA('remover primeiro do segundo',
				  					 $f->selectArtefactId('colar'),
									 $f->selectArtefactId('sela')
						  			)
		 				);
		$f->insertCAA(43,
				  $f->insertRAA('remover primeiro do segundo',
				  					 $f->selectArtefactId('sela'),
									 $f->selectArtefactId('torres-subestacao')
						  			)
		 				);
		$f->insertCAA(44,
				  $f->insertRAA('remover primeiro do segundo',
				  					 $f->selectArtefactId('estopo'),
									 $f->selectArtefactId('isolador_de_pedestal_novo')
						  			)
		 				);
		$f->insertCAA(45,
				  $f->insertRAA('remover primeiro do segundo',
				  					 $f->selectArtefactId('colar'),
									 $f->selectArtefactId('sela')
						  			)
		 				);
		$f->insertCAA(45,
				  $f->insertRAA('remover primeiro do segundo',
				  					 $f->selectArtefactId('sela'),
									 $f->selectArtefactId('torres-subestacao')
						  			)
		 				);
		$toInserts = 
		[
			['Fazer uma análise de todos os possíveis riscors que podem ocorrer durante a execução das atividades',95,100,1],
			['Reunioes para Analise do que deve ser feito',90,100,2],
			['Sinalizacao do Local com Cones e Fitas Zebradas',90,100,3],
			['Montagem do Cavalete que mantem as ferramentas','null',90,4],
			['Limpar as ferramentas com alcool Isopropilico','null',90,5],
			['Testar o isolamento das ferramentas antes de fazer uso.',90,100,6],
			['Medir a corrente de fulga durante a operacao da manutencao',90,100,7],
			['Medicao da corrente de fulga no final da operacao',90,100,8],
			['Posicionar as Ferramentas no Cavalete',90,100,9],
			['Todos os procedimentos relacionados com a instalação da corda e carretilha',"null",100,10],
			['Verificar se a corda esta limpa',90,100,11],
			['Fazer o teste de impedância da corda',90,100,12],
			['Rasgar a corda em vários pedaçõs',99,100,13],
			['Interpolar os pedaçõs de corda com o bastão universal',99,100,14],
			['Prender a carretilha na corda (sendo esta corda interpolada por batoes universais)',99,100,16],
			['Instalar a sela e o colar na coluna no lado 1',99,100,17],
			['Fixar o bastão garra no colar e sela no lado 1',99,100,18],
			['Fixar o topo do bastao garra do lado 1 no condutor',99,100,19],
			['Instalar a sela e o colar na coluna base do lado 2',99,100,20],
			['Fixar o batao garra invertido no colar e na sela do lado 2',99,100,21],
			['Fixar a carretilha com a corda de fibra sintética na ponta do bastão',99,100,22],
			['Girar sela de forma a erguer o batão com a carretilha e corda na ponta',99,100,23],
			['Instalar e enforcar com um estopo o alto do isolador usando um bastão universal',99,100,24],
			['Conectar corda ao estopo',99,100,25],
			['Objetivos relacionados com a parte operacional da substituição do isolador de pedestal',"null",100,26],
			['Usar um bastão universal com chave catraca para soltar os parafusos',99,100,27],
			['Retirar a parte de cimda do conector com a chave catraca para soltar os parafusos de cima',99,100,28],
			['Sequência de atividades que levam a finalizacao da troca do isolador de pedestal',"null",100,29],
			['Tencionar a corda presa ao estopo',99,100,30],
			['Tirar os parafusos de baixo do isolador com a chave catraca',95,100,31],
			['Passar a corda na base do isolador para auxiliar na descida',95,100,32],
			['Puxar corda para erguer isolador',95,100,33],
			['Retirar Isolador Antigo',95,100,34],
			['Enforcar Estopo ao Isolador',95,100,35],
			['Suspender Novo Isolador',95,100,36],
 			['Engate corda guia no novo isolador pedestal',95,100,37],
			['Içar novo isolador na coluna usando chave catraca',95,100,38],
			['Parafusar base do isolador na coluna usando chave catraca',95,100,39],
			['Fechar os parafusos do conector usando bastao Universal com a chave catraca',95,100,40],
			['Desconectar o bastão garra do conector',95,100,41],
			['Retirar o bastão garra do conector',95,100,42],
			['Remover sela e o colar do lado um da torre',95,100,43],
			['Retirar o estopo do Isoldor',95,100,44],
			['Retirar sela e colar do lado dois do isolador',95,100,45],
			['Remover os equipamentos do cavalete para os carros',95,100,46],
			['Metodo em que o procedimento é executado a distancia do potencial',95,100,47],
			['Orienta e Supervisiona as atividades técnicas que está acontecendo no campo',"null",100,48],
			['Observa se está acontecendo alguma violação',"null",100,49],
			['Objetivo final da manutencao foi atingido com sucesso',"null",100,50],
			['Etapas que devem ser feitas para concluir a manutencao',"null",100,51],
			['Procedimento total finalizado',"null",100,52]
		];
		foreach($toInserts as $toInsert)
			$f->insertGoal($toInsert[0],$toInsert[1],$toInsert[2],$toInsert[3]);


		$goalMissions = 
		[
			[26,59],
			[27,60],
			[28,61],
			[29,62],
			[30,63],
			[31,66],
			[32,64],
			[33,68],
			[34,70],
			[34,71],
			[34,72],
			[34,73],
			[34,74],
			[34,75],
			[34,76],
			[34,77],
			[34,78],
			[34,79],
			[35,81],
			[35,83],
			[35,84],
			[35,86],
			[35,87],
			[36,88],
			[36,89],
			[36,90],
			[36,91],
			[37,92],
			[37,93],
			[38,94],
			[38,95],
			[38,96],
			[39,97],
			[39,98],
			[39,99],
			[40,58],
			[40,82],
			[40,85],
			[41,104],
			[42,106],
			[42,107],
			[42,108],
			[42,105]
		];
		foreach($goalMissions as $goalMission)
			$f->insertGoalMission($goalMission[1],$goalMission[0]);
		
		$f->insertMissionRole('missao00','executor01');
	 
		$inserts = 
		[
			'missao01-01',
			'missao02',
			'missao03',
			'missao07',
			'missao08',
			'missao09',
			'missao10',
			'missao11'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'executor01');
	
		$inserts = 
		[
			'missao00',
			'missao01-01',
			'missao01-06',
			'missao02',
			'missao03',
			'missao07',
			'missao08',
			'missao09',
			'missao11'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'executor02');		

		$inserts = 
		[
			'missao00',
			'missao01-01',
			'missao01-06',
			'missao02',
			'missao03',
			'missao04',
			'missao05',
			'missao08',
			'missao09',
			'missao11'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'executor03');


		$inserts = 
		[
			'missao00',
			'missao01-02',
			'missao02',
			'missao03',
			'missao04',
			'missao05',
			'missao08',
			'missao09',
			'missao11'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'executor04');


		$inserts = 
		[
			'missao00',
			'missao01-03',
			'missao02',
			'missao04',
			'missao05',
			'missao08',
			'missao09',
			'missao11'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'executor05');


		$inserts = 
		[
			'missao00',
			'missao01-04',
			'missao02',
			'missao06',
			'missao07',
			'missao08',
			'missao09',
			'missao11'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'executor06');


		$inserts = 
		[
			'missao00',
			'missao01-05',
			'missao02',
			'missao06',
			'missao07',
			'missao08',
			'missao09',
			'missao11'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'executor07');

		$inserts = 
		[
			'missao10'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'supervisor');

		$inserts = 
		[
			'missao11'
		];
		foreach($inserts as $insert)
			$f->insertMissionRole($insert,'observador');

		var_dump($f->selectGoaByCondition('cavalete'));
		$f->insertChangeGoal('cavalete',95);
		$f->insertRisk('one');
		echo $f->insertGoupSafetyRisk('one','virus');
	
		echo $f->insertShortConsequence('one',1);
 		$f->insertShortConsequence('one',100);
		$f->insertChangeGoal('cavalete',95);
 		$f->insertSanction(1,3);
		$f->insertEntityFatality(1,'estopo',"CAUSER");
		$f->insertConditionSanction('analize_preliminar_risco',2);
		$longId = $f->insertChangeGoal('sinalizacao',50);
		$f->insertChangeGoalLongExist('rasga-corda-pedacos',50,$longId);

		$longId = $f->insertChangeGoal('teste-impedancia-corda',50);
		$f->insertChangeGoalLongExist('fixar-bastao-garra-colar-sela',50,$longId);
		$f->insertChangeGoalLongExist('fixar-bastao-garra-lado-1-condutor',50,$longId);
		$f->insertRisk('risco01');
		$shortId = $f->insertShortConsequence('risco01',10);
		$sanctionId = $f->insertSanction($shortId,$longId);
		$f->insertConditionSanction('sinalizacao',$sanctionId);

		$goals  =
		[
			"procedimentos-iniciais",
			"sinalizacao",
			"cavalete",
			"limpar-ferramenta",
			"medicao-corrente-fulga-inicio-manutencao",
			"medicao-corrente-fulga-durante-manutencao",
			"medicao-corrente-fulga-final-operacao",
			"posicionamento-cavalete",
			"procedimentos-corda-manutencao-carretilha",
			"verificar-corda-limpa",
			"teste-impedancia-corda",
			"rasga-corda-pedacos",
			"interpolar-corda-bastao-universal",
			"fixar-carretilha-corda-bastao-universal",
			"instalar-sela-corda-lado-1",
			"fixar-bastao-garra-colar-sela",
			"fixar-bastao-garra-lado-1-condutor",
			"instalar-sela-colar-coluna-lado-2",
			"fixar-bastao-garra-invertido-lado-2",
			"fixar-carretilha-corda-fibra-sintetica-ponta-bastao",
			"girar-sela-erguer-bastao",analize_preliminar_risco
			"enforcar-estopo-alto-isolador",
			"conectar-corda-estop",
			"operacao-isolador-pedestal",
			"bastao-universal-chave-catraca-saltar-parafusos",
			"retirar-parafuso-cima",
			"finalizar-troca-isolador-pedestal",
			"tencionar-corda-estopo",
			"tirar-parafusos-baixo-isolador-chave-catraca",
			"passar-corda-base-isolador-chave-catraca",
			"corda-erguer-isolador",
			"retirar-isolador-antigo",
			"estopo-isolador",
			"suspender-isolador",
			"engate-corda-guia",
			"icar-isolador",
			"parafusar-isolador-coluna-chave-catraca",
			"fechar-conector-bastao-universal",
			"desconectar-batao-garra-conector",
			"retirar-bastao-garra",
			"retirar-sela-colar-bastao-garra-lado-1",
			"retirar-estopo-isolador",
			"retirar-sela-colar-bastao-garra-lado-2",
			"recolher-equipamento",
			"metodo-a-distancia",
			"observacao",
			"objetivo-final",
			"etapas-metodologicas",
			"metodo-finalizado"
		];

		$longId = $f->insertChangeGoal("analize_preliminar_risco",75);
		foreach($goals as $goal)
			$f->insertChangeGoalLongExist($goal,75,$longId);
		$sanctionId = $f->insertSanction('null',$longId);
		$f->insertConditionSanction('supervisao',$sanctionId);
 
		$goals  =
		[
			"analize_preliminar_risco",
			"procedimentos-iniciais",
			"sinalizacao",
			"cavalete",
			"limpar-ferramenta",
			"medicao-corrente-fulga-inicio-manutencao",
			"medicao-corrente-fulga-durante-manutencao",
			"medicao-corrente-fulga-final-operacao",
			"posicionamento-cavalete",
			"procedimentos-corda-manutencao-carretilha",
			"verificar-corda-limpa",
			"teste-impedancia-corda",
			"rasga-corda-pedacos",
			"interpolar-corda-bastao-universal",
			"fixar-carretilha-corda-bastao-universal",
			"instalar-sela-corda-lado-1",
			"fixar-bastao-garra-colar-sela",
			"fixar-bastao-garra-lado-1-condutor",
			"instalar-sela-colar-coluna-lado-2",
			"fixar-bastao-garra-invertido-lado-2",
			"fixar-carretilha-corda-fibra-sintetica-ponta-bastao",
			"girar-sela-erguer-bastao",
			"enforcar-estopo-alto-isolador",
			"conectar-corda-estop",
			"operacao-isolador-pedestal",
			"bastao-universal-chave-catraca-saltar-parafusos",
			"retirar-parafuso-cima",
			"finalizar-troca-isolador-pedestal",
			"tencionar-corda-estopo",
			"tirar-parafusos-baixo-isolador-chave-catraca",
			"passar-corda-base-isolador-chave-catraca",
			"corda-erguer-isolador",
			"retirar-isolador-antigo",
			"estopo-isolador",
			"suspender-isolador",
			"engate-corda-guia",
			"icar-isolador",
			"parafusar-isolador-coluna-chave-catraca",
			"fechar-conector-bastao-universal",
			"desconectar-batao-garra-conector",
			"retirar-bastao-garra",
			"retirar-sela-colar-bastao-garra-lado-1",
			"retirar-estopo-isolador",
			"retirar-sela-colar-bastao-garra-lado-2",
			"recolher-equipamento",
			"metodo-a-distancia",
			"observacao",
			"objetivo-final",
			"etapas-metodologicas",
			"metodo-finalizado"
		];
	
		
		foreach($goals as $goal)
		{
			$longId = $f->insertChangeGoal($goal,75);
			$sanctionId = $f->insertSanction('null',$longId);
			$f->insertConditionSanction('supervisao',$sanctionId);
		}

		$goals  =
		[
			"analize_preliminar_risco",
			"procedimentos-iniciais",
			"sinalizacao",
			"cavalete",
			"limpar-ferramenta",
			"medicao-corrente-fulga-inicio-manutencao",
			"medicao-corrente-fulga-durante-manutencao",
			"medicao-corrente-fulga-final-operacao",
			"posicionamento-cavalete",
			"procedimentos-corda-manutencao-carretilha",
			"verificar-corda-limpa",
			"teste-impedancia-corda",
			"rasga-corda-pedacos",
			"interpolar-corda-bastao-universal",
			"fixar-carretilha-corda-bastao-universal",
			"instalar-sela-corda-lado-1",
			"fixar-bastao-garra-colar-sela",
			"fixar-bastao-garra-lado-1-condutor",
			"instalar-sela-colar-coluna-lado-2",
			"fixar-bastao-garra-invertido-lado-2",
			"fixar-carretilha-corda-fibra-sintetica-ponta-bastao",
			"girar-sela-erguer-bastao",
			"enforcar-estopo-alto-isolador",
			"conectar-corda-estop",
			"operacao-isolador-pedestal",
			"bastao-universal-chave-catraca-saltar-parafusos",
			"retirar-parafuso-cima",
			"finalizar-troca-isolador-pedestal",
			"tencionar-corda-estopo",
			"tirar-parafusos-baixo-isolador-chave-catraca",
			"passar-corda-base-isolador-chave-catraca",
			"corda-erguer-isolador",
			"retirar-isolador-antigo",
			"estopo-isolador",
			"suspender-isolador",
			"engate-corda-guia",
			"icar-isolador",
			"parafusar-isolador-coluna-chave-catraca",
			"fechar-conector-bastao-universal",
			"desconectar-batao-garra-conector",
			"retirar-bastao-garra",
			"retirar-sela-colar-bastao-garra-lado-1",
			"retirar-estopo-isolador",
			"retirar-sela-colar-bastao-garra-lado-2",
			"recolher-equipamento",
			"metodo-a-distancia",
			"supervisao",
			"observacao"
			"objetivo-final",
			"etapas-metodologicas",
			"metodo-finalizado"
		];
	
		
		foreach($goals as $goal)
		{
			$longId = $f->insertChangeGoal($goal,75);
			$sanctionId = $f->insertSanction('null',$longId);
			$f->insertConditionSanction('observacao',$sanctionId);
		}

		$goals  =
		[
			"procedimentos-iniciais",
			"sinalizacao",
			"cavalete",
			"limpar-ferramenta",
			"medicao-corrente-fulga-inicio-manutencao",
			"medicao-corrente-fulga-durante-manutencao",
			"medicao-corrente-fulga-final-operacao",
			"posicionamento-cavalete",
			"procedimentos-corda-manutencao-carretilha",
			"verificar-corda-limpa",
			"teste-impedancia-corda",
			"rasga-corda-pedacos",
			"interpolar-corda-bastao-universal",
			"fixar-carretilha-corda-bastao-universal",
			"instalar-sela-corda-lado-1",
			"fixar-bastao-garra-colar-sela",
			"fixar-bastao-garra-lado-1-condutor",
			"instalar-sela-colar-coluna-lado-2",
			"fixar-bastao-garra-invertido-lado-2",
			"fixar-carretilha-corda-fibra-sintetica-ponta-bastao",
			"girar-sela-erguer-bastao",
			"enforcar-estopo-alto-isolador",
			"conectar-corda-estop",
			"operacao-isolador-pedestal",
			"bastao-universal-chave-catraca-saltar-parafusos",
			"retirar-parafuso-cima",
			"finalizar-troca-isolador-pedestal",
			"tencionar-corda-estopo",
			"tirar-parafusos-baixo-isolador-chave-catraca",
			"passar-corda-base-isolador-chave-catraca",
			"corda-erguer-isolador",
			"retirar-isolador-antigo",
			"estopo-isolador",
			"suspender-isolador",
			"engate-corda-guia",
			"icar-isolador",
			"parafusar-isolador-coluna-chave-catraca",
			"fechar-conector-bastao-universal",
			"desconectar-batao-garra-conector",
			"retirar-bastao-garra",
			"retirar-sela-colar-bastao-garra-lado-1",
			"retirar-estopo-isolador",
			"retirar-sela-colar-bastao-garra-lado-2",
			"recolher-equipamento",
			"metodo-a-distancia",
			"supervisao",
			"observacao",
			"objetivo-final",
			"etapas-metodologicas",
			"metodo-finalizado"
		];
	
		
		foreach($goals as $goal)
		{
			$longId = $f->insertChangeGoal($goal,75);
			$sanctionId = $f->insertSanction('null',$longId);
			$f->insertConditionSanction("analize_preliminar_risco",$sanctionId);
		}

		$goals  =
		[
			"analize_preliminar_risco",
			"sinalizacao",
			"cavalete",
			"limpar-ferramenta",
			"medicao-corrente-fulga-inicio-manutencao",
			"medicao-corrente-fulga-durante-manutencao",
			"medicao-corrente-fulga-final-operacao",
			"posicionamento-cavalete",
			"procedimentos-corda-manutencao-carretilha",
			"verificar-corda-limpa",
			"teste-impedancia-corda",
			"rasga-corda-pedacos",
			"interpolar-corda-bastao-universal",
			"fixar-carretilha-corda-bastao-universal",
			"instalar-sela-corda-lado-1",
			"fixar-bastao-garra-colar-sela",
			"fixar-bastao-garra-lado-1-condutor",
			"instalar-sela-colar-coluna-lado-2",
			"fixar-bastao-garra-invertido-lado-2",
			"fixar-carretilha-corda-fibra-sintetica-ponta-bastao",
			"girar-sela-erguer-bastao",
			"enforcar-estopo-alto-isolador",
			"conectar-corda-estop",
			"operacao-isolador-pedestal",
			"bastao-universal-chave-catraca-saltar-parafusos",
			"retirar-parafuso-cima",
			"finalizar-troca-isolador-pedestal",
			"tencionar-corda-estopo",
			"tirar-parafusos-baixo-isolador-chave-catraca",
			"passar-corda-base-isolador-chave-catraca",
			"corda-erguer-isolador",
			"retirar-isolador-antigo",
			"estopo-isolador",
			"suspender-isolador",
			"engate-corda-guia",
			"icar-isolador",
			"parafusar-isolador-coluna-chave-catraca",
			"fechar-conector-bastao-universal",
			"desconectar-batao-garra-conector",
			"retirar-bastao-garra",
			"retirar-sela-colar-bastao-garra-lado-1",
			"retirar-estopo-isolador",
			"retirar-sela-colar-bastao-garra-lado-2",
			"recolher-equipamento",
			"metodo-a-distancia",
			"supervisao",
			"observacao",
			"objetivo-final",
			"etapas-metodologicas",
			"metodo-finalizado"
		];
	
		
		foreach($goals as $goal)
		{
			$longId = $f->insertChangeGoal($goal,75);
			$sanctionId = $f->insertSanction('null',$longId);
			$f->insertConditionSanction("procedimentos-iniciais",$sanctionId);
		}		

		$goals  =
		[
			"cavalete",
			"limpar-ferramenta",
			"medicao-corrente-fulga-inicio-manutencao",
			"medicao-corrente-fulga-durante-manutencao",
			"medicao-corrente-fulga-final-operacao",
			"posicionamento-cavalete",
			"procedimentos-corda-manutencao-carretilha",
			"verificar-corda-limpa",
			"teste-impedancia-corda",
			"rasga-corda-pedacos",
			"interpolar-corda-bastao-universal",
			"fixar-carretilha-corda-bastao-universal",
			"instalar-sela-corda-lado-1",
			"fixar-bastao-garra-colar-sela",
			"fixar-bastao-garra-lado-1-condutor",
			"instalar-sela-colar-coluna-lado-2",
			"fixar-bastao-garra-invertido-lado-2",
			"fixar-carretilha-corda-fibra-sintetica-ponta-bastao",
			"girar-sela-erguer-bastao",
			"enforcar-estopo-alto-isolador",
			"conectar-corda-estop",
			"operacao-isolador-pedestal",
			"bastao-universal-chave-catraca-saltar-parafusos",
			"retirar-parafuso-cima",
			"finalizar-troca-isolador-pedestal",
			"tencionar-corda-estopo",
			"tirar-parafusos-baixo-isolador-chave-catraca",
			"passar-corda-base-isolador-chave-catraca",
			"corda-erguer-isolador",
			"retirar-isolador-antigo",
			"estopo-isolador",
			"suspender-isolador",
			"engate-corda-guia",
			"icar-isolador",
			"parafusar-isolador-coluna-chave-catraca",
			"fechar-conector-bastao-universal",
			"desconectar-batao-garra-conector",
			"retirar-bastao-garra",
			"retirar-sela-colar-bastao-garra-lado-1",
			"retirar-estopo-isolador",
			"retirar-sela-colar-bastao-garra-lado-2",
			"recolher-equipamento",
			"metodo-a-distancia",
			"supervisao",
			"observacao",
			"objetivo-final",
			"etapas-metodologicas",
			"metodo-finalizado"
		];
	
		
		foreach($goals as $goal)
		{
			$longId = $f->insertChangeGoal($goal,85);
			$sanctionId = $f->insertSanction('null',$longId);
			$f->insertConditionSanction("sinalizacao",$sanctionId);
		}
		

		$longId = $f->insertChangeGoal('teste-impedancia-corda',50);
		$f->insertChangeGoalLongExist('limpar-ferramenta',50,$longId);
		$f->insertChangeGoalLongExist('fixar-bastao-garra-colar-sela',50,$longId);
		$f->insertChangeGoalLongExist('fixar-bastao-garra-lado-1-condutor',50,$longId);	
		$f->insertChangeGoalLongExist('fixar-bastao-garra-invertido-lado-2',50,$longId);		
		$f->insertChangeGoalLongExist('fixar-carretilha-corda-fibra-sintetica-ponta-bastao',50,$longId);								
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('cavalete',$sanctionId);

		$longId = $f->insertChangeGoal('fixar-bastao-garra-lado-1-condutor',50);
		$f->insertChangeGoalLongExist('parafusar-isolador-coluna-chave-catraca',50,$longId);
		$f->insertChangeGoalLongExist('desconectar-batao-garra-conector',50,$longId);
		$f->insertChangeGoalLongExist('bastao-universal-chave-catraca-saltar-parafusos',50,$longId);	
		$f->insertChangeGoalLongExist('retirar-parafuso-cima',50,$longId);									
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('limpar-ferramenta',$sanctionId);

		$longId = $f->insertChangeGoal('fixar-bastao-garra-lado-1-condutor',50);
		$f->insertChangeGoalLongExist('parafusar-isolador-coluna-chave-catraca',50,$longId);
		$f->insertChangeGoalLongExist('desconectar-batao-garra-conector',50,$longId);
		$f->insertChangeGoalLongExist('bastao-universal-chave-catraca-saltar-parafusos',50,$longId);	
		$f->insertChangeGoalLongExist('retirar-parafuso-cima',50,$longId);									
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('medicao-corrente-fulga-durante-manutencao',$sanctionId);

		$longId = $f->insertChangeGoal('fixar-bastao-garra-lado-1-condutor',50);
		$f->insertChangeGoalLongExist('parafusar-isolador-coluna-chave-catraca',50,$longId);
		$f->insertChangeGoalLongExist('desconectar-batao-garra-conector',50,$longId);
		$f->insertChangeGoalLongExist('bastao-universal-chave-catraca-saltar-parafusos',50,$longId);	
		$f->insertChangeGoalLongExist('retirar-parafuso-cima',50,$longId);									
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('posicionamento-cavalete',$sanctionId);

		$longId = $f->insertChangeGoal('girar-sela-erguer-bastao',50);
		$f->insertChangeGoalLongExist('tencionar-corda-estopo',50,$longId);
		$f->insertChangeGoalLongExist('passar-corda-base-isolador-chave-catraca',50,$longId);
		$f->insertChangeGoalLongExist('icar-isolador',50,$longId);	
		$f->insertChangeGoalLongExist('retirar-parafuso-cima',50,$longId);
		$f->insertChangeGoalLongExist('retirar-estopo-isolador',50,$longId);
		$f->insertChangeGoalLongExist('retirar-sela-colar-bastao-garra-lado-2',50,$longId);
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('verificar-corda-limpa',$sanctionId);		

		$longId = $f->insertChangeGoal('girar-sela-erguer-bastao',50);
		$f->insertChangeGoalLongExist('tencionar-corda-estopo',50,$longId);
		$f->insertChangeGoalLongExist('passar-corda-base-isolador-chave-catraca',50,$longId);
		$f->insertChangeGoalLongExist('icar-isolador',50,$longId);	
		$f->insertChangeGoalLongExist('retirar-parafuso-cima',50,$longId);
		$f->insertChangeGoalLongExist('retirar-estopo-isolador',50,$longId);
		$f->insertChangeGoalLongExist('retirar-sela-colar-bastao-garra-lado-2',50,$longId);
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('teste-impedancia-corda',$sanctionId);	

		$longId = $f->insertChangeGoal('girar-sela-erguer-bastao',50);
		$f->insertChangeGoalLongExist('tencionar-corda-estopo',50,$longId);
		$f->insertChangeGoalLongExist('passar-corda-base-isolador-chave-catraca',50,$longId);
		$f->insertChangeGoalLongExist('icar-isolador',50,$longId);	
		$f->insertChangeGoalLongExist('retirar-parafuso-cima',50,$longId);
		$f->insertChangeGoalLongExist('retirar-estopo-isolador',50,$longId);
		$f->insertChangeGoalLongExist('retirar-sela-colar-bastao-garra-lado-2',50,$longId);
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('rasga-corda-pedacos',$sanctionId);			

		$longId = $f->insertChangeGoal('girar-sela-erguer-bastao',50);
		$f->insertChangeGoalLongExist('tencionar-corda-estopo',50,$longId);
		$f->insertChangeGoalLongExist('passar-corda-base-isolador-chave-catraca',50,$longId);
		$f->insertChangeGoalLongExist('icar-isolador',50,$longId);	
		$f->insertChangeGoalLongExist('retirar-parafuso-cima',50,$longId);
		$f->insertChangeGoalLongExist('retirar-estopo-isolador',50,$longId);
		$f->insertChangeGoalLongExist('retirar-sela-colar-bastao-garra-lado-2',50,$longId);
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('interpolar-corda-bastao-universal',$sanctionId);			

		foreach($goals as $goal)
		{
			$longId = $f->insertChangeGoal($goal,85);
			$sanctionId = $f->insertSanction('null',$longId);
			$f->insertConditionSanction("sinalizacao",$sanctionId);
		}	
		$longId = $f->insertChangeGoal('girar-sela-erguer-bastao',50);
		$f->insertChangeGoalLongExist('tencionar-corda-estopo',50,$longId);
		$f->insertChangeGoalLongExist('passar-corda-base-isolador-chave-catraca',50,$longId);
		$f->insertChangeGoalLongExist('icar-isolador',50,$longId);	
		$f->insertChangeGoalLongExist('retirar-parafuso-cima',50,$longId);
		$f->insertChangeGoalLongExist('retirar-estopo-isolador',50,$longId);
		$f->insertChangeGoalLongExist('retirar-sela-colar-bastao-garra-lado-2',50,$longId);
		$sanctionId = $f->insertSanction("null",$longId);
		$f->insertConditionSanction('fixar-carretilha-corda-bastao-universal',$sanctionId);			

		$longId = $f->insertChangeGoal('fixar-bastao-garra-colar-sela',0);
		$f->insertChangeGoalLongExist('fixar-carretilha-corda-fibra-sintetica-ponta-bastao',0,$longId);
		$f->insertChangeGoalLongExist('girar-sela-erguer-bastao',0,$longId);
		$f->insertRisk('riskFixarBastaoGarraColarSela');
		$f->insertGoupSafetyRisk('riskFixarBastaoGarraColarSela','risco_ergonimico');				
		$shortId = $f->insertShortConsequence('riskFixarBastaoGarraColarSela',0);
		$sanctionId = $f->insertSanction($shortId,$longId);
		$f->insertConditionSanction('instalar-sela-corda-lado-1',$sanctionId);

		$longId = $f->insertChangeGoal('fixar-bastao-garra-colar-sela',0);
		$f->insertChangeGoalLongExist('fixar-carretilha-corda-fibra-sintetica-ponta-bastao',0,$longId);
		$f->insertChangeGoalLongExist('girar-sela-erguer-bastao',0,$longId);
		$f->insertChangeGoalLongExist('enforcar-estopo-alto-isolador',0,$longId);
		$f->insertChangeGoalLongExist('enforcar-estopo-alto-isolador',0,$longId);

		
		$f->insertRisk('riskBataoGarraLado1Condutor');
		$f->insertGoupSafetyRisk('riskFixarBastaoGarraColarSela','risco_ergonimico');				
		$shortId = $f->insertShortConsequence('riskFixarBastaoGarraColarSela',0);
		
		$sanctionId = $f->insertSanction($shortId,$longId);
		$f->insertConditionSanction('fixar-bastao-garra-lado-1-condutor',$sactionId);	
		$longId = $f->insertChangeGoal('fixar-bastao-garra-invertido-lado-2',0);
		$f->insertChangeGoalLongExist('fixar-carretilha-corda-fibra-sintetica-ponta-bastao',0,$longId);
		$f->insertChangeGoalLongExist('girar-sela-erguer-bastao',0,$longId);
		$f->insertChangeGoalLongExist('retirar-isolador-antigo',0,$longId);
		$f->insertChangeGoalLongExist('icar-isolador',0,$longId);
		f
		
		$f->insertRisk('risKInstalarSelaColarColunaLado2');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','risco_ergonimico');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','radiacao_nao_ionizante');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','eletricidade');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','probabilidade_incendio_explosao');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','animais_peconhentos');	

		$shortId = $f->insertShortConsequence('risKInstalarSelaColarColunaLado2',0);		

		$sanctionId = $f->insertSanction(6,278);
		$f->insertConditionSanction('instalar-sela-colar-coluna-lado-2',$sanctionId);	


		$longId = $f->insertChangeGoal('fixar-carretilha-corda-fibra-sintetica-ponta-bastao',50);
		$f->insertChangeGoalLongExist('girar-sela-erguer-bastao',50,$longId);
		$f->insertChangeGoalLongExist('tencionar-corda-estopo',50,$longId);
		$f->insertChangeGoalLongExist('retirar-isolador-antigo',50,$longId);	

		$f->insertRisk('risKInstalarSelaColarColunaLado2');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','risco_ergonimico');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','radiacao_nao_ionizante');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','eletricidade');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','probabilidade_incendio_explosao');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','animais_peconhentos');	

		$shortId = $f->insertShortConsequence('risKInstalarSelaColarColunaLado2',0);
		$sanctionId = $f->insertSanction($shortId,$longId);
		$f->insertConditionSanction('fixar-bastao-garra-invertido-lado-2',$sanctionId);			

		$longId = $f->insertChangeGoal('girar-sela-erguer-bastao',50);
		$f->insertChangeGoalLongExist('tencionar-corda-estopo',50,$longId);
		$f->insertChangeGoalLongExist('retirar-isolador-antigo',50,$longId);	

		$f->insertRisk('risKInstalarSelaColarColunaLado2');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','risco_ergonimico');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','radiacao_nao_ionizante');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','eletricidade');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','probabilidade_incendio_explosao');
		$f->insertGoupSafetyRisk('risKInstalarSelaColarColunaLado2','animais_peconhentos');	

		$shortId = $f->insertShortConsequence('risKInstalarSelaColarColunaLado2',0);
		$sanctionId = $f->insertSanction($shortId,$longId);
		$f->insertConditionSanction('fixar-carretilha-corda-fibra-sintetica-ponta-bastao',$sanctionId);			

		$longId = $f->insertChangeGoal('tencionar-corda-estopo',50);
		$f->insertChangeGoalLongExist('retirar-isolador-antigo',50,$longId);	

		$riskName = "riskGirarSelaErguerBastao";
		$f->insertRisk($riskName);
		$f->insertGoupSafetyRisk($riskName,'risco_ergonimico');
		$f->insertGoupSafetyRisk($riskName,'radiacao_nao_ionizante');
		$f->insertGoupSafetyRisk($riskName,'eletricidade');
		$f->insertGoupSafetyRisk($riskName,'probabilidade_incendio_explosao');
		$f->insertGoupSafetyRisk($riskName,'animais_peconhentos');	

		$shortId = $f->insertShortConsequence('risKInstalarSelaColarColunaLado2',0);
		$sanctionId = $f->insertSanction($shortId,$longId);
		$f->insertConditionSanction('girar-sela-erguer-bastao',$sanctionId);					


		$longId = $f->insertChangeGoal('conectar-corda-estopo',50);
		$f->insertChangeGoalLongExist('tencionar-corda-estopo',0,$longId);	
		$f->insertChangeGoalLongExist('tirar-parafusos-baixo-isolador-chave-catraca',0,$longId);	
		$f->insertChangeGoalLongExist('passar-corda-base-isolador-chave-catraca',0,$longId);	
		$f->insertChangeGoalLongExist('corda-erguer-isolador',0,$longId);	
		$f->insertChangeGoalLongExist('retirar-isolador-antigo',0,$longId);	
		$f->insertChangeGoalLongExist('suspender-isolador',0,$longId);	
		$f->insertChangeGoalLongExist('icar-isolador',0,$longId);	
		$f->insertChangeGoalLongExist('parafusar-isolador-coluna-chave-catraca',0,$longId);	


		$riskName = "riskEnforcarEstopoAltoIsolador01";
		$f->insertRisk($riskName);
		$f->insertGoupSafetyRisk($riskName,'risco_ergonimico');
		$f->insertGoupSafetyRisk($riskName,'radiacao_nao_ionizante');
		$f->insertGoupSafetyRisk($riskName,'probabilidade_incendio_explosao');
		$f->insertGoupSafetyRisk($riskName,'animais_peconhentos');	

		$shortId = $f->insertShortConsequence('risKInstalarSelaColarColunaLado2',50);
		$sanctionId = $f->insertSanction($shortId,$longId);
		$f->insertConditionSanction('enforcar-estopo-alto-isolador',$sanctionId);
	

		$riskName = "riskEnforcarEstopoAltoIsolador02";
		$f->insertRisk($riskName);
		$f->insertGoupSafetyRisk($riskName,'eletricidade');
		$shortId = $f->insertShortConsequence('riskEnforcarEstopoAltoIsolador02',100);
		
		$sanctionId = $f->insertSanction($shortId,$longId);
*/

		
	}
}
