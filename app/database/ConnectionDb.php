<?php 
 
namespace App\DB;

use PDO;

class ConnectionDb
{
	public function __construct($servername,$username,$password,$dbname)
	{
		$this->connection = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$this->connection->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
	} 
	public function execute($db,$objectBank)
	{
		$db->execute($this->connection,$objectBank);
	}
	
}
