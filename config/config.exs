# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :pxp,
  ecto_repos: [Pxp.Repo]

# Configures the endpoint
config :pxp, PxpWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "w1GTNe83i2u8tQuL0c0t0UauJjJlw/ThJy9mlFT9Xr8USeA6IjrPUU3MVD+sAEjF",
  render_errors: [view: PxpWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pxp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
