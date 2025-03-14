* Settings *
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py

 
* Keywords *
Open Browser To Ticket Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains    ${title}    ${standard_timeout}
 
Open Browser To Registration Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains    ${title}    ${standard_timeout}
 
# Keywords for scenario: Unauthorized Ticket Purchase Attempt
Given I am on the ticket purchase page    #Kim
    Wait Until Element Is Visible    ${buy_tickets_button}    10s
    Click Element    ${buy_tickets_button}
 
When I select 2 VIP tickets for adults    #Kim
    [Arguments]    ${quantity}    ${type}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    10s
    Select From List By Value    ${ticket_type_dropdown}    ${type}
    Select From List By Value    ${ticket_category_dropdown}    ${VIP}
    Input Text    ${ticket_category_dropdown}    ${quantity}
 
And I try to proceed to checkout    #Kim
    Wait Until Element Is Visible   ${proceed_button}   10s
    Click Element    ${proceed_button}
 
Then I should receive an error message indicating login is required
    Sleep   5s
    ${alert_text}=  Handle Alert
    Should Be Equal  ${alert_text}  ${error_message_text}
 
# Keywords for the remaining parts (kept from original code)
Given Kim is registered as user
    Click Element   ${register_button}
    Input Text  ${username_input_registration}  ${valid_username_ticket}
    Input Text  ${password_input_registration}  ${valid_password_ticket}
    
Then press the submit button            
    Click Element   ${register_submit_button}
 
When Kim is logged in
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}   10s
    Input Text    ${username_input_id_test}    ${valid_username_ticket}
    Wait Until Element Is Visible   ${password_input_id_test}   10s
    Input Text    ${password_input_id_test}    ${valid_password_ticket}
    Wait Until Element Is Visible   ${submit__button_test}  10s
    Click Element    ${submit__button_test}
    Wait Until Element Is Visible   ${verify_message_element_test}  10s
    Element should Contain     ${verify_message_element_test}   ${verify_message_test}
    Sleep   4s
 
When Kim navigates to the ticket purchase page    #Kim
    Wait Until Element Is Visible    ${buy_tickets_button}    10s
    Click Element    ${buy_tickets_button}
 
Then Kim should be able to choose 2 Adult VIP ticket    #Kim
    Wait Until Element Is Visible    ${ticket_type_dropdown}    10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}
    Select From List By Value    ${ticket_category_dropdown}    ${VIP}
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}
 
And proceeds to checkout and confirms the purchase
    Wait Until Element Is Visible   ${proceed_button}   10s
    Click Element    ${proceed_button}
 
Then Kim should receive a confirmation message
    ${alert_text}=  Handle Alert
    Should Be Equal  ${alert_text}  ${alert_text_Confirmation_VIP}
 
Given Kim is on the ticket purchase page
    Wait Until Element Is Visible    ${buy_tickets_button}    10s
    Click Element    ${buy_tickets_button}
 
When The user selects a weekend safari tour
    Wait Until Element Is Visible    ${book_safari_button}    10s
    Click Element   ${book_safari_button}
 
And Enter a date for safari
    Input Text  ${safari_date_input}  ${safari_date}
 
And Proceeds to checkout and confirm
    Wait Until Element Is Visible    ${safari_proceed_checkout_button}    10s
    Click Element   ${safari_proceed_checkout_button}
 
Then The safari booking should be confirmed
    ${alert_text}=  Handle Alert
    Should Be Equal  ${alert_text}  ${safari_booking_confirm_text}
 
# Stina-Palles Part
Given Stina-Pelle is on the registration page and registrate with valid credentials
    Click Element   ${register_button}
    Input Text  ${username_input_registration}  ${valid_username_stina}
    Input Text  ${password_input_registration}  ${valid_password_stina}
    Click Element   ${register_submit_button}
    
And Stina-Palle is logged into the website
    Wait Until Element Is Visible    ${login_button_test}    10s
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}    10s
    Input Text  ${username_input_id_test}   ${valid_username_stina}
    Wait Until Element Is Visible   ${password_input_id_test}   10s
    Input Text    ${password_input_id_test}     ${valid_password_stina}
    Wait Until Element Is Visible   ${submit__button_test}  10s
    Click Element    ${submit__button_test}
    Sleep   5s
 
And Stina-Palle navigates to "Buy Tickets"
    Wait Until Element Is Visible    ${buy_tickets_button}    10s
    Click Element    ${buy_tickets_button}
 
When selects "Regular Ticket" for 1 Adult
    Wait Until Element Is Visible    ${ticket_type_dropdown}    10s
    Select From List By Value    ${ticket_type_dropdown}    Adult
    Select From List By Value    ${ticket_category_dropdown}    Regular
    Input Text    ${ticket_quantity_input}    1
 
And adds the ticket to the cart    #Kim
    Click Button    ${add_to_cart_button}
 
Then Stina-Palle should receive a confirmation message
    ${alert_text}=  Handle Alert
    Should Be Equal  ${alert_text}  ${safari_booking_confirm_text}
 
Given that Kim is logged in    #Kim
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
 
Given I am on the registration page
    Wait Until Element Is Visible    ${register_button}    10s
    Click Element    ${register_button}
 
Given I have registered successfully
    Click Element   ${register_button}
    Wait Until Element Is Visible    ${username_input_registration}    10s
    Input Text  ${username_input_registration}  ${valid_username_ticket}
    Input Text  ${password_input_registration}  ${valid_password_ticket}
    Wait Until Element Is Visible    ${register_submit_button}    10s
    Click Element   ${register_submit_button}
    Wait Until Element Is Visible    ${login_button_test}    10s
 
When I enter valid credentials
    Input Text    ${username_input_id_test}    ${valid_username_ticket}
    Input Text    ${password_input_id_test}    ${valid_password_ticket}
    Click Element    ${submit_button_test}
    Wait Until Element Is Visible   ${verify_message_element_test}   10s
 
Given I am on the login page
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}   10s
 
When I submit valid credentials
    Input Text    ${username_input_registration}    ${valid_username_ticket}
    Input Text    ${password_input_registration}    ${valid_password_ticket}
    Click Element    ${register_submit_button}
 
Given Kim press on the Register button    #Kim
    #Wait Until Element Is Visible    ${register_submit_button}    timeout=10s
    Click Element    ${register_button}
 
When Kim fill in the username and password    #Kim
    Input Text    ${username_input_registration}    ${valid_username_ticket}
    Input Text    ${username_input_registration}    ${valid_password_ticket}
    Click Element    ${register_button}
    #Wait Until Page Contains Element    ${register_submit_button}    10s
    #Wait Until Element Is Visible       ${register_submit_button}    10s
    #Wait Until Element Is Enabled       ${register_submit_button}    10s
    #Click Element                       ${register_submit_button}
 
Given Kim has booked her ticket
    Click Element    ${register_button}
    Input Text    ${username_input_registration}    ${valid_username_ticket}
    Input Text    ${username_input_registration}    ${valid_password_ticket}
    Click Element    ${register_submit_button}
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  
    Input Text    ${username_input_id_test}    ${valid_username_ticket}
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password_ticket}
    Wait Until Element Is Visible    ${submit_button_test}    timeout=4s
    Click Element    ${submit_button_test}
    Sleep    3s
    Click Element    ${buy_tickets_button}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}      
    Select From List By Value    ${ticket_category_dropdown}    ${regular_ticket_value}       
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}  
    Click Element    ${proceed_button}
    Handle Alert    accept
 
 
Given that Kim press the login button    #kim
    Click Element    ${login_button_test}
 
When login in with valid credentials    #Kim
    Wait Until Element Is Visible    ${username_input_id_test}   10s
    Input Text    ${username_input_id_test}    ${valid_username_ticket}
    Wait Until Element Is Visible   ${password_input_id_test}   10s
    Input Text    ${password_input_id_test}    ${valid_password_ticket}
 
Then kim should be redirected to the home page    #kim
    Click Element    ${login_button_test}
 
When Kim goes to the Safari tour page
    Input Text    ${safari_date_input}    ${date}
    Select From List By Value    ${select_safari_type}    ${select_safari_value_herbivore}  
 
   
 
Given Stina-Palle registers with valid credentials and logs into the website  # Stina Palle
    Click Element    ${register_button}
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}  
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s
    Input Text    ${username_input_id_test}    ${valid_username}
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password}
    Wait Until Element Is Visible    ${submit_button_test}    timeout=4s
    Click Element    ${submit_button_test}
    Sleep    3s  
    Click Element    ${buy_tickets_button}
 
When Stina-Palle navigates to "Buy Tickets" and selects a "Regular Ticket" for 1 Adult     # STina Palle
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}      
    Select From List By Value    ${ticket_category_dropdown}    ${regular_ticket_value}      
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}  
 
Then adds the ticket to the cart and proceeds to checkout    #Stina Palle
    Click Element    ${proceed_button}
    Handle Alert    accept    
 
 
 
Given ticket is booked  
    Click Element    ${register_button}
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}  
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  
    Input Text    ${username_input_id_test}    ${valid_username}
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password}
    Wait Until Element Is Visible    ${submit_button_test}    timeout=4s
    Click Element    ${submit_button_test}
    Sleep    3s
    Click Element    ${buy_tickets_button}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}      
    Select From List By Value    ${ticket_category_dropdown}    ${VIP_ticket_value}      
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}  
    Click Element    ${proceed_button}
    Handle Alert    accept
 
 
When Kim navigates to the Safari tour page
    Click Element    ${book_safari_button}
 
Then Kim should be able to choose Safari tour date and type
    Input Text    ${safari_date_input}    ${date}
    Select From List By Value    ${select_safari_type}   ${select_safari_value_herbivore_feeding}   
 
  
 
And add to cart
    Click Element    ${safari_proceed_checkout_button}
    Handle Alert    accept