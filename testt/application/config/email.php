<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$config['protocol'] = 'smtp';
$config['smtp_host'] = 'mail.taxgupshup.in';
$config['smtp_port'] = 587;
$config['smtp_user'] = 'mail.taxgupshup.in';
$config['smtp_pass'] = 'taxgupshup@123';
$config['mailtype'] = 'text';
$config['charset']  = 'utf-8';
$config['newline']  = "\r\n";

$this->email->initialize($config);
