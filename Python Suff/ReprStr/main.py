class Location:
    def __init__(self, latitude, longitude, name = "bham"):
        self.latitude = latitude
        self.longitude = longitude
        self.name = name

    def __repr__(self):
        return f"Location=(longitude={self.longitude}, latitude={self.latitude}){self.name}"

    def __str__(self):
        return f"({self.latitude}, {self.longitude}"

bham_academy = Location(52.488647, -1.887249)
print(bham_academy)