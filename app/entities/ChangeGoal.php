<?php 
 
namespace App\Entities; 
 
class ChangeGoal
{
   public function __construct($goal,$probability)
   {
		$this->goal = $goal;
		$this->probability = $probability;
   } 
	public function hasGoal()
	{
		return $this->goal;
	}
	public function hasProbability()
	{
		return $this->probability;
	}
}
