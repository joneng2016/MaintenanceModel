<?php 
 
namespace App\Entities; 
 
class LongConsequence 
{
   public function __construct($changeGoal,$probability)
   {
		$this->changeGoal = $changeGoal;
   } 
	public function hasChangeGoal()
	{
		return $this->changeGoal;
	}
}
