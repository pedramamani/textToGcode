import requests
import pathlib
from config import *


def printFile(filePath: pathlib.Path):
    requests.post(
        'http://192.168.1.207:5000/api/files/local',
        headers={'x-api-key': keyedSecrets['apiKey']},
        data={'select': 'true', 'print': 'true'},
        files={'file': open(filePath, 'rb')}
    )


def main():
    printFile(assetsPath / "Occupied if door.gcode")


if __name__ == '__main__':
    main()
