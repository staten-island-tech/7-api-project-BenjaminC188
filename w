
import requests

def getfruit(fruit):
    response = requests.get(f"HTTP GET/api/fruit/apple{fruit.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return {
        "name": data["name"]
    }
fruits = getfruit("apple")
print(fruits)