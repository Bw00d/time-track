$( document ).on('turbolinks:load', function(){

   // activity
   $('.activity-button').click(function(event){
      value = $(this).find('span.hidden-id').text();

      $('.activity-button').toggleClass('unselected');
      $('#add-activity-button').toggleClass('unselected');

      $(this).toggleClass('unselected');

      $('#activity-field').val(value);
      event.preventDefault();
    });

   $('#add-activity-button').click(function(event){
    $('.activity-button').toggleClass('unselected');
     $('#add-activity-button').toggleClass('unselected');
     $('.activity-button').hide();
     $('.activity').hide();
     $('#activity-form').show();
     $('#activity-form').animate({ width: '350' }, 'fast')
     event.preventDefault();
    });
    $(window).click(function() {
      if($('#activity-form').is(':visible')){ 
        $('#activity-form').hide();
        $('.activity').show();
        $('#add-activity-button').toggleClass('unselected');
      }
    });

    $('#activity-input').click(function(event){
        event.stopPropagation();
    });
    $('#add-activity-button').click(function(event){
        event.stopPropagation();
    });
    $('#add-cat').click(function(event){
        event.stopPropagation();
    });

    // slide off canvas on screen
    $('#activity-button').click(function(){
      $('#offcanvas').toggleClass('open'); 
      $(this).hide();
    });

  $('.activity').click(function(event){
    value = $(this).find('span.hidden-id').text();

    $(this).toggleClass('selected');
   
    $('#slot_activity_id').val(value);
    event.preventDefault();
  });

  // select current activity 
  
});
