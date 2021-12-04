<?php

$lang = $_GET['lang'];

session_start();
//clear session
unset($_SESSION['lang']);

if ($lang == 'en') {
  //set session
  $_SESSION['lang'] = 'en';
} else if ($lang == 'in') {
  $_SESSION['lang'] = 'in';
}

header("location: " . $base_url . "/admin/dashboard/");
exit();

?>
