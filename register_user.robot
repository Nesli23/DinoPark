*** Settings ***
Metadata    Author    Tuba
Documentation    Testing user registration and login functionality.
Library    SeleniumLibrary
Resource    keywords_ticket_tuba.robot
Variables    variables_tuba.py
Test Setup    Open Browser To Registration Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Scenario: Kim registers and logs in successfully
    Given Kim is on the registration page
    When Kim registers with valid credentials
    Then Kim should be redirected to the login page
    And Kim logs in with the registered credentials
    Then Kim should be successfully logged in
