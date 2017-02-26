# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :knot,
  ecto_repos: [Knot.Repo]

# Configures the endpoint
config :knot, Knot.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vxAaNKsN6TL+FVw745eLeO1gxdA6qx/iwTw1fxUc0sc3ek0Ums1/z3M++TF6g/KJ",
  render_errors: [view: Knot.ErrorView, accepts: ~w(json)],
  pubsub: [name: Knot.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
