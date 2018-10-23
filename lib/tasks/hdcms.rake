namespace :db do
  desc 'heroku pg:reset, migrate, seed'
  task hdcms: :environment do
    exec('heroku pg:reset --app music-db-api --confirm music-db-api
      heroku run rake db:migrate --app music-db-api
      heroku run rake db:seed --app music-db-api')	
  end
end
