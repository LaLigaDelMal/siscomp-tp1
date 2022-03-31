import requests

URL_BTC = "https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT"
URL_ETH = "https://api.binance.com/api/v3/avgPrice?symbol=ETHUSDT"
URL_ARG = "https://www.dolarsi.com/api/api.php?type=valoresprincipales"

def main():
    btc_response = requests.get(URL_BTC)
    data_btc = btc_response.json()
    btc = data_btc['price']

    eth_response = requests.get(URL_ETH)
    data_eth = eth_response.json()
    eth = data_eth['price']

    arg_response = requests.get(URL_ARG)
    data_arg = arg_response.json()
    arg = data_arg[1]['casa']['compra'][:-1]

    print (btc)
    print (eth)
    print (arg)


if __name__ == "__main__":
    main()

