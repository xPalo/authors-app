require_relative "boot"
require "kaminari"
require "rails/all"

Bundler.require(*Rails.groups)

module Authors
  class Application < Rails::Application
    config.load_defaults 7.0
    config.assets.initialize_on_precompile = false
  end
end