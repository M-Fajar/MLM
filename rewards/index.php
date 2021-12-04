<?php
include("../db.php");
if (!is_loggedin()) {
    header("location:$base_url");
    exit();
}
$user_id = $loggedin_user_id;
$active_tab = 'rewards';
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

            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 align-self-center">
                        <h4 class="page-title">Rewards</h4>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Rewards</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container-fluid">
                <div class="col-lg-12">
                <div class="row">
                    <div class="card col-lg-12">
                        <div class="card-body">
                            <h4 class="card-heading">Rewards</h4>
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="rewards">Lvl</th>
                                            <th scope="col" class="rewards">Matching Pair</th>
                                            <th scope="col" class="rewards">Rewards</th>
                                            <th scope="col" class="rewards">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody class="rewards">
                                        <?php echo show_reward_tbl($user_id); ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>

        </div>

    </div>
    <?php
    include("../assets/nav/footer.php");
    ?>
</body>

</html>