import requests
import pathlib
from config import *

octoPrintUrl = 'http://192.168.1.207:5000'

def printFile(filePath: pathlib.Path):
    requests.post(
        f'{octoPrintUrl}/api/files/local',
        headers={'x-api-key': keyedSecrets['apiKey']},
        data={'select': 'true', 'print': 'true'},
        files={'file': open(filePath, 'rb')}
    )


def main():
    printFile(assetsPath / "No shoes in.gcode")


if __name__ == '__main__':
    main()
