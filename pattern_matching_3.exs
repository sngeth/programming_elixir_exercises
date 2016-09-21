a = 2 # assume this initial value for each below

[a, b, a] = [1, 2, 3] # no match

[a, b, a] = [1, 1, 2] # no match

a = 1 # match

^a = 2 # match, note ^ forces us to use exisiting value of 'a'

^a = 1 # no match

^a = 2 - a #no match, 2 doesn't match 0
