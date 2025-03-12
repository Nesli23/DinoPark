*** Settings ***
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py

***keywords***
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

Given Kim is registered as user
    Click Element   ${register_button}
    Input Text  ${username_input_registration}  ${valid_username_ticket}
    Input Text  ${password_input_registration}  ${valid_password_ticket}
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

Then Kim is on the ticket purchase page
    Wait Until Element Is Visible    ${buy_tickets_button}    10s
    Click Element    ${buy_tickets_button}


And Kim selects VIP tickets for adults
    [Arguments]    ${quantity}    ${type}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    10s
    Select From List By Value    ${ticket_type_dropdown}    ${type}
    Select From List By Value    ${ticket_category_dropdown}    ${VIP}
    Input Text    ${ticket_quantity_input}    ${quantity}

Then Kim receives a confirmation message 
    Click Button    //*[@id="ticket-form"]/button
    Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}
    Sleep  2s

And Kim selects VIP tickets for children
    [Arguments]    ${quantity}    ${type}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    10s
    Select From List By Value    ${ticket_type_dropdown}    ${type}
    Select From List By Value    ${ticket_category_dropdown}    ${VIP}
    Input Text    ${ticket_quantity_input}    ${quantity}

And Kim selects a weekend safari tour
    Wait Until Element Is Visible    ${book_safari_button}    10s
    Click Element   ${book_safari_button}

And Enter a date and type for safari 
    #Input Text  ${safari_date_input}  ${safari_date}
    Input Text  ${Select_Date}  ${Date}
    Select From List By Value  ${Safari_Type}  ${Herbivore_Tour_With_Feeding} 

Then entre items into the cart
    # Add to cart #
    Click Button     //*[@id="safari-form"]/button
    Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}
    Sleep   2s

And proceed to checkout
    Click Element   cart-nav
    Page Should Contain Element    cart-section
    Page Should Contain Element    cart-details 
    Page Should Contain Element    cart-total
    Wait Until Element Is Visible  ${Total_amount}   timeout=10
    # Get the text of the element that shows the total amount
    #${total_text}=  Get Text  ${Total_amount}
    #Trim any leading or trailing spaces (if any)
    #${total_text}=  Strip String  ${total_text}
Then verify the total amount   
    # Verify that the total text matches the expected total (e.g., "$500")
    Element Should Contain    ${Total_amount}    ${Expected_Total_Amount}
    #Should Be Equal As Strings  ${total_text}  ${Expected_Total_Amount}
    Click Button       checkout-button
    Alert Should Be Present     ${Expected_ALert_Text_2}   ACCEPT  ${timeout_1}

And logout from page   
    #To Logout
    Click Element   logout-nav
    #Click Button     logout-link
    Alert Should Be Present     ${Expected_ALert_Text_3}   ACCEPT  ${timeout_1}
    [Teardown]  Close Browser

And Kim removes 4 tickets from the cart
    Click Element   cart-nav
    Page Should Contain Element    cart-section
    Page Should Contain Element    cart-details 
    Click Button    //*[@id="cart-details"]/ul/li[2]/button  # To remove  the second index item from the cart
    sleep  2s
Then conformation message of remove tickets display   
    Click Button       checkout-button                        # to proceed to checkout
    Alert Should Be Present     ${Expected_ALert_Text_4}   ACCEPT  ${timeout_1}







    


Prepare Browser
    [Arguments]    ${url_test}    ${browser_test}    ${title_test}   ${username}  ${password} 
    Open Browser    ${url_test}    ${browser_test} 
    Maximize Browser Window  
    Click Element       locator=//*[@id="register-nav"]
    Input Text   id = reg-username    ${username}
    Input Text  id = reg-password  ${password}   
    Click Button  //*[@id="register-form"]/button
    Click Element       //*[@id="login-nav"]
    Input Text  id = login-username  ${username}
    Input Text  id = login-password  ${password}
    Click Button      //*[@id="login-form"]/button

Type In RegUsername 
    [Arguments]   ${username}
    Input Text  id = reg-username  ${username}
Type In RegPassword 
    [Arguments]   ${password}
    Input Text  id = reg-password  ${password}      
Type In Username 
    [Arguments]   ${username}
    Input Text  id = login-username  ${username}
Type In Password 
    [Arguments]   ${password}
    Input Text  id = login-password  ${password}

Message Should Be Visible
    [Arguments]    ${verify_message_element_test}     ${verify_message_test}  ${timeout}
    Wait Until Element Contains   ${verify_message_element_test}    ${verify_message_test}  ${timeout}
    Element Text Should Be   ${verify_message_element_test}    ${verify_message_test}

Error Message Should Be Visible  
    [Arguments]    ${error_message_element_test}    ${error_message_test}  ${timeout}
    Wait Until Element Contains    ${error_message_element_test}  ${error_message_test}   ${timeout}
    Element Text Should Be    ${error_message_element_test}  ${error_message_test} 


