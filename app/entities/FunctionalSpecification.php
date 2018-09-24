<?php 
 
namespace App\Entities; 
 
class FunctionalSpecification 
{
   public function __construct($schema)
   {
		$this->schema = $schema;
   } 
	public function hasSchema()
	{
		return $this->schema;
	}
}
