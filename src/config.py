import dotenv
import pathlib

basePath = pathlib.Path(__file__).parent.parent
assetsPath = basePath / 'src/assets'
secrets = dotenv.dotenv_values(basePath / '.env')
keyedSecrets = {k: v for k, v in secrets.items() if v is not None}


def main():
    print(keyedSecrets)


if __name__ == '__main__':
    main()
