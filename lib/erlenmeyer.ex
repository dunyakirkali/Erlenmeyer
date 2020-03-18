defmodule Erlenmeyer do
  # def main(cmd) when cmd == "run" do
  #   IO.puts "Run"
  # end
  #
  # def main(cmd) do
  #   exit "Bad command"
  # end

  @doc """
  ## Examples

      iex> Erlenmeyer.run(["echo", "hello", "Amsterdam"])
      {"hello Amsterdam\\n", 0}
  """
  def run([command | args]) do
    IO.puts("Running #{command} #{args}")
    System.cmd(command, args, into: IO.stream(:stdio, :line))
  end

  def run(command) do
    IO.puts("Running #{command}")
    System.cmd(command, [], into: IO.stream(:stdio, :line))
  end
end
