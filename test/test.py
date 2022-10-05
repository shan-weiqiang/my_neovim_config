class myclass:
    def __init__(self) -> None:
        # pass
        pass


class otherclass:
    def __init__(self) -> None:
        pass
    
    def some_function(self):
        print('some function')

if __name__ == '__main__':
    """Shan Weiqiang:
    some unformatted text that need to be formatted..."""

    print('hello, neovim is great')

    print("{} is used to test whetehr the autopep8 formatter is woring or not". format('format'))
    myinstance = otherclass()
    myinstance.some_function()
