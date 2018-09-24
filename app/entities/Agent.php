<?php 
 
namespace App\Entities; 
 
class Agent extends Entity
{
	public function changeRole($role){
		$this->role = $role;
	}
	public function hasRole()
	{
		return $this->role;
	}
}