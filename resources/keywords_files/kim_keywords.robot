*** Settings ***
Library    SeleniumLibrary
Library     ${EXECDIR}/resources/utils/DateUtility.py
Variables    ${EXECDIR}/variables.py
Library    OperatingSystem
Library    DateTime



*** Keywords ***

I press on the Register button    #Kim
    Click Element    ${register_button}    

I fill in the username and password     #Kim
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}


That I'm on the login page    #Kim
    Click Element    ${login_button_test}

I enter invalid username    #Kim
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${invalid_username}

Invalid password    #Kim
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${invalid_password}

 
Press the submit button    #Kim
    Wait Until Element Is Visible    ${register_submit_button}    timeout=4s
    Click Element    ${register_submit_button}   

Message Should Be Visible    #Kim
    Wait Until Element Contains   ${error_message_element_test}    ${error_message_test}    ${standard_timeout}
    Element Text Should Be    ${error_message_element_test}    ${error_message_test}


I enter valid username    #Kim
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${valid_username}

Valid password    #Kim   
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password}

Successful message should be visible    #Kim
    Wait Until Element Contains    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
    Element Text Should Be    ${verify_message_element_test}    ${verify_message_test}

Given that Kim is logged in
    Click Element    ${register_button}
    Input Text    ${username_input_registration}    ${valid_username_ticket}
    Input Text    ${password_input_registration}    ${valid_password_ticket}
    Click Element    ${register_submit_button}  
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s
    Input Text    ${username_input_id_test}   ${valid_username_ticket}
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password_ticket}
    Wait Until Element Is Visible    ${submit__button_test}    timeout=4s
    Click Element    ${submit__button_test}
    Sleep    3s

When Kim navigates to the ticket purchase page
    Wait Until Element Is Visible    ${buy_tickets_button}    10s
    Click Element    ${buy_tickets_button}

Then Kim should be able to choose 2 Adult VIP ticket
    Wait Until Element Is Visible    ${ticket_type_dropdown}    10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}
    Select From List By Value    ${ticket_category_dropdown}    ${VIP}
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}


And adds the ticket to the cart
    Click Button    ${add_to_cart_button}

Given I am on the ticket purchase page
    Wait Until Element Is Visible    ${buy_tickets_button}    10s
    Click Element    ${buy_tickets_button}

When I select 2 VIP tickets for adults
    [Arguments]    ${quantity}    ${type}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    10s
    Select From List By Value    ${ticket_type_dropdown}    ${type}
    Select From List By Value    ${ticket_category_dropdown}    ${VIP}
    Input Text    ${ticket_quantity_input}    ${quantity}

And I try to proceed to checkout
    Wait Until Element Is Visible   ${proceed_button}   10s
    Click Element    ${proceed_button}

Then I should receive an error message indicating login is required
    Sleep   5s
    ${alert_text}=  Handle Alert
    Should Be Equal  ${alert_text}  ${error_message_text}

Given Kim press on the Register button
    #Wait Until Element Is Visible    ${register_submit_button}    timeout=10s
    Click Element    ${register_button}

When Kim fill in the username and password
    Input Text    ${username_input_registration}    ${valid_username_ticket}
    Input Text    ${username_input_registration}    ${valid_password_ticket}
    Click Element    ${register_button}

Given that Kim press the login button    #kim
    Click Element    ${login_button_test}

When login in with valid credentials    #Kim
    Wait Until Element Is Visible    ${username_input_id_test}   10s
    Input Text    ${username_input_id_test}    ${valid_username_ticket}
    Wait Until Element Is Visible   ${password_input_id_test}   10s
    Input Text    ${password_input_id_test}    ${valid_password_ticket}

Then kim should be redirected to the home page    #kim
    Click Element    ${login_button_test}
 