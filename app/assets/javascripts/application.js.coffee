//= require jquery
//= require jquery_ujs
//= require jquery.plugin
//= require jquery.countdown
//= require jquery.countdown-ru
//= require jquery-placeholder
//= require signup_validation

$ ->
  $.countdown.setDefaults($.countdown.regionalOptions['ru'])

  $('.welcome-countdown_timer').countdown(until: new Date(2014, 5-1, 22, 13, 0))
  $('input, textarea').placeholder()

  $('.event-participate_link').click ->
    event_id = $(event.target).data('id')

    $.ajax
      url: "/events/#{event_id}/participants",
      type: 'POST',
      beforeSend: (xhr) ->
        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
      success: ->
        counter = parseInt($('.event-participants').text()) + 1
        $('.event-participants').text(counter)
