<?php 
 
namespace App\DB;

class InsertGoalMission implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$sql = "insert into goal_mission (goal_id,mission_id) values ($objectBank->goalId,$objectBank->missionId)";
		$connection->exec($sql);	
	}
}
