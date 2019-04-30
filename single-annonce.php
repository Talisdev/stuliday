<?php 
    $id = $_GET['id'];
    require('inc/connect.php');
    require('inc/functions.php');
    require('inc/head.php');
    include('inc/nav.php'); 
    include('inc/single-header.php');
?>
<section class="pt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <?php
                    displaySingleAnnounce($id); 
                    // Exécution de la fonction avec récupération de l'ID de l'article via GET et l'URL
                ?>
            </div>
            <div class="col-md-4">
                <img src="<?php  random_images(600, 400); ?>" alt="">
            </div>
        </div>
    </div>
</section>

    











<?php require('inc/footer.php'); ?>