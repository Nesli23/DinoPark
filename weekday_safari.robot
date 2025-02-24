*** Settings ***
Metadata    Author    Nesli
Documentation    Testing the login page in order to make sure that the customer can log in with credentials
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    #Close Browser

*** Test Cases ***

Safari Booking Weekday
    [Documentation]    Scenario: Stina-Palle want to buy tickets for the weekday
    ...                GIVEN that Stina-Palle has booked her tickets 
    ...                WHEN she goes to the Safari tour page
    ...                THEN she should be able to choose tickets for the weekday
    ...                AND add them to the cart   
    Click Element    ${register_button}
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}
    Sleep    3s
    Click Login Button    ${login_button_test}    
    Type In Username    ${username_input_id_test}    ${valid_username}   
    Type In Password    ${password_input_id_test}    ${valid_password}
    Click Button    ${submit_button_test}    #xpath=//*[@id="login-form"]/button    # Submit knappen efter att användaruppgifter har fyllts i 
    Message Should Be Visible    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}  
    Sleep    3s           
    Click Element    ${buy_tickets_button}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select Ticket Type    ${ticket_type_dropdown}    ${adult_ticket_value}
    Select Ticket Category    ${ticket_category_dropdown}    ${regular_ticket_value}
    Select Quantity Of Tickets    ${ticket_quantity_input}    ${ticket_quantity_value}
    Add Ticket To Cart Button    ${add_to_ticket_cart_button}
    Handle Alert    accept
    Sleep    5s
    Click Element    ${book_safari_button}
    Select Safari Tour Date    ${safari_date_input}    ${date}
    Wait Until Element Is Visible    ${select_safari_type}    timeout=10s
    Select Safari Tour Type    ${select_safari_type}    ${select_safari_value_herbivore}
    Sleep    2s
    Click Element    ${add_to_cart_button}
    Handle Alert    accept
    Sleep    3s
    Click Element    ${book_safari_button}
    Select Safari Tour Date    ${safari_date_input}    ${date}
    Wait Until Element Is Visible    ${select_safari_type}    timeout=10s
    Select Safari Tour Type    ${select_safari_type}    ${select_safari_value_trex}
    Sleep    2s
    Click Element    ${add_to_cart_button}
    Handle Alert    accept

     
    #Select Ticket Type    ${ticket_type_dropdown}    ${adult_ticket_value}
    #Select Ticket Category    ${ticket_category_dropdown}    ${regular_ticket_value}
    #Select Quantity Of Tickets    ${ticket_quantity_input}    ${ticket_quantity_value}