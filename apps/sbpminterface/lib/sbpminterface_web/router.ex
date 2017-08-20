defmodule SbpminterfaceWeb.Router do
  use SbpminterfaceWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SbpminterfaceWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/vm", PageController, :vm
    get "/proc", ProcController, :index
    get "/proc/:id", ProcController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", SbpminterfaceWeb do
  #   pipe_through :api
  # end
end
