

document.addEventListener("turbolinks:load",function(){ 
jQuery(function($) {
    $('#payment-form').submit(function(event) { // change $('#payment-form') to $('#new_order')
      var $form = $(this);
  
      // Disable the submit button to prevent repeated clicks
      $form.find('#payment').prop('disabled', true);
  
      Stripe.card.createToken($form, stripeResponseHandler);
  
      // Prevent the form from submitting with the default action
      return false;
    });
  });

  function stripeResponseHandler(status, response) {
    var $form = $('#payment-form'); // change the selector that gets the form to #new_order
  
    if (response.error) {
      // Show the errors on the form
      $form.find('.payment-errors').text(response.error.message);
      $form.find('#payment').prop('disabled', false);
    } else {
      // response contains id and card, which contains additional card details
      var token = response.id;
      // Insert the token into the form so it gets submitted to the server
      $form.append($('#stripe_token').val(token)); // Change the name attribute to correspond to rails' expected format for the params object.
      // and submit
      $form.get(0).submit();
    }
  }
});