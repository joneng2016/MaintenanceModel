<?php 
 
namespace App\DB;

class InsertConditionSanction implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$this->connection = $connection;
		$this->objectBank = $objectBank;
		$this->findCondition();
		$this->insertConditionSanction();
	}
	public function findCondition()
	{
		$conditionName = $this->objectBank->conditionName;
		$sql = "select `maintenanceliveline`.condition.id as id from `maintenanceliveline`.condition where `maintenanceliveline`.condition.name = '$conditionName'";
		$select = $this->connection->prepare($sql);
		$select->execute();
		$this->conditionId = $select->fetch()['id'];
	}
	public function insertConditionSanction()
	{
		$sanctionId = $this->objectBank->sanctionId;
		$sql = "insert into condition_sanction (condition_id,sanction_id) values ($this->conditionId,$sanctionId)";
		$this->connection->exec($sql);
	}
}
