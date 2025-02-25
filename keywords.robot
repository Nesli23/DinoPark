*** Settings ***
Library    SeleniumLibrary
Variables    variables.py


*** Keywords ***


Open Browser To Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

Given I press on the Register button
    Click Element    ${register_button}    

When I fill in the username and password     
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}

  


GIVEN that I'm on the login page
    Click Element    ${login_button_test}

WHEN I enter invalid username
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${invalid_username}

AND invalid password
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${invalid_password}

 
THEN press the submit button
    Wait Until Element Is Visible    ${submit_button_test}    timeout=4s
    Click Element    ${submit_button_test}   

THEN Message Should Be Visible
    Wait Until Element Contains   ${error_message_element_test}    ${error_message_test}    ${standard_timeout}
    Element Text Should Be    ${error_message_element_test}    ${error_message_test}


WHEN I enter valid username
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${valid_username}

AND valid password   
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password}

THEN successful message should be visible
    Wait Until Element Contains    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
    Element Text Should Be    ${verify_message_element_test}    ${verify_message_test}


GIVEN that Stina-Palle is logged in
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


WHEN she goes to the booking page
    Click Element    ${buy_tickets_button}

THEN she should be able to choose tickets for the weekday   
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select From List By Value    ${ticket_type_dropdown}    ${adult_ticket_value}      
    Select From List By Value    ${ticket_category_dropdown}    ${regular_ticket_value}       
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}   

AND add them to the cart
    Click Element    ${add_to_ticket_cart_button}
    Handle Alert    accept


GIVEN that Stina-Palle has booked her tickets
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
    Click Element    ${add_to_ticket_cart_button}
    Handle Alert    accept 


WHEN she goes to the Safari tour page 
    Click Element    ${book_safari_button} 

THEN she should be able to choose Safari date and type   
    Input Text    ${safari_date_input}    ${date}
    Select From List By Value    ${select_safari_type}    ${select_safari_value_herbivore}  

AND add to cart   
    Click Element    ${add_to_cart_button}
    Handle Alert    accept

