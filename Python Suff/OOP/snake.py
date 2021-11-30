from reptile import Reptile


class Snake(Reptile):

    def __init__(self):
        super().__init__()
        self.forked_tongue = True
        self.cold_blooded = False
        self.venom = None
        self.limbs = False

    def use_tongue_to_smell(self):
        print("Do i say it smells or tastes nice")


sidney = Snake()
print(sidney.cold_blooded)
sidney.use_tongue_to_smell()
# sidney.seek_heat  -- won't work as we encapsulated it on the reptile page
