# Implement the following Enum functions using now library functions or list
# comprehensions: all?, each, filter, split, and take. You may need to use an if
# statement to implement filter.
defmodule MyList do
  def all?(list), do: all?(list, fn x -> !!x end)
  def all?([], _func), do: true
  def all?([head | tail], func) do
    if func.(head), do: all?(tail, func), else: false
  end


  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end
  def each([], _func), do: :ok

  def filter([head | tail], func) do
    if func.(head) == true do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end
  end
  def filter([], _func), do: []
end
