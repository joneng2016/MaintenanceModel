<?php 
 
namespace App\Entities; 
 
class Sanction 
{
	public function loadShortConsequence($shortConsequence)
	{
		$this->shortConsequence = $shortConsequence;
	}
	public function hasShortConsequence()
	{
		return $this->shortConsequence;	
	}
	public function loadLongConsequece($longConsequence)
	{
		$this->longConsequence = $longConsequence;
	}
	public function hasLongConsequence()
	{
		return $this->longConsequence;
	}
}
