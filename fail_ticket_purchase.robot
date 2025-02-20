*** Settings ***
Metadata    Author    Tuba
Documentation    Testing ticket purchase restriction for users who are not logged in.
Library    SeleniumLibrary
Resource    keywords_ticket.robot
Variables    variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Unauthorized Ticket Purchase Attempt
    [Documentation]    Scenario: Kim and His Family Try to Buy Ticket Without Login (Negative)

    Given Kim is not logged into the website
    When Kim navigates to the "Buy Tickets" page
    And Select VIP Ticket    2    Adult
    And proceeds to checkout
    Then Kim should receive an error message indicating login is required
    And the purchase should not be completed

    Message Should Be Visible    ${error_message_element}    ${error_message_text}    ${standard_timeout}

    When Kim navigates to the "Buy Tickets" page again
    And Select VIP Ticket    2    Child
    And proceeds to checkout
    Then Kim should receive an error message indicating login is required
    And the purchase should not be completed

    Message Should Be Visible    ${error_message_element}    ${error_message_text}    ${standard_timeout}
