set :use_sudo, false
set :user, "amorexigente"

set :deploy_to, "/home/amorexigente/"
set :application, "amorexigente"
set :repository,  "git@github.com:adrianotadao/amorexigentearacatuba.git"
set :branch,  "master"
set :scm, :git
set :deploy_via, :remote_cache
set :keep_releases, 5

role :app, "amorexigente"
role :db,  "amorexigente", :primary => true
set :rails_env, "production"

# rvm
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require "rvm/capistrano"
set :rvm_ruby_string, 'ruby-1.9.2-p290@amorexigente'

# ==========================================================

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
after 'deploy:update_code', 'assets:copy_config_files', 'assets:bundle', 'assets:jammit'
after "deploy", "deploy:cleanup", "deploy:restart"

namespace :assets do
  desc 'Copy config files like database.yml and .rvmrc'
  task :copy_config_files, :roles => :app do
    run "cp #{release_path}/config/files/database.yml #{release_path}/config/"
    run "cp #{release_path}/config/files/rvmrc #{release_path}/.rvmrc"
  end
  task :bundle, :roles => :app do
    run "cd #{release_path} && bundle install"
  end
  task :jammit, :roles => :app do
    run "cd #{release_path} && RAILS_ENV=#{rails_env} rake assets:jammit --trace"
  end
end