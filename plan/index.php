<?php
include("../db.php");
$active_tab = 'support';
if (!is_loggedin()) {
    header("location:$base_url");
    exit();
}
$user_id = $loggedin_user_id;
?>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $web_name; ?></title>
    <link rel="stylesheet" href="<?php echo $base_url; ?>/assets/css/style.css">
</head>

<body>
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>

    <div id="main-wrapper">
        <?php
            include("../assets/nav/navbar.php");
        ?>
        <div class="page-wrapper">
            <?php
                if(isset($_POST['submit'])){
                    $created_dates = date('Y-m-d H:i:s');
                    $created_date = strtotime(date('Y-m-d H:i:s'));
                    $plansID = $_POST['plan_id'];
                    $referred_by = $_POST['referred_by'];
                    $ref_commision = $_POST['ref_commision'];
                    $plan_price = $_POST['plan_price'];
                    $pin_user = $_POST['pin_user'];
                    $ref_pair = $_POST['ref_pair'];
                    $ref_bv = $_POST['ref_bv'];
                    
                    $countTransRefDate = mysqli_fetch_array(mysqli_query($conn, "SELECT COUNT(`user_id`)'user_id' FROM $transaction_tbl WHERE `user_id`='$referred_by'"));
                    
                    $insert_plan = mysqli_query($conn,"INSERT INTO `users_plan` (`user_id`, `plan_id`, `created_date`) VALUES ('$user_id','$plansID','$created_dates')");
                    $update_account_type = mysqli_query($conn,"UPDATE `users` SET `account_type` = '$plansID' WHERE user_id = '$user_id'");
                    
                    //$income_history_referral = mysqli_query($conn,"INSERT INTO `income_history` (`user_id`, `amount`, `date`, `agent_id`, `description`, `category`) VALUES ('$referred_by','$ref_commision','$created_date','$user_id','credit',2)");
                    //$income_history_pairing = mysqli_query($conn,"INSERT INTO `income_history` (`user_id`, `amount`, `date`, `agent_id`, `description`, `category`) VALUES ('$referred_by','$pair_income','$created_date','$user_id','credit',1)");
                    //$insert_commision = mysqli_query($conn,"UPDATE `balance` SET `wallet` = wallet + $ref_commision, `income` = income + $ref_commision, `total_income` = total_income + $ref_commision WHERE user_id = '$referred_by'");
                    
                    $dataTree = mysqli_fetch_array(mysqli_query($conn, "SELECT `user_id`, `left_id`, `right_id`, `pair_count`, `bv_count` FROM $tree_tbl WHERE `user_id`='$referred_by' ORDER BY `id` DESC LIMIT 1"));
                    referral_income_code_insert($referred_by, $ref_commision, $ref_bv, '2', $user_id);
                    if($dataTree['left_id'] !=0 and $dataTree['right_id'] !=0){
                        if($countTransRefDate['user_id']<=12){
                            pair_income_code_insert($referred_by, $ref_pair, $ref_bv, '1', $user_id);
                        }
                    }    
                    check_user_reward($referred_by, $plan_price);
                    sleep(3);
                    $insert_expenditure = mysqli_query($conn,"UPDATE `balance` SET `wallet` = wallet - $plan_price, `expenditure` = expenditure + $plan_price WHERE user_id = '$user_id'");
                    $update_pin = mysqli_query($conn,"UPDATE `pins` SET `status` = 'active', `activation_date` = '$created_date' WHERE pin_id = '$pin_user'");
                }
            ?>
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 align-self-center">
                        <h4 class="page-title">Plan</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Plan</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

            <div class="al-pricing container-fluid">
                <div class="row">
                    <?php
                        $user_account_type = user_account_type($user_id);
                        $query1 = mysqli_query($conn, "SELECT * FROM $pins_tbl WHERE pin_creator = '$user_id'");

                        $q = mysqli_num_rows($query1);
                        $query = mysqli_query($conn, "SELECT * FROM $plan_tbl ORDER BY id ASC ");
                        //var_dump($query);
                        while ($row = mysqli_fetch_array($query)) {
                            $planID = $row['id'];
                            $plan_name = $row['plan_name'];
                            $price = $row['price'];
                            $commision = ($row['ref_commision'] * $price) / 100;
                            // $pair_income = $commision / 2;
                            // $pair_income = $price * (3.5714/100);
                            $pair_income = 50000;
                            $bonus_bv = $row['bonus_bv'];
                    ?>
                    <div class="col-lg-4">
                        <div class="card al-price-box">
                            <div class="al-pricing-header card-header text-center px-5 pt-5 pb-0">
                                <i style="font-size:200px" class=" icon-info "></i>
                                <h4 class="al-pricing-title my-0 font-weight-bold"><?php echo $plan_name; ?></h4>
                                <h1 class="card-title al-pricing-price mt-2 mb-0"><?php echo $c_symbol; ?><?php echo number_format($price); ?> </h1>
                            </div>
                            <div class="card-body al-pricing-features">
                                <ul class="list-unstyled mb-4">
                                    <strong>
                                    <li>Pair income : <?php echo $c_symbol; ?><?php echo number_format($pair_income); ?></li>
                                    </strong>
                                    <strong>
                                    <li>Direct referral : <?php echo $c_symbol; ?><?php echo number_format($commision); ?></li>
                                    </strong>
                                    <strong>
                                    <li>BONUS BV : <?php echo $bonus_bv; ?> BV<span class="text-muted"></span></li>
                                    </strong>
                                </ul>
                                <?php
                                    if($user_account_type == 0){
                                        if(wallet($user_id) < $price){
                                            echo '<button class="btn btn-primary btn-lg btn-block font-weight-bold" data-toggle="modal" data-target="#formemodales" data-backdrop="static" data-keyboard="false"><i class="fa fa-plus mr-1"></i> Subscribe Now</button>';  
                                        }
                                        else {
                                            if($q == 0) {
                                                echo '<button class="btn btn-primary btn-lg btn-block font-weight-bold" data-toggle="modal" data-target="#formemodal" data-backdrop="static" data-keyboard="false"><i class="fa fa-plus mr-1"></i> Subscribe Now</button>';
                                            }
                                            else {
                                                echo '<button class="btn btn-primary btn-lg btn-block font-weight-bold" data-toggle="modal" data-target="#formemodalsub'.$planID.'" data-backdrop="static" data-keyboard="false"><i class="fa fa-plus mr-1"></i> Subscribe Now</button>';
                                            }
                                        }
                                    }
                                    else {
                                        if($user_account_type == $planID){
                                            echo '<button class="btn btn-success btn-lg btn-block font-weight-bold"><i class="fa fa-check mr-1"></i> Active Plan</button>';
                                        }
                                        else {
                                            if($planID < $user_account_type){
                                                echo '<button class="btn btn-danger btn-lg btn-block font-weight-bold"><i class="fa fa-plus mr-1"></i> Tidak Tersedia</button>';
                                            }
                                            else {
                                                if(wallet($user_id) < $price){
                                                    echo '<button class="btn btn-primary btn-lg btn-block font-weight-bold" data-toggle="modal" data-target="#formemodales" data-backdrop="static" data-keyboard="false"><i class="fa fa-plus mr-1"></i> Upgrade Plan</button>';  
                                                }
                                                else {
                                                    echo '<button class="btn btn-primary btn-lg btn-block font-weight-bold" data-toggle="modal" data-target="#formemodalsub'.$planID.'" data-backdrop="static" data-keyboard="false"><i class="fa fa-plus mr-1"></i> Upgrade Plan</button>';
                                                }
                                            }
                                        }
                                    }
                                ?>
                            </div>
                        </div>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="formemodal">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content animated bounceIn">
                                <div class="modal-header">
                                    <h5 class="modal-title">&nbsp;</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body text-center">
                                    <i style="font-size:100px" class=" icon-info mb-3 "></i>
                                    <p class="mt-3"><strong>You don't have active pin,<br>please buy pin first before subscribe plan</strong></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="formemodales">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content animated bounceIn">
                                <div class="modal-header">
                                    <h5 class="modal-title">&nbsp;</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body text-center">
                                    <i style="font-size:100px" class=" icon-info mb-3 "></i>
                                    <p class="mt-3"><strong>Insufficient Balance,<br>please go to balance menu and click add money</strong></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="formemodalsub<?php echo $planID; ?>">
                      <div class="modal-dialog modal-sm">
                        <div class="modal-content animated bounceIn">
                          <div class="modal-header">
                            <h5 class="modal-title">&nbsp;</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                          </div>
                          <div class="modal-body">
                            <form role="form" action="" method="post">
                                <?php
                                    $query2 = mysqli_query($conn, "SELECT * FROM $pins_tbl WHERE pin_creator = '$user_id' AND status = 'inactive' ORDER BY pin_id ASC LIMIT 1");
                                    $qq = mysqli_fetch_array($query2);
                                ?>
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td class="font-weight-bold">Plan Order</td>
                                            <td class="text-right"><?php echo $plan_name; ?>
                                                <input  name="plan_id" type="hidden" class="form-control" value="<?php echo $row['id']; ?>">
                                                <input  name="plan_price" type="hidden" class="form-control" value="<?php echo $row['price']; ?>">
                                                <input  name="referred_by" type="hidden" class="form-control" value="<?php echo referred_by($user_id); ?>">
                                                <input  name="ref_commision" type="hidden" class="form-control" value="<?php echo $commision; ?>">
                                                <input  name="ref_pair" type="hidden" class="form-control" value="<?php echo $pair_income; ?>">
                                                <input  name="ref_bv" type="hidden" class="form-control" value="<?php echo $bonus_bv; ?>">
                                                <input  name="user_id" type="hidden" class="form-control" value="<?php echo $user_id; ?>">
                                                <input  name="pin_user" type="hidden" class="form-control" value="<?php echo $qq['pin_id']; ?>">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="font-weight-bold">Pricing Plane</td>
                                            <td class="text-right"><?php echo $c_symbol; ?><?php echo number_format($price); ?>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="font-weight-bold">Wallet Balance</td>
                                            <td class="text-right"><?php echo $c_symbol; ?><?php echo number_format(wallet($user_id)); ?>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                            <button type="submit" name="submit" class="btn btn-success btn-lg btn-block font-weight-bold"><i class="fa fa-plus mr-1"></i> Subscribe Plan</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form> 
                          </div>
                        </div>
                      </div>
                    </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </div>
        <?php
            include("../assets/nav/footer.php");
        ?>
</body>

</html>
