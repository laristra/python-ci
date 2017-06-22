import sys
import mytan
import myfactorial

def main(z):
    '''main function takes arguments and runs them through mytan and myfactorial'''
    a = (mytan.mytan(z)) * (myfactorial.factorial(z))
    return a

if __name__ == "__main__":
    arg=float(sys.argv[1])
    print(mytan.mytan(arg) * myfactorial.factorial(arg))
