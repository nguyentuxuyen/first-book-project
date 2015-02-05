<?php
class Config{
	//datebase
	const DATABSE = 'book';
	const HOST = 'localhost';
	const USERNAME = 'root';
	const PASSWORD = '';
	//controller
	const CONTROLLER_FOLDER = 'Controller';
	const CONTROLLER_DEFAULT = 'Index';
	const CONTROLLER_PARRAM_NAME = '_controller';
	//model
	const MODEL_FOLDER = 'Model';
	//action
	const ACTION_DEFAULT = 'index';
	const ACTION_PARRAM_NAME = '_action';
	//url
	const BASEURL = 'http://localhost/BookManage/';
	const SLASH = '/';
	//layout
	const LAYOUT_DEFAULT = 'default';
	const LAYOUT_FOLDER = 'layout';
	//view
	const VIEW_FOLDER = 'view';
	const VIEW_DEFAULT_CONTROLLER = '_default';
	const VIEW_PARRAM_NAME = '_view';
	const VIEW_DEFAULT = 'html';
	//other
	const RESULT_SUCCESS  = "success";
	const RESULT_FAIL  = "fail";
	const BLOCK_PATH = "block";
}
