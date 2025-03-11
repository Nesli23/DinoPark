*** Settings ***
Library        SeleniumLibrary
Library        String
Library        Collections
Documentation    Testing Jurasstina-Kalle Park page 
Resource       ${EXECDIR}/resources/keywords_files/keywords_Quratulain.robot 
Variables      ${EXECDIR}/variables.py
Test Setup      Prepare Browser     ${URL}   ${Browser}  ${title}  ${username}  ${password} 
#${EXECDIR}/resources/keywords_files/keywords_Quratulain.robot

*** Variables ***
${URL}    file://${EXECDIR}/website/jurap.html

*** Test Cases ***

Remove Or Cancel Ticket(s)   
    [Documentation]   Tests that the user can cancel or remove a ticket from the cart after booking.
    [Tags]   Quratulain
    The user has booked an incorrect ticket and added it to the cart
    Open the cart and review booked tickets
    Identify the incorrectly booked ticket
    Remove the unwanted ticket from the cart
    Verify that the booking updates after removal

#...                  Acceptance criteria: The user should to able to log in and book tickets according to his requirements.
#...                                       The user should be able to add his book tickets to the cart.
#...                                       The user should be able to remove and cancel unwanted ticket(s) according to his requirements.
    
    Prepare Browser       ${URL}  ${Browser}  ${title}  ${username}  ${password}
    #Reload Page #
    Sleep     2s

    Click Element       //*[@id="tickets-nav"]

    # Select ticket type #
    Wait Until Element Is Visible  ${Ticket_Type}  ${timeout}
    Select From List By Value  ${Ticket_Type}  ${Adult_Option}  
    Select From List By Value  ${Ticket_Category}  ${VIP_option}  

    # Select ticket quantity #
    Input Text   ${Ticket_Quantity}  3  # Set the ticket quantity to 3

    # Add items to cart # 
    Click Button    //*[@id="ticket-form"]/button
    # WAIT and verify the alert is present #
    Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}

    Sleep   2s

    Wait Until Element Is Visible  ${Ticket_Type}  ${timeout}
    Select From List By Value  ${Ticket_Type}  ${Adult_Option}  
    Select From List By Value  ${Ticket_Category}  ${VIP_option}  

    # Select ticket quantity #
    Input Text   ${Ticket_Quantity}  4  # Set the ticket quantity to 3

    # Add items to cart # 
    Click Button    //*[@id="ticket-form"]/button
    # WAIT and verify the alert is present #
    Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}

    Sleep  2s

    # Open  and review Cart Items #
    Click Element   cart-nav
    Page Should Contain Element    cart-section
    Page Should Contain Element    cart-details 
    
    Click Button    //*[@id="cart-details"]/ul/li[2]/button  # To remove  the second index item from the cart
    Click Button       checkout-button                        # to proceed to checkout
    Alert Should Be Present     ${Expected_ALert_Text_4}   ACCEPT  ${timeout_1}

    [Teardown]  Close Browser



***keywords***
Prepare Browser
    [Arguments]    ${URL}    ${Browser}    ${title}   ${username}  ${password} 
    Open Browser    ${URL}    ${Browser} 
    Maximize Browser Window  
    Title Should Be    ${title}
    Click Element       locator=//*[@id="register-nav"]

    Input Text   id = reg-username    ${username}
    Input Text  id = reg-password  ${password}   
    Click Button  //*[@id="register-form"]/button

    Click Element       //*[@id="login-nav"]
    Input Text  id = login-username  ${username}
    Input Text  id = login-password  ${password}

    Click Button      //*[@id="login-form"]/button

Type In RegUsername 
    [Arguments]   ${username}
    Input Text  id = reg-username  ${username}
Type In RegPassword 
    [Arguments]   ${password}
    Input Text  id = reg-password  ${password}      
Type In Username 
    [Arguments]   ${username}
    Input Text  id = login-username  ${username}
Type In Password 
    [Arguments]   ${password}
    Input Text  id = login-password  ${password}

Message Should Be Visible
    [Arguments]    ${verify_message_element_test}     ${verify_message_test}  ${timeout}
    Wait Until Element Contains   ${verify_message_element_test}    ${verify_message_test}  ${timeout}
    Element Text Should Be   ${verify_message_element_test}    ${verify_message_test}

Error Message Should Be Visible  
    [Arguments]    ${verify_error_message_element_test}    ${verify_error_message_test}  ${timeout}
    Wait Until Element Contains    ${verify_error_message_element_test}  ${verify_error_message_test}   ${timeout}
    Element Text Should Be    ${verify_error_message_element_test}  ${verify_error_message_test} 
