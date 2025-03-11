*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Library    SeleniumLibrary
Resource   ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables  ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Scenario: Stina-Palle Purchases a Regular Adult Ticket
    [Documentation]    Testing Stina-Palle's successful purchase of a Regular Ticket for an adult.
    [Tags]      Tuba
    Given Stina-Pelle is on the registration page and registrate with valid credentials
    And Stina-Palle is logged into the website
    And Stina-Palle navigates to "Buy Tickets"
    When selects "Regular Ticket" for 1 Adult
    And adds the ticket to the cart and proceeds to checkout
    Then Stina-Palle should receive a confirmation message