defmodule SBPMSupervisor do
  @moduledoc """
  This is the supervisor for one specific S-BPM Process.

  It runs a stash which saves the state of all subjects involved in the
  S-BPM process and starts workers for each subject.
  """

  use Supervisor

  def start_link(opts) do
    Supervisor.start_link(__MODULE__, :ok, opts)
  end

  def init(:ok) do
    children = [
      {ProcStash, name: Proc.Stash}
    ]
    Supervisor.init(children, strategy: :one_for_one)
  end
end
