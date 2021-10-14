from .output import output_data
from .api import response
import datetime


def generate_names():
    name_data = output_data(response())
    with open('names.txt', 'a') as filename:
        time_entered = str(
            datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")) + '\n'
        filename.write('Generated: {}'.format(time_entered))
        filename.write(name_data + '\n')