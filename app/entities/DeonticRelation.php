<?php 
 
namespace App\Entities; 
 
class DeonticRelation 
{
    public function __construct($mission,$role)
    {
		$this->mission = $mission;
		$this->role = $role;
    } 
	public function hasMission()
	{
		return $this->mission;
	}
	public function hasRole()
	{
		return $this->role;
	}
}
