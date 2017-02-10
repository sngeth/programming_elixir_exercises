# Change spawn_link to spawn_monitor

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
spawn_monitor(Link, :child, [])
Link.parent

# 15:10:02.155 [error] Process #PID<0.77.0> raised an exception
# ** (RuntimeError) Uh oh
#     working_with_multiple_processes_5.exs:5: Link.child/0
#     {:DOWN, #Reference<0.0.4.322>, :process, #PID<0.77.0>,
#        {%RuntimeError{message: "Uh oh"},
#            [{Link, :child, 0,
#                    [file: 'working_with_multiple_processes_5.exs', line: 5]}]}}
#            No more messages

# It appears the above output shows that spawn monitor does not produce an :EXIT message
# like spawn_link does and also returns a Reference object of the monitor and it's PID
