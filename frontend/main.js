'use strict';

function displayConditions() {
	$('.destination-container .condition ul').toggle('fast');
}

$(function(){
	$('.conditions').on('click', displayConditions);
});

