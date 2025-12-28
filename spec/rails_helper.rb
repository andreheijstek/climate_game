# spec/rails_helper.rb

ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../config/environment", __dir__)
abort("The Rails environment is running in production!") if Rails.env.production?

# require "support/rails_8_routes_patch"
require "rspec/rails"
require "capybara/rspec"

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
    driven_by :rack_test
  end

  # Cleaner backtraces
  config.filter_rails_from_backtrace!
end