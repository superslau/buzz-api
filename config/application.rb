require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Buzz
  class Application < Rails::Application
    # Rack CORS
    config.middleware.use Rack::Cors, logger: Rails.logger do
      allow do
        origins '*'
        resource %r{/spaces/*}, headers: :any, methods: [:get, :head, :options, :post]
      end
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
