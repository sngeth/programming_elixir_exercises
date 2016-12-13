# Write a function to capitalize the sentences in a string. Each sentence is
# terminated by a period and a space. Right now, the case of the characters
# in the string is random

# capitalize_sentences("oh. a DOG. woof. ")
# "Oh. A dog. Woof. "
defmodule MyString do
  def capitalize_sentences(string) do
    string
    |> String.split(~r{\.\s+})
    |> Enum.map(&String.capitalize(&1))
    |> Enum.join(". ")
  end
end
