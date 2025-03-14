*** Settings ***
Documentation    Grupp 9(Nesli,Tuba, Quratulain)
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/kim_keywords.robot
Resource    ${EXECDIR}/resources/keywords_files/shared_keywords.robot
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}

Test Teardown    Close Browser


*** Test Cases ***
Invalid Login
    [Tags]    #new-feature
    [Documentation]    Scenario: Invalid login, we should receive an error message when we are trying to log in with invalid credentials.

    GIVEN that I'm on the login page
    WHEN I enter invalid username 
    AND invalid password
    THEN press the submit button
    THEN Message Should Be Visible



*** Test Cases ***
Valid Login
    [Documentation]    Scenario: Valid login, I should be logged in succesfully and be redirected to the home page when I enter my valid credentials.
    GIVEN that I'm on the login page
    WHEN I enter valid username
    AND valid password
    THEN press the submit button
    THEN successful message should be visible


    

    