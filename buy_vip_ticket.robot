*** Settings ***
Metadata    Author    Tuba
Documentation    Testing successful VIP ticket purchase for adults and children.
Library    SeleniumLibrary
Resource    keywords_ticket.robot
Variables    variables.py
Test Setup    Open Browser To Ticket Page    ${url_test}    ${browser_test}    ${title_test}
Test Teardown    Close Browser

*** Test Cases ***
Successful VIP Ticket Purchase
    [Documentation]    Scenario: Successful Purchase for Adults and Children Separately.
    Login As Kim  
    Navigate To Buy Tickets Page
    Select VIP Ticket    2    ${Adult}
    Proceed To Checkout And Confirm
    Message Should Be Visible    ${confirmation_message_element}    ${confirmation_message_adult}    ${standard_timeout}

    Navigate To Buy Tickets Page
    Select VIP Ticket    2    ${Child}
    Proceed To Checkout And Confirm
    Message Should Be Visible    ${confirmation_message_element}    ${confirmation_message_child}    ${standard_timeout}
