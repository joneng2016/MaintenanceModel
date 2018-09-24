<?php 
 
namespace App\Entities; 
 
class Group 
{
	public function __construct($link,$heritage,$compatibility)
   {
		$this->link = $link;
		$this->heritage = $heritage;
		$this->compatibility = $compatibility;
   } 
	public function hasLink()
	{
		return $this->link;
	}
	public function hasHeritage()
	{
		return $this->heritage;
	}
	public function hasCompatibility()
	{
		return $this->compatibility;
	}
}
