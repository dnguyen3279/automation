require 'yaml'

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

def execute_set_text element, text
  file_content = YAML.load_file("./features/step_definitions/repositories/project_object.yml")
  file_content.collect {|key,value| if key == "#{element}"
                                      puts value end
  find(:xpath, "#{value}").set("#{text}")
  }
end
