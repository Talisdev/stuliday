<?php
/* HELPERS */
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
    $res = $mysqli->query("SELECT * FROM annonces");
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
function displaySingleAnnounce($x){
    global $mysqli;
    $res = $mysqli->query("SELECT * FROM annonces WHERE id = '$x' LIMIT 1");
    $row = $res->fetch_assoc();
    ?>
        <div class="annonce">
            <h2><?php echo $row['titre_article']; ?></h2>
            <p><?php echo $row['contenu_article']; ?></p>
            <p>Prix: <?php echo $row['price_article']; ?>€</p>
            <p>Adresse : <?php echo $row['adress_article']; ?></p>
            <p>Code Postal : <?php echo $row['postal_article']; ?></p>
            <p>Ville : <?php echo $row['city_article']; ?></p>
        </div>
    <?php
}
?>