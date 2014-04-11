$ ->
  isPresent = (field) ->
    $("#participant_#{field}").val() != ''

  emailIsCorrect = ->
    re = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/
    re.test $('#participant_email').val()

  $('#main_signup_form').submit ->
    form_is_valid = true

    if isPresent('first_name') and isPresent('last_name') and isPresent('email')
      $('.error-presence').hide()
      if emailIsCorrect()
        $('.error-email-format').hide()
      else
        form_is_valid = false
        $('.error-email-format').show()
    else
      form_is_valid = false
      $('.error-presence').show()

    form_is_valid
