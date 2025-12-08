
import requests

def getfruit(fruit):
    response = requests.get(f"https://www.fruityvice.com/api/fruit/all{fruit.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return {
        "name": data["name"]
    }
fruits = getfruit("apple")
print(fruits)