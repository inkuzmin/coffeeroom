# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coffeeroom,
  ecto_repos: [Coffeeroom.Repo]

# Configures the endpoint
config :coffeeroom, Coffeeroom.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "m3gTiT0876uUlQFj5JEm7brPyVR5Ob+7cmC3odgrhBE69jnWHnuf6xQEuy23JcTg",
  render_errors: [view: Coffeeroom.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Coffeeroom.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
