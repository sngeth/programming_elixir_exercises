a = [1, 2, 3] # match, bind the list ot a

a = 4 # match, bind 4 to a

4 = a # matches beacause 'a' was matched to 4 previously

[a,b] = [1, 2, 3] #no match, arity on left is 2 instead of 3

a = [[1, 2, 3]] #match, bind list inside list to 'a'

[a] = [[1, 2, 3]] #matches nested list, 'a' binds to inner list

#no match below, rhs is a list with nested list
#but lhs expects an additional binding for a
[[a]] = [[1, 2, 3]]
