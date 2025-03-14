*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing successful VIP ticket purchase for adults and children.
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keywords_files/kim_keywords.robot
Resource    ${EXECDIR}/resources/keywords_files/shared_keywords.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
 
*** Test Cases ***
Scenario: Successful VIP Ticket Purchase
   [Tags]      #new-feature
   
    Given that Kim is logged in
    When Kim navigates to the ticket purchase page
    Then Kim should be able to choose 2 Adult VIP ticket
    And adds the ticket to the cart
    