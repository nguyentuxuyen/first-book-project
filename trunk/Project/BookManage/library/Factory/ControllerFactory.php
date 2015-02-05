<?php
/**
 *
 * @author Boo
 *        
 */
class ControllerFactory {
	// TODO - Insert your code here
	const PREFIX = 'Controller';
	
	/**
	 */
	function __construct() {
		// TODO - Insert your code here
	}
	/**
	 * 
	 * @param string $controllerName
	 * @throws ControllerFactoryException
	 * @return NULL
	 */
	public static function getInstance($controllerName){
		$name = $controllerName . self::PREFIX;
		$path = Config::CONTROLLER_FOLDER . Config::SLASH . $name . '.php';
		if (file_exists($path)) {
			include_once $path;
			if (class_exists($name)) 
				return new $name;
			else {
				throw new ControllerFactoryException('Class '.$name.' not found!');
				return null;
			}
		}else {
			throw new ControllerFactoryException('Controller file not found !!!');			
		}
	}
}

?>