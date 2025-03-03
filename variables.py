import os # används för att kunna referera till mappen vi är i 
# Author: Nesli

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
date = "002025-02-27"   

successfull_register_message = "id=register-message"
#"xpath=//*[@id='login-message']"

successfull_register_text = "Registration successful! Redirecting to login..."
