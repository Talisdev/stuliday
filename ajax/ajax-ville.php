<?php
    require('../inc/connect.php');
    require('../inc/functions.php');
    $get_villes = "SELECT * FROM cities";
    $response = array();
    if($res = $mysqli->query($get_villes)){
        while($row = $res->fetch_assoc()){
            $response[$row['id']] = array($row['nom_cities'], $row['lat_cities'], $row['long_cities'],$row['nbr_cities']);
        }
    }
    echo json_encode($response);
?>