*** Settings ***
Library        SeleniumLibrary
Library        String
Library        Collections
Documentation    Testing Jurasstina-Kalle Park page 
Resource       ${EXECDIR}/resources/keywords_files/keywords_Quratulain.robot 
Variables      ${EXECDIR}/variables.py
#Test Setup      Prepare Browser     ${URL}   ${Browser}  ${title}  ${username}  ${password} 
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser 


*** Variables ***
${URL}    file://${EXECDIR}/website/jurap.html


*** Test Cases ***
Scenario: The user should be able to cancel or remove the ticket from the cart after booking it.
    [Documentation]
    [Tags]      Quratulain

    Given Kim is registered as user
    When Kim is logged in
    Then Kim is on the ticket purchase page
    And Kim selects VIP tickets for adults  
    Then Kim receives a confirmation message 
    And kim selects more tickets by mistake
    Then Kim receives a confirmation message 
    Then entre items into the cart
    And Kim wants to removes mistakenly selected tickets from the cart
    Then conformation message of remove tickets display 
    









    #Click Element       //*[@id="tickets-nav"]

    # Select ticket type #
    #Wait Until Element Is Visible  ${Ticket_Type}  ${timeout}
    #Select From List By Value  ${Ticket_Type}  ${Adult_Option}  
    #Select From List By Value  ${Ticket_Category}  ${VIP_option}  

    #
    #Input Text   ${Ticket_Quantity}  3  # Set the ticket quantity to 3

    # Add items to cart # 
    #Click Button    //*[@id="ticket-form"]/button
    # WAIT and verify the alert is present #
    #Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}

    #Sleep   2s

    #Wait Until Element Is Visible  ${Ticket_Type}  ${timeout}
    #Select From List By Value  ${Ticket_Type}  ${Adult_Option}  
    #Select From List By Value  ${Ticket_Category}  ${VIP_option}  

    # Select ticket quantity #
    #Input Text   ${Ticket_Quantity}  4  # Set the ticket quantity to 4

    # Add items to cart # 
    #Click Button    //*[@id="ticket-form"]/button
    # WAIT and verify the alert is present #
    #Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}

    #Sleep  2s

    # Open  and review Cart Items #
    #Click Element   cart-nav
    #Page Should Contain Element    cart-section
    #Page Should Contain Element    cart-details 
    
    #Click Button    //*[@id="cart-details"]/ul/li[2]/button  # To remove  the second index item from the cart
    #Click Button       checkout-button                        # to proceed to checkout
    #Alert Should Be Present     ${Expected_ALert_Text_4}   ACCEPT  ${timeout_1}

    #[Teardown]  Close Browser


