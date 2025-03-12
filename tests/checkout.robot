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
Scenario: Display the selected booked tickets and the total price amount before checkout.
    [Documentation]
    [Tags]      Quratulain

    Given I registered as a user
    When I logged in
    And I am on ticket purchase page
    Then I select VIP tickets for adults    
    And I receive a confirmation message 
    Then I select VIP tickets for children  
    And I receive a confirmation message 
    Then I select a weekend safari tour
    And I enter a date and type for safari 
    Then I enter items into cart after safari booking
    And I proceed to checkout
    Then I verify the total amount
    And I logout from page   


