<?php 
 
namespace App\Entities; 
 
class Mission 
{
    public function __construct($goals)
    {
		$this->goals = $goals;
    } 
	public function hasGoals()
	{
		return $this->goal;
	}
}
