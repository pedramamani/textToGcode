import requests
import pathlib
from config import *

octoPrintUrl = 'http://192.168.1.207:5000'

def printFile(index: int):
    filePath = next(assetsPath.glob(f'{index} *.gcode'), None)
    requests.post(
        f'{octoPrintUrl}/api/files/local',
        headers={'x-api-key': keyedSecrets['apiKey']},
        data={'select': 'true', 'print': 'true'},
        files={'file': open(filePath, 'rb')}
    )


def main():
    printFile(5)


if __name__ == '__main__':
    main()
