<?php
/** 
 * @author Boo
 * 
 */
interface IModel {
	/**
	 * get all entity
	 */
	public function getall();
	/**
	 * get by id
	 * @param array $id
	 */
	public function getone(array $id);
	/**
	 * insert one row
	 */
	public function insert($data);
	/**
	 * edit one entity
	 */
	public function update($data);
}

?>
