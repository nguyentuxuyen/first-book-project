<?php
class NDB {
	/**
	 *
	 *
	 *
	 *
	 * Database host name ...
	 *
	 * @var String
	 */
	private $_host = Config::HOST;
	/**
	 *
	 *
	 *
	 *
	 * Database username ...
	 *
	 * @var String
	 */
	private $_username = Config::USERNAME;
	/**
	 *
	 *
	 *
	 *
	 * Database password ...
	 *
	 * @var String
	 */
	private $_pass = Config::PASSWORD;
	/**
	 *
	 *
	 *
	 *
	 * Database Name ...
	 *
	 * @var String
	 */
	private $_db = Config::DATABSE;
	/**
	 * DB fetch Mod
	 */
	private $_fetchMod = PDO::FETCH_ASSOC;
	/**
	 * DB optional
	 *
	 * @var unknown_type
	 */
	private $_option = array (
			PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8" 
	);
	/**
	 * NDB Instance
	 *
	 * @var unknown_type
	 */
	private static $_ndb;
	/**
	 * DB Object
	 *
	 * @var unknown_type
	 */
	public $dbo;
	private function __construct() {
		$str = 'mysql:host=' . $this->_host . ';dbname=' . $this->_db;
		$this->dbo = new PDO ( $str, $this->_username, $this->_pass, $this->_option );
	}
	public static function getInstance() {
		if (! self::$_ndb) {
			self::$_ndb = new NDB ();
		}
		return self::$_ndb;
	}
	/**
	 *
	 *
	 *
	 *
	 * Return Array of result of query ...
	 *
	 * @param
	 *        	$query
	 */
	public function fetchAll($query) {
		$stmt = $this->dbo->query ( $query ) or die ( "Can't connect to database!" );
		$result = $stmt->fetchAll ( $this->_fetchMod );
		return $result;
	}
	/**
	 *
	 *
	 *
	 *
	 * Query one row ...
	 *
	 * @param unknown_type $query        	
	 * @return a first row of query.
	 */
	public function fetchRow($query) {
		$array = $this->fetchAll ( $query );
		if (count ( $array ) > 0)
			return $array [0];
		return null;
	}
	/**
	 *
	 *
	 *
	 *
	 * Execute SQL statement.
	 *
	 * @param unknown_type $statement        	
	 * @return number of row inserted or updated.
	 */
	public function execute($statement) {
		return $this->dbo->exec ( $statement );
	}
	/**
	 *
	 *
	 *
	 *
	 * Execute prepare statement in option ...
	 *
	 * @param unknown_type $prepare        	
	 * @param array $option        	
	 * @return true/false is Success or fail.
	 */
	public function executeArray($prepare, array $option) {
		$sttm = $this->dbo->prepare ( $prepare );
		return $sttm->execute ( $option );
	}
	/**
	 *
	 *
	 *
	 *
	 * Set fetch for DB FetchMod ...
	 *
	 * @param
	 *        	$fetchMod
	 */
	public function setfetchMod($fetchMod) {
		$this->_fetchMod = $fetchMod;
	}
}