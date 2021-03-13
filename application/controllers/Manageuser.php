<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manageuser extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
    }

    public function index(){
        $this->load->view('manageuser/manageuser');
    }

    public function manageuser(){
        $this->load->view('manageuser/manageuser');
    }
}