require 'capybara/cucumber'
# Capybara.default_driver = :selenium

Given(/^I am on the "([^"]*)"$/) do |site|
  open_browser(site)
end

When(/^I click on "([^"]*)"$/) do |link|
  click_link link
end

When(/^I get element "([^"]*)"$/) do |element|
  msg = page.find(:xpath, element).value
  # msg = find(get_element element).text()
  puts msg
  # find(:xpath,element).text
end