# The operator rem(a, b) returns the remainder after dividing a by b.
# Write a function that takes a single integer (n) and calls the function
# in the previous exercise, passing it rem(n, 3), rem(n, 5), and n.
# Call it seven times with the arguments, 10, 11, 12, and so on.
# You should get "Buzz, 11, Fizz, 13, 14, Fizzbuzz, 16"
fizz_buzz = fn
  0, 0, _ -> "FizzBuzz."
  _, 0, _ -> "Buzz."
  _, _, c -> "#{c}"
end

fizz_buzz2 = fn n ->
  fizz_buzz.(rem(n, 3), rem(n, 3), n)
end

IO.puts fizz_buzz2.(10)
IO.puts fizz_buzz2.(11)
IO.puts fizz_buzz2.(12)
IO.puts fizz_buzz2.(13)
IO.puts fizz_buzz2.(14)
IO.puts fizz_buzz2.(15)
IO.puts fizz_buzz2.(16)

