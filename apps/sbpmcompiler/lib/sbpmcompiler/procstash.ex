defmodule ProcStash do
  @moduledoc """
  Stores state of a S-BPM Process.
  """

  use GenServer

  # External API
  ##############

  def start_link(init) do
    GenServer.start_link(__MODULE__, :ok, init) 
  end

  @doc "Update the state of a Subject"
  def update_subj(subject) do
    GenServer.cast(__MODULE__, {:update_subj, subject})
  end

  @doc "Get a specific subject state"
  def get(subject) do
    GenServer.call(__MODULE__, {:get, subject})
  end

  # GenServer implementation
  ##########################

  def handle_cast({:update_subj, subject}, state) do
    :not_implemented
    # {:noreply, Map.put(state, subject)}
  end

  def handle_call({:get, subject}, _from, state) do
    :not_implemented
    # {:reply, Map.get(state, subject), state}
  end

  def init(state) do
    {:ok, state}
  end
end
