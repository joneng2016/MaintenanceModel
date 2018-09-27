<?php 
 
namespace App\DB;

interface OperatorDbInterface 
{
	public function execute($connection,$objectBank,&$returnInformation);
}
