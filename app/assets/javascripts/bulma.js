$(document).ready(function() {

(function() {
    var burger = document.querySelector('.burger');
    var menu = document.querySelector('#'+burger.dataset.target);
    burger.addEventListener('click', function() {
        burger.classList.toggle('is-active');
        menu.classList.toggle('is-active');
    });
})();

	$("#band_id").click(function() {
	    $('html,body').animate({
	        scrollTop: $("#div-band").offset().top},
	        'slow');
	});

	$("#contact_id").click(function() {
	    $('html,body').animate({
	        scrollTop: $("#div_contact").offset().top},
	        'slow');
	});
	$("#tour_id").click(function() {
	    $('html,body').animate({
	        scrollTop: $("#div_tour").offset().top},
	        'slow');
	});
	$("#disco_id").click(function() {
	    $('html,body').animate({
	        scrollTop: $("#div_disco").offset().top},
	        'slow');
	});

    $('.image').each(function(i, obj) {
        const gallery = new Viewer(obj);
    });    

 });

