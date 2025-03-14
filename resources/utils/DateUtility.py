from datetime import datetime, timedelta
import re

class DateUtility:
    def __init__(self):
        self.weekday = {
            "weekday": range(1,5),
            "weekend": range(6,7)
        }

    def get_todays_date(self):
        return f"00{datetime.today().strftime('%Y-%m-%d')}"

    def get_date_type(self, date_type):
        if date_type == "weekend" and not self.is_weekend():
                return f'00{self.get_next_weekend()}'
        if self.is_weekend() and date_type != "weekend":
            return f'00{self.get_next_weekday()}'
        return f'00{self.get_todays_date()}'

    def is_weekend(self, date_input=datetime.today().isoweekday()):
        return date_input > 5

    def get_next_weekend(self, date_input=datetime.today()):
        weekend = 6
        days_until_weekend = weekend - date_input.isoweekday()
        return (date_input + timedelta(days = days_until_weekend)).strftime('%Y-%m-%d')

    def get_next_weekend_formatted(self, date_input=datetime.today()):
        weekend = 6
        days_until_weekend = weekend - date_input.isoweekday()
        return (date_input + timedelta(days = days_until_weekend)).strftime('%Y-%m-%d').replace("-","")

    def get_next_weekday(self, date_input=datetime.today()):
        return (date_input + timedelta(days = 8 - date_input.isoweekday())).strftime('%Y-%m-%d')

    def get_cart_date(self, text_to_parse=""):
        date = re.search(r'(\d{6})', text_to_parse)
        if date != None:
            date = date.group(1)
            year, month, day = date[0:2], date[2:4], date[4:6]
            return f"20{year}-{month}-{day}"
        return re.findall('(\d+-\d+-\d+)', text_to_parse)[0]