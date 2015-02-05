<?php
/**
 *
 * @author Boo
 *        
 */
class ModelFactory {
	// TODO - Insert your code here
	/**
	 */
	function __construct() {
		// TODO - Insert your code here
	}
	/**
	 * 
	 * @param string $modelName
	 * @throws ModelFactoryException
	 * @return BaseModel
	 */
	public static function getInstance($modelName){
		$path = Config::MODEL_FOLDER . Config::SLASH . $modelName . '.php';
		if (file_exists($path)) {
			include_once $path;
			if (class_exists($modelName)) 
				return new $modelName;
			else {
				throw new ModelFactoryException('Class '.$modelName.' not found!');
				return null;
			}
		}else {
			throw new ModelFactoryException('Model file not found !!!');
			return NULL;
		}
	}
}

?>