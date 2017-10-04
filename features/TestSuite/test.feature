Feature:
  Scenario:
#    Given I am on the "http://google.co.uk"
    Given I am on Login Page
    When I set text on "google_search_textbox" with "capybara"
    And I type to "google_search_textbox" key is enter
#    And I click on "google_button_search"
#    When I get element ".//*[@id='tsf']/div[2]/div[3]/center/input[1]"