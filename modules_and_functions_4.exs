# Implement and run a function sum(n) that uses recursion to calculate the
# sum of the integers from 1 to n. You'll need to write this function inside
# a module in a seperate file. Then l oad up iex, compile that file, and try
# your function

defmodule MySum do
  def sum(0), do: 0
  def sum(n), do: n + sum(n-1)
end


