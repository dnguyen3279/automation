require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium-webdriver'

if ENV['chrome']
  Capybara.register_driver :chrome do |app|
    profile = Selenium::WebDriver::Chrome::Profile.new
    Capybara::Selenium::Driver.new(app, :browser => :chrome, :profile => profile,:args => ["--window-size=1240,1400"])
    # caps = Selenium::WebDriver::Remote::Capabilities.chrome("chromeOptions" => {"args" => [ "--start-maximized" ]})
    # Capybara::Selenium::Driver.new(app, {:browser => :chrome, :desired_capabilities => caps})
  end
elsif ENV['firefox']
  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  end
end

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  # config.default_driver        = :selenium_chrome
  # config.javascript_driver     = :selenium_chrome
  config.default_driver        = :selenium
end

