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
window.geometry("400x250")
window.resizable(False, False)

prompt = tk.Label(window, text = "Search a Fruit for info", font = ("Arial", 14))
prompt.pack(pady=10)

entry = tk.Entry(window, font = ("Arial", 14), width = 30)
entry.pack(pady=5)

result_label = tk.Label(window, text="", font=("Arial", 14, "bold"))
result_label.pack(pady=15)

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
    else:
        text = ""
        for key, value in fruits.items():
            text == f"{key.title()}: {value}"

button = tk.Button(window, text="Search", font=("Arial", 14), command = search)
button.pack(pady=10)
window.mainloop()

result_label.config(text = "", fg="blue")
