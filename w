
import requests

def getanimal(animal):
    response = requests.get(f"https://api.api-ninjas.com/v1/animals/{animal.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return {
    "name": data["name"],
    "taxonomy": {
      "kingdom": data["kingdom"],
      "phylum": data["phylum"],
      "class": data["class"], 
      "order": data["order"],
      "family": data["family"],
      "genus": data["genus"],
      "scientific_name": data["scientfic_name"]
    },
      "locations": [t["location"]["name"] for t in data["locations"]],
      "characteristics": {
      "prey": [t["prey"]["name"] for t in data["prey"]],
      "name_of_young": data["name_of_young"],
      "group_behavior": data["name_of_young"],
      "estimated_population_size": data["estimated_population_size"],
      "biggest_threat": data["biggest_threat"],
      "most_distinctive_feature": data["most_distinctive_feature"],
      "gestation_period": data["gestation_period"],
      "habitat": data["habitat"],
      "diet": data["habitat"],
      "average_litter_size": data["average_litter_size"],
      "lifestyle": data["lifestyle"],
      "common_name": data["common_name"],
      "number_of_species": data["number_of_species"],
      "location": data["location"],
      "slogan": data["slogan"],
      "group": "Mammal",
      "color": "BrownYellowBlackTan",
      "skin_type": "Fur",
      "top_speed": "70 mph",
      "lifespan": "10 - 12 years",
      "weight": "40kg - 65kg (88lbs - 140lbs)",
      "height": "115cm - 136cm (45in - 53in)",
      "age_of_sexual_maturity": "20 - 24 months",
      "age_of_weaning": "3 months"
    }}