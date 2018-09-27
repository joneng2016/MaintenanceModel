<?php 
 
namespace App\DB;

class FormalizeQueryToCall 
{
	public function __construct()
	{
		$this->connection = new \App\DB\ConnectionDb('localhost','root','','maintenanceliveline');
	} 

	//Normalmente eu usaria nomes grandes que explicam o total sentido do método, mas neste caso vou deixar abreviado pelo fato de que
	//eu vou usar este método para inserts que terei de fazer rapidamente e apenas eu utilizarei. Contudo estou ciente de que esta não é 
	//uma boa pratica.


	public function insertRAA($description,$artefactOneId,$artefactTwoId)
	{
		$toInsert = (object) [
						 				'typeOfRelation' => $description,
										'artefactOne' => $artefactOneId, 
										'artefactTwo' => $artefactTwoId
									];
		return $this->connection->execute((new InsertRelationArtefact),$toInsert);
	}
	public function insertCAA($oneId,$twoId)
	{
		$toInsert = (object) [
				'oneId' => $oneId,
				'twoId' => $twoId
		];
		return $this->connection->execute(new InsertCondRelArtefact,$toInsert);
	}
	public function insertEntity($name)
	{
		$toInsert = (object) ['name' => $name];
		$this->connection->execute(new InsertEntity,$toInsert);
	}
	public function selectArtefactId($name)
	{
		return $this->connection->execute(new SelectArtefact,$name);
	}
	public function insertGoal($description,$probability,$percentualOK,$conditionId)
	{
		$toInsert = (object)
		[
			"description" => $description,
			"probability" => $probability,
			"percentualOk" => $percentualOk,
			"conditionId" => $conditionId
		];
		return $this->connection->execyte(new InsertGoal,$toInsert);
	}
}
