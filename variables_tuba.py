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
submit_button_test = "xpath=/html/body/main/article[3]/section/form/button"
 
#Messages
verify_message_element_test = "xpath=//*[@id='login-message']"
verify_message_test = "Verifying credentials..."
 
error_message_element_test = "xpath=//*[@id='login-message']"
error_message_test = "Invalid username or password."
 
#success_message_element_test =
#success_message_test =
 
#"id=login-messsage"
 
#Registration
register_button= "xpath=//*[@id='register-nav']"
username_input_registration="xpath=//*[@id='reg-username']"
password_input_registration="xpath=//*[@id='reg-password']"
register_submit_button="xpath=//*[@id='register-form']/button"
# Valid credentials for Ticket Purchase
valid_username_ticket = "KimKksgd"
valid_password_ticket = "123456789"
 
# Stina-Palles Part**
valid_username_stina = "Stina-Palle"
valid_password_stina = "stinaSecurePass"
 
# Ticket Purchase Locators
#tickets_nav = "xpath=//*[@id='tickets-nav']/a"
ticket_type = "id=ticket-type"
ticket_category = "id=ticket-category"
ticket_quantity = "id=ticket-quantity"
ticket_quantity_value = "2"
proceed_button = "xpath=//*[@id='ticket-form']/button"
add_to_cart_button = "xpath=//*[@id='ticket-form']/button"  
 
# Payment Confirmation Locators
confirm_button = "id=confirm-ticket"
confirmation_message_element = "xpath=//p[contains(text(),'Your purchase is confirmed')]"
 
alert_text_Confirmation_VIP = "Item added to cart!"
alert_text_Confirmation_Regular = "Regular Ticket purchase confirmed!"
 
 
# Browser and Page Configuration
title_test2 = "Buy Tickets"  
 
# Unauthorized Purchase Error Message (For Negative Test Cases)
error_message_element = "xpath=//p[contains(text(),'Login required')]"  
error_message_text = "You must be logged in to purchase tickets."
 
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
 
# Book safari
book_safari_button = "xpath = //*[@id='safari-nav']/a"
safari_date_input = "xpath=//*[@id='safari-date']"
safari_date = "2025020222"
safari_proceed_checkout_button = "xpath=//*[@id='safari-form']/button"
confirm_safari_button = "xpath=//*[@id='confirm-safari']"
safari_booking_confirm_text = "Item added to cart!"
ticket_for_adult_value = "Adult"
home_page_element = "xpath=//*[@id='home-page']"
 
valid_username_stina = "Stina-Palle"
valid_password_stina = "stinaSecurePass"
buy_tickets_button = "xpath=//*[@id='tickets-nav']/a"
 
username_registration="xpath=//*[@id='reg-username']"
password_registration="xpath=//*[@id='reg-password']"
ticket_type_dropdown = "id: ticket-type"
ticket_category_dropdown = "id=ticket-category"
adult_ticket_value = "Adult"
regular_ticket_value = "Regular"
ticket_quantity_input = "id=ticket-quantity"
ticket_quantity_value = "4"
book_safari_button = "xpath=//*[@id='safari-nav']/a"
safari_date_input = "id=safari-date"
select_safari_type = "id=safari-type"
select_safari_value_herbivore_feeding = "Herbivore Tour with Feeding"
date = "002025-03-27"
Herbivore_Tour_With_Feeding = "Herbivore Tour with Feeding"
VIP_ticket_value = "VIP"
safari_add_to_cart_button = "xpath=//*[@id='safari-form']/button"



ticket_category