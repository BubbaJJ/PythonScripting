import time
from utilities.generate import generate_names
from utilities.timechecker import check_hour
from os.path import expanduser

home = expanduser('~')


def main():
    while True:
        #if check_hour:
        #    generate_names()
        #time.sleep(3600)

        # Devmode for testing
        generate_names()
        time.sleep(180)


if __name__ == '__main__':
    main()