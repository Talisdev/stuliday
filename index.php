<?php
    $page = "index";
    require('inc/connect.php');
    require('inc/head.php');
    include('inc/header.php'); 
    include('inc/nav.php'); 
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
            <form action="annonces.php" method="POST">
                <?php  
    $get_villes = "SELECT * FROM cities";
    $response = array();
    if($res = $mysqli->query($get_villes)){
        ?>
        <select name="select-city" id="select-city">
        <?php
        while($row = $res->fetch_assoc()){
            echo '<option value="'.$row['id'].'">'.$row['nom_cities'].'</option>';
        }
        ?>
</select>
<input type="submit" name="submit-city" class="btn btn-primary">Voir les annonces</a>
              
        <?php
    }
    ?>
<div id="mapid"></div>
            </div>
        </div>
    </div>
</section>
<?php require('inc/footer.php'); ?>