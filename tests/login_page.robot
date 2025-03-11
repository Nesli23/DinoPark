*** Settings ***
Documentation    Grupp 9(Nesli,Tuba, Quratulain)
Library    SeleniumLibrary
Variables    C:/Users/nesli/Documents/GitHub/ContinuousTesting/DinoPark/variables.py
Resource    ../resources/keywords_files/keywords.robot
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}

Test Teardown    Close Browser


*** Test Cases ***
Invalid Login
    [Tags]    Nesli
    [Documentation]    Scenario: Invalid login, we should receive an error message when we are trying to log in with invalid credentials.

    GIVEN that I'm on the login page
    WHEN I enter invalid username 
    AND invalid password
    THEN press the submit button
    THEN Message Should Be Visible


    # Acceptance Criteria:
    #...    I should not be logged in when I enter invalid credentials.
    #...    Error message informing about invalid credentials should appear. 


*** Test Cases ***
Valid Login
    [Documentation]    Scenario: Valid login, I should be logged in succesfully and be redirected to the home page when I enter my valid credentials.
    GIVEN that I'm on the login page
    WHEN I enter valid username
    AND valid password
    THEN press the submit button
    THEN successful message should be visible



    

    