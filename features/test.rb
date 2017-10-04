require 'yaml'

file_content = YAML.load_file("./features/step_definitions/repositories/project_object.yml")
# a = file_content.find {|x| x.key == "google_buttarch" }
file_content.collect {|key,value| if key == "google_buttarch"
                                        puts value end}
