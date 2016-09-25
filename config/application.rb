require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module LibraryRoom
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    config.time_zone = 'Eastern Time (US & Canada)'
    config.active_record.default_timezone = :local
  end

  
end
