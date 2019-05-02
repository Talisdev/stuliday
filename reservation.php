<?php 
    require('inc/connect.php');
    $resultat_reservation = FALSE;
    if( $_POST['form-reservation'] ){
        $user_id = $_POST['userID'];
        $annonce_id = $_POST['annonceID'];
        $inputSelectPlaces = $_POST['inputSelectPlaces'];
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
                $resultat_reservation = TRUE;
            }
        }
    }
    require('inc/functions.php');
    require('inc/head.php');
    include('inc/nav.php'); 
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <?php
                    if( $resultat_reservation == TRUE ){
                        echo '<div class="alert alert-success">Votre réservation a bien été prise en compte!</div>';
                    }else{
                        echo '<div class="alert alert-warning">Erreur d\'enregistrement!</div>';
                    }
                ?>
            </div>
        </div>
    </div>
</section>
<?php 
    include('inc/footer.php'); 
?>