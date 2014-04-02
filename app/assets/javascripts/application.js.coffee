//= require jquery
//= require jquery_ujs
//= require jquery.plugin
//= require jquery.countdown
//= require jquery.countdown-ru

$ ->
  $.countdown.setDefaults($.countdown.regionalOptions['ru'])

  $('.welcome-countdown').countdown(until: new Date(2014, 5-1, 22, 13, 0))
