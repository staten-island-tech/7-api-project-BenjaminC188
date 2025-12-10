
import requests

def getfruit(fruit):
    response = requests.get(f"https://www.fruityvice.com/api/fruit/{fruit.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return data



fruits = getfruit("apple")
"""print(fruits)
for key, value in fruits.items():
    print(key, "→", value)"""

for key, value in fruits.items():
    print(f"{key.title()}: {value}")