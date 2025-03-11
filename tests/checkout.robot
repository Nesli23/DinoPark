*** Settings ***
Library        SeleniumLibrary
Library        String
Library        Collections
Documentation    Testing Jurasstina-Kalle Park page 
<<<<<<< HEAD
Resource    ${EXECDIR}/resources/keywords_files/keywords_ticket_tuba.robot
Variables    ${EXECDIR}/variables.py
Test Setup     Prepare Browser      ${username}  ${password} ${url_test}    ${browser_test}    ${title_test}   ${username}  ${password}
Test Teardown   Close Browser 
=======
Resource       ${EXECDIR}/resources/keywords_files/keywords_Quratulain.robot 
Variables      ${EXECDIR}/variables.py
Test Setup      Prepare Browser     ${URL}   ${Browser}  ${title}  ${username}  ${password} 
>>>>>>> 06588eedd6cc8222d5107ac12d2738986bd54ef2


*** Variables ***
${URL}    file://${EXECDIR}/website/jurap.html
${Browser}  Chrome

*** Test Cases ***
Proceed To Checkout
    
Scenario: Successful proceed to checkout after booking tickets
    [Documentation]    Display the selected booked tickets and the total price amount before checkout.
    [Tags]    Quratulain
    Given User Open The Browser For Register And Login
    Then Kim is on the ticket purchase page
    And Kim selects 2 VIP tickets for adults   2   ${Adult}
    And 2 VIP tickets for children  2
    Then open the cart for rewivew tickets 
    And proceeds to checkout and confirms the purchase
    Then Kim should receive a confirmation message




    Click Element       //*[@id="tickets-nav"]

    # Select ticket type #
    Wait Until Element Is Visible  ${Ticket_Type}  ${timeout}
    Select From List By Value  ${Ticket_Type}  ${Adult_Option}  

    # Select ticket category #
    Select From List By Value  ${Ticket_Category}  ${VIP_option}  

    # Select ticket quantity #
    Input Text   ${Ticket_Quantity}  2  # Set the ticket quantity to 2
    
    # Optionally, we can verify the value after setting #
    ${quantity} =  Get Value  ${Ticket_Quantity}
    Should Be Equal As Strings  ${quantity}  2

    # Add items to cart # 
    Click Button    //*[@id="ticket-form"]/button
    # WAIT and verify the alert is present #
    Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}

    #Reload Page
    Sleep     2s

    Wait Until Element Is Visible  ${Ticket_Type}  ${timeout}
    Select From List By Value  ${Ticket_Type}  ${Child_Option}  

    # Select ticket category #
    Select From List By Value  ${Ticket_Category}  ${VIP_option}  

    # Select ticket quantity #
    Input Text   ${Ticket_Quantity}  2  # Set the ticket quantity to 2
    
    # we can verify the value after setting #
    ${quantity} =  Get Value  ${Ticket_Quantity}
    Should Be Equal As Strings  ${quantity}  2

    # Add items to cart # 
    Click Button    //*[@id="ticket-form"]/button
    # WAIT and verify the alert is present #
    Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}

    #Reload Page
    Sleep     2s


    Click Element    id: safari-nav       # xpath: //*[@id="safari-nav"]

    #Select weekend Date#
    Input Text  ${Select_Date}  ${Date}

    # Select Safari Type #
    Wait Until Element Is Visible  ${Safari_Type}  ${timeout}
    Select From List By Value  ${Safari_Type}  ${Herbivore_Tour_With_Feeding} 
    # Add to cart #
    Click Button     //*[@id="safari-form"]/button
    # WAIT and verify the alert is present #
    Alert Should Be Present     ${Expected_ALert_Text}   ACCEPT  ${timeout}

    Sleep   2s


    # Open  and review Cart Items #
    Click Element   cart-nav
    Page Should Contain Element    cart-section
    Page Should Contain Element    cart-details 
    Page Should Contain Element    cart-total

    Wait Until Element Is Visible  ${Total_amount}   timeout=10
    
    # Get the text of the element that shows the total amount
    ${total_text}=  Get Text  ${Total_amount}
    #Trim any leading or trailing spaces (if any)
    ${total_text}=  Strip String  ${total_text}
    
    # Verify that the total text matches the expected total (e.g., "$500")
    Should Be Equal As Strings  ${total_text}  ${Expected_Total_Amount}
    
    Click Button       checkout-button

    Alert Should Be Present     ${Expected_ALert_Text_2}   ACCEPT  ${timeout_1}

    #To Logout
    Click Element   logout-nav
    #Click Button     logout-link
    Alert Should Be Present     ${Expected_ALert_Text_3}   ACCEPT  ${timeout_1}


    [Teardown]  Close Browser



