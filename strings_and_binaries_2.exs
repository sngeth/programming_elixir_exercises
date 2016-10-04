# Write an anagram?(word, word2) that returns true if its parameters are anagrams.

defmodule MyString do
  def anagram(word1, word2), do: Enum.sort(word1) == Enum.sort(word2)
end
