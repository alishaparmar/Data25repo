from snake import Snake


class Python(Snake):

    def __init__(self):
        super().__init__()
        self.large = True
        self.two_lungs = True
        self.venom = False


peter = Python()
patty = Python()
patty.venom = True
print(patty.venom)
print(peter.venom)
