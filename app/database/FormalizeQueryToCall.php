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
	public function insertGoal($description,$probability,$percentualOk,$conditionId)
	{
		$toInsert = (object)
		[
			"description" => $description,
			"probability" => $probability,
			"percentualOk" => $percentualOk,
			"conditionId" => $conditionId
		];
		return $this->connection->execute(new InsertGoal,$toInsert);
	}
	public function insertGoalMission($goalId,$missionId)
	{
		$toInsert = (object)
		[
			"goalId" => $goalId,
			"missionId" => $missionId
 		];
		return $this->connection->execute(new InsertGoalMission,$toInsert);
	}
	public function insertMissionRole($missionName,$roleName)
	{
		$toInsert = (object)
		[
			"missionName" => $missionName,
			"roleName" => $roleName
		];
		return $this->connection->execute(new InsertMissionRole,$toInsert);
	}
	public function selectGoaByCondition($conditionName)
	{
		$toInsert = (object)
		[
			"conditionName" => $conditionName
		];
		return $this->connection->execute(new SelectGoalByCondition,$toInsert);
	}
	public function insertChangeGoal($nameCondition,$probability)
	{
		$toInsert = (object) 
		[
			"conditionName" => $nameCondition,
			"probability" => $probability
		];
		return $this->connection->execute(new InsertChangeGoal,$toInsert);
	}
	public function insertRisk($name)
	{
		$toInsert = (object) 
		[
			"name" => $name,
		];
		return $this->connection->execute(new InsertRisk,$toInsert);
	}
	public function insertGoupSafetyRisk($riskName,$groupDescription)
	{
		$toInsert = (object)
		[
			"riskName" => $riskName,
			"groupDescription" => $groupDescription
		];
		return $this->connection->execute(new InsertGroupSafetyRisk,$toInsert);

	}
}
