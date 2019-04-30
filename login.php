<?php 
    $page = "login";
    require('inc/connect.php');
    require('inc/functions.php');
    $message = "Formulaire non soumis!";
    if( isset( $_POST['submit-login'] ) ){
        $user_email =  $_POST['user_email']; //username issu du formulaire
        $user_password =  $_POST['user_password']; // password issu du formulaire
        global $mysqli;
        if( $res = $mysqli->query("SELECT * FROM users WHERE email_user = '".$user_email."' LIMIT 1") ){ // verifier si le username correspond à un résultat dans la BDD
            while( $row = $res->fetch_assoc() ){
                $bdd_password = $row['password_user']; // Récupérer le MDP correspondant si il y a un résultat
            }
            if( $user_password == $bdd_password  ){ // Vérifier la concordance des MDP entre le formulaire et la BDD
                $message = "LOG OK";     // Chargement du message correspondant
                $_SESSION['login_email'] = $_POST['user_email'];
                header('Location: index.php');
            }else{
                $message = "Mot de passe incorrect."; // Chargement du message correspondant
            }
        }else{
            $message = "Identifiant inconnu.";
        }
    }
    if( isset( $_POST['submit-signup'] ) ){
        $user_email = $_POST['user_email_signup'];
        $user_pass = $_POST['user_password_signup'];
        $user_pass_2 = $_POST['user_password_2_signup'];
        if( $res = $mysqli->query("SELECT * FROM users WHERE email_user = '".$user_email."' LIMIT 1") ){
            $compteur = $res->num_rows;
            if($compteur != 0){
                $message = "Vous possédez déjà un compte.";
            }else{
                if( $user_pass == $user_pass_2 ){
                // Enregistrer le compte
                $add_user_query = "INSERT INTO `users`(
                    `email_user`,
                    `password_user`) 
                    VALUES (
                        '$user_email',
                        '$user_pass'
                    )";
                    if( $res = $mysqli->query($add_user_query) ){
                        $message ="Votre compte a bien été créé, vous pouvez maintenant vous enregistrer!";
                    }
                }else{
                    $message = "Les mots de passe ne correspondent pas!";
                }
            }
        }else{
            $message = "Une erreur vient de se produire.";
        }
    }
    require('inc/head.php');
    include('inc/nav.php');
?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h1>Login Form</h1>
                <?php echo $message; ?>
                <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="POST">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="text" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" name="user_password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>
                    <button type="submit" name="submit-login" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <div class="col-md-6">
                <h1>Signup Form</h1>
                <form action="<?php echo $_SERVER["PHP_SELF"]; ?>" method="POST">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input type="text" name="user_email_signup" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input type="password" name="user_password_signup" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password Verify</label>
                        <input type="password" name="user_password_2_signup" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <button type="submit" name="submit-signup" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</section>

<?php 
    require('inc/footer.php');
?>