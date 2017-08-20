defmodule SbpminterfaceWeb.ProcController do
  use SbpminterfaceWeb, :controller

  def index(conn, _params) do
    render(conn, "proc.html")
  end

  def show(conn, %{"id" => id}) do
    render(conn, "proc_instance.html", id: id)
  end
end
