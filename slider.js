
function readyFn() {
  setInterval(next, 3500); // chaque image change a un interval de 3,5s
}

function next() {
  if($index < $slider.length){
    $slider.eq($index++).hide();  //eq() retourne un élément avec un numéro d'index spécifique des éléments sélectionnés
     
      if($index == $slider.length){
         $index = 0;
      }
  $slider.eq($index).show();

  }
}

function back() {
  if($index >= 0){
        $slider.eq($index--).hide();
  }              
      if($index < 0){
         $index = $slider.length-1;
      }
  $slider.eq($index).show();
}



$(function(){
  $index = 0; 
  $slider = $('.slider img');

  $slider.hide(); //cacher les images
  $slider.eq(0).show(); //on affiche juste l'image avec l'index 0

  $(window).on( "load", readyFn ); //evenement -  une fois que la page est charge 
  $('.fa-forward').on('click', next); 
  $('.fa-backward').on('click', back);
});



