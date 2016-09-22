# Extend the Times module with a triple function that multiplies its parameter
# by three.

defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
end

IO.puts Times.triple(3) # => 9
