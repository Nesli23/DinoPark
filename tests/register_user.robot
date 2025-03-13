*** Settings ***
Documentation    Testing the register page, user should be able to register with username and password
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/keywords.robot

Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser


*** Test Cases ***
Register User
    [Documentation]    Scenario: User should be able to register with username and password
    [Tags]    #new-feature
    Given I press on the Register button
    When I fill in the username and password
    Then press the submit button
   
