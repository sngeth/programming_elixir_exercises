[a, b, a] = [1, 2, 3] # no match, 'a' can only be binded once
[a, b, a] = [1, 1, 2] # no match, 'a' can only be binded once
[a, b, a] = [1, 2, 1] # match because 'a' is bound to same value of 1
