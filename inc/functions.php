<?php
/* HELPERS */
function form_security($string){
    if(  ctype_digit($string)      ){
        // SI LE CHAMP EST NUMERIQUE
        $string = intval($string);
    }else{
        global $mysqli;
        // SI CEST UNE CHAINE DE CARACTERES OU AUTRE
        $string = mysqli_real_escape_string( $mysqli, $string);
        $string = addslashes($string); 
    }
    return $string;
}
function valid_email($string) {
    return (!preg_match("/^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/ix", $string)) ? FALSE : TRUE;
}


function short_text($text, $max = 120, $append = ' &hellip;') {
	if (strlen($text) <= $max) return $text;
	$return = substr($text, 0, $max);
	if (strpos($text, ' ') === false) return $return . $append;
	return preg_replace('/\w+$/', '', $return) . $append;
}
function random_images($h, $w){
   echo 'https://loremflickr.com/'.$h.'/'.$w.'/bordeaux';
}
function displayAllAnnounces(){
    global $mysqli;
    $res = $mysqli->query("SELECT * FROM annonces WHERE available_article > 0");
    while($row = $res->fetch_assoc()){
    ?>
        <div class="annonce col-md-4">
            <div class="card p-3">
                <h3><?php echo $row['titre_article']; ?></h3>
                <p><?php echo short_text($row['contenu_article'], 150); ?></p>
                <a href="single-annonce.php?id=<?php echo $row['id']; ?>" class="btn btn-primary">Voir l'annonce en détail</a>
            </div>    
        </div>
    <?php
    }
}
function displayAllAnnouncesByUser($user_id){
    global $mysqli;
    $res = $mysqli->query("SELECT * FROM annonces WHERE author_article = $user_id");
    ?>
    <table class="table">
        <thead class="thead-light">
            <tr>
            <th scope="col">#</th>
            <th scope="col">Titre</th>
            <th scope="col">Date de début</th>
            <th scope="col">Nombre de places restantes</th>
            <th scope="col">Modifier</th>
            <th scope="col">Supprimer</th>
            </tr>
        </thead>
        <tbody>
            <?php
            while($row = $res->fetch_assoc()){
            ?>
                <tr id="row-<?php echo $row['id']; ?>" data-id="<?php echo $row['id']; ?>">
                <th scope="row"><?php echo $row['id'] ; ?></th>
                <td><?php echo $row['titre_article'] ; ?></td>
                <td><?php echo $row['start_date_article'] ; ?></td>
                <td><?php echo $row['available_article'] ; ?></td>
                <td><span>Modifier</span></td>
                <td><span class="supprimer-annonce" id="delete-<?php echo $row['id']; ?>" value="<?php echo $row['id']; ?>">Supprimer</span></td>
                </tr>
            <?php
            }
            ?>
        </tbody>
    </table>
    <?php
}

function displaySingleAnnounce($annonce_id, $user_id){
    global $mysqli;
    $res = $mysqli->query("SELECT * FROM annonces 
    LEFT JOIN categories 
    ON annonces.categorie_article = categories.id 
    WHERE annonces.id = '$annonce_id' LIMIT 1");
    $row = $res->fetch_assoc();
    $available_article = $row['available_article'];
    ?>
        <div class="annonce">
            <h2><?php echo $row['titre_article']; ?></h2>
            <p><?php echo $row['contenu_article']; ?></p>
            <p>Catégorie : <?php echo $row['titre_categorie']; ?></p>
            <p>Prix: <?php echo $row['price_article']; ?>€</p>
            <p>Adresse : <?php echo $row['adress_article']; ?></p>
            <p>Code Postal : <?php echo $row['postal_article']; ?></p>
            <p>Ville : <?php echo $row['city_article']; ?></p>
            <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modal-reservation">Réserver</a>
        </div>
        <div id="modal-reservation" class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Réserver mon séjour</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="reservation.php" method="POST">
                        <p>Nombre de places restantes: <?php echo $row['available_article']; ?></p>
                        <div class="input-group">
                            <select class="custom-select" name="inputSelectPlaces" id="inputSelectPlaces">
                                <option selected>Nombre de places à réserver</option>
                                <?php
                                    for($i = 1; $i <= $available_article; $i++ ){
                                        echo '<option value="'.$i.'">'.$i.' places</option>';
                                    }
                                ?>
                            </select>
                        </div>
                        <input type="hidden" name="annonceID" value="<?php echo $annonce_id; ?>">
                        <input type="hidden" name="userID" value="<?php echo $user_id; ?>">
                        <input type="submit" name="form-reservation" value="Réservation PHP">
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                    <button type="button" id="AjaxReservation" class="btn btn-primary">Réservation AJAX</button>
                </div>
                </div>
            </div>
        </div>
        
        </div>
    <?php
}
?>