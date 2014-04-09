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
