<?php
include_once 'Model/IModel.php';
/** 
 * @author Boo
 * 
 */
class BaseModel implements IModel {
	/**
	 * 
	 * @var NDB
	 */
	protected $_db;
	/**
	 *
	 * @var String
	 */
	protected $_table;
	/**
	 */
	function __construct() {
		// TODO - Insert your code here
		$this->_db = NDB::getInstance();
		$this->init();
	}
	//get name of table
	public function init(){
		$this->_table = strtolower(get_class($this));
	}
	/**
	 * (non-PHPdoc)
	 *
	 * @see IModel::update()
	 *
	 */
	public function update($data) {
		$id = array_shift($data);
		$data = array_slice($data, 0);
		print_r($data);
		$n = 0;
		$s = count($data);
		$sql = 'update '.$this->_table.' set ';
		foreach ($data as $key => $value) {
			$sql .= $key .' = "'. $value .'"';
			if ($n == $s - 1)
				break;
			$sql .=',';
			$n++;
		}
		$sql .= ' where id = '.$id;
		echo $sql;
		return $this->_db->execute($sql);
	}
	
	/**
	 * (non-PHPdoc)
	 *
	 * @see IModel::getone()
	 *
	 */
	public function getone(array $id) {
		$q = sizeof($id);
		$c = 0;
		$and = ' and ';
		$sql = 'select * from '.$this->_table.' where ';
		foreach ($id as $key => $value) {
			$sql .= $key .' = '. $value;
			if ($c == ($q -1))
				break;
			$sql .= $and;
			$c++;
		}
		return $this->_db->fetchRow($sql);
	}
	/**
	 * (non-PHPdoc)
	 *
	 * @see IModel::insert()
	 *
	 */
	public function insert($data) {
		$n =0;
		$s = count($data);
		$sql = 'insert into '.$this->_table .' ( ';
		foreach ($data as $key => $value) {
			$sql .= $key;
			if ($n == $s - 1) 
				break;
			$sql .= ', ';
			$n++;
		}	
		$n = 0;	
		$sql .= ' ) values ( ';
		foreach ($data as $key => $value) {
			$sql .= '"'.$value.'"';
			if ($n == $s - 1)
				break;
			$sql .= ', ';
			$n++;
		}
		$sql .= ' )';
		echo $sql;
		return $this->_db->execute($sql);
	}
	
	/**
	 * (non-PHPdoc)
	 *
	 * @see IModel::getall()
	 *
	 */
	public function getall() {
		$sql = 'select * from '.$this->_table;
		$result = $this->_db->fetchAll($sql);
		$result['sum'] = count($result);
		return $result;
	}
}

?>