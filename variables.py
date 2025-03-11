import os # används för att kunna referera till mappen vi är i 
# Author: Group 9

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
submit_button_test = "xpath=//*[@id='login-form']/button" #logga in sidan

#//*[@id="register-form"]/button = registerar sidan 

#//*[@id="login-form"]/button

#Messages
verify_message_element_test = "xpath=//*[@id='login-message']"
verify_message_test = "Verifying credentials..."

error_message_element_test = "xpath=//*[@id='login-message']"
error_message_test = "Invalid username or password."


register_button = "xpath=//*[@id='register-nav']"

username_input_registration="xpath=//*[@id='reg-username']"
password_input_registration="xpath=//*[@id='reg-password']"

register_submit_button="xpath=//*[@id='register-form']/button"

# Buy ticket
buy_tickets_button = "xpath=//*[@id='tickets-nav']/a" 
ticket_type_dropdown ="id=ticket-type"
adult_ticket_value = "Adult"
ticket_category_dropdown = "id=ticket-category"
regular_ticket_value = "Regular"
ticket_quantity_input = "id=ticket-quantity"
ticket_quantity_value = "1"
add_to_ticket_cart_button = "xpath=//*[@id='ticket-form']/button"

# Book Safari tour
book_safari_button = "xpath=//*[@id='safari-nav']/a"
safari_date_input = "id=safari-date"
select_safari_type = "id=safari-type"
select_safari_value_herbivore = "Herbivore Tour"
add_to_cart_button = "xpath=//*[@id='safari-form']/button"
select_safari_value_trex = "T-Rex Rumble"
date = "002025-03-04"   

successfull_register_message = "id=register-message"
#"xpath=//*[@id='login-message']"

successfull_register_text = "Registration successful! Redirecting to login..."

#Registration
#register_button= "xpath=//*[@id='register-nav']"
#username_input_registration="xpath=//*[@id='reg-username']"
#password_input_registration="xpath=//*[@id='reg-password']"
#register_submit_button="xpath=//*[@id='register-form']/button"
# Valid credentials for Ticket Purchase
valid_username_ticket = "Kim"
valid_password_ticket = "123456789"

# Stina-Palles Part**
valid_username_stina = "Stina-Palle"
valid_password_stina = "stinaSecurePass"

# Ticket Purchase Locators
tickets_nav = "xpath=//*[@id='tickets-nav']/a" # can we change this to row 48
ticket_type = "id=ticket-type" # can we change this row 49
ticket_category = "id=ticket-category" #row 51
ticket_quantity = "id=ticket-quantity" #row 53
proceed_button = "xpath=//*[@id='ticket-form']/button" #row 55
#add_to_cart_button = "xpath=//*[@id='ticket-form']/button"  

# Payment Confirmation Locators
confirm_button = "id=confirm-ticket"
confirmation_message_element = "xpath=//p[contains(text(),'Your purchase is confirmed')]"

alert_text_Confirmation_VIP = "Item added to cart!"
alert_text_Confirmation_Regular = "Regular Ticket purchase confirmed!"


# Browser and Page Configuration
#title_test = "Buy Tickets" Can we change the name, where is it used? 

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
#book_safari_button = "xpath = //*[@id='safari-nav']/a"
#safari_date_input = "xpath=//*[@id='safari-date']" Can we change this one
safari_date = "2025020222"
safari_proceed_checkout_button = "xpath=//*[@id='safari-form']/button" #row 62
confirm_safari_button = "xpath=//*[@id='confirm-safari']"
safari_booking_confirm_text = "Item added to cart!"

# valid username and password for register and login
username = "username"
password =  "12345678"

#Time to appear till #
timeout =   "10s"
timeout_1 = "15s"

# Messages and their locators that appear in the test


#verify_error_message_element_test =  "id = login-message"     Can we change this one, where is it used
#verify_error_message_test = "Invalid username or password." Can we change this one, where is it used

#Ticket type
#Ticket_Type = "id: ticket-type"
Adult_Option  =  "Adult"   #xpath=//*[@id="ticket-type"]/option[1]
Child_Option =    "Child"

# Tickets category
#Ticket_Category =  "id: ticket-category"
VIP_option   =  "VIP"

# Tickets quantity
#Ticket_Quantity =  "id = ticket-quantity"

#Select date to safari
Select_Date =   "id: safari-date"
Date = "03-15-2025"
Safari_Type =  "id: safari-type"

#Select safari tour
Herbivore_Tour_With_Feeding =   "Herbivore Tour with Feeding"
Total_amount = "id:cart-total"

# Total amount of ticket
Expected_Total_Amount = "Total: $500"

#Alert display on screen to accept #
Expected_ALert_Text = "Item added to cart!"
Expected_ALert_Text_2 ='Checkout Summary: 2 VIP Adult Ticket(s) - $200 2 VIP Child Ticket(s) - $120 Herbivore Tour with Feeding on 2025-03-15 - $180 Total: $500'
Expected_ALert_Text_3 = "You have been logged out."
Expected_ALert_Text_4 = 'Checkout Summary: 3 VIP Adult Ticket(s) - $300 Total: $300'

