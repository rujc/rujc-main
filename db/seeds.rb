unless Rails.env.production?
  AdminUser.create!(email: 'admin@rjc2014.com', password: '12345678')
end
