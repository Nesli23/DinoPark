*** Settings ***
Library    SeleniumLibrary
Library    ${EXECDIR}resources/utils/DateUtility.py
Variables    ${EXECDIR}/variables.py
Library    OperatingSystem
Library    DateTime



*** Keywords ***


Open Browser To Page     #both kim and stena palle
    [Arguments]    ${url}    ${browser}    ${title}
    Open Browser    ${url}    ${browser}
    Title Should Be    ${title}