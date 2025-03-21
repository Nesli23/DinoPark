*** Settings ***
Documentation    Grupp 9 (Nesli,Tuba, Quratulain)
Library    SeleniumLibrary
Library    ${EXECDIR}/resources/utils/DateUtility.py
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/stinapalle_keywords.robot
Resource    ${EXECDIR}/resources/keywords_files/shared_keywords.robot
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    #Close Browser

*** Test Cases ***

Safari Booking Weekday
    [Documentation]    Scenario: Stina-Palle want to buy tickets for the weekday
    [Tags]    #new-feature
    GIVEN that Stina-Palle has booked her tickets 
    WHEN she goes to the Safari tour page
    THEN she should be able to choose Safari date and type
    And add to cart
