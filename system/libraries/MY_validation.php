<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
include_once 'Form_validation.php'; 

class CI_MY_validation extends CI_Form_validation{
     
     public function __construct()
       {
        parent::__construct();
    }                                
                         
    function valid_url_format($str){
        $pattern = "|^http(s)?://[a-z0-9-]+(.[a-z0-9-]+)*(:[0-9]+)?(/.*)?$|i";
        if (!preg_match($pattern, $str)){
            $this->set_message('valid_url_format', 'La URL que ingresaste no contiene el formato correcto.');
            return FALSE;
        }
 
        return TRUE;
    }       
 
    function url_exists($url){                                   
        $url_data = parse_url($url); 
        if(!fsockopen($url_data['host'], isset($url_data['port']) ? $url_data['port'] : 80)){
            $this->set_message('url_exists', 'La URL que ingresaste no es accesible.');
            return FALSE;
        }               
         
        return TRUE;
    }  
}