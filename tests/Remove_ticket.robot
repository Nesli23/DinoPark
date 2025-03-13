*** Settings ***
Library        SeleniumLibrary
Library        String
Library        Collections
Documentation    Testing Jurasstina-Kalle Park page 
Resource       ${EXECDIR}/resources/keywords_files/keywords_Quratulain.robot 
Variables      ${EXECDIR}/variables.py
#Test Setup      Prepare Browser     ${URL}   ${Browser}  ${title}  ${username}  ${password} 
Test Setup    Open Browser To Registration Page   ${url_test}    ${browser_test}    ${title_test}
Test Teardown   Close Browser 


*** Variables ***
${URL}    file://${EXECDIR}/website/jurap.html


*** Test Cases ***
Scenario: I as a user should be able to cancel or remove ticket(s) from the cart after booking it.
    [Documentation]
    [Tags]      new-feature

    Given I registered as a user
    When I logged in
    And I am on ticket purchase page
    Then I select VIP tickets for adults  
    And I receive a confirmation message 
    Then I select more tickets
    And I receive a confirmation message 
    Then I entre items into the cart
    And I remove unwanted tickets from the cart
