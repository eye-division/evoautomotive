 
$(document).ready(function() {

    // Check for click events on the navbar burger icon
    $(".navbar-burger").click(function() {
  
        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        $(".navbar-burger").toggleClass("is-active");
        $(".navbar-menu").toggleClass("is-active");
  
    });
    // Scroll to animation
    function scrollToAnchor(aid){
        const destination = $("a[name='"+ aid +"']");
        $('html,body').animate({
            scrollTop: destination.offset().top
        },'slow');
    }

    $(document).on('click', '.about-link', function(){
        scrollToAnchor('aboutus');
    });
    $(document).on('click', '.contact-link', function(){
        scrollToAnchor('contactus');
    });
    $(document).on('click', '.products-link', function(){
        scrollToAnchor('products');
    });
});    
