defmodule CliSampleTest do
  use ExUnit.Case
  doctest CliSample

  test "greets the world" do
    assert CliSample.hello() == :world
  end
end
