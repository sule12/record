# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :accounts,
  ecto_repos: [Accounts.Repo]

# Configures the endpoint
config :accounts, AccountsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uqRGRgrcjd6vhKfJC0vhI39owZAuo6Mhruc4aDwpr/UQJYQNtxIzQTDZLTDa0lgD",
  render_errors: [view: AccountsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Accounts.PubSub,
  live_view: [signing_salt: "USIiuh9D"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
