import math
import sys

def factorial(x):
    '''myfactorial relies on math.factorial'''
    if x > 0:
        y = math.factorial(x)
        return(y)

if __name__ == "__main__":
    arg=float(sys.argv[1])
    print("Factorial of %s is %s" % (arg, factorial(arg)))
