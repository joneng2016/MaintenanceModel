<?php 
 
namespace App\DB;

class  InsertCondRelArtefact implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank)
	{
		$sql = "insert into condition_relation_artefact_artefact (condition_one_id,relation_two_id) values ('$objectBank->oneId',$objectBank->twoId)";
		$connection->exec($sql);
	}
}
