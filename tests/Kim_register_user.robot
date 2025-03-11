*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing user registration and login functionality.
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Scenario: Kim registers and logs in successfully
    [Documentation]
    [Tags]      Tuba
    Registrera användaren Kim
    Logga in användaren Kim
