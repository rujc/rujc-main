if defined?(MailSafe::Config)
  MailSafe::Config.internal_address_definition = /.*@maxprokopiev\.com/i
  MailSafe::Config.replacement_address = 'me@maxprokopiev.com'
end
