set :deploy_to, '/var/www/rjc_production'
set :rails_env, 'production'

server 'rjc2014.ru', user: 'deployer', roles: %w{web app db}
