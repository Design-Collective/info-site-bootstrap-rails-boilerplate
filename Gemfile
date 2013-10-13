source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.0.0'

# Using postgresql as the database for Active Record
gem 'pg'
# Paranoia to not destroy records
gem 'paranoia', '~> 2.0'

# Using unicorn as the app server
gem 'unicorn'

# Using Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Assets (CSS & JS)
# Bootstrappit 3 Bitch!
gem 'bootstrap-sass', :git => 'git://github.com/thomas-mcdonald/bootstrap-sass.git', :branch => "master"
# Using CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
gem 'sass-rails', '~> 4.0.0'
gem 'animate-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem "font-awesome-rails"
gem "rails-boilerplate"
gem 'select2-rails', :git => 'git://github.com/argerim/select2-rails.git'
gem "slim", "~> 2.0.1"

gem 'compass-rails', github: "Compass/compass-rails", branch: "rails4-hack"

# Asset uploads
gem 'rmagick'
gem 'carrierwave'
gem "mini_magick"
gem 'fog'

# Content Admin
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'mercury-rails', github: 'jejacks0n/mercury'
gem 'simple_form'
gem 'country_select'
# S3 Asset Sync Library
gem 'asset_sync'
gem "ckeditor"

# Using stripe for accepting payments
gem 'stripe'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem 'rails_12factor'
end

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'capybara'
  gem 'spring'
  gem 'debugger'
end

group :development do
  gem 'guard-rspec', '~> 2.0'
  # for rails console
  gem 'pry-rails'
  # errors
  gem 'better_errors'
  gem 'binding_of_caller'
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
gem 'paperclip'