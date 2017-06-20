from myfactorial import factorial
from mytan import mytan

def test_myfactorial():
    assert(factorial(4))==24
    assert(factorial(7))==5040
    assert(factorial(1))==1

def test_mytan():
    assert(round(mytan(3),5)==round(-0.142546543074,5))
    assert(round(mytan(3.14),5)==round(-0.0015926549364,5)) 
