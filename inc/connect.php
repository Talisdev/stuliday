<?php
    session_start();
    if( isset($_GET['logout']) ){
        session_destroy();
        header('Location: login.php');
    }
    if( empty($_SESSION) && $page != "login" ){
        header('Location: login.php');
    }
         $bdd_url = "localhost";
        $bdd_user = "root";
    $bdd_password = "";
         $bdd_sql = "stuliday";
    $mysqli = new mysqli($bdd_url, $bdd_user, $bdd_password, $bdd_sql);
    if ($mysqli->connect_errno) {
        echo "Echec lors de la connexion à MySQL : " . $mysqli->connect_error;
    }
    $mysqli->set_charset("utf8");
?>