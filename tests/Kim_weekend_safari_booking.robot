*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing ticket purchase restriction for users who are not logged in.
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
*** Test Cases ***
Scenario: Kim books a weekend safari tour for whole family
    [Documentation] 
    [Tags]      Tuba
    Given Kim is registered as user
    When Kim is logged in
    Then Kim is on the ticket purchase page
    And Kim selects 2 VIP tickets for adults   2    ${Adult}
    And proceeds to checkout and confirms the purchase
    Then Kim should receive a confirmation message
    When The user selects a weekend safari tour
    And Enter a date for safari 
    And Proceeds to checkout and confirm
    Then The safari booking should be confirmed 

