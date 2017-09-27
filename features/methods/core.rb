require 'capybara/cucumber'
Capybara.default_driver = :selenium

def open_browser url
  if url == ""
    visit ""
  else
    visit(url)
  end
end


def get_element element
  page.driver.browser.find_element(:xpath, "//*[contains(text(), '#{element}')]").displayed?
  msg = "Xpath is " + element
  puts msg
end

