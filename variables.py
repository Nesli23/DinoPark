import os # används för att kunna referera till mappen vi är i 

# Directory
current_directory = os.getcwd().replace('\\', '/')

# Invalid credentials
invalid_username = "incorrectusername"
invalid_password = "invalidpassword"

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

# Error Message
verify_message_element_test = "xpath=//*[@id='login-message']"
verify_message_test = "Verifying credentials..."

error_message_element_test = "xpath=//*[@id='login-message']"
error_message_test = "Invalid username or password"


#"id=login-messsage"