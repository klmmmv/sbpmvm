defmodule SBPMSupervisor do
  @moduledoc """
  This is the supervisor for one specific S-BPM Process.

  It runs a stash which saves the state of all subjects involved in the
  S-BPM process and starts workers for each subject.
  """

  use Supervisor

  def start_link do
    children = [
      {ProcStash, []},
      {Subject, [:hello]},
      {Subject, [:world]}
    ]
    opts = [strategy: :one_for_one, name: SBPMSupervisor]
    Supervisor.start_link(children, opts)
  end
end
