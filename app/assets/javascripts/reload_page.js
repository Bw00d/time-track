$(document).on('ready page:load', function() {
    var REFRESH_INTERVAL_IN_MILLIS = 5000;
     
       setTimeout(function(){
        #disable page scrolling to top after loading page content
        Turbolinks.enableTransitionCache(true);

        # pass current page url to visit method
        Turbolinks.visit(location.toString());

        #enable page scroll reset in case user clicks other link
        Turbolinks.enableTransitionCache(false);
         }, REFRESH_INTERVAL_IN_MILLIS);
   
});