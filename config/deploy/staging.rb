set :deploy_to, '/var/www/rjc_staging'
set :rails_env, 'staging'
set :branch, 'master'

server 'staging.rujc.ru', user: 'deployer', roles: %w{web app db}
