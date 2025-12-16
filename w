import requests
import tkinter as tk

"""def getfruit(fruit):
    response = requests.get(f"https://www.fruityvice.com/api/fruit/{fruit.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return data



fruits = getfruit("Persimmon")
print(fruits)
for key, value in fruits.items():
    print(key, "→", value)

for key, value in fruits.items():
    print(f"{key.title()}: {value}")"""


def getfruit(fruit):
    response = requests.get(f"https://www.fruityvice.com/api/fruit/{fruit.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return data

fruits = getfruit("apple")
print(fruits)

for key, value in fruits.items():
    print(f"{key.title()}: {value}")



window = tk.Tk()
window.title("Fruit Search")
window.geometry("400x250")
window.resizable(False, False)
prompt = tk.Label(window, text = "Search a Furit for info", font = ("Arial, 14"))
prompt.pack(pady = 10)
entry = tk.Entry(window, font = ("Arial", 14), width = 30)
entry.pack(pady = 5)
result_label = tk.Label(window, text = "", font = ("Arial", 14, "bold"), fg = "blue")
result_label.pack(pady = 15)

def getfruit(fruit):
    response = requests.get(f"https://www.fruityvice.com/api/fruit/{fruit.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return data

fruits = getfruit("")
print(fruits)

for key, value in fruits.items():
    print(f"{key.title()}: {value}")

entry = entry.get()

button = tk.Button(window, text = "Search", font = ("Arial", 14), command = getfruit
    response = requests.get(f"https://www.fruityvice.com/api/fruit/{fruit.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return data

fruits = getfruit("")
print(fruits)

for key, value in fruits.items():
    print(f"{key.title()}: {value}"))
button.pack(pady = 10)
