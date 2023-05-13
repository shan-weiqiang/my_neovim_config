from somem import p

SOME_CONST = "HELLOWORLD"
class myclass:
    def __init__(self) -> None:
        # pass
        pass


class otherclass:
    def __init__(self) -> None:
        pass

    def some_function(self):
        print('some function')
        b = 8
        a = b + 29
        li = ['hello', 'nihao ']
        di = {'key1': 1, "key2": 3}
        print(li)
        print(di)
        print(a)
        return


if __name__ == '__main__':
    """Shan Weiqiang:
    some unformatted text that need to be formatted..."""

    print('hello, neovim is great')

    print("{} is used to test whetehr the autopep8 formatter is woring or not". format('format'))
    myinstance = otherclass()
    myinstance.some_function()
    p('hello')
