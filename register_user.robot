*** Settings ***
Metadata    Author    Nesli
Documentation    Testing the login page in order to make sure that the customer can log in with credentials
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser


*** Test Cases ***
Register User
    [Documentation]    Scenario: User should be able to register with username and password
    Click Element    ${register_button}
    Input Text    ${username_input_registration}    ${valid_username}
    Input Text    ${password_input_registration}    ${valid_password}
    Click Element    ${register_submit_button}
    Click Login Button    ${login_button_test}    
    Type In Username    ${username_input_id_test}    ${valid_username}   
    Type In Password    ${password_input_id_test}    ${valid_password}
    Click Button    ${submit_button_test}    #xpath=//*[@id="login-form"]/button    # Submit knappen efter att användaruppgifter har fyllts i 
    Message Should Be Visible    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
 

