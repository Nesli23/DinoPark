*** Settings ***
Documentation    Grupp 9 (Nesli,Tuba, Quratulain)
Library    SeleniumLibrary
Library    ${EXECDIR}/resources/utils/DateUtility.py
Variables    ${EXECDIR}/variables.py
Resource    ${EXECDIR}/resources/keywords_files/stinapalle_keywords.robot
Resource    ${EXECDIR}/resources/keywords_files/shared_keywords.robot
Test Setup     Open Browser To Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser
 
*** Test Cases ***
Scenario: Stina-Palle Purchases a Regular Adult Ticket
    [Tags]      #new-feature
    Given Stina-Palle registers with valid credentials and logs into the website
    When Stina-Palle navigates to "Buy Tickets" and selects a "Regular Ticket" for 1 Adult
    Then adds the ticket to the cart and proceeds to checkout
    

#Safari Booking Weekday
 #   [Documentation]    Scenario: Stina-Palle want to buy tickets for the weekday
  #  [Tags]    #new-feature
   # GIVEN that Stina-Palle has booked her tickets 
    #WHEN she goes to the Safari tour page
    #THEN she should be able to choose Safari date and type
    #And add to cart

Ticket Purchase Weekday
    [Documentation]    Scenario: Stina-Palle want to buy tickets for the weekday
    [Tags]    #new-feature
    GIVEN that Stina-Palle is logged in 
    WHEN she goes to the booking page
    THEN she should be able to choose tickets for the weekday
    AND add them to the cart



