import datetime


def check_hour():
    current_hour = datetime.datetime.now().hour
    return current_hour == 0