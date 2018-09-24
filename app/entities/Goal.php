<?php 
 
namespace App\Entities; 
 
class Goal 
{
    public function __construct($condition,$percentualCondition,$probability)
    {
		$this->condition = $condition;
		$this->percentualCondition = $percentualCondtion;
		$this->probability = $probability
    } 
	public function hasCondition()
	{
		return $this->condition;
	}
	public function hasPercentualCondition()
	{
		return $this->percentualCondition;
	}
	public function hasProbability()
	{
		return $this->probability;
	}
}
