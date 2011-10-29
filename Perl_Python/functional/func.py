import re

arr = range(10)

odd = filter(lambda x: not x%2, arr)
even = filter(lambda x: re.search('[13579]$', str(x)), arr)
print odd
print even

squarr = map(lambda x: x**2, arr)
print squarr

print reduce(lambda x,y: x+y, squarr) # Should use sum here

