defmodule SbpminterfaceWeb.PageController do
  use SbpminterfaceWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def vm(conn, _params) do
    render conn, "vm.html"
  end
end
