*** Settings ***
Documentation    Testing the register page, user should be able to register with username and password
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/kim_keywords.robot
Resource    ${EXECDIR}/resources/keywords_files/shared_keywords.robot
Resource    ${EXECDIR}/resources/keywords_files/keywords_Quratulain.robot     

Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser


*** Test Cases ***
Register User
    [Documentation]    Scenario: User should be able to register with username and password
    [Tags]    #new-feature
    Given I press on the Register button
    When I fill in the username and password
    Then press the submit button
   

Invalid Login
    [Tags]    #new-feature
    [Documentation]    Scenario: Invalid login, we should receive an error message when we are trying to log in with invalid credentials.

    GIVEN that I'm on the login page
    WHEN I enter invalid username 
    AND invalid password
    THEN press the submit button
    THEN Message Should Be Visible


Valid Login
    [Documentation]    Scenario: Valid login, I should be logged in succesfully and be redirected to the home page when I enter my valid credentials.
    GIVEN that I'm on the login page
    WHEN I enter valid username
    AND valid password
    THEN press the submit button
    THEN successful message should be visible

Kim registers successfully
    [Documentation]
    [Tags]  #new-feature
    Given Kim press on the Register button
    When Kim fill in the username and password
    Then press the submit button
    
Kim logs in successfully
    [Documentation]
    Given that Kim press the login button
    When login in with valid credentials
    Then kim should be redirected to the home page

Scenario: Successful VIP Ticket Purchase
   [Tags]      #new-feature
   
    Given that Kim is logged in
    When Kim navigates to the ticket purchase page
    Then Kim should be able to choose 2 Adult VIP ticket
    And adds the ticket to the cart
    
Scenario: Unauthorized Ticket Purchase Attempt
    [Documentation]    Testing ticket purchase restriction for unauthorized users
    [Tags]    #new-feature
    Given I am on the ticket purchase page
    When I select 2 VIP tickets for adults    2    ${Adult}
    And I try to proceed to checkout
    Then I should receive an error message indicating login is required
    
Scenario: Kim books a weekend safari tour for the whole family
    [Tags]      #new-feature
 
   Given ticket is booked
   When Kim navigates to the Safari tour page
   Then Kim should be able to choose Safari tour date and type
   And add to cart

Remove ticket(s) from the cart
    [Documentation]  Scenario: I as a user should be able to cancel or remove ticket(s) from the cart after booking it.
    [Tags]     #new-feature

    Given I registered as a user and I login
    When I select tickets for booking
    And I select wrong tickets
    And I enter items into the cart 
    Then I remove unwanted tickets from the cart
    And I receive a conformation message upon ticket removal

    
    
    
 