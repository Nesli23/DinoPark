*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Library    SeleniumLibrary
Resource   ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables  ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Lyckat köp av en vanlig vuxenbiljett
    [Documentation]    Testar att Stina-Palle framgångsrikt köper en vanlig vuxenbiljett.
    [Tags]      Tuba
    Registrera användaren Stina-Palle
    Logga in användaren Stina-Palle
    Gå till biljettsidan
    Välj vanlig biljett    1    ${Adult}
    Lägg till i varukorgen
    Gå till kassan
    Bekräfta köpet
    Verifiera bekräftelsemeddelandet