from datetime import datetime, timedelta
#För att hämta nästa vardag
def get_next_weekday(target_weekday, date_input=None):
 
    if date_input is None:
        date_input = datetime.today()
    
    current_weekday = date_input.isoweekday()
    days_until_target = (target_weekday - current_weekday) % 7

    if days_until_target == 0:  # Om det redan är rätt veckodag, ta nästa vecka
        days_until_target = 7

    return (date_input + timedelta(days=days_until_target)).strftime('%Y-%m-%d')
