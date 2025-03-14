*** Settings ***
Library        SeleniumLibrary
Library        String
Library        Collections
Documentation    Testing Jurasstina-Kalle Park page 
Resource    ${EXECDIR}/resources/keywords_files/keywords_Quratulain.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Registration Page  ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser 


*** Variables ***
${URL}    file://${EXECDIR}/website/jurap.html
${Browser}  Chrome




*** Test Cases ***
Proceed to checkout
    [Documentation]  Scenario: Display the selected booked tickets and the total price amount before checkout.
    [Tags]     #new-feature

    Given I registered as a user and I login
    When I select VIP tickets for children and adults
    And I select a weekend safari tour
    Then I verify the total amount 
    And I proceed to checkout

    
    



