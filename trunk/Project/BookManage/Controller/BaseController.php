<?php
include_once 'Controller/IController.php';
/** 
 * @author Boo
 * 
 */
class BaseController implements IController{
	// TODO - Insert your code here
	const SURFIX = 'Action';
	/**
	 *
	 * @var String action name
	 */
	private $_actionName;
	/**
	 * Controller Name
	 *
	 * @var string
	 */
	protected $_context;
	/**
	 *
	 * @var BaseModel
	 */
	protected $_model;
	/**
	 * 
	 * @var array
	 */
	protected $_data;
	/**
	 * 
	 * @var String
	 */
	protected $_typeAction;
	/**
	 * View name
	 *
	 * @var String
	 */
	private $_viewType;
	/**
	 * View Render
	 *
	 * @var Render
	 */
	private $_view;
	/**
	 * @return the $_context
	 */
	public function getContext() {
		return $this->_context;
	}

	/**
	 * @param string $_context
	 */
	public function setContext($_context) {
		$this->_context = $_context;
		$this->_model = ModelFactory::getInstance($_context);
	}
	/**
	 * init
	 */
	public function init(){
		if (isset($_REQUEST[Config::ACTION_PARRAM_NAME]))
			$this->_actionName = $_REQUEST[Config::ACTION_PARRAM_NAME];
		else 
			$this->_actionName = Config::ACTION_DEFAULT;
	}
	/**
	 */
	function __construct() {
		// TODO - Insert your code here
		if (isset ( $_REQUEST [Config::ACTION_PARRAM_NAME] )) {
			$this->_actionName = $_REQUEST [Config::ACTION_PARRAM_NAME];
		} else {
			$this->_actionName = Config::ACTION_DEFAULT;
		}
		if (isset ( $_REQUEST [Config::VIEW_PARRAM_NAME] )) {
			$this->_viewType = $_REQUEST [Config::VIEW_PARRAM_NAME];
		} else {
			$this->_viewType = Config::VIEW_DEFAULT;
		}
		$this->init();
		$this->getdata();
	}
	/* (non-PHPdoc)
	 * @see IController::run()
	 */
	public function run() {
		// TODO Auto-generated method stub
		$this->init();
		$name = $this->_actionName . self::SURFIX;
		if(method_exists($this, $name)){
			$this->_view = new Render ( $this->_context, $this->_actionName, $this->_viewType );
			$this->{$name} ();
			$this->_view->render();
		}
		else{
			throw new ClassException('Class khong ton tai !!!');
			return NULL;
		}
	}

	/* (non-PHPdoc)
	 * @see IController::getdate()
	 */
	public function getdata() {
		// TODO Auto-generated method stub
		$data = $_REQUEST;
		$this->_data = array_slice($data, 2);
	}

	/* (non-PHPdoc)
	 * @see IController::indexAction()
	 */
	public function indexAction() {
		// TODO Auto-generated method stub
	}

	/* (non-PHPdoc)
	 * @see IController::getallentityAction()
	 */
	public function getallentityAction() {
		// TODO Auto-generated method stub
		$this->view ()->object = $this->_model->getall();
	}

	/* (non-PHPdoc)
	 * @see IController::getentitybyidAction()
	 */
	public function getentitybyidAction() {
		// TODO Auto-generated method stub
		$id = array();
		if (array_key_exists('id', $this->_data))
			$id['id'] = $this->_data['id'];
		print_r($this->_model->getone($id));
	}

	/* (non-PHPdoc)
	 * @see IController::deleteentityAction()
	 */
	public function deleteentityAction() {
		// TODO Auto-generated method stub
		
	}

	/* (non-PHPdoc)
	 * @see IController::getioruentityAction()
	 */
	public function getioruentityAction() {
		// TODO Auto-generated method stub
		(isset($_GET['id']))?($this->_model->update($this->_data)):($this->_model->insert($this->_data));
	}

	/* (non-PHPdoc)
	 * @see IController::block()
	 */
	public function block($blockname) {
		// TODO Auto-generated method stub
		
	}
	/**
	 *
	 * @return ViewRender
	 */
	public function view() {
		return $this->_view;
	}
	
	/**
	 * @return the $_viewType
	 */
	public function getViewType() {
		return $this->_viewType;
	}
	
	/**
	 * @param string $_viewType
	 */
	public function setViewType($_viewType) {
		$this->_viewType = $_viewType;
	}
}

?>