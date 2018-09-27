<?php 
 
namespace App\DB;

class InsertEntity implements OperatorDbInterface
{	  
	public function execute($connection,$objectBank,$returnInformation)
	{
		$sql = "insert into entity where name='$objectBank->name'"; 
		$connection->exec($sql);
	}
}
