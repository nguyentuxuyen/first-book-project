<?php
/** 
 * @author Boo
 * 
 */
class Render {
	// TODO - Insert your code here
	private $_controller;
	private $_action;
	private $_viewType;
	private $_viewpath;
	private $_layoutName;
	protected $_hasView;
	protected $_hasLayout;
	private $_layoutPath;
	public $objectData;
	/**
	 */
	function __construct($controller = null, $action = null, $viewType = null) {
		$this->_controller = $controller;
		$this->_action = $action;
		$this->_viewType = $viewType;
		$this->_layoutName = Config::LAYOUT_DEFAULT;
		$this->_hasView = true;
		$this->_hasLayout = true;
	}
	public function render(){
		$this->_viewpath = Config::VIEW_FOLDER . Config::SLASH
							.$this->_controller. Config::SLASH
							.$this->_viewType . '.php';
		$this->_layoutPath = Config::LAYOUT_FOLDER . Config::SLASH
							.$this->_layoutName . Config::SLASH
							.'index.php';
		if(!file_exists($this->_viewpath)){
			$this->_viewpath = Config::VIEW_FOLDER
			. Config::SLASH
			. Config::VIEW_DEFAULT_CONTROLLER
			. Config::SLASH
			. $this->_action
			. Config::SLASH
			. $this->_viewType.'.php';
		}
		if($this->_hasLayout){
			require_once $this->_layoutPath;
		}
		else{
			if($this->_hasView)
				require_once $this->_viewpath;
		}
	}
	public function content(){
		require_once $this->_viewpath;
	}
	public function block($blockname){
		require_once Config::BLOCK_PATH . '/'.$blockname.'.php';
	}
}

?>