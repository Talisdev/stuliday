<?php
    require('../inc/connect.php');
    require('../inc/functions.php');
    $user_ID = $_SESSION['id'];
    $annonce_ID = form_security($_POST['annonce']);
    $verif_req = "SELECT * FROM annonces WHERE author_article = '$user_ID' AND id = '$annonce_ID'";
    if( $res = $mysqli->query($verif_req) ){
        $del_req = "DELETE FROM annonces WHERE id = ".$annonce_ID;
        if($mysqli->query($del_req) === TRUE){
            echo "ok";
        }else{
            echo "KO";
        }     
    }
?>