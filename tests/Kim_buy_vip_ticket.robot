*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing successful VIP ticket purchase for adults and children.
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Lyckat köp av VIP-biljetter
   [Documentation]    Testar att en användare kan köpa VIP-biljetter för vuxna och barn separat.
   [Tags]      Tuba
    Registrera användaren Kim
    Logga in användaren Kim
    Verifiera biljettsidan
    Välj VIP-biljetter    2    ${Adult}
    Gå till kassan
    Bekräfta köpet
    Verifiera bekräftelsemeddelandet

