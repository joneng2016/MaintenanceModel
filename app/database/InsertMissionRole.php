<?php 
 
namespace App\DB;

class InsertMissionRole implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$sql = "select id from mission where name = '$objectBank->missionName'";
		$select = $connection->prepare($sql);
		$select->execute();
		$results = $select->fetch();
		$missionId = $results['id'];
		
		$sql = "select id from role where name = '$objectBank->roleName'";
		$select = $connection->prepare($sql);
		$select->execute();
		$results = $select->fetch();
		$roleId = $results['id'];	
	}
}
