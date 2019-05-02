<?php 
    
    require('inc/connect.php'); 
    $user_id = $_SESSION['id'];
    if(isset($_POST['submit-profile'])){
        $update_email = $_POST['user_email'];
        $update_surname = $_POST['user_surname'];
        $update_name = $_POST['user_name'];
        $update_address = $_POST['user_address'];

        $req = "UPDATE `users` SET `firstname_user`='$update_surname',`lastname_user`='$update_name',`email_user`='$update_email',`adress_user`='$update_address' WHERE id = '$user_id'";
        if( $res = $mysqli->query($req) ){
            $message = '<div class="alert alert-success">Votre compte a bien été mis à jour!</div>';
        }else{
            $message = '<div class="alert alert-warning">Erreur de mise à jour!</div>';
        }
    }

    global $mysqli;
    $res = $mysqli->query("SELECT * FROM users WHERE id = '$user_id' LIMIT 1");
    $row = $res->fetch_assoc();
    $user_email = $row['email_user'];
    $user_surname = $row['firstname_user'];
    $user_name = $row['lastname_user'];
    $user_address = $row['adress_user'];
    
    $res2 = $mysqli->query("SELECT * FROM annonces WHERE author_article = '$user_id'");
    $compteur = $res2->num_rows;
  

    require('inc/functions.php');
    require('inc/head.php');
    include('inc/nav.php'); 
    include('inc/single-header.php');
?>
<section class="pt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <h2>Mon compte</h2>
                <?php if( isset($message) ){ echo $message; } ?>
                <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="POST">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="text" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<?php if(!empty($user_email)){ echo $user_email; } ?>" placeholder="Entrez votre email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Prénom</label>
                        <input type="text" name="user_surname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<?php if(!empty($user_email)){ echo $user_surname; } ?>" placeholder="Enter your surname">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nom</label>
                        <input type="text" name="user_name" class="form-control" value="<?php if(!empty($user_email)){ echo $user_name; } ?>" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your name">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">My address</label>
                        <input type="text" name="user_address" class="form-control" value="<?php if(!empty($user_email)){ echo $user_address; } ?>" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your address">
                    </div>
                    <input type="submit" name="submit-profile" value="Mettre à jour mon profil">
                </form>
            </div>
            <div class="col-md-4">
                <a href="#" class="btn btn-primary mb-3">Publier une nouvelle annonce</a>
                <a href="#" class="btn btn-primary <?php  if($user_announces < 1){ echo 'disabled'; } ?>" data-toggle="modal" data-target="#listingAnnonces">Voir mes annonces (<?php echo $compteur; ?>)</a>
            </div>
            <div class="modal fade" id="listingAnnonces" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Mes annonces</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <?php displayAllAnnouncesByUser($user_id); ?>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                    </div>
                </div>
                </div>
        </div>
    </div>
</section>
<?php require('inc/footer.php'); ?>