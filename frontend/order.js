'use strict';

function getPersons() {
    var nbPersons = $('select').val();
    console.log(nbPersons);
}

function loadDetails(){
    var order = JSON.parse(localStorage.getItem('destination'));
     
    if (order === null){
        order = [];
    }

    return order;
}


function refreshDetails(){

    var order = loadDetails();
    var details = $('.join'); 
    details.empty(); 

    for (var index = 0; index < order.length; index++) {
        details.append('<p>Félicitations ! '+ order[index].destination +' est la destination qui va vous détendre de la routine quotidienne. Pendant une période de '+  order[index].period +', vous allez rejoindre nos amis voyageurs pour vous faire découvrir des endroits inoubliables.</p>\
                    <p>Vous avez réservé <span> ' +  order[index].nbPersons +' </span> place(s). Nous allons vous contacter sous peu pour les autres détails. Merci d\'être avec nous !</p>\
                    <button data-index="' + index + '" class="delete-item"><i class="fas fa-trash-alt"></i></button>' );
    }
}

function getDetails(event){
    event.preventDefault(); 

    var destination = $('article h1').html();
    var period = $('.period').html();
    var nbPersons = parseInt($('select').val());
    var ID =  $('input[name="destinationID"]').val();

    console.log(destination);
    console.log(period);
    console.log(nbPersons);
    console.log(ID);

    var order = loadDetails();

    //tableau localstorage
     var orderDetails = {
        ID: $('input[name="destinationID"]').val(),
        nbPersons: nbPersons,
        period: period,
        destination: destination,
     
    };

    console.log(orderDetails);

    // changer le nombre des personnes participantes lorsque l'utilisateur change d'avis avant de confirmer la participation

    if($('.order').data('mode') == 'change') {

        var newNbPersons = true;
        for (var index=0; index < order.length; index++){
            if (orderDetails.destination === order[index].destination){
                newNbPersons = false;
                order[index].nbPersons = orderDetails.nbPersons;
                break;
            }
        }
        if (newNbPersons){
            order.push(orderDetails);
        }
    }else{
        var index = $('.join').data('nbPersons');
    }

    console.log(order);

    localStorage.setItem('destination', JSON.stringify(order));
    refreshDetails();

      
    $('#cancel').show();
    $('#confirm').show();
}

function cancel(event){
 
    event.preventDefault(); // permet d’empêcher le navigateur de déclencher son comportement par défaut(recharger la page)
  
    localStorage.clear();
    refreshDetails();
    $('#cancel').toggle();
    $('#confirm').toggle();
}

function deleteItem(event)
{
    event.preventDefault(); // empêche le navigateur de déclencher son comportement par défaut
    var order = loadDetails(); // pour que le tableau order soit reconnu 

    console.log($(this).data('index')); 

    order.splice($(this).data('index'), 1);  //.splice supprime une ligne du tableau, 1  - le numero des lignes, this - le bouton,  data('index') - le numero 
    localStorage.setItem('destination', JSON.stringify(order));

    refreshDetails();
}

function confirm(){

    var order = loadDetails();
    order = JSON.stringify(order);

    $.ajax({
        url: 'order.php',
        type: 'POST',
        data: {
            order: order
        },
        success: getOrder,
        error: function(jqxhr, status, exception) {
            alert('Exception:', exception);
        }
    });
    
    $('#cancel').toggle();
    $('#confirm').toggle();
    cancel(event);
}

function getOrder(data){
    
   location.assign('/project/destinations.php'); // rediriger vers un autre lien après que la commande a été confirmée
}


$(function(){
    $('select').on('change', getPersons ).trigger('change');
    $('#join').on('click', getDetails);
    $('#cancel').on('click', cancel);
    $('#confirm').on('click', confirm);
    $('form.order').on('click','.delete-item', deleteItem);
});
