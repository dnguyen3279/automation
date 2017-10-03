require 'rubygems'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'yaml'

$hash_var = Hash.new
current_directory = File.expand_path(File.dirname(__FILE__))
CONFIG_DATA = YAML.load_file("#{current_directory}/project_config.yml")
$hash_var['Default Browser'] = CONFIG_DATA['default_browser']
$hash_var['Page Address'] = CONFIG_DATA['test_page_address']

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.app_host = $hash_var['Page Address']
  config.run_server = false
  config.default_driver = :selenium
end
Capybara.register_driver :selenium do |app|
  if $hash_var['Default Browser'] == :firefox
    Capybara::Selenium::Driver.new(app, :browser => :firefox)
  else $hash_var['Default Browser'] == :chrome
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end
end
