
import requests

def get():
    response = requests.get(f"{.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return {
    