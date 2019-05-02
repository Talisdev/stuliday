<footer class="mt-5 bg-dark text-light pt-3">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <p>Stuliday | All Rights Reserved | 2019</p>
            </div>
        </div>
    </div>
</footer>
<!-- JS Scripts to include -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>
    console.log('Ca marche!');
    $('#AjaxReservation').on('click', function(){
        console.log('bouton click ok');
        ajaxAnnonce = $('input[name="annonceID"]').val();
        ajaxUser = $('input[name="userID"]').val();
        ajaxNbr = $('select option:selected').val();
        console.log('Nombre de places sélectionnées : '+ajaxNbr);

        $.ajax({
            method: "POST",
            url: "ajax/ajax-reservation.php",
            data: { 
                annonce: ajaxAnnonce, 
                user: ajaxUser,
                nbr: ajaxNbr
            }
        })
        .done(function( response ) {
            $('#modal-reservation .modal-body').html('OK OK OK');
            $('#modal-reservation .modal-footer').hide();
        });
    });
    $('.supprimer-annonce').on('click', function(){
        var ancienNombre = $('#nbrPlaces').attr('value');
        var nouveauNombre = ancienNombre - 1;
        idAnnonce = $(this).attr('value');
        var confirmMessage = confirm('Êtes-vous sûr de vouloir supprimer cette annonce?');
        if(confirmMessage){
            $.ajax({
                method: "POST",
                url: "ajax/ajax-delete.php",
                data: { 
                    annonce: idAnnonce
                }
            })
            .done(function( response ) {
                $("#row-"+idAnnonce).hide(500);
                $('#voirAnnonces').html('Voir mes annonces('+nouveauNombre+')');
                
            });
        }
    });
</script>
</body>
</html>