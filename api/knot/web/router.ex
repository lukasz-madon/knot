defmodule Knot.Router do
  use Knot.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Knot do
    pipe_through :api
  end
end
