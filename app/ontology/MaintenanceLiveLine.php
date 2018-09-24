<?php 
 
namespace App\Ontology; 

use App\Entities\Agent;
use App\Entities\Tool;
use App\Entities\ObjectMaintenance;

class MaintenanceLiveLine
{
	public function running()
	{
		$supervisor = new Agent('supervisor');
		$observador = new Agent('observador');
		$agentExecutor01 = new Agent('agente_executor_01');
		$agentExecutor02 = new Agent('agente_executor_02');
		$agentExecutor03 = new Agent('agente_executor_03');
		$agentExecutor04 = new Agent('agente_executor_04');
		$agentExecutor05 = new Agent('agente_executor_05');
		$agentExecutor06 = new Agent('agente_executor_06');	

		$toolColarSela = new Tool('colar_sela');
		$toolChaveCatraca = new Tool('chave_catraca');		
		$toolBastaoGarra = new Tool('bastao_garra');
		$toolEstropo = new Tool('estropo');
		$toolBastaoUniversal = new Tool('bastao_universal');
		$toolCarretilha = new Tool('carretilha');
		$toolCavalete = new Tool('cavalete');		
		$toolBastaoOlhaoCorda = new Tool('bastao_olhao_corda');
		$toolLona = new Tool('lona');

		$objectPedestaPoste = new ObjectMaintenance('pedestal_poste');		
		$objectEspina = new ObjectMaintenance('espina');
		$objectCondutor = new ObjectMaintenance('condutor');
		$objectCorda = new ObjectMaintenance('corda');
		$objectIsoladorDanificado = new ObjectMaintenance('isolador_danificado');
		$objectIsoladorNovo = new ObjectMaintenance('isolador_novo');
		$objectParafuso = new ObjectMaintenance('parafuso');
		$objectConector = new ObjectMaintenance('conector');
		$objectPorcaConector = new ObjectMaintenance('porca_do_conector');
		$objectPorcaIsolador = new ObjectMaintenance('porca_do_isolador');


	}
}