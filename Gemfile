source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.0.0'

# Using postgresql as the database for Active Record
gem 'pg'
# Paranoia to not destroy records
gem 'paranoia', '~> 2.0'

# Using unicorn as the app server
gem 'unicorn'

# Speed & Caching
# gem 'turbolinks'

# Assets (CSS & JS)
group :assets do
  gem 'bootstrap-sass', :git => 'git://github.com/thomas-mcdonald/bootstrap-sass.git', :branch => 'master'
  # gem 'bootswatch-rails', :git => 'git://github.com/maxim/bootswatch-rails'
  gem 'coffee-rails', '~> 4.0.0'
  gem 'jquery-rails'
  gem 'jquery-ui-rails'
  gem 'uglifier'
  gem "font-awesome-rails"
  gem 'asset_sync'
end

# Templating and Runtime
gem 'sass-rails'
gem "compass-rails", "~> 2.0.alpha.0"
gem 'rails-boilerplate'
gem 'select2-rails', :git => 'git://github.com/argerim/select2-rails.git'
gem "slim", "~> 2.0.1"

# Asset Management
gem 'rmagick'
gem 'carrierwave'
gem "mini_magick"
gem 'fog'
gem 'paperclip'

# Content Admin
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'mercury-rails', github: 'jejacks0n/mercury'
gem "simple_form", "~> 3.0.0.beta1"
gem 'country_select'
gem 'ckeditor_rails'
gem 'friendly_id', '~> 5.0.0'
gem 'ancestry'
# Payments
# gem 'stripe'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'


group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

gem 'rails_12factor', group: :production

group :development, :test do
  gem 'dotenv-rails'
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
  gem "quiet_assets"
end

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
