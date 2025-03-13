from datetime import datetime, timedelta


def get_next_weekday(target_weekday, date_input=datetime.today()):
    # Om date_input är en sträng, omvandla den till datetime-objekt om det behövs
    if isinstance(date_input, str):
        try:
            date_input = datetime.strptime(date_input, '%Y-%m-%d')  # Omvandla till datetime-objekt
        except ValueError:
            raise ValueError(f"Invalid date format. Expected 'YYYY-MM-DD', but got {date_input}")

    # Kontrollera om date_input nu är ett datetime-objekt
    if not isinstance(date_input, datetime):
        raise TypeError(f"Expected a datetime object, but got {type(date_input)}")

    # Kontrollera om target_weekday är ett heltal mellan 1 och 7
    if not isinstance(target_weekday, int) or not (1 <= target_weekday <= 7):
        raise ValueError(f"Invalid target_weekday: {target_weekday}. Must be an integer between 1 and 7.")

    # Beräkna hur många dagar det är till nästa target_weekday (t.ex. fredag)
    days_until_weekday = (target_weekday - date_input.isoweekday()) % 7
    next_date = date_input + timedelta(days=days_until_weekday)

    # Returnera datumet som en sträng i formatet 'YYYY-MM-DD'
    return next_date.strftime('%Y-%m-%d')