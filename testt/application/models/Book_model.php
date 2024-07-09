<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Book_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    public function insert_book($data) {
        return $this->db->insert('books', $data);
    }

    public function get_books() {
        $query = $this->db->get('books');
        return $query->result();
    }

    public function get_book_by_id($book_id) {
        $this->db->where('id', $book_id);
        $query = $this->db->get('books');
        return $query->row();
    }
    
    public function store_transaction($data) {
        $this->db->insert('transactions', $data);
    }
    

} 
?>
