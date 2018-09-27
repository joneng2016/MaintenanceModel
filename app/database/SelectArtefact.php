<?php 
 
namespace App\DB;

use PDO;

class SelectArtefact implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$sql = "select artefact.id from artefact inner join entity on artefact.entity_id = entity.id where entity.name = '$objectBank' ";
		$select = $connection->prepare($sql);
		$select->execute();
		$results = $select->fetch();
		$returnInformation = $results['id'];
	}
}
