# Write a max(list) that returns the element with the maximum value in the list
defmodule MyList do
  def max([x]), do: x

  def max([head | tail]), do: Kernel.max(head, max(tail))
end
