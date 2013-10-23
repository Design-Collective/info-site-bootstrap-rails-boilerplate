require 'carrierwave/processing/mime_types'

CarrierWave.configure do |config|
  config.cache_dir = File.join(Rails.root, 'tmp', 'uploads')

  case Rails.env.to_sym
  when :development, :test
    config.storage = :file
    config.asset_host = ENV['SITE_URL']
    config.fog_public = true
  else
    config.storage = :fog
    config.fog_credentials = {
      :provider               => ENV['FOG_PROVIDER'],
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY']
    }
    config.fog_directory  = ENV['FOG_DIRECTORY'] # For Media Uploads - Replaces old Method FOG_MEDIA_DIRECTORY
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  end

end