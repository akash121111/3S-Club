# Be sure to restart your server when you modify this file.
#Rails.application.config.assets.precompile += %w( spaces.css spaces.coffee )


%w( spaces user sessions fronts membership user_details chats ).each do |controller|
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
Rails.application.config.assets.precompile += %w( password_resets.css )
Rails.application.config.assets.precompile += %w( password_resets.js )
Rails.application.config.assets.precompile += %w( userbooking.scss )
Rails.application.config.assets.precompile += %w( userbooking.js )

