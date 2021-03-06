<?php
require_once 'load.php';

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $tbl = 'tbl_product';
    $col = 'product_id';
    $getProduct = getSingleProduct($tbl, $col, $id);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/details.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="shortcut icon" type="image/png" href="images/favicon.ico"/>
    
    <title>Project Details</title>
</head>
<body>
<div id="logoCon">
            <a href="index.php"><img src="images/Logo.png" alt="logo" id="logoDet"></a>
                  </div>
<div id="contentCon">
    <?php if(!is_string($getProduct)):?>
        <?php while($row = $getProduct->fetch(PDO::FETCH_ASSOC)):?>
            <h2 id="name"><?php echo $row['product_name'];?></h2>
            <h4 id="collab"><?php echo $row['product_collab'];?></h4>
            <img src="images/<?php echo $row['product_image_detail']; ?>" alt="<?php echo $row['product_name'] ?>" id="detImg"/>
            <p class="desc"><br> <?php echo $row['product_desc'];?></p>
            <div id="video"><?php echo $row['product_video'];?></div>
            <p class="desc"><br> <?php echo $row['product_text_detail'];?></p>
            <p class="desc"><br> <?php echo $row['product_process'];?></p>
            <p class="desc"><br> <?php echo $row['product_outcome'];?></p>

            <a href="index.php" id="backButton">Go Back</a>
        <?php endwhile;?>
    <?php endif;?>
    </div>

    <footer id="mainFooter">
        <h2 class="hidden">Footer</h2>

        <div id="footerLogo">
                <img src="images/Logo.png" alt="logo">

        </div>

        <nav id="footerNav">
            <h2 class="hidden">Footer Navigation</h2>
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="index.php">About</a></li>
                    <li><a href="index.php">Portfolio</a></li>
                    <li><a href="index.php">Contact</a></li>
                </ul>
            </nav>
            <div class="social-media">
             <a href="https://www.instagram.com/toriacollier_/"> <img src="images/instagram.png" class="icons" alt=""> </a>
              <a href="https://www.linkedin.com/in/victoria-collier-292b8614b/"><img src="images/linkedin.png" class="icons" alt=""></a>
             <a href="https://www.facebook.com/victoria.collier.9083"> <img src="images/facebook.png" class="icons" alt=""> </a>
            </div>
    </footer>
</body>
</html>