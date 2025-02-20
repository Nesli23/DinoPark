*** Settings ***
Metadata    Author    Tuba
Documentation    Testing ticket purchase restriction for users who are not logged in.
Library    SeleniumLibrary
Resource    keywords_ticket.robot
Variables    variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
*** Test Cases ***
Scenario: Kim books a weekend safari tour for whole family

    Given Kim is on the registration page
    When Kim registers with valid credentials
    Then Kim should be redirected to the login page
    And Kim logs in with the registered credentials
    And Kim is logged in
    And Kim is on the ticket purchase page
    When Kim selects 2 VIP tickets for adults   2    ${Adult}
    And proceeds to checkout and confirms the purchase
    Then Kim should receive a confirmation message
    When The user selects a weekend safari tour
    And Enter a date for safari 
    And Proceeds to checkout and confirm
    Then The safari booking should be confirmed

