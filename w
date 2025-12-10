import requests

def getfruit(fruit):
    response = requests.get(f"https://www.fruityvice.com/api/fruit/{fruit.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return data



fruits = getfruit("Persimmon")
"""print(fruits)
for key, value in fruits.items():
    print(key, "→", value)"""

for key, value in fruits.items():
    print(f"{key.title()}: {value}")

import tk
window = tk.Tk()
window.title("Fruit search") # title at the top of the window
window.geometry("400x250") # set the size (width x height)
window.resizable(False, False)
prompt = tk.Label(window, text="Type your message below:",
font=("Arial", 14))
prompt.pack(pady=10) # pack() places the widget; pady adds space above and below Entry box: where the user types their message
entry = tk.Entry(window, font=("Arial", 14), width=30)
entry.pack(pady=5)
result_label = tk.Label(window, text="", font=("Arial", 14, "bold"), fg="blue")
result_label.pack(pady=15)