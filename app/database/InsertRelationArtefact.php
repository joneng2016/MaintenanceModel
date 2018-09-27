<?php 
 
namespace App\DB;

use PDO;

class InsertRelationArtefact implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$sql = "insert into relation_artefact_artefact (type_of_relation,artefact_first_id,artefact_two_id) values ('$objectBank->typeOfRelation',$objectBank->artefactOne,$objectBank->artefactTwo)";
		$connection->exec($sql);
		$sql = "select max(id) from relation_artefact_artefact";
		$select = $connection->prepare($sql);
		$select->execute();
		$results = $select->fetch();
		$returnInformation = $results["max(id)"];
	}
}
