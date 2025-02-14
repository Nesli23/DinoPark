*** Settings ***
Documentation    Testing the login page in order to make sure that the customer can log in with credentials
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Invalid Login
    Log    ${invalid_username}
    Log    ${invalid_password}
    Click Login Button    ${login_button_test}    
    Type In Username    ${username_input_id_test}    ${invalid_username}   
    Type In Password    ${password_input_id_test}    ${invalid_password}
    Click Button    ${submit_button_test}    #xpath=//*[@id="login-form"]/button    # Submit knappen efter att användaruppgifter har fyllts i 
    Message Should Be Visible    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
    Message Should Be Visible    ${error_message_element_test}    ${error_message_test}    ${standard_timeout}


*** Test Cases ***
Valid Login
    Click Login Button    ${login_button_test}    
    Type In Username    ${username_input_id_test}    ${valid_username}   
    Type In Password    ${password_input_id_test}    ${valid_password}
    Click Button    ${submit_button_test}    #xpath=//*[@id="login-form"]/button    # Submit knappen efter att användaruppgifter har fyllts i 
    Message Should Be Visible    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
    
    
    

    