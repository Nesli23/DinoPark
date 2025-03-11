*** Settings ***
Documentation    Grupp 9 (Nesli,Tuba, Quratulain)
Library    SeleniumLibrary
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/keywords.robot
Test Setup    Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    #Close Browser

*** Test Cases ***

Safari Booking Weekday
    [Documentation]    Testar att Stina-Palle kan boka en safari-tur på en vardag.
    [Tags]    Nesli
    Stina-Palle har bokat sina biljetter
    Öppna Safari-tursidan
    Välj safaridatum och typ
    Lägg till i varukorgen
   
