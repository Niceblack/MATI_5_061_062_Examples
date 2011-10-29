a = range(10)

def compare(x,y):
    return cmp(x%2, y%2)

print sorted(a, cmp=compare)
print sorted(a, cmp=lambda x,y: cmp(x%2, y%2))
print sorted(a, key=lambda x: x%2)
