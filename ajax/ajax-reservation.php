<?php
    require('../inc/connect.php');
    $resultat_reservation = FALSE;
    $user_id = $_POST['user'];
    $annonce_id = $_POST['annonce'];
    $inputSelectPlaces = $_POST['nbr'];
    $add_reservation_query = "INSERT INTO `reservations`(
        `id_user`,
        `nbr_places`,
        `id_annonce`) 
        VALUES (
            '$user_id',
            '$inputSelectPlaces',
            '$annonce_id'
    )";
    if( $res = $mysqli->query($add_reservation_query) ){
        // Mise à jour du nombre de places de l'annonce
        $get_places_query = "SELECT available_article FROM annonces WHERE id =".$annonce_id;
        if($res = $mysqli->query($get_places_query)){
            $row = $res->fetch_assoc();
            $nbr_restant = $row['available_article'] - $inputSelectPlaces;
        }
        $update_nbr_places = "UPDATE annonces
        SET available_article = $nbr_restant
        WHERE id = ".$annonce_id;
        // EXECUTION DE LA REQUETE
        if( $mysqli->query($update_nbr_places) ){
            echo 'ok';
        }
    }
?>