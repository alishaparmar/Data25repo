class Dog:


    def __init__(self, name, colour):  #initalisation
        self.name = name
        self.colour = colour
        self.__animal_kind = "labrador"  # class variable
        self.bark()



    def bark(self):  # method - a funtion w/in a class
         print("woof")

# Skye = Dog()  # instantiation
Draco = Dog("Draco", "black")
# Draco.animal_kind = "Labrador"
