# (Harder) Write a function that takes a single-quoted string of the form number
# [+-*/] number and returns the result of the calculation.
# The individual numbers do not have leading plus or minus signs.

# calculate('123 + 27') # => 150
defmodule Parse do
  def calculate(charl) do
    [op1, op, op2] = to_string(charl) |> String.split
    ops = [op1, op2] |> Enum.map(&String.to_integer/1)
    fun = fn
      "+", [op1, op2] -> op1 + op2
      "-", [op1, op2] -> op1 - op2
      "*", [op1, op2] -> op1 * op2
      "/", [op1, op2] -> op1 / op2
    end
    fun.(op, ops)
  end
end
