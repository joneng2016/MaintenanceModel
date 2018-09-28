<?php 
 
namespace App\DB;

class ExecuteQuery
{
	public function __construct()
	{
		$this->formalize = new FormalizeQueryToCall;
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


		 */
/*
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
 */
		echo $f->insertMissionRole('missao00','executor01');
	}
}
