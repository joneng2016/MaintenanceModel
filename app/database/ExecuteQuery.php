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
		 */

	}
}
