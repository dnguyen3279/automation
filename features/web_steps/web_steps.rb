require 'capybara/cucumber'

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

Given /^I am on Login Page$/ do
  open_browser($hash_var['Page Address'])
end

And /^I set text on "(.*?)" with "(.*?)"$/ do |object, text|
  execute_set_text(object, text)
end
