# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

config :pandemic, Pandemic.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "pandemic_repo",
  username: "user",
  password: "pass",
  hostname: "localhost"


# General application configuration
config :pandemic,
  ecto_repos: [Pandemic.Repo]

# Configures the endpoint
config :pandemic, Pandemic.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OqKr5ISN6uivV84mCsCwNU9s2S8R+XtM7i/Zq2HZxC90SbPh9TrwIcBalhyj7aOE",
  render_errors: [view: Pandemic.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Pandemic.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
