namespace :assets do

  desc 'Jammit assets'
  task :jammit => :environment do
    system "rm -rf public/assets/*"

    Barista.compile_all!
    Sass::Plugin.update_stylesheets
    #system "sass --update public/stylesheets/sass:public/stylesheets"
    Jammit.package!
  end

end