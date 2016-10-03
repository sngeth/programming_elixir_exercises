# Write a function that returns true if single-quoted string contains only
# printable ASCII characters (space through tilde).

defmodule MyString do
  def printable_ascii(sqs), do: Enum.all?(sqs, fn ch -> ch in ?\s..?~ end)
end
