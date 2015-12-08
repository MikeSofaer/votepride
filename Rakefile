# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

namespace :db do
   task :recreate => [ :drop, :create, :migrate, 'fixtures:load' ] do
      if ENV[ 'RAILS_ENV' ] !~ /test|cucumber/
         Rake::Task[ 'db:seed' ].invoke
      end
   end
end

Rails.application.load_tasks
