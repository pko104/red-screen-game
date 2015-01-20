$(function() {
  var $form = $('#new_review')
  var $formSubmit = $('#create-review')

  $formSubmit.on('click', function(e) {
    e.preventDefault();

    var userId = $form.attr('data-user-id');
    var messageReview = $('#review_message').val();
    var ratingReview = parseInt($('#input-1').val());
    var reviewInfo = {message: messageReview, rating: ratingReview}

    $.ajax({
      url: '/reviews.json',
      data: {
        review: reviewInfo
        authenticity_token: $('input[name="authenticity_token"]').val(),
      },
      dataType: 'json',
      method: 'POST'
    }).
    success(alert('Your review was posted'));

  });

});
