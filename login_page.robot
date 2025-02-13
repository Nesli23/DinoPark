*** Settings ***
Documentation    Testing the login page in order to make sure that the customer can log in with credentials
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Invalid Login
    Type In Element    ${login_button_test}    ${username_input_id_test}    ${invalid_username}