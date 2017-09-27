require 'capybara/cucumber'
Capybara.default_driver = :selenium

Given(/^I am on the "([^"]*)"$/) do |page|
  open_browser(page)
end