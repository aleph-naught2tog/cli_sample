defmodule CliSample do
  @moduledoc """
  Documentation for CliSample.
  """

  @doc """
  Hello world.

  ## Examples

      iex> CliSample.hello()
      :world

  """
  def hello do
    :world
  end

  def main(command_line_arguments) do
    IO.inspect(command_line_arguments, label: "CLI args")
    IO.puts("hello!")
  end
end
