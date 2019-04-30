<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-dark">
  <div class="container">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="#">Stuliday</a>
    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Annonces</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Mon compte</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
      <?php
      if( isset($_SESSION['login_email']) ){
      ?>
        <li class="nav-item">
          <a class="nav-link" href="?logout">Log Out</a>
        </li>
      <?php
      }
      ?>
    </ul>
    
  </div>
  </div>
</nav>