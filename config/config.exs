# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_postgres_pub_sub_example, ecto_repos: [PhoenixPostgresPubSubExample.Repo]

# Configures the endpoint
config :phoenix_postgres_pub_sub_example, PhoenixPostgresPubSubExampleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qgenU4jPUB1Ua8S55QnN6gUN4JDNY2tkd5agp5RcxgwDzRsp1ileh59b06QF0PNd",
  render_errors: [view: PhoenixPostgresPubSubExampleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixPostgresPubSubExample.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

config :phoenix_postgres_pub_sub, :config,
  adapter: PhoenixPostgresPubSubExample,
  repo: PhoenixPostgresPubSubExample.Repo

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
