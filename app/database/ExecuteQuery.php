<?php 
 
namespace App\DB;

class ExecuteQuery
{
	public function __construct()
	{
		$this->formalize = new FormalizeQueryToCall;
	}	
	public function run()
	{
		$f = $this->formalize;

		//$f->insertRAA(,,)
		//$f->insertCAA(,);
	}
}
