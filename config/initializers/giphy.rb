Giphy::Configuration.configure do |config|
  config.version = ENV['GIPHY_VERSION']
  config.api_key = ENV['GIPHY_API_KEY']
end
