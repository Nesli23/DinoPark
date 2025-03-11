*** Settings ***
Documentation    Grupp 9(Nesli,Tuba, Quratulain)
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/keywords.robot
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Ticket Purchase Weekday
    [Documentation]    Scenario: Stina-Palle want to buy tickets for the weekday
    [Tags]    Nesli
    GIVEN that Stina-Palle is logged in 
    WHEN she goes to the booking page
    THEN she should be able to choose tickets for the weekday
    AND add them to the cart
    
 #Acceptance criteria: 
 


