* Settings *
Metadata    Author    Tuba    Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing ticket purchase restriction for users who are not logged in.
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
 
* Test Cases *
Scenario: Unauthorized Ticket Purchase Attempt
    [Documentation]    Testing ticket purchase restriction for unauthorized users
    [Tags]    Tuba
    Given I am on the ticket purchase page
    When I select 2 VIP tickets for adults    2    ${Adult}
    And I try to proceed to checkout
    Then I should receive an error message indicating login is required
    