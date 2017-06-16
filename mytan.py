import math
import sys
def mytan(x):
    '''mytan is a home grown tan function that relies on math.sin and math.cos'''
    y = math.sin(x)/math.cos(x)
    return y

def test_mytan():
    assert(round(mytan(3),5)==round(-0.142546543074,5))
    assert(round(mytan(3.14),5)==round(-0.0015926549364,5))

if __name__ == "__main__":
    arg=float(sys.argv[1])
    print "Tan of %s is %s" % (arg, mytan(arg))

