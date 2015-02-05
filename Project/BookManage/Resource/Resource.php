<?php

/** 
 * @author Boo
 * 
 */
class Resource {
	// TODO - Insert your code here
	public static $Resource = array(
			'id'=>'Identity',
			'name'=>'Name',
			'authorId'=>'Author',
			'company'=>'Company',
			'address'=>'Address',
			'status'=>'Status'
	);
	public static function getresource($string){
		return self::$Resource[$string];
	}
}

?>