<?php 
    require('inc/connect.php');
    require('inc/functions.php');
    require('inc/head.php');
    include('inc/header.php');
    include('inc/nav.php');
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">    
                <h1>Liste des annonces :</h1>
            </div>
        </div>
        <div class="row">
            <?php
                displayAllAnnounces(); // Exécution de la fonction définie plus haut dans 'functions.php'
            ?>
        </div>
    </div>
</section>
<?php require('inc/footer.php'); ?>