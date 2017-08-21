defmodule SBPMVM.Subject do 
  @moduledoc """
  This resembles a S-BPM Subject.

  A subject is a supervised worker. It represents a subject in S-BPM 
  terminology.
  """

  use GenServer

  def start_link(state) do
    GenServer.start_link(__MODULE__, state, name: __MODULE__)
  end

  def testfun do
    "Hello from #{inspect(__MODULE__)}"
  end

  # Callbacks

  def init(stack) do
    {:ok, stack}
  end

  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end

  def handle_cast({:push, head}, stack) do
    {:noreply, [head | stack]}
  end
end
