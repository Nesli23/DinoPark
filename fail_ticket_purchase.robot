*** Settings ***
Metadata    Author    Tuba
Documentation    Testing ticket purchase restriction for users who are not logged in.
Library    SeleniumLibrary
Resource    keywords_ticket_tuba.robot
Variables    variables_tuba.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Scenario: Unauthorized Ticket Purchase Attempt
    [Documentation]    Scenario: Kim Try to Buy Ticket Without Login (Negative)

    Given Kim is on the ticket purchase page
    When Kim selects 2 VIP tickets for adults   2    ${Adult}
    And proceeds to checkout and confirms the purchase
    Then Kim should receive an error message indicating login is required
    

   

    #When Kim navigates to the "Buy Tickets" page again
    #And Select VIP Ticket    2    Child
    #And proceeds to checkout
    #Then Kim should receive an error message indicating login is required
    #And the purchase should not be completed

    
