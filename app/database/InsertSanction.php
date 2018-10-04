<?php 
 
namespace App\DB;

class InsertSanction implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,&$returnInformation)
	{
		
		$sql = "insert into sanction (short_consequence_id,long_consequence_id) values ($objectBank->shortConsequence,$objectBank->longConsequence)"; 
		$connection->exec($sql);
		$returnInformation = $connection->lastInsertId();
	}
}
