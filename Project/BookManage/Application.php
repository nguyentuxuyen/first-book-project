<?php
/** 
 * @author Boo
 * 
 */
class Application {
	// TODO - Insert your code here
	private $_controllerName = NULL;
	/**
	 * 
	 * @var BaseController
	 */
	private $_controller = NULL;
	/**
	 */
	function __construct() {
		// TODO - Insert your code here
		$this->init();
	}
	/**
	 * create variables
	 */
	public function init(){
		if (isset( $_REQUEST[Config::CONTROLLER_PARRAM_NAME])) 
			$this->_controllerName = $_REQUEST[Config::CONTROLLER_PARRAM_NAME];
		else 
			$this->_controllerName = Config::CONTROLLER_DEFAULT;
	}
	/**
	 * to do before run
	 */
	public function beforerun(){}
	/**
	 * function run
	 */
	public function run(){
		try {
			$this->_controller = ControllerFactory::getInstance($this->_controllerName);
			$this->_controller->setContext($this->_controllerName);
			$this->_controller->run();
		} catch ( ControllerFactoryException $e ) {
			echo $e->getMessage ();
		} catch ( Exception $e ) {
			echo $e->getMessage ();
		}
	}
	/**
	 * to do after run
	 */
	public function afterrun(){}
}

?>