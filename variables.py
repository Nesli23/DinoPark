import os # används för att kunna referera till mappen vi är i 
# Author: Nesli and Tuba

# Directory
current_directory = os.getcwd().replace('\\', '/')

# Invalid credentials
invalid_username = "incorrectusername"
invalid_password = "invalidpassword"

# Valid credentials
valid_username = "NK"
valid_password = "Password"

#Timeout
standard_timeout = "10s"

# Demo specific
browser_test = "chrome" 
url_test = f"file:///{current_directory}/webpages/jurap.html"
title_test = "Jura-Stina-Kalle Park"

username_input_id_test = "id=login-username"
password_input_id_test = "id=login-password"
login_button_test = "xpath=//*[@id='login-nav']/a"
submit_button_test = "xpath=//*[@id='login-form']/button"

#Messages
verify_message_element_test = "xpath=//*[@id='login-message']"
verify_message_test = "Verifying credentials..."

error_message_element_test = "xpath=//*[@id='login-message']"
error_message_test = "Invalid username or password."

#success_message_element_test =
#success_message_test = 

#"id=login-messsage"

# Valid credentials for Ticket Purchase
valid_username_ticket = "Tuba"
valid_password_ticket = "12345678"

# Ticket Purchase Locators
tickets_nav = "xpath=//*[@id='tickets-nav']/a"
ticket_type = "id=ticket-type"
ticket_category = "id=ticket-category"
ticket_quantity = "id=ticket-quantity"
proceed_button = "xpath=//*[@id='ticket-form']/button"
add_to_cart = "xpath=//*[@id='ticket-form']/button"  

# Payment Confirmation Locators
confirm_button = "id=confirm-ticket"
confirmation_message_element = "xpath=//p[contains(text(),'Your purchase is confirmed')]"

# Browser and Page Configuration
title_test = "Buy Tickets"  

# Unauthorized Purchase Error Message (For Negative Test Cases)
error_message_element = "xpath=//p[contains(text(),'Login required')]"  
error_message_text = "Login required to purchase tickets"

# Additional locators for error handling and verification
ticket_error_message_element = "xpath=//*[@id='ticket-error-message']"
ticket_error_message_text = "You must be logged in to buy tickets."

# Logout Locators
logout_button = "id=logout-nav"
logout_message_element = "xpath=//p[contains(text(),'You have been logged out')]"
logout_message_text = "You have been logged out successfully."

# Ticket Categories
VIP = "VIP"
Adult = "Adult"
Child = "Child"
Senior = "Senior"