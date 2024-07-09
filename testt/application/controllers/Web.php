<?php
defined('BASEPATH') OR exit('No direct script access allowed');

// Include Razorpay PHP library
require APPPATH . 'views/razorpay-php/Razorpay.php';
use Razorpay\Api\Api;

class Web extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Book_model'); // Load the model
        $this->load->library('form_validation'); // Load form validation library
        $this->load->library('session'); // Load session library
        $this->load->helper('url'); // Load URL helper
    }

    public function index() {
        $data['books'] = $this->Book_model->get_books();
        $this->load->view('index', $data);
    }

    public function about() {
        $this->load->view('about');
    }

    public function flyers() {
        $this->load->view('flyers');
    }

    public function gst() {
        $this->load->view('gstregistration');
    }

    public function company() {
        $this->load->view('company-registration');
    }

    public function trademark() {
        $this->load->view('trademark-registration');
    }

    public function import() {
        $this->load->view('import-export');
    }

    public function gstreturn(){
        $this->load->view('gst-return');
    }

    public function tdsreturn(){
        $this->load->view('tds-return');
    }

    public function ictreturn(){
        $this->load->view('ict-return');
    }

    public function msmeregister(){
        $this->load->view('msme-registration');
    }

    public function contact() {
        $this->load->view('contact');
    }

    public function addbook() {
        $this->load->view('books-add');
    }

    public function saveBook() {
        $this->form_validation->set_rules('book_name', 'Book Name', 'required');
        $this->form_validation->set_rules('about_books', 'About Books', 'required');
        $this->form_validation->set_rules('book_cost', 'Books cost', 'required');
        $this->form_validation->set_rules('book_heading', 'Book Heading', 'required');
        $this->form_validation->set_rules('heading_content', 'Heading Content', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('books-add');
        } else {
            $data = array(
                'book_name' => $this->input->post('book_name'),
                'about_books' => $this->input->post('about_books'),
                'book_cost'=> $this->input->post('book_cost'),
                'book_heading' => $this->input->post('book_heading'),
                'heading_content' => $this->input->post('heading_content')
            );

            // Handling file uploads
            if (!empty($_FILES['book_image_1']['name'])) {
                $data['book_image_1'] = $this->upload_image('book_image_1');
            }
            if (!empty($_FILES['book_image_2']['name'])) {
                $data['book_image_2'] = $this->upload_image('book_image_2');
            }
            if (!empty($_FILES['book_image_3']['name'])) {
                $data['book_image_3'] = $this->upload_image('book_image_3');
            }

            $this->Book_model->insert_book($data);
            $this->session->set_flashdata('success', 'Book added successfully');
            redirect('web/addbook');
        }
    }

    private function upload_image($fieldname) {
        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = 2048;
        $this->load->library('upload', $config);

        if ($this->upload->do_upload($fieldname)) {
            return $this->upload->data('file_name');
        } else {
            return null;
        }
    }

    public function books() {
        $data['books'] = $this->Book_model->get_books();
        $this->load->view('books', $data);
    }

    public function buy($book_id) {
        $book = $this->Book_model->get_book_by_id($book_id);
        if (!$book) {
            show_404();
        }
        
        // Load Razorpay API
        $api_key = 'rzp_live_HGCsLV5PjSYo8F'; // Replace with your actual Razorpay key
        $api_secret = 'TDUJiOvh2TuoyYuLwHeYqhim'; // Replace with your actual Razorpay secret key
        $api = new Api($api_key, $api_secret);

        // Create an order in Razorpay
        $order_data = [
            'receipt' => 'order_rcptid_' . $book->id,
            'amount' => $book->book_cost * 100, // Amount in paise
            'currency' => 'INR'
        ];
        $razorpay_order = $api->order->create($order_data);

        $data = [
            'book' => $book,
            'order_id' => $razorpay_order['id'],
            'amount' => $book->book_cost * 100,
            'api_key' => $api_key
        ];
        $this->load->view('buy_book', $data);
    }

    public function payment_success() {
        $data = $this->input->post();
    
        // Verify payment signature
        $api_key = 'rzp_live_HGCsLV5PjSYo8F'; // Replace with your actual Razorpay key
        $api_secret = 'TDUJiOvh2TuoyYuLwHeYqhim'; // Replace with your actual Razorpay secret key
        $api = new Api($api_key, $api_secret);
    
        try {
            $attributes = array(
                'razorpay_order_id' => $data['razorpay_order_id'],
                'razorpay_payment_id' => $data['razorpay_payment_id'],
                'razorpay_signature' => $data['razorpay_signature']
            );
    
            $api->utility->verifyPaymentSignature($attributes);
    
            // Payment verified, store transaction details
            $transaction_data = [
                'transaction_id' => $data['razorpay_payment_id'],
                'name' => $data['name'],
                'email' => $data['email'],
                'contact' => $data['contact'],
                'address' => $data['address'],
                'book_id' => $data['book_id'],
                'amount' => $data['amount'],
                'book_name' => $data['book_name'],
                'date'=>date('Y-m-d H:i:s')
            ];
            $this->Book_model->store_transaction($transaction_data);
            $this->session->set_flashdata('success', 'Payment successful and transaction details stored!');
        } catch (SignatureVerificationError $e) {
            $this->session->set_flashdata('error', 'Payment verification failed!');
        }
        
        redirect('web/books');
    }
    
    public function process_order() {
        $book_id = $this->input->post('book_id');
        $book = $this->Book_model->get_book_by_id($book_id);
    
        if (!$book) {
            show_404();
        }
    
        // Load Razorpay API
        $api_key = 'rzp_live_HGCsLV5PjSYo8F'; // Replace with your actual Razorpay key
        $api_secret = 'TDUJiOvh2TuoyYuLwHeYqhim'; // Replace with your actual Razorpay secret key
        $api = new Api($api_key, $api_secret);
    
        // Create an order in Razorpay
        $order_data = [
            'receipt' => 'order_rcptid_' . $book->id,
            'amount' => $book->book_cost * 100, // Amount in paise
            'currency' => 'INR'
        ];
        $razorpay_order = $api->order->create($order_data);
    
        $data = [
            'book' => $book,
            'order_id' => $razorpay_order['id'],
            'amount' => $book->book_cost * 100,
            'api_key' => $api_key,
            'name' => $this->input->post('name'),
            'email' => $this->input->post('email'),
            'contact' => $this->input->post('contact'),
            'address' => $this->input->post('address')
        ];
    
        $this->load->view('buy_book_payment', $data);
    }
    
    // Add more methods as needed...
}
?>
