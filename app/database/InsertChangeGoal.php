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
		$sql = "insert into change_goal (probability,goal_id) VALUES ($objectBank->probability,$goalId)"; 
		$connection->exec($sql);		
		$lastId = $connection->lastInsertId();
		$connection->exec("insert into long_consequence (change_goal) values ($lastId)");
		$returnInformation = $connection->lastInsertId();
	}
}
