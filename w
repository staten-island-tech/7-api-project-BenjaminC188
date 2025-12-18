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

window = tk.Tk()
window.title("Fruit Search")
window.geometry("1000x500")
window.resizable(False, False)

prompt = tk.Label(window, text = "Search a Fruit for info", font = ("Arial", 14))
prompt.pack(pady=10)

entry = tk.Entry(window, font = ("Arial", 14), width=30)
entry.pack(pady=5)

result_label = tk.Label(window, text = "", font = ("Arial", 12))
result_label.pack()

def getfruit(fruit):
    response = requests.get(f"https://www.fruityvice.com/api/fruit/{fruit.lower()}")
    if response.status_code != 200:
        return None
    return response.json()

def search():
    fruit = entry.get()

    fruits = getfruit(fruit)
    if fruits == None:
        result_label.config(text = "Fruit not found", fg = "red")
        return

    text = ""
    for key, value in fruits.items():
        text += f"{key.title()}: {value}\n"

    result_label.config(text = text, fg = "blue")

button = tk.Button(window, text = "Search", font = ("Arial", 14), command = search)
button.pack(pady = 10)

window.mainloop()