*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing ticket purchase restriction for users who are not logged in.
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
*** Test Cases ***
Boka en weekend-safari för hela familjen
    [Documentation] 
    [Tags]      Tuba
    Registrera användaren Kim
    Logga in användaren Kim
    Verifiera biljettsidan
    Välj VIP-biljetter    2    ${Adult}
    Gå till kassan
    Bekräfta köpet
    Verifiera bekräftelsemeddelandet
    Välj weekend-safari
    Ange datum för safari
    Gå till kassan
    Bekräfta safari-bokningen
    Verifiera safari-bekräftelse

