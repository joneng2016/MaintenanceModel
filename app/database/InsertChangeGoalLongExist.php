<?php 
 
namespace App\DB;


class InsertChangeGoalLongExist implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$toInsert = (object)
		[
			"conditionName" => $objectBank->conditionName
		];
		$goalId =  (new \App\DB\ConnectionDb('localhost','root','','maintenanceliveline'))->execute(new SelectGoalByCondition,$toInsert);
		$sql = "insert into change_goal (probability,goal_id,long_id) VALUES ($objectBank->probability,$goalId,$objectBank->longId)"; 
		$connection->exec($sql);		

	}
}
