
import requests

def getanimal(animal):
    response = requests.get(f"https://api.api-ninjas.com/v1/animals/{animal.lower()}")
    if response.status_code != 200:
        print("Error fetching data!")
        return None

    data = response.json()
    return {
    "name": data["name"],
    "taxonomy": data["taxonomy"],
      "kingdom": data["kingdom"],
      "phylum": data["phylum"],
      "class": data["class"], 
      "order": data["order"],
      "family": data["family"],
      "genus": data["genus"],
      "scientific_name": data["scientfic_name"]
      "locations": [t["location"]["name"] for t in data["locations"]]

    
    "characteristics": 
      "prey": "Gazelle, Wildebeest, Hare",
      "name_of_young": "Cub",
      "group_behavior": "Solitary/Pairs",
      "estimated_population_size": "8,500",
      "biggest_threat": "Habitat loss",
      "most_distinctive_feature": "Yellowish fur covered in small black spots",
      "gestation_period": "90 days",
      "habitat": "Open grassland",
      "diet": "Carnivore",
      "average_litter_size": "3",
      "lifestyle": "Diurnal",
      "common_name": "Cheetah",
      "number_of_species": "5",
      "location": "Asia and Africa",
      "slogan": "The fastest land mammal in the world!",
      "group": "Mammal",
      "color": "BrownYellowBlackTan",
      "skin_type": "Fur",
      "top_speed": "70 mph",
      "lifespan": "10 - 12 years",
      "weight": "40kg - 65kg (88lbs - 140lbs)",
      "height": "115cm - 136cm (45in - 53in)",
      "age_of_sexual_maturity": "20 - 24 months",
      "age_of_weaning": "3 months"
    }