<?php 
 
namespace App\Entities; 
 
class Risk 
{
 
	public function loadGroupGreeen($groupGreen)
	{
		$this->groupGreen = $groupGreen;
	}
	public function hasGroupGreen()
	{
		return $this->groupGreen;
	}
	public function loadGroupRed($groupRed)
	{
		$this->groupRed = $groupRed;
	}
	public function hasGroupRed()
	{
		return $this->groupRed;
	}
	public function loadGroupBrown($groupBrown)
	{
		$this->groupBrown = $groupBrown;
	}
	public function hasGroupBrown()
	{
		return $this->groupBrown;
	}
	public function loadGroupYellow($groupYellow)
	{
		$this->groupYellow = $groupYellow;
	}
	public function hasGroupYellow()
	{
		return $this->groupYellow;
	}
	public function loadGroupBlue($groupBlue)
	{
		$this->groupBlue = $groupBlue;
	}
	public function hasGroupBlue()
	{
		return $this->groupBlue;
	}
}
