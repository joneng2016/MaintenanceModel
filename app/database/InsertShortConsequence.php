<?php 
 
namespace App\DB;

class InsertShortConsequence implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$this->riskName = $objectBank->riskName;
		$this->connection = $connection;
		$fatalityCondition = $objectBank->fatalityCondition;
		$this->selectIdFromRisk();
		$sql = "insert into short_consequence (fatality_condition,risk_id) values ($fatalityCondition,$this->riskId)"; 
		$connection->exec($sql);
		$returnInformation = $connection->lastInsertId();
	}
	public function selectIdFromRisk()
	{
		$sql = "select id from risk where risk.name='$this->riskName'";
		$select = $this->connection->prepare($sql);
		$select->execute();
		$results = $select->fetch();
		$this->riskId = $results['id'];
	}

}
