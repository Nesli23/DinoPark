*** Settings ***
Metadata    Author    Tuba
Documentation    Testing successful VIP ticket purchase for adults and children.
Library    SeleniumLibrary
Resource    keywords_ticket.robot
Variables    variables_tuba.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Scenario: Successful VIP Ticket Purchase
   [Documentation]    Scenario: Successful Purchase for Adults and Children Separately.

    #Given The user is not logged in 
    #When They attempt to register with valid credentials
    #Then They should be redirected to the login page
    #Register an user as Kim
    #Login As The Registered User 
    #Navigate To Buy Tickets Page
    #Select VIP Ticket    2    ${Adult}
    #Proceed To Checkout And Confirm

    #Navigate To Buy Tickets Page
    #Select VIP Ticket    2    ${Child}
    #Proceed To Checkout And Confirm

#Scenario: Register and Login as Kim
    Given Kim is on the registration page
    When Kim registers with valid credentials
    Then Kim should be redirected to the login page
    And Kim logs in with the registered credentials
    And Kim is logged in
    And Kim is on the ticket purchase page
    When Kim selects 2 VIP tickets for adults   2    ${Adult}
    And proceeds to checkout and confirms the purchase
    Then Kim should receive a confirmation message