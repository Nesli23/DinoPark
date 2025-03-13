*** Settings ***
Library    SeleniumLibrary
Library    ${EXECDIR}/utils/utils.py
Variables    ${EXECDIR}/variables.py
Library    OperatingSystem
Library    DateTime



*** Keywords ***

I press on the Register button    #Kim
    Click Element    ${register_button}    

I fill in the username and password     #Kim
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}


That I'm on the login page    #Kim
    Click Element    ${login_button_test}

I enter invalid username    #Kim
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${invalid_username}

Invalid password    #Kim
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${invalid_password}

 
Press the submit button    #Kim
    Wait Until Element Is Visible    ${submit_button_test}    timeout=4s
    Click Element    ${submit_button_test}   

Message Should Be Visible    #Kim
    Wait Until Element Contains   ${error_message_element_test}    ${error_message_test}    ${standard_timeout}
    Element Text Should Be    ${error_message_element_test}    ${error_message_test}


I enter valid username    #Kim
    Wait Until Element Is Visible    ${username_input_id_test}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_input_id_test}    ${valid_username}

Valid password    #Kim   
    Wait Until Element Is Visible    ${password_input_id_test}    timeout=10s
    Input Text    ${password_input_id_test}    ${valid_password}

Successful message should be visible    #Kim
    Wait Until Element Contains    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
    Element Text Should Be    ${verify_message_element_test}    ${verify_message_test}
