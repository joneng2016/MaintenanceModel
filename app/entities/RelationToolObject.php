<?php 
 
namespace App\Entities; 
 
class RelationToolObject 
{
	private $tool;
	private $object;
    public function __construct($tool,$object)
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
