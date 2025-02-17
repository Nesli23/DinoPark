*** Settings ***
Metadata    Author    Nesli
Documentation    Testing the login page in order to make sure that the customer can log in with credentials
Library    SeleniumLibrary
Resource    keywords.robot
Variables    variables.py
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Invalid Login
    [Documentation]    Scenario: Invalid login, we should receive an error message when we are trying to log in with invalid credentials.
    ...                GIVEN that I'm on the log in page
    ...                WHEN I enter invalid credentials
    ...                THEN I should get an error message
    ...
    ...                Acceptance Criteria:
    ...                - I should not be logged in when I enter invalid credentials.
    ...                - Error message informing about invalid credentials should appear. 
    Click Login Button    ${login_button_test}    
    Type In Username    ${username_input_id_test}    ${invalid_username}   
    Type In Password    ${password_input_id_test}    ${invalid_password}
    Click Button    ${submit_button_test}    #xpath=//*[@id="login-form"]/button    # Submit knappen efter att användaruppgifter har fyllts i 
    Message Should Be Visible    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
    Message Should Be Visible    ${error_message_element_test}    ${error_message_test}    ${standard_timeout}


*** Test Cases ***
Valid Login
    [Documentation]    Scenario: Valid login, I should be logged in succesfully and be redirected to the home page when I enter my valid credentials.
    ...                GIVEN that I'm on the log in page
    ...                WHEN I enter valid credentials
    ...                THEN I should be logged in successfully
    ...                AND be redirected to the home page. 
    ...
    ...                Acceptance Criteria:
    ...                - I should be logged in successfully when I enter valid credentials.
    ...                - Error message should not appear.
    Click Login Button    ${login_button_test}    
    Type In Username    ${username_input_id_test}    ${valid_username}   
    Type In Password    ${password_input_id_test}    ${valid_password}
    Click Button    ${submit_button_test}    #xpath=//*[@id="login-form"]/button    # Submit knappen efter att användaruppgifter har fyllts i 
    Message Should Be Visible    ${verify_message_element_test}    ${verify_message_test}    ${standard_timeout}
    
    
    

    