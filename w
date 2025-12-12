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
window.geometry("500x500")
window.resizable(False, False)
prompt = tk.Label(window, text = "Type a fruit below to get info:",
font = ("Arial, 14"))
prompt.pack(pady = 10)
entry = tk.Entry(window, font = ("Times New Roman", 14), width = 30)
entry.pack(pady = 5)
result_label = tk.Label(window, text = "", font = ("Arial", 14, "bold"), fg = "green")
result_label.pack(pady = 15)
search_button = tk.Button(window, text = "search fruit", font = ("Arial", 14), command = getfruit(fruits))
search_button.pack(pady = 10)

