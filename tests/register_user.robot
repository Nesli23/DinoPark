*** Settings ***
Documentation    Testing the register page, user should be able to register with username and password
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/keywords.robot

Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser


*** Test Cases ***
Register User
    [Documentation]    Testar att användaren kan registrera sig med användarnamn och lösenord.
    [Tags]    Nesli
    
    Klicka på registreringsknappen
    Ange användarnamn och lösenord
    Bekräfta registreringen
   
#Acceptance criteria:
# I should be able to choose username and password
# I should be registered when I have filled out the username and password
# I should get a message that informs me that Im registered





