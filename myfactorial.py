import math

def factorial(x):
    if x > 0:
        y = math.factorial(x)
        return(y)
# result = factorial(7)
# print result


def test_myfactorial():
	assert(myfactorial(4))==24
	assert(myfactorial(7))==5040
	assert(myfactorial(1))==1
