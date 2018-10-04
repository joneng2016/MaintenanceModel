<?php 
 
namespace App\DB;

class InsertEntityFatality implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$this->connection = $connection;
		$this->entityName = $objectBank->entityName;
		$this->selectShortConsequence();
		$sql = "insert into entity_fatality (short_consequence_id,entity_id,type) values ($objectBank->shortConsequenceId,$this->entityId,'$objectBank->type')"; 
		$connection->exec($sql);
	}
	public function selectShortConsequence()
	{
		$toQuery = $this->connection->prepare("select entity.id as id from entity where name='$this->entityName'");
		$toQuery->execute();
		$this->entityId = $toQuery->fetch()['id'];
	}
}
