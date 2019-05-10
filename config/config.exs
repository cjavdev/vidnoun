# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vidnoun,
  ecto_repos: [Vidnoun.Repo]

# Configures the endpoint
config :vidnoun, VidnounWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oRo4jUyEy6XMAc5cZxnKRQyMpAL/y6gCPgBiHdMsruG5SEMaTf9BV+oy6eKiyZkN",
  render_errors: [view: VidnounWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Vidnoun.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
