*** Settings ***
Library    SeleniumLibrary

***keywords***
Given User Open The Browser For Register And Login
    [Arguments]    ${URL}    ${Browser}    ${title}   ${username}  ${password} 
    Open Browser    ${URL}    ${Browser} 
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
    Wait Until Element Is Visible    ${ticket_type}    10s
    Select From List By Value    ${ticket_type}    ${type}
    Select From List By Value    ${ticket_category}    ${VIP}
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
    [Arguments]    ${verify_error_message_element_test}    ${verify_error_message_test}  ${timeout}
    Wait Until Element Contains    ${verify_error_message_element_test}  ${verify_error_message_test}   ${timeout}
    Element Text Should Be    ${verify_error_message_element_test}  ${verify_error_message_test} 


