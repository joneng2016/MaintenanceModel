<?php 
 
namespace App\Entity; 
 
class Condition 
{
	private $relationToolObject[];
	private $relationAgentTool[];
	private $inThatInstat[];
	private $agent[];
	private $object[];
	private $tool[];
	private $sanction;

	public function hasRelationToolObject()
	{
		return $this->relationToolObject;
	}
	public function hasRelationAgentTool()
	{
		return $this->relationAgentTool;
	}
	public function hasInThatInstant()
	{
		return $this->inThatInstant;
	}
	public function hasAgent()
	{
		return $this->agent;
	}
	public function hasObject()
	{
		return $this->object;
	}
	public function hasSanction()
	{
		return $this->sanction;
	}
	public function loadRelationToolObject($relationToolObject[])
	{
		$this->relationToolObject = $relationToolObject;
	}
	public function loadRelationAgentTool($relationAgentTool[])
	{
		$this->relaitonAgentTool = $relationAgentTool;
	}
	public function loadInThatInstant($inThatInstant[])
	{
		$this->inThatInstant = $inThatInstant;
	}
	public function loadAgent($agent[])
	{
		$this->agent = $agent;
	}
	public function loadTool($tool[])
	{
		$this->tool = $tool;
	}
	public function loadSanction()
	{
		$this->sanction = $sanction;
	}	
}
