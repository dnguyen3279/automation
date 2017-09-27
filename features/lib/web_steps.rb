require 'capybara/cucumber'
Capybara.default_driver = :selenium

Given(/^I am on the "([^"]*)"$/) do |page|
  open_browser(page)
end

When(/^I click on "([^"]*)"$/) do |link|
  click_link link
end

When(/^I get element "([^"]*)"$/) do |element|
  get_element :xpath,element   # wait for element display on page
  find(:xpath,element).text
end