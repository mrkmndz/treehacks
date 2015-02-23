# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( bootstrap.min.css )
Rails.application.config.assets.precompile += %w( bootstrap.min.js )
Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( when.js )
Rails.application.config.assets.precompile += %w( core.js )
Rails.application.config.assets.precompile += %w( graphics.js )
Rails.application.config.assets.precompile += %w( mapimage.js )
Rails.application.config.assets.precompile += %w( mapdata.js )
Rails.application.config.assets.precompile += %w( areadata.js )
Rails.application.config.assets.precompile += %w( areacorners.js )        
Rails.application.config.assets.precompile += %w( scale.js )
Rails.application.config.assets.precompile += %w( tooltip.js ) 
# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
