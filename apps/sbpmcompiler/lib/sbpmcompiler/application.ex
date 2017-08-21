defmodule SBPMVM.App do
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false
    children = [
      worker(SBPMVM.Subject, [:first], name: Subj),
    ]
    opts = [strategy: :one_for_one, name: Runtime]
    Supervisor.start_link(children, opts)
  end
end
