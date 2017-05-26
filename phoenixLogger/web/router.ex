defmodule PhoenixLogger.Router do
  use PhoenixLogger.Web, :router

  pipeline :browser do
    plug :accepts, ["json"]
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixLogger do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    post "/message", MessageController, :redirector
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixLogger do
  #   pipe_through :api
  # end
end
