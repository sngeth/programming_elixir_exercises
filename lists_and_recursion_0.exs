# Sum function written without an accumulator
defmodule MyList do
  def sum([]), do: 0
  def sum([head | tail]), do:  head + sum(tail)
end
