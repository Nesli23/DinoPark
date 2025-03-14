*** Settings ***
Library    SeleniumLibrary
Library    ${EXECDIR}/utils/DateUtility.py
Variables    ${EXECDIR}/variables.py
Library    OperatingSystem
Library    DateTime



*** Keywords ***

That Stina-Palle is logged in    #Stina-Palle
    Click Element    ${register_button}
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}  
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${valid_username}
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password}
    Wait Until Element Is Visible    ${submit_button_test}    timeout=4s
    Click Element    ${submit_button_test} 
    Sleep    3s


She goes to the booking page    #Stina-Palle
    Click Element    ${buy_tickets_button}

She should be able to choose tickets for the weekday    #Stina-Palle   
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}      
    Select From List By Value    ${ticket_category_dropdown}    ${regular_ticket_value}       
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}   

Add them to the cart    #Stina-Palle
    Click Element    ${proceed_button}
    Handle Alert    accept


That Stina-Palle has booked her tickets    #Stina-Palle
    Click Element    ${register_button}
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}  
    Click Element    ${login_button_test}
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${valid_username}
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password}
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


She goes to the Safari tour page    #Stina-palle 
    Click Element    ${book_safari_button} 

She should be able to choose Safari date and type    #Stina-Palle   
    Input Text    ${safari_date_input}    ${date}
    Select From List By Value    ${select_safari_type}    ${select_safari_value_herbivore} 

Add to cart    #Stina-Palle   
    Click Element    ${add_to_cart_button}
    Handle Alert    accept


Given Stina-Palle registers with valid credentials and logs into the website  
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

When Stina-Palle navigates to "Buy Tickets" and selects a "Regular Ticket" for 1 Adult     
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}      
    Select From List By Value    ${ticket_category_dropdown}    ${regular_ticket_value}      
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}  

Then adds the ticket to the cart and proceeds to checkout
    Click Element    ${proceed_button}
    Handle Alert    accept   
 
