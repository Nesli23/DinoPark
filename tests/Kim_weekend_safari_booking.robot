*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing ticket purchase restriction for users who are not logged in.
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
 
*** Test Cases ***
Scenario: Kim books a weekend safari tour for the whole family
    [Tags]      Tuba
 
   Given ticket is booked
   When Kim navigates to the Safari tour page
   Then Kim should be able to choose Safari tour date and type
   And add to cart
 