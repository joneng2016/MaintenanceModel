<?php 
 
namespace App\Entities; 
 
class Compatibility 
{
   	public function __construct($roleFirst,$roleSecond)
	{
		$this->roleFirst = $roleFirst;
		$this->roleSecond = $roleSecond;
	} 
	public function hasRoleFirst()
	{
		return $this->roleFirst;
	}
	public function hasRoleSecond()
	{
		return $this->roleSecond;
	} 
}