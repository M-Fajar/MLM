<?php

include("../db.php");

if (!isset($_COOKIE['registered_user_id'])) {
    header("location:$base_url");
    exit();
}

$user_id = $_COOKIE['registered_user_id'];
if (!is_user_id($user_id)) {
   echo "Registration failed";
    exit();
}
$user_name = user_name($user_id);
$name = user_fullname($user_id);
$email = user_email($user_id);
$date = user_registration_date($user_id);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title><?php echo $web_name; ?></title>
    <link rel="stylesheet" href="<?php echo $base_url; ?>/payment/css/payment.css">
</head>

<body>

    <div class="container">
        <div class="page_content">
            <img src="<?php echo $base_url; ?>/assets/images/web/success.png" alt="">
            <h2>Registration Successfull</h2>
            <div><b>User Id: </b>
                <p><?php echo $user_id; ?></p>
            </div>
            <div><b>User Name: </b>
                <p><?php echo $user_name; ?></p>
            </div>
            <div><b>Name: </b>
                <p><?php echo $name; ?></p>
            </div>
            <div><b>Email: </b>
                <p><?php echo $email; ?></p>
            </div>
            <div><b>Date: </b>
                <p><?php echo $date; ?>3</p>
            </div>
            <p>Thanks for becoming a member of binary mlm</p>
            <a class="btn" href="<?php echo $base_url; ?>">Home</a>
        </div>
    </div>

</body>

</html>