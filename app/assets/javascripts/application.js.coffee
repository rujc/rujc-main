//= require jquery
//= require jquery_ujs
//= require jquery.plugin
//= require jquery.countdown
//= require jquery.countdown-ru
//= require fancybox
//= require jquery-placeholder
//= require signup_validation

$ ->
  $.extend($.fancybox.defaults, {
    wrapCSS: 'fancybox--rjc'
    padding: 0
    arrows: false
    helpers:
      overlay:
        closeClick: false
        css:
          background: 'rgba(230, 32, 68, .9)'
  })

  $.countdown.setDefaults($.countdown.regionalOptions['ru'])

  $('.welcome-countdown_timer').countdown(until: new Date(2014, 5-1, 22, 13, 0))
  $('.modal-link').fancybox()
  $('input, textarea').placeholder()

  $('.event-participate_link').click (event) ->
    event_id = $(event.target).data('id')

    $.ajax
      url: "/events/#{event_id}/participants",
      type: 'POST',
      beforeSend: (xhr) ->
        xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
      success: ->
        counter = parseInt($('.event-participants').text()) + 1
        $('.event-participants').text(counter)
