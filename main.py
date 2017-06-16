import sys

import mytan

def test():
    print "main test"

if __name__ == "__main__":
    arg=sys.argv[1]
    print mytan.mytan(arg)
