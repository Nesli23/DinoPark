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
Remove ticket(s) from the cart
    [Documentation]  Scenario: I as a user should be able to cancel or remove ticket(s) from the cart after booking it.
    [Tags]     #new-feature

    Given I registered as a user and I login
    When I select tickets for booking
    And I select wrong tickets
    And I enter items into the cart 
    Then I remove unwanted tickets from the cart
    And I receive a conformation message upon ticket removal
    
    