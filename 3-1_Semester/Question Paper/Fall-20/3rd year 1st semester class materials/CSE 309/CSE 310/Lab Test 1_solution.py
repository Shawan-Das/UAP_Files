dict_flowers = {"Lal Kath Golap": "Summer", "Sada Kath Golap" : "Summer" ,
                "Thai Crape Myrtle" : "Summer", "Gulmohar Tuma" : "Summer",
                "Krishnachura" : "Summer", "Palash" : "Summer", "Aparajita" : "Summer",
                "Kadam" : "Rainy season", "Beli" : "Rainy season",
                "Dolan Chapa" : "Rainy season", "Marigold" : "Winter",
                "Dantas" : "Winter", "Petunia" : "Winter", "Dahlia" : "Winter",
                "Winter lilies" : "Winter", "Sunflower" : "Winter"}

name = input("Enter a flower's name : ")
count = 0
seasons = ""
for flowerName,season in dict_flowers.items():
    if name == flowerName:
        seasons = season
        count += 1
        break
if count == 1:
    print(seasons)
else:
    print("Information not registered.")
