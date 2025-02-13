import os # används för att kunna referera till mappen vi är i 

# Directory
current_directory = os.getcwd().replace('\\', '/')

# Demo specific
browser_test = "chrome" 
url_test = f"file:///{current_directory}/webpages/jurap.html"
title_test = "Jura-Stina-Kalle Park"

username_input_id_test = "id=login-username"
password_input_id_test = "id=login-password"
login_button_test = "xpath=//*[@id='login-nav']/a"

invalid_username = "incorrectusername"
