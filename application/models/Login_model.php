<?php
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Login_model extends CI_Model {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->library('bcrypt');
		$this->table = "user";
	}
	
	public function checkDuplicate($email)
	{
		$this->db->select('email');
		$this->db->from('user');
		$this->db->like('email', $email);
		return $this->db->count_all_results();
	}

	public function checkLogin($email, $password) {
        $this->db->where('email', $email);
        $this->db->where('password', $password);
        $query = $this->db->get('user');
        return $query->num_rows();
    }
	
	public function insertUser($data)
	{
		if($this->db->insert('user', $data))
		{
			return  $this->db->insert_id();
		}
		else
		{
			return false;
		}
	}

	function login_check($login, $password)
	{
		$this->db->select('*');
		$this->db->from('user');
		$this->db->where('email', $login);
        $this->db->where('password', md5($password));
		$this->db->limit(1);
		$query = $this->db->get();

		if($query->num_rows() == 1){
		   return true;
		}else{
		   return false;
		}
	} 


	public function read_user_information($username) {

		$condition = "email =" . "'" . $username . "'";
		$this->db->select('*');
		$this->db->from('user');
		$this->db->where($condition);
		$this->db->limit(1);
		$query = $this->db->get();
		if ($query->num_rows() == 1) {
		return $query->result();
		} else {
		return false;
		}
	}
}	