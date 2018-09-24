<?php 
 
namespace App\Entities; 

 
class Plan 
{
   public function __construct($name,$type,$goalSuper,$goalSub)
	{
		$this->name = $name;
		$this->type = $type;
		$this->goalSuper = $goalSuper;
		$this->goalSub = $goalSub;
   } 
	public function hasName()
	{
		return $this->name;
	}
	public function hasType()
	{
		return $this->type;
	}
	public function hasGoalSuper()
	{
		return $this->goalSuper;
	}
	public function hasGoalSub()
	{
		return $this->goalSub;
	}
}
