source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.0"
gem "sassc-rails"
gem "rails", "~> 7.0.3"
gem "sprockets-rails"
gem "pg", "~> 1.4", ">= 1.4.1"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem "devise", "~> 4.8", ">= 4.8.1"
gem "kaminari"
gem "bootstrap5-kaminari-views"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails", "~> 6.0.0.rc1"
  gem "factory_bot"
  gem "faker"
  gem "shoulda-matchers"
end

group :development do
  gem "web-console"
  gem "letter_opener"

  gem "omniauth-twitter"
  gem "omniauth-rails_csrf_protection"
end

group :production do
  # gem "pg", "~> 1.4", ">= 1.4.1"
  gem "rails_12factor", "0.0.2"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end