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
