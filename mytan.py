import math

def mytan(x):
    y = math.sin(x)/math.cos(x)
    return(y)

result = mytan(4)
assert(round(mytan(3),5)==round(-0.142546543074,5))
assert(round(mytan(3.14),5)==round(-0.0015926549364,5))
assert(round(mytan(2.5),5)==round(math.tan(2.5),5))

if(True==False):
 a=1
 b=2
 c=a*b
 print "c"
