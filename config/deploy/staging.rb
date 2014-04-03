server 'staging.rjc2014.ru', user: 'deployer', roles: %w{web app db}

set :ssh_options, {
  forward_agent: true
}

set :rails_env, 'staging'
