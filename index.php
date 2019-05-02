<?php
    $page = "index";
    require('inc/connect.php');
?>
<?php require('inc/head.php'); ?>
<?php include('inc/header.php'); ?>
<?php include('inc/nav.php'); ?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <a href="annonces.php" class="btn btn-primary">Voir les annonces</a>
                <?php 

    include('phpqrcode/qrlib.php'); 
    $codeContents = 'This Goes From File'; 
    $fileName = 'QR_'.md5(md5($codeContents)).'.png'; 
     
    $pngAbsoluteFilePath = $fileName; 
    $urlRelativeFilePath = $fileName; 
     
    // generating 
    if (!file_exists($pngAbsoluteFilePath)) { 
        QRcode::png($codeContents, $pngAbsoluteFilePath); 
    } else { 
        echo 'File already generated! We can use this cached file to speed up site on common codes!'; 
        echo '<hr />'; 
    }
    echo '<img src="'.$urlRelativeFilePath.'" />'; 
?>
            </div>
        </div>
    </div>
</section>
<?php require('inc/footer.php'); ?>