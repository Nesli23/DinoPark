*** Settings ***
Documentation    Testing the register page, user should be able to register with username and password
Library    SeleniumLibrary
Variables    variables.py
Resource    keywords.robot
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    #Close Browser


*** Test Cases ***
Register User
    [Documentation]    Scenario: User should be able to register with username and password
    [Tags]    Nesli
    Given I press on the Register button
    When I fill in the username and password
    Then press the submit button
   
#Acceptance criteria:
# I should be able to choose username and password
# I should be registered when I have filled out the username and password
# I should get a message that informs me that Im registered





