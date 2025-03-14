*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing successful VIP ticket purchase for adults and children.
Library    SeleniumLibrary
Resource    keywords_ticket_tuba.robot
Variables    variables_tuba.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
 
*** Test Cases ***
Scenario: Successful VIP Ticket Purchase
   [Tags]      Tuba
   
    Given that Kim is logged in
    When Kim navigates to the ticket purchase page
    Then Kim should be able to choose 2 Adult VIP ticket
    And adds the ticket to the cart
    