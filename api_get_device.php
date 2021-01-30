<?php
  header('Access-Control-Allow-Origin: *');  
error_reporting(0);
   $device = $_SERVER['HTTP_USER_AGENT'].$_SERVER['LOCAL_ADDR'].$_SERVER['LOCAL_PORT'].$_SERVER['REMOTE_ADDR'];