# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'rjc'
set :repo_url, 'git@github.com:juggler/rjc.git'

set :ssh_options, {
  forward_agent: true
}

set :rbenv_custom_path, '/opt/rbenv'
set :rbenv_ruby, '2.1.1'

set :linked_files, %w{config/database.yml config/unicorn.rb}

# Default value for linked_dirs is []
set :linked_dirs, %w{public/uploads}

set :default_env, { path: "/opt/rbenv/bin:/opt/rbenv/shims:$PATH" }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :service, "unicorn_rjc_#{fetch(:rails_env)} restart"
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
