*** Settings ***
Library    SeleniumLibrary
Library    ${EXECDIR}/utils/utils.py
Variables    ${EXECDIR}/variables.py
Library    OperatingSystem
Library    DateTime



*** Keywords ***


Open Browser To Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

I press on the Register button
    Click Element    ${register_button}    

I fill in the username and password     
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}

  

That I'm on the login page
    Click Element    ${login_button_test}

I enter invalid username
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${invalid_username}

Invalid password
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${invalid_password}

 
Press the submit button
    Wait Until Element Is Visible    ${submit_button_test}    timeout=4s
    Click Element    ${submit_button_test}   

Message Should Be Visible
    Wait Until Element Contains   ${error_message_element_test}    ${error_message_test}    ${standard_timeout}
    Element Text Should Be    ${error_message_element_test}    ${error_message_test}


I enter valid username
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${valid_username}

Valid password   
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password}

Successful message should be visible
    Wait Until Element Contains    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
    Element Text Should Be    ${verify_message_element_test}    ${verify_message_test}


That Stina-Palle is logged in
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


She goes to the booking page
    Click Element    ${buy_tickets_button}

She should be able to choose tickets for the weekday   
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}      
    Select From List By Value    ${ticket_category_dropdown}    ${regular_ticket_value}       
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}   

Add them to the cart
    Click Element    ${proceed_button}
    Handle Alert    accept


That Stina-Palle has booked her tickets
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


She goes to the Safari tour page 
    Click Element    ${book_safari_button} 

She should be able to choose Safari date and type   
    ${date}     Get Next Weekday    ${DATE}    5    #5 står för fredag
    Input Text    ${safari_date_input}    ${date}
    Select From List By Value    ${select_safari_type}    ${select_safari_value_herbivore}  

Add to cart   
    Click Element    ${add_to_cart_button}
    Handle Alert    accept

