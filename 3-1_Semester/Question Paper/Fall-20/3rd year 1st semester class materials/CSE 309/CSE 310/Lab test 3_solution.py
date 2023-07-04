from abc import ABC, abstractclassmethod

class Season(ABC):
    def __init__(self,name,months,year):
        self.__season_name = name
        self.__months = months
        self.__year = year
    @abstractclassmethod
    def increaseTemperature(self,amount):
        pass
    @abstractclassmethod
    def decreaseTemperature(self,amount):
        pass
    @abstractclassmethod
    def getTemperature(self):
        pass
    def display(self):
        print("Season name :",self.__season_name)
        print("Months :",self.__months)
        print("Year :",self.__year)
    def setSeasonname(self,name):
        self.__season_name = name
    def setMonths(self,months):
        self.__months = months
    def setYear(self,year):
        self.__year = year
    def getSeasonname(self):
        return self.__season_name
    def getMonths(self):
        return self.__months
    def getYear(self):
        return self.__year

class Summer(Season):
    def __init__(self,name,months,year,tem):
        super().__init__(name,months,year)
        self.temperature = tem

    def increaseTemperature(self, amount):
        if self.temperature + amount > 40:
            print("Maximum temperature limit reached.")
        else:
            self.temperature += amount

    def decreaseTemperature(self, amount):
        if self.temperature - amount < 25:
            print("Minimum temperature limit reached.")
        else:
            self.temperature -= amount

    def getTemperature(self):
        return self.temperature
    def display(self):
        super().display()
        print("Temperature :",self.temperature)

class Winter(Season):
    def __init__(self,name,months,year,tem):
        super().__init__(name,months,year)
        self.temperature = tem

    def increaseTemperature(self, amount):
        if self.temperature + amount > 25:
            print("Maximum temperature limit reached.")
        else:
            self.temperature += amount

    def decreaseTemperature(self, amount):
        if self.temperature - amount < 4:
            print("Minimum temperature limit reached.")
        else:
            self.temperature -= amount

    def getTemperature(self):
        return self.temperature
    def display(self):
        super().display()
        print("Temperature :",self.temperature)

def main():
    obj1 = Summer("Summer",["April","May","June"],2020,30)
    print(obj1.getSeasonname())
    print(obj1.getMonths())
    print(obj1.getYear())
    obj1.setYear(2021)
    print(obj1.getYear())
    obj1.increaseTemperature(8)
    print(obj1.temperature)
    obj1.decreaseTemperature(6)
    print(obj1.temperature)
    obj1.increaseTemperature(10)
    print(obj1.temperature)
    obj1.decreaseTemperature(10)
    print(obj1.temperature)
    obj1.display()
    obj2 = Winter("Winter", ["March","April", "May",], 2020, 15)
    print(obj2.getSeasonname())
    print(obj2.getMonths())
    print(obj2.getYear())
    obj2.setYear(2021)
    print(obj2.getYear())
    obj2.increaseTemperature(6)
    print(obj2.temperature)
    obj2.decreaseTemperature(10)
    print(obj2.temperature)
    obj2.increaseTemperature(15)
    print(obj2.temperature)
    obj2.decreaseTemperature(8)
    print(obj2.temperature)
    obj2.display()
if __name__ == "__main__":
    main()