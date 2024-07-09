// Controller (Contact.php)

class Contact extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->library('email');
    }

    public function submit() {
        // Set validation rules
        $this->form_validation->set_rules('name', 'Name', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('message', 'Message', 'required');

        if ($this->form_validation->run() == FALSE) {
            // Validation failed, load the form again with errors
            $this->load->view('contact');
        } else {
            // Get form data
            $name = $this->input->post('name');
            $email = $this->input->post('email');
            $message = $this->input->post('message');

            // Prepare email
            $this->email->from($email, $name);
            $this->email->to('mail.taxgupshup.in'); // Replace with your email
            $this->email->subject('Contact Form Submission');
            $this->email->message("Name: $name\nEmail: $email\nMessage:\n$message");

            // Send email
            if ($this->email->send()) {
                // Email sent successfully
                $this->session->set_flashdata('msg', 'Your message has been sent successfully!');
                redirect('contact');
            } else {
                // Failed to send email
                $this->session->set_flashdata('msg', 'Failed to send your message. Please try again.');
                $this->load->view('contact');
            }
        }
    }
}
