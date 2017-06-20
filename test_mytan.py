from mytan import mytan
def test_mytan():
    assert(round(mytan(3),5)==round(-0.142546543074,5))
    assert(round(mytan(3.14),5)==round(-0.0015926549364,5)) 
