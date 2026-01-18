# config/initializers/factory_bot_console.rb
if defined?(Rails::Console)
  require "factory_bot"
  include FactoryBot::Syntax::Methods
end
