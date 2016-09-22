# Write a function that takes three arguments. If the first two are zero, return "FizzBuzz."
# If the first is zero, return "Fizz.". If the second is zero, return "Buzz." Otherwise return
# the third argument. DO not use any language features that we haven't yet covered in this book.
fizz_buzz = fn
	0, 0, _ -> "FizzBuzz."
	_, 0, _ -> "Buzz."
	_, _, c -> "#{c}"
end

IO.puts fizz_buzz.(0,0,1)
IO.puts fizz_buzz.(1,0,1)
IO.puts fizz_buzz.(1,1,1)
