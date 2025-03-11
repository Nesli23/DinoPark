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

    Click Button  //*[@id="register-form"]/button




Given User Open The Browser For Register And Login
    [Arguments]    ${url_test}    ${browser_test}    ${title_test}   ${username}  ${password} 
    Open Browser    ${url_test}    ${browser_test} 
    Maximize Browser Window  
    #Title Should Be    ${title}
    Click Element       locator=//*[@id="register-nav"]

    Input Text   id = reg-username    ${username}
    Input Text  id = reg-password  ${password}   
    Click Button  //*[@id="register-form"]/button

    Click Element       //*[@id="login-nav"]
    Input Text  id = login-username  ${username}
    Input Text  id = login-password  ${password}

    Click Button      //*[@id="login-form"]/button

And Kim selects 2 VIP tickets for adults
    [Arguments]    ${quantity}    ${type}
    Wait Until Element Is Visible    ${ticket_type_dropdown}    10s
    Select From List By Value    ${ticket_type_dropdown}    ${type}
    Select From List By Value    ${ticket_category-dropdown}    ${VIP}
    Input Text    ${ticket_quantity}    ${quantity}
And proceeds to checkout and confirms the purchase
    Wait Until Element Is Visible   ${proceed_button}   10s
    Click Element    ${proceed_button}

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


