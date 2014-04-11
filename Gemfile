source 'https://rubygems.org'
source 'https://rails-assets.org'

gem 'rails', '4.0.2'

gem 'pg'
gem 'simple_form'
gem 'rails-observers'
gem "mini_magick"
gem 'carrierwave'

# Assets
gem 'slim-rails'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'normalize-rails'
gem 'autoprefixer-rails'
gem 'rails-sass-images'
gem 'fancybox2-rails', '~> 0.2.8'
gem 'rails-assets-jquery-placeholder'

gem 'therubyracer', platforms: :ruby

# Admin cabinet
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'just-datetime-picker'

# Capistrano
gem 'capistrano', '~> 3.1.0'
gem 'capistrano-rbenv', '~> 2.0'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano-rails', '~> 1.1'

group :development do
  gem "letter_opener"
end

group :development, :test do
  gem 'pry'
  gem 'rspec-rails'
end

group :staging do
  gem 'mail_safe'
end

group :staging, :production do
  gem 'unicorn'
end
