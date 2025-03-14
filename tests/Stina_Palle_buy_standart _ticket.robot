*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Library    SeleniumLibrary
Resource   keywords_ticket_tuba.robot
Variables  variables_tuba.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
 
*** Test Cases ***
Scenario: Stina-Palle Purchases a Regular Adult Ticket
    [Tags]      Tuba
    Given Stina-Palle registers with valid credentials and logs into the website
    When Stina-Palle navigates to "Buy Tickets" and selects a "Regular Ticket" for 1 Adult
    Then adds the ticket to the cart and proceeds to checkout
    