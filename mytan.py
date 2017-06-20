import math
import sys
def mytan(x):
    '''mytan is a home grown tan function that relies on math.sin and math.cos'''
    y = math.sin(x)/math.cos(x)
    return y

if __name__ == "__main__":
    arg=float(sys.argv[1])
    print "Tan of %s is %s" % (arg, mytan(arg))

