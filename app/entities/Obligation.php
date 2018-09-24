<?php 
 
namespace App\Entities; 
 
class Obligation 
{
   public function __construct($permission)
   {
		$this->permission = $permission;
   } 
	public function hasPermission()
	{
		return $permission;
	}
}
