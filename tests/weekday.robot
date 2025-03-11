*** Settings ***
Documentation    Grupp 9(Nesli,Tuba, Quratulain)
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/keywords.robot
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Ticket Purchase Weekday
    [Documentation]    Testar att Stina-Palle kan köpa biljetter för en vardag.
    [Tags]    Nesli
    
    Stina-Palle är inloggad
    Öppna bokningssidan
    Välj biljetter för en vardag
    Lägg till i varukorgen     
    
 #Acceptance criteria: 
 


