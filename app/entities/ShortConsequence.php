<?php 
 
namespace App\Entities; 
 
class ShortConsequence 
{ 
	public function loadRisk($risk)
	{
		$this->risk = $risk;
	}
	public function hasRisk()
	{
		return $this->risk;
	}
	public function loadFantality($fatality)
	{
		$this->fatality = $fatality;
	}
	public function hasFatality()
	{
		return $this->fatality
	}
}
