*** Settings ***
Metadata    Author    Nesli
Documentation    Testing the login page in order to make sure that the customer can log in with credentials
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    #Close Browser

*** Test Cases ***
Ticket Purchase Weekday
    [Documentation]    Scenario: Stina-Palle want to buy tickets for the weekday
    ...                GIVEN that Stina-Palle is logged in 
    ...                WHEN she goes to the booking page
    ...                THEN she should be able to choose tickets for the weekday
    ...                AND add them to the cart                
    Click Element    ${buy_tickets_button}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select Ticket Type    ${ticket_type_dropdown}    ${adult_ticket_value}
    Select Ticket Category    ${ticket_category_dropdown}    ${regular_ticket_value}
    Select Quantity Of Tickets    ${ticket_quantity_input}    ${ticket_quantity_value}
    Add Ticket To Cart Button    ${add_to_ticket_cart_button}


