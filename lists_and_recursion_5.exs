# Implement the following Enum functions using now library functions or list
# comprehensions: all?, each, filter, split, and take. You may need to use an if
# statement to implement filter.
defmodule MyList do
  def all?(list), do: all?(list, fn x -> !!x end)
  def all?([], _func), do: true
  def all?([head | tail], func) do
    if func.(head), do: all?(tail, func), else: false
  end
end
