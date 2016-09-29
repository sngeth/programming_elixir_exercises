# Write a flatten(list) function that takes a list that may contain any
# number of sublists, which themselves may contain sublists, to any depth.
# It returns the elements of these lists as a flat list

defmodule MyList do
  def flatten([]), do: []
  def flatten([ head | tail ]), do: flatten(head) ++ flatten(tail)
  def flatten(head), do: [ head ]
end


