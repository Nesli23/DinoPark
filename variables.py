import os # används för att kunna referera till mappen vi är i 

# Directory
current_directory = os.getcwd().replace('\\', '/')

# Demo specific
browser_test = "chrome" 
url_test = f"file:///{current_directory}/webpages/jurap.html"
title_test = "Login Test"