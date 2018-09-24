<?php 
 
namespace App\Entities; 
 
class RelationAgentTool 
{
	private $agent;
	private $tool;
    public function __construct(Agent $agent, Tool $tool)
    {
		$this->agent = $agent;
		$this->tool = $tool;
    } 
	public function hasAgent()
	{
		return $this->agent;
	}
	public function hasTool()
	{
		return $this->tool;
	}
}
