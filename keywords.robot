*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To Page
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}

Type In Element
    [Arguments]    ${login_button}    ${username_element}    ${text_to_write}
    Click Element    ${login_button}
    Wait Until Element Is Visible    ${username_element}    timeout=10s  #Får felmeddelande ElementNotInteractableException. Att lägga till detta är lösning enligt AI
    Input Text    ${username_element}    ${text_to_write}
