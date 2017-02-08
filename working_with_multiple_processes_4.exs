defmodule Link do
  def child do
    raise "Uh oh"
  end

  def parent do
    :timer.sleep(500)
    receive_all
  end

  defp receive_all do
    receive do
      message -> IO.inspect message
      receive_all
    after 1000 ->
      IO.puts "No more messages"
    end
  end
end

Process.flag(:trap_exit, true)
spawn_link(Link, :child, [])
Link.parent

# 14:45:13.442 [error] Process #PID<0.115.0> raised an exception
# ** (RuntimeError) Uh oh
#     working_with_multiple_processes_4.exs:3: Link.child/0
# {:EXIT, #PID<0.115.0>,
#  {%RuntimeError{message: "Uh oh"},
#   [{Link, :child, 0,
#     [file: 'working_with_multiple_processes_4.exs', line: 3]}]}}
# No more messages
