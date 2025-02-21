*** Settings ***
Library    SeleniumLibrary
 
*** Keywords ***
Open Browser To Ticket Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains    ${title}    ${standard_timeout}
Given Kim is on the registration page
    Click Element   ${register_button}
When Kim registers with valid credentials
    Input Text  ${username_input_registration}  ${valid_username_ticket}
    Input Text  ${password_input_registration}  ${valid_password_ticket}
    Click Element   ${register_submit_button}
Then Kim should be redirected to the login page
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}   10s
And Kim logs in with the registered credentials
    Input Text    ${username_input_id_test}    ${valid_username_ticket}
    Wait Until Element Is Visible   ${password_input_id_test}   10s
    Input Text    ${password_input_id_test}    ${valid_password_ticket}
 
And Kim is logged in
    Wait Until Element Is Visible   ${submit__button_test}  10s
    Click Element    ${submit__button_test}
    Wait Until Element Is Visible   ${verify_message_element_test}  10s
    Element should Contain     ${verify_message_element_test}   ${verify_message_test} 
    Sleep   4s
And Kim is on the ticket purchase page
    Wait Until Element Is Visible    ${tickets_nav}    10s
    Click Element    ${tickets_nav}
When Kim selects 2 VIP tickets for adults
    [Arguments]    ${quantity}    ${type}
    Wait Until Element Is Visible    ${ticket_type}    10s
    Select From List By Value    ${ticket_type}    ${type}
    Select From List By Value    ${ticket_category}    ${VIP}
    Input Text    ${ticket_quantity}    ${quantity}
And proceeds to checkout and confirms the purchase
    Wait Until Element Is Visible   ${proceed_button}   10s
    Click Element    ${proceed_button}
Then Kim should receive a confirmation message
    #Handle Alert    accept
    ${alert_text}  Handle Alert
    Should Be Equal  ${alert_text}  ${alert_text_Confirmation_VIP}
Given Kim is on the ticket purchase page
    Wait Until Element Is Visible    ${tickets_nav}    10s
    Click Element    ${tickets_nav}
Then Kim should receive an error message indicating login is required
    ${alert_text}  Handle Alert
    Should Be Equal  ${alert_text}  ${error_message_text}
When The user selects a weekend safari tour
    Wait Until Element Is Visible    ${book_safari_button}    10s
    Click Element   ${book_safari_button}
And Enter a date for safari 
    Input Text  ${safari_date_input}  ${safari_date}
And Proceeds to checkout and confirm
    Wait Until Element Is Visible    ${safari_proceed_checkout_button}    10s
    Click Element   ${safari_proceed_checkout_button}
Then The safari booking should be confirmed
    ${alert_text}  Handle Alert
    Should Be Equal  ${alert_text}  ${safari_booking_confirm_text}