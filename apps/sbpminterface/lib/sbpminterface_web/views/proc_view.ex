defmodule SbpminterfaceWeb.ProcView do
  use SbpminterfaceWeb, :view

  # Process list mockup
  def processes do
    proc1 = %{
      id: 1,
      name: "Business Travel Request",
      subjects: ["Requester", "Manager"],
    }
    proc2 = %{
      id: 2,
      name: "Call for participation",
      subjects: ["Organizer", "Participator"],
    }
    [proc1, proc2]
  end

  # Get Process info API

  def process_names do
    processes()
    |> Enum.each(fn proc -> proc[:name] end)
    # |> Enum.each(&(Map.get(&1, :name)))
  end

  def proc_name(id) do
    proc_id = String.to_integer(id)
    processes()
    |> Enum.find(nil, fn proc -> proc[:id] == proc_id end)
    |> Map.get(:name)
  end

  def current_subject(id) do
    processes()
    |> Enum.find(nil, fn proc -> proc[:id] == id end)
    |> Map.get(:subjects)
    |> hd()
  end

  def current_state(id) do
    id
  end

end
