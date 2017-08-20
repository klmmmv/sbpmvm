defmodule SBPMVMTest do
  use ExUnit.Case
  doctest SBPMVM

  test "greets the world" do
    assert SBPMVM.hello() == :world
  end
end
