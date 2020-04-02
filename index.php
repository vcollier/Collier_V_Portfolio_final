<?php
require_once 'load.php';

if(isset($_GET['filter'])){
    //Filter
    $args = array(
        'tbl'=>'tbl_product',
        'tbl2'=>'tbl_category',
        'tbl3'=>'tbl_category_product',
        'col'=>'product_id',
        'col2'=>'category_id',
        'col3'=>'category_name',
        'filter'=>$_GET['filter']
    );
    $getProducts = getProductsByFilter($args);
}else{
    $product_table = 'tbl_product';
    $getProducts = getAll($product_table);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="initial-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="shortcut icon" type="image/png" href="images/favicon.ico"/>
    

    <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/noframework.waypoints.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js"></script>

    <title>Victoria Collier - Digital Designer</title>
</head>
<body>
    <h1 class="hidden">Victoria Collier</h1>
    <main>
      <a href="index" class="hidden"></a>
        <header class="header">
          <div id="logoCon">
            <img src="images/Logo.png" alt="logo">
            <a href="images/resume.pdf" id="resumeButton">My Resume</a>
                  </div>
          
                  <div id="header-info">
                  <div id="girl-img"></div>

                  <h2>Hey.</h2>
                  <h3> I'm Victoria</h3>
                  <div id="thought"></div>
            
                </div>
                </header>

                  <section id="inspiration">
  
                      <h2 id="deskHead">PROCESS & <br>INSPIRATION</h2>
                      <h2 id="mobHead">PROCESS & INSPIRATION</h2>
                      <p>Upon recieving a project, it's important to me to have a great understanding of what the business is all about. Design is so personal and can change the entire outlook of a brand. </p>

                  </section>

          
                  <!-- ABOUT SECTION -->
          
                  <section id="about">
                      <a href="about" class="hidden"></a>
                        <img id="mePic" src="images/me.jpg" alt="image of Victoria">
                      <h2>ABOUT ME</h2>
                      <p>I think you will find that my background as a designer is a little different from others. I wasn't always the 'creative' type. As a little girl, I was introduced to music and absolutely fell in love. I always thought music would be my future. When I was in grade 11, my tech teacher, the wonderful Candice Marzano, noticed something about me that I didn't. My abilities in video production! This became such a passion of mine and I constantly found myself thinking about my next project. Later, in this same highschool classroom, I discovered that I actually loved graphic design. This ultimitely led me to Interactive Media Design at Fanshawe College. Fanshawe has only made my love for design grow.</p>
                  </section>

                  <section id="experience">
                        <h2 id="exptext">EXPERIENCE</h2>
                        <section id="icons">
                          <h3 class="hidden">Experience Icons</h3>
                        <div id="software1"></div>
                        <div id="software2"></div>
                        <div id="software3"></div>
                        <div id="software4"></div>
                        <div id="software5"></div>
                        </section>
                    </section>
          

        <div class="items-section">
          <h2 id="port-title">PORTFOLIO</h2>
          <h3>Here's some information on individual and group projects I have done.
</h3>
    <?php while($row = $getProducts->fetch(PDO::FETCH_ASSOC)):?>
        
      <div class="product-item" id="product-item">
            <img class="product-image" src="images/<?php echo $row['product_image']; ?>" alt="<?php echo $row['product_name'];?>">
            <div id="textCon">
            <h2 class="text"><?php echo $row ['product_type'];?></h2>
            <h4 class="text"><?php echo $row ['product_name'];?></h4>
            <a href="details.php?id=<?php echo $row['product_id'];?>" class="text" id="moreButton">Read More</a>
            </div>
        </div>
      
    <?php endwhile;?>    
    </div>


        <div id="demoReel">
          <h3>DEMO REEL</h3>
          <h4>A skill I thought would be impossible for me to obtain, I discovered something I really enjoy doing in 3D design. Checkout my stuff!</h4>
          <video controls>
            <source src="video/demo_reel.mp4" type="video/mp4">
        </video>
        </div>
        
        <section id="contact">
            <a href="contact" class="hidden"></a>
            <h3>CONTACT</h3>
            <h4>Interested in my stuff? Give me a shout so we can chat about what I can do for you.</h4>
            <form action="">
                <div>
                <input type="text" name="name" placeholder="Full Name">
              </div>
              <div>
              <input type="email" name="usermail" placeholder="Email" required>
            </div>
            <div>
              <textarea name="message" id="user-message" cols="30" rows="10" placeholder="Message"></textarea>
            </div>
        
            <input type="submit" value="Send!" class="submit-button">
      
          </form>
          
        </section>
    </main>
    <footer id="mainFooter">
        <h2 class="hidden">Footer</h2>

        <div id="footerLogo">
                <img src="images/Logo.png" alt="logo">

        </div>

        <nav id="footerNav">
            <h2 class="hidden">Footer Navigation</h2>
                <ul>
                  <li><a href="images/resume.pdf">My Resume</a></li>
                    <li><a href="#index">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#product-item">Portfolio</a></li>
                    <li><a href="#contact">Contact</a></li>
                </ul>
            </nav>
            <div class="social-media">
             <a href="https://www.instagram.com/toriacollier_/"> <img src="images/instagram.png" class="icons" alt=""> </a>
              <a href="https://www.linkedin.com/in/victoria-collier-292b8614b/"><img src="images/linkedin.png" class="icons" alt=""></a>
             <a href="https://www.facebook.com/victoria.collier.9083"> <img src="images/facebook.png" class="icons" alt=""> </a>
            </div>
    </footer>
    <script src="js/main.js"></script>
    <script src="js/menu.js"></script>
  
</body>
</html>