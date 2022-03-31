import requests

URL = "https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT"



def main():
    r = requests.get(URL)
    data = r.json()

    print(data['price'])



if __name__ == "__main__":
    main()

