defmodule MyApp.Router do
  use MyApp.Web, :router

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

  scope "/", MyApp do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/bare", PageController, :bare
    resources "/drinks", DrinkController
  end

  # Other scopes may use custom stacks.
  # scope "/api", MyApp do
  #   pipe_through :api
  # end
end
