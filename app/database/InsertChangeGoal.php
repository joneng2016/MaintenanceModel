<?php 
 
namespace App\DB;


class InsertChangeGoal implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$toInsert = (object)
		[
			"conditionName" => $objectBank->conditionName
		];
		$goalId =  (new \App\DB\ConnectionDb('localhost','root','','maintenanceliveline'))->execute(new SelectGoalByCondition,$toInsert);
		$connection->exec("insert into long_consequence () values ()");
		$longId = $connection->lastInsertId();
		$sql = "insert into change_goal (probability,goal_id,long_id) VALUES ($objectBank->probability,$goalId,$longId)"; 
		$connection->exec($sql);		

		$returnInformation = $longId;

	}
}
