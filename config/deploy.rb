# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'rjc'
set :repo_url, 'git@github.com:juggler/rjc.git'

set :branch, 'deploy'

# Default value for :pty is false
set :pty, true

set :rbenv_custom_path, '/opt/rbenv'
set :rbenv_ruby, '2.0.0-p451'

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/unicorn.rb}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
