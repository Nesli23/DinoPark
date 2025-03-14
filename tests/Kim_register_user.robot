*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing user registration and login functionality.
Library    SeleniumLibrary
Resource    keywords_ticket_tuba.robot
Variables    variables_tuba.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
 
*** Test Cases ***
Kim registers successfully
    [Documentation]
    [Tags]  Tuba
    Given Kim press on the Register button
    When Kim fill in the username and password
    Then press the submit button
    
Kim logs in successfully
    [Documentation]
    [Tags]  Tuba
    Given that Kim press the login button
    When login in with valid credentials
    Then kim should be redirected to the home page