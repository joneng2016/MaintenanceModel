<?php 
 
namespace App\DB;

class InsertRelationArtefact implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank)
	{
		$sql = "insert into relation_artefact_artefact (type_of_relation,artefact_first_id,artefact_two_id) values ('$objectBank->typeOfRelation',$objectBank->artefactOne,$objectBank->artefactTwo)";
		$connection->exec($sql);
	}
}
