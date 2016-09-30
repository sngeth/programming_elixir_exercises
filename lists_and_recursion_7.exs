# In the last exercise of Chapter 7, Lists and Recursion, on page 61, you
# wrote a span function. Use it and list comprehensions to return a list of the
# prime numbers from 2 to n

defmodule MyList do
  def span(from, to), do: Enum.to_list from..to

  def primes_to(n) do
    nums = span(2,n)
    not_prime = for a <- nums, b <- span(2, div(a, 2)), rem(a, b) == 0, do: a
    nums -- not_prime
  end
end

