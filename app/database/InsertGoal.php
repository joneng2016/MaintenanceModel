<?php 
 
namespace App\DB;

class InsertGoal implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$description = $objectBank->description;
		$probability = $objectBank->probability;
		$percentualOk = $objectBanl->percentual_ok;
		$conditionId = $objectBank->conditionId;
		$sql = "insert into goal (description,probability,percentual_ok,condition_id) values ('$description',$probability,$percentualOk,$conditionId)";
		$connection->exec($sql);	
	}
}
