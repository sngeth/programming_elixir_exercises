# Use spawn_link to start a process, and have that process send a message
# to the parent and then exit immediately. Meanwhile, sleep for 500 ms in
# the parent, then receive as many messages as are waiting. Trace what
# you recieve. Does it matter that you weren't waiting for the notification
# from the child when it exited?

defmodule Link do
  def child(parent_pid, exit_result) do
    send parent_pid, "hello"
    exit(exit_result)
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
spawn_link(Link, :child, [self, :error])
Link.parent

# "hello"
# {:EXIT, #PID<0.123.0>, :error}
# No more messages
# [Link]
