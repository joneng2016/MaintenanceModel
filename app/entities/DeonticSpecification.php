<?php 
 
namespace App\Entities;  
 
class DeonticSpecification 
{
   public function __construct($permission)
   {
		$this->permission = $permission;
   } 
	public function hasPermission()
	{
		return $this->permission;
	}
}
