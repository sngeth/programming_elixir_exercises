# Convert a float to a string with two decimal digits. (Erlang)
:io_lib.format("~.2f", [789.1234])

# Get the value of an operating-system environment variable. (Elixir)
System.get_env("SHELL")

# Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
Path.extname("dave/test.exs")

# Return the process's current working directory. (Elixir)
System.cwd

# Convert a string containing JSON into Elixir data structures. (Just find; don't install)
# https://github.com/devinus/poison

# Execute a command in your operating system's shell
System.cmd("whoami", [])
