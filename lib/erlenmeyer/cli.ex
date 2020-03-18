defmodule Erlenmeyer.CLI do
  def main(args \\ []) do
    IO.puts "Erlenmeyer"
    Erlenmeyer.run(args)
  end
end
