
def make_adder(a):
    addition = a
    def adder(x):
        return x+addition
    return adder

ad = make_adder(10)
print ad(100)
print ad(-10)

