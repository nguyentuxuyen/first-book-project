<?php
/** 
 * @author Boo
 * 
 */
interface IController {
	/**
	 * function run
	 */
	public function run();
	/**
	 * function index
	 */
	public function indexAction();
	/**
	 * get data in url
	 */
	public function getdata();
	/**
	 * function get all entity
	 */
	public function getallentityAction();
	/**
	 * function get a entity
	 */
	public function getentitybyidAction();
	/**
	 * function delete a entity
	 */
	public function deleteentityAction();
	/**
	 * function insert on update a entity
	 */
	public function getioruentityAction();
	/**
	 * function call block
	 * @param string $blockname
	 */
	public function block($blockname);
}

?>