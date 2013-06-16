<?php
class Customer extends CI_Controller {
	
	function __construct()
	{
		parent::__construct();
                $this->load->helper('url');
		$this->load->database();
		$this->is_logged_in();
	}
	function index()
	{
		$this->load->view('header');
	}
	function is_logged_in()
	{
		$is_logged_in = $this->session->userdata('user_id');
		if(!isset($is_logged_in) || $is_logged_in != true)
		{
			//echo 'You don\'t have permission to access this page. <a href="login">Login</a>';	
			//die();		
			redirect('login/index');
		}		
	}
        
	function add()
	{
				$this->load->model('datamodel');
				$data['value'] = 0;
				if(isset($_POST['submit'])){
					
					$data['details'] = $this->datamodel->addcustomer();
					$data['value'] = 1;
				}
					$data['name'] = $this->datamodel->getzone();
				$data['main_content'] = 'addcustomer';
				$this->load->view('master', $data);
		
	}
        function edit($subtype1){
				$this->load->model('datamodel');$data['value'] = 0;
				if(isset($_POST['submit'])){
					$this->datamodel->editcustomer($subtype1);$data['value'] = 1;
				}
				$data['name'] = $this->datamodel->getcustomerinfofor_edit($subtype1);
				$data['main_content'] = 'editcustomer';
					$this->load->view('master', $data);
			

        }
        function viewcustomerdetailsinfo($subtype1)
	{
				$this->load->model('datamodel');
				$data['name'] = $this->datamodel->viewcustomerdetailsinfo($subtype1);
				$data['main_content'] = 'viewcustomerdetailsinfo';
				$this->load->view('master', $data);
	}
        
        function view() {
		
		//load pagination class
		$this->load->library('pagination');
		$this->load->model('datamodel');

		$config['base_url'] = base_url().'index.php/customer/view/';
		$config['total_rows'] = $this->datamodel->getallcustomer();
		$config['per_page'] = '20';
		$config['full_tag_open'] = '<p>';
		$config['full_tag_close'] = '</p>';
		$this->pagination->initialize($config);
		
		//load the model and get results
		$data['name'] = $this->datamodel->get_customer($config['per_page'],$this->uri->segment(3));
		// load the HTML Table Class
		/*$this->load->library('table');
                $tmpl = array ( 'table_open'  => '<table border="1" cellpadding="2" cellspacing="1" id="rounded-corner">');

                $this->table->set_template($tmpl); 
		$this->table->set_heading('Account Name', 'Main Code','Sub Code','Type');*/
		
		// load the view
		$data['main_content'] = 'viewallcustomer';
		$this->load->view('master', $data);

	}
        function due(){
				$this->load->model('datamodel');$data['value'] = 0;
				
				$data['name'] = $this->datamodel->getallsubscriber();
				$data['main_content'] = 'subscriberdue';
					$this->load->view('master', $data);
			

        }
        function fetchdue(){
            $c_id = $this->input->post('c_id');
            $this->db->where('c_id', $c_id);
            $query = $this->db->get('payment');
            if($query->num_rows >= 1){
                $name = $query->row();
                echo "DUE: ";
                echo $name->due_amount;
            }
            else{
                echo "DUE: ";
                echo '0';
            }
            
        }
        function subscriber_report(){
				$this->load->model('datamodel');$data['value'] = 0;
				if(isset($_POST['submit'])){
					
					$data['details'] = $this->datamodel->fetch_payment_history();
					$data['value'] = 1;
				}
				$data['name'] = $this->datamodel->getallsubscriber();
				$data['main_content'] = 'subscriber_payment_report';
					$this->load->view('master', $data);
			

        }
        
        
        
        
	
}		
		
?>