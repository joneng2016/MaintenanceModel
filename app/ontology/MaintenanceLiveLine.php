<?php 
 
namespace App\Ontology; 

use App\Entities\Agent;
use App\Entities\Tool;
use App\Entities\ObjectMaintenance;
use App\Entities\InThatInstant;
use App\Entities\Condition;
use App\Entities\Goal;
use App\Entities\Role;

class MaintenanceLiveLine
{
	public function running()
	{
		$this->defineRoles();
		$this->defineAgents();
		$this->defineTools();
		$this->defineObjects();	
		$this->defineInThatInstants()
		$this->defineConditions()
		$this->defineGoals()	
	}
	public function defineRoles()
	{
		$this->roleSupervisor = new Role('supervisor');
		$this->roleObservador = new Role('observador');
		$this->roleExecutor01 = new Role('executor01');
		$this->roleExecutor02 = new Role('executor02');
		$this->roleExecutor03 = new Role('executor03');
		$this->roleExecutor04 = new Role('executor04');
		$this->roleExecutor05 = new Role('executor05');
		$this->roleExecutor06 = new Role('executor06');
	}
	public function defineAgents()
	{
		$this->agente01 = new Agent('agente01');
		$this->agente01->changeRole($this->roleSupervisor);	
		$this->agente02 = new Agent('agente02');
		$this->agente02->changeRole($this->roleObservador);
		$this->agente03 = new Agent('agente03');
		$this->agente03->changeRole($this->roleExecutor01);
		$this->agente04 = new Agent('agente04');
		$this->agente04->changeRole($this->roleExecutor02);
		$this->agente05 = new Agent('agente05');
		$this->agente05->changeRole($this->roleExecutor03);
		$this->agente06 = new Agent('agente06');
		$this->agente06->changeRole($this->roleExecutor04);
		$this->agente07 = new Agent('agente07');
		$this->agente07->changeRole($this->roleExecutor05);
		$this->agente08 = new Agent('agente08');
		$this->agente08->changeRole($this->roleExecutor06);

	}
	public function defineTools()
	{
		$this->toolColarSela = new Tool('colar_sela');
		$this->toolChaveCatraca = new Tool('chave_catraca');		
		$this->toolBastaoGarra = new Tool('bastao_garra');
		$this->toolEstropo = new Tool('estropo');
		$this->toolBastaoUniversal = new Tool('bastao_universal');
		$this->toolCarretilha = new Tool('carretilha');
		$this->toolCavalete = new Tool('cavalete');		
		$this->toolBastaoOlhaoCorda = new Tool('bastao_olhao_corda');
		$this->toolLona = new Tool('lona');
	}
	public function defineObjects()
	{
		$this->objectPedestaPoste = new ObjectMaintenance('pedestal_poste');		
		$this->objectEspina = new ObjectMaintenance('espina');
		$this->objectCondutor = new ObjectMaintenance('condutor');
		$this->objectCorda = new ObjectMaintenance('corda');
		$this->objectIsoladorDanificado = new ObjectMaintenance('isolador_danificado');
		$this->objectIsoladorNovo = new ObjectMaintenance('isolador_novo');
		$this->objectParafuso = new ObjectMaintenance('parafuso');
		$this->objectConector = new ObjectMaintenance('conector');
		$this->objectPorcaConector = new ObjectMaintenance('porca_do_conector');
		$this->objectPorcaDoIsolador = new ObjectMaintenance('porca_do_isolador');
	}
	public function defineInThatInstants()
	{
		$this->instantAnalisePreliminar = new InThatInstant([$this->agente01,$this->agente02,$this->agente03,$this->agente04,$this->agente05,$this->agente06,$this->agente07,$this->agente08]);
	}
	public function defineConditions()
	{
		$this->conditionAnaliePreliminar = new Condition();
		$this->conditionAnaliePreliminar->loadInThatInstant($this->instantAnalisePreliminar);
		$this->conditionAnaliePreliminar->loadDescription('Fazer Análise de todos os possíveis riscos que podem ocorrer durante a execução das atividades');
	}
	public function defineGoals()
	{
		$this->goalAnalizePreliminar = new Goal($this->conditionAnaliePreliminar,1,1);
	}
}