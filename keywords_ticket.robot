*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Ticket Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains    ${title}    ${standard_timeout}

Login As Kim
    Click Element    ${login_button_test}
    Sleep   2s
    Input Text    ${username_input_id_test}    ${valid_username_ticket}
    Sleep   2s
    Input Text    ${password_input_id_test}    ${valid_password_ticket}
    Sleep   2s
    Click Element    ${submit__button_test}
   
    Sleep   2s
    Element should not Contain     ${verify_message_element_test}   ${verify_message_test} 
    
    
Navigate To Buy Tickets Page
    Sleep   2s
    Wait Until Element Is Visible    ${tickets_nav}    ${standard_timeout}
    Click Element    ${tickets_nav}
    Wait Until Element Is Visible    ${ticket_type}    ${standard_timeout}

Select VIP Ticket
    [Arguments]    ${quantity}    ${type}
    Wait Until Element Is Visible    ${ticket_type}    ${standard_timeout}
    Select From List By Value    ${ticket_type}    ${type}
    Select From List By Value    ${ticket_category}    ${VIP}
    Input Text    ${ticket_quantity}    ${quantity}
    Sleep   2s
Proceed To Checkout And Confirm
    Click Element    ${proceed_button}
    Click Element    ${confirm_button}
    Wait Until Element Is Visible    ${confirmation_message_element}    ${standard_timeout}

# ${alert_text}    Get Alert Message
# Should Contain    ${alert_text}    Ticket purchase confirmed
# Handle Alert    accept

