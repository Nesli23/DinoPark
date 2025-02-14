*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

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
    Wait Until Element Contains    ${verify_message_element}    ${timeout}
    Element Text Should Be    ${verify_message_element}    ${verify_message_text}

Message Should Be Visible
    [Arguments]    ${error_message_element}    ${error_message_text}    ${timeout}
    Wait Until Element Contains   ${error_message_element}    ${timeout}
    Element Text Should Be    ${error_message_element}    ${error_message_text}
    
    
    
