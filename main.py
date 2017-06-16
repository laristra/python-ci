import sys

import mytan

def test():
    print "main test"

if __name__ == "__main__":
    arg=sys.argv[1]
    print mytan(arg)

#print "Tan of %s is %s" % (arg, mytan(float(arg)))
