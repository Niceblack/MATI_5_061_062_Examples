from threading import Thread, Lock

z = 100

class MyThread(Thread):
    def __init__(self, x):
        super(MyThread, self).__init__()
        self.x = x

    def run(self):
        print self.x
        global z
        z += 1
        print z

    def my_func(self):
        # do_something!
        pass
    
t = MyThread(10)
#t.daemon = True
t.start()
t.join()

l = Lock()
with l:
    print "locked"
print "unlocked"
print z
