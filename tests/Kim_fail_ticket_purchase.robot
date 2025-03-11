*** Settings ***
Metadata    Author    Tuba      Grupp9(Nesli, Tuba, Quratulain)
Documentation    Testing ticket purchase restriction for users who are not logged in.
Library    SeleniumLibrary
Resource    ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables    ${EXECDIR}/variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Scenario: Unauthorized Ticket Purchase Attempt
    [Documentation]    Scenario: Kim Try to Buy Ticket Without Login (Negative)
    [Tags]      Tuba
   Kim är på biljettsidan men inte inloggad
    Öppna biljettsidan
    Välj VIP-biljetter    2    ${Adult}
    Gå till kassan
    Bekräfta köpet
    Verifiera felmeddelande för inloggningskrav
   

    
