<?php 

namespace App\Command;


class Kernel
{
	public function createEntity($name)
	{
		$this->codeFile(__DIR__."/../entities/",$name);
	}
	public function createDatabaseFile($name)
	{
		$this->codeFile(__DIR__."/../database/",$name);	
	}
	public function createEntityWithExtend($name,$son)
	{
		$content = "<?php \n \nnamespace App\Entities; \n \nclass ".$name." \n{\n   public function __construct()\n   {\n   } \n}";
		$file = fopen(__DIR__."/../entities/".$name.".php","w");
		fwrite($file,$content);
		fclose($file);
	}
	public function codeFile($where,$name)
	{
		$content = "<?php \n \nnamespace App\Entities; \n \nclass ".$name." \n{\n   public function __construct()\n   {\n   } \n}";
		$file = fopen($where.$name.".php","w");
		fwrite($file,$content);
		fclose($file);
	}
			  
}


