*** Settings ***
Metadata    Author    Tuba
Documentation    Testing user registration and login functionality.
Library    SeleniumLibrary
Resource    keywords_ticket_tuba.robot
Variables    variables_tuba.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Scenario: Kim registers and logs in successfully
    Given Kim is registered as user
    When Kim is logged in
