set :deploy_to, '/var/www/rjc_production'
set :rails_env, 'production'
set :branch, 'production'

server 'rujc.ru', user: 'deployer', roles: %w{web app db}
