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
		$this->connection->execute((new InsertRelationArtefact),$toInsert);
	}
	public function insertCAA($oneId,$twoId)
	{
		$toInsert->oneId = $oneId;
		$toInsert->twoId = $twoId;
		$this->connection->execute(new InsertCondRelArtefact,$toInsert);
	}
	public function insertEntity($name)
	{
		$toInsert->name = $name;
		$this->connection->execute(new InsertEntity,$toInsert);
	}
}
