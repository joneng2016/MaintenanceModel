<?php 
 
namespace App\DB;

class  InsertGroupSafetyRisk implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$this->connection = $connection;
		$this->objectBank = $objectBank;
		$this->findRisk();
		$this->findGroupSafety();
		$this->insertGroupSafetyRisk();
	}
	public function findRisk()
	{
		$riskName = $this->objectBank->riskName;
		$sql = "select risk.id as id from risk where risk.name = '$riskName'";
		$select = $this->connection->prepare($sql);
		$select->execute();
		$this->riskId = $select->fetch()['id'];
	}
	public function findGroupSafety()
	{
		$description = $this->objectBank->groupDescription;
		$sql = "select group_safety.id as id from group_safety where group_safety.description = '$description'";
		$select = $this->connection->prepare($sql);
		$select->execute();
		$this->groupSafetyId = $select->fetch()['id'];
	}
	public function insertGroupSafetyRisk()
	{
		$sql = "insert into group_safety_risk (risk_id,group_safety_id) values ($this->riskId,$this->groupSafetyId)";
		$this->connection->exec($sql);
	}
}
