# Write a function MyList.span(from, to) that returns a list of the numbers from
# 'from' up to 'to'

defmodule MyList do
  def span(from, to) when from > to, do: []

  def span(from, to) do
    [ from | span(from+1, to) ]
  end

  def span2(from, to), do: Enum.to_list from..to
end
