$(function() {
  var $form = $('#new_chat')
  var $formSubmit = $('#create-message')

  $formSubmit.on('click', function(e) {
    e.preventDefault();

    var userId = $form.attr('data-user-id');
    var message = $('#chat_message').val();

    var full_message = {
      message: message,
      user_id: userId }

    $.ajax({
      url: '/chats.json',
      data: {
        message: full_message,
        authenticity_token: $('input[name="authenticity_token"]').val()
      },
      dataType: 'json',
      method: 'POST'
    }).
    success(alert('Your message was posted'));

  });

});
