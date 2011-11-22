from threading import Thread

def foo(x):
    print "In thread"
    print x**2
    x = raw_input()
    print "Leaving thread"

t = Thread(target=foo, args=(10,))
t.daemon = False

t.start()
#t.join()

