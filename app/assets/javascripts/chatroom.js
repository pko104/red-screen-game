$(function() {
  var $form = $('#new_chat')
  var $formSubmit = $('#create-message')

  $formSubmit.on('click', function(e) {
    e.preventDefault();

    var userId = $form.attr('data-user-id');
    var message_var = $('#chat_message').val();

    $.ajax({
      url: '/chats.json',
      data: {
        chat: { message: message_var },
        authenticity_token: $('input[name="authenticity_token"]').val(),
        user_id: userId
      },
      dataType: 'json',
      method: 'POST'
    }).success(function(data) {
      var messageContainer = $(".chatroom tbody");
      messageContainer.prepend("<tr><td>" + data.username + ": " +
        data.message + "</td><td>" +
        data.created_at + "</td></tr>");
    });
  });

});
