*** Settings ***
Documentation    Grupp 9(Nesli,Tuba, Quratulain)
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/keywords.robot
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}

Test Teardown    Close Browser


*** Test Cases ***
Invalid Login
    [Tags]    Nesli
    [Documentation]    Testar att ett felmeddelande visas vid försök att logga in med ogiltiga uppgifter.

    Öppna inloggningssidan
    Ange ogiltigt användarnamn
    Ange ogiltigt lösenord
    Klicka på inloggningsknappen
    Verifiera felmeddelande för ogiltiga uppgifter



    # Acceptance Criteria:
    #...    I should not be logged in when I enter invalid credentials.
    #...    Error message informing about invalid credentials should appear. 
    #../resources/keywords_files/keywords.robot
    #C:/Users/nesli/Documents/GitHub/ContinuousTesting/DinoPark/variables.py


*** Test Cases ***
Valid Login
    [Documentation]    Testar att användaren loggas in framgångsrikt och omdirigeras till startsidan.
    
    Öppna inloggningssidan
    Ange giltigt användarnamn
    Ange giltigt lösenord
    Klicka på inloggningsknappen
    Verifiera lyckad inloggning och omdirigering



    

    