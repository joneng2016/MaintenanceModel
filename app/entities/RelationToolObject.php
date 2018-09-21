<?php 
 
namespace App\Entity; 
 
class RelationToolObject 
{
	private $tool;
	private $object;
   public function __construct(Tool $tool, Object $object)
   {
		$this->tool = $tool;
		$this->object = $object;
   } 
	public function hasTool()
	{
		return $this->tool;
	}
	public function hasObject()
	{
		return $this->object;
	}
}
