# Be sure to restart your server when you modify this file.
#Rails.application.config.assets.precompile += %w( spaces.css spaces.coffee )


<<<<<<< HEAD
%w( spaces user sessions fronts membership user_details ).each do |controller|
=======
%w( spaces user sessions fronts membership ).each do |controller|
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
    Rails.application.config.assets.precompile += ["#{controller}.js", "#{controller}.css"]
end
# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( ownerdashboard.scss )
Rails.application.config.assets.precompile += %w( ownerdashboard.js )
Rails.application.config.assets.precompile += %w( member_dashboard.scss )
Rails.application.config.assets.precompile += %w( member_dashboard.js )
Rails.application.config.assets.precompile += %w( searchings.scss )
Rails.application.config.assets.precompile += %w( searchings.js )
Rails.application.config.assets.precompile += %w( ownersignups.scss )
Rails.application.config.assets.precompile += %w( ownersignups.js )
<<<<<<< HEAD
Rails.application.config.assets.precompile += %w( password_resets.css )
Rails.application.config.assets.precompile += %w( password_resets.js )
=======
>>>>>>> c03634edb189b857293e9ad3b7dc269b87d05b36
