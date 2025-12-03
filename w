
import requests

def getanimal(animal):
    response = requests.get(f"https://api.api-ninjas.com/v1/animals/{animal.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None
