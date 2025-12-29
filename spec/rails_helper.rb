# spec/rails_helper.rb

ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../config/environment", __dir__)
abort("The Rails environment is running in production!") if Rails.env.production?

# require "support/rails_8_routes_patch"
require "rspec/rails"
require "capybara/rspec"

Capybara.register_driver :selenium_chrome_headless do |app|
  options = Selenium::WebDriver::Chrome::Options.new

  options.add_argument("--headless=new")
  options.add_argument("--no-sandbox")
  options.add_argument("--disable-dev-shm-usage")
  options.add_argument("--disable-gpu")
  options.add_argument("--window-size=1400,1400")

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    options: options
  )
end

# Requires supporting ruby files with custom matchers, etc.
Rails.root.glob("spec/support/**/*.rb").each { |f| require f }

# Ensures test DB schema is up to date
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |f| require f }

RSpec.configure do |config|
  config.use_transactional_fixtures = true

  # FactoryBot
  config.include FactoryBot::Syntax::Methods

  # System specs (fast, docker-safe)
  config.before(:each, type: :system) do
    driven_by :selenium_chrome_headless
  end

  # Cleaner backtraces
  config.filter_rails_from_backtrace!
end