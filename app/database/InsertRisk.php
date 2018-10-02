<?php 
 
namespace App\DB;

class InsertRisk implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		$sql = "insert into risk (name) values ('$objectBank->name')"; 
		$connection->exec($sql);
		$returnInformation = $connection->lastInsertId();
	}
}
