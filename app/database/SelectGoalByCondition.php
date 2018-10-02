<?php 
 
namespace App\DB;

use PDO;

class SelectGoalByCondition implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$sql = "select goal.id as id from goal inner join `maintenanceliveline`.`condition` on goal.condition_id = `maintenanceliveline`.`condition`.id where `maintenanceliveline`.`condition`.name = '$objectBank->conditionName'; ";
		$select = $connection->prepare($sql);
		$select->execute();
		$results = $select->fetch();
		$returnInformation = $results['id'];
	}
}
