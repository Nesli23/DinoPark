*** Settings ***
Library    SeleniumLibrary


*** Keywords ***

Open Browser To Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

Click Register Button
    [Arguments]    ${register_button}
    Click Element    ${register_button}    

Register Username
    [Arguments]    ${username_input_registration}    ${valid_username}    ${password_input_registration}    ${valid_password}    ${register_submit_button}        
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}

Click Login Button
    [Arguments]    ${login_button}
    Click Element    ${login_button}

Type In Username
    [Arguments]    ${username_element}    ${username}
    Wait Until Element Is Visible    ${username_element}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_element}    ${username}

Type In Password
    [Arguments]    ${password_element}    ${password}
    Wait Until Element Is Visible    ${password_element}    timeout=10s
    Input Text    ${password_element}    ${password}

Click Submit Button
    [Arguments]    ${submit_button_xpath}
    Click Element    ${submit_button_xpath}

Verify Message Should Be Visible
    [Arguments]    ${verify_message_element}    ${verify_message_text}    ${timeout}
    Wait Until Element Contains    ${verify_message_element}    ${verify_message_text}    ${timeout}
    Element Text Should Be    ${verify_message_element}    ${verify_message_text}

Message Should Be Visible
    [Arguments]    ${error_message_element}    ${error_message_text}    ${timeout}
    Wait Until Element Contains   ${error_message_element}    ${error_message_text}    ${timeout}
    Element Text Should Be    ${error_message_element}    ${error_message_text}

Click Buy Tickets Button
    [Arguments]    ${buy_tickets_button}
    Click Element    ${buy_tickets_button}

Select Ticket Type
    [Arguments]    ${ticket_type_dropdown}    ${ticket_type}    
    Wait Until Element Is Visible    ${ticket_type_dropdown}    timeout=10s
    Select From List By Value    ${ticket_type_dropdown}    ${ticket_type}   

Select Ticket Category
    [Arguments]    ${ticket_category_dropdown}    ${regular_ticket_value}    
    Select From List By Value    ${ticket_category_dropdown}    ${regular_ticket_value}    

Select Quantity Of Tickets
    [Arguments]     ${ticket_quantity_input}    ${ticket_quantity_value}    
    Input Text    ${ticket_quantity_input}    ${ticket_quantity_value}   

Add Ticket To Cart Button
    [Arguments]    ${add_to_ticket_cart_button}
    Click Element    ${add_to_ticket_cart_button}

Click Book Safari Ticket Button 
    [Arguments]    ${book_safari_button}
    Click Element    ${book_safari_button} 

Select Safari Tour Date
    [Arguments]    ${safari_date_input}    ${date}    
    Input Text    ${safari_date_input}    ${date}

Select Safari Tour Type
    [Arguments]    ${select_safari_type}    ${safari_value}
    Select From List By Value    ${select_safari_type}    ${safari_value}  

Add To Cart Button
    [Arguments]    ${add_to_cart_button}  
    Click Element    ${add_to_cart_button}






# Safari Ticket Button
  #  [Arguments]    ${safari_ticket_button_test}
   # Click Element    ${safari_ticket_button_test}    

    

#Login  #Lösningn för automatiserad inloggning 
 #   [Arguments]    ${username}    ${password}
  #  Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}  # Öppna webbläsaren och sidan
   # Type In Username    ${username_input_id_test}    ${username}
    #Type In Password    ${password_input_id_test}    ${password}
    #Click Submit Button    ${submit_button_test}  # Klicka på inloggningsknappen
    #Wait Until Element Is Visible    ${verify_message_element_test}    timeout=${standard_timeout}
    #Element Text Should Be    ${verify_message_element_test}    ${verify_message_test}
    #Log    "Successfully logged in."


 #Select Safari Tour Date
  #  [Arguments]    ${date_element}    ${date}
   # Wait Until Element Is Visible    ${date_element}    timeout=10s
    #Input Text    ${date_element}    ${date}

#Select Safari Tour Type
    # [Arguments]    ${type_element}    ${type}
    #Wait Until Element Is Visible    ${type_element}    timeout=10s
   # Select From List By Value    ${type_element}    ${type}    

#Add To Cart Button
 #   [Arguments]    ${add_to_cart_button_test}
  #  Click Element    ${add_to_cart_button_test}    

#Wait Until Element Is Not Clickable
 #   [Arguments]    ${login_button_test}
  #  Wait Until Element Is Not Clickable    ${login_button_test}    




    # Select From List By Label väljer alternativ baserat på synlig text
    # Select From List By Value används om <option> - elementet har en value attibut
    
    
