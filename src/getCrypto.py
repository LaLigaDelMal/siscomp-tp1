import requests
import ctypes

URL_BTC = "https://api.binance.com/api/v3/avgPrice?symbol=BTCUSDT"
URL_ETH = "https://api.binance.com/api/v3/avgPrice?symbol=ETHUSDT"
URL_ARG = "https://www.dolarsi.com/api/api.php?type=valoresprincipales"

def main():
    btc_response = requests.get(URL_BTC)
    btc_data = btc_response.json()
    btc = btc_data['price']

    eth_response = requests.get(URL_ETH)
    eth_data = eth_response.json()
    eth = eth_data['price']

    arg_response = requests.get(URL_ARG)
    arg_data = arg_response.json()
    arg = arg_data[1]['casa']['compra'][:-1]

    bitcoin = float(btc)
    ethereum = float(eth)
    dolarPesos = float(arg.split(',')[0])

    print (bitcoin)
    print (ethereum)
    print (dolarPesos)

    # 1. open the shared library
    mylib = ctypes.CDLL("./asmlibrary.so")

    # 2. tell Python the argument and result types of function mysum
    mylib.calcular_cotizacion.restype = ctypes.c_int
    mylib.calcular_cotizacion.argtypes = [ctypes.c_int, ctypes.c_int]

    # 3. call function mysum
    resultado = mylib.calcular_cotizacionlen(2, 3)


if __name__ == "__main__":
    main()

