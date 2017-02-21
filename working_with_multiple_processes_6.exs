# In the pmap code, I assigned the value of self to the variable me at the top
# of the method and then used me as the target of the message returned by the
# spawned processes. Why use a seperate variable?

defmodule Parallel do
  def pmap(collection, fun) do
    # Assign self to current parent process
    # otherwise line 13 will use PID of the spawned process
    me = self

    collection
    |> Enum.map(fn (elem) ->
      spawn_link fn -> (send me, { self, fun.(elem) }) end
    end)
    |> Enum.map(fn (pid) ->
      receive do { ^pid, result } -> result end
    end)
  end
end
