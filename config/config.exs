# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :elixirBlog,
  ecto_repos: [ElixirBlog.Repo]

# Configures the endpoint
config :elixirBlog, ElixirBlogWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F1ooDaKbqEvn3u3psAs75opZjPTUby4qxhXiOiO2iRAZGcYmNB1UHZzK46eQ45i9",
  render_errors: [view: ElixirBlogWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ElixirBlog.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Drab
config :drab, ElixirBlogWeb.Endpoint,
  otp_app: :elixirBlog

# Configures default Drab file extension
config :phoenix, :template_engines,
  drab: Drab.Live.Engine

# Configures Drab for webpack
config :drab, ElixirBlogWeb.Endpoint,
  js_socket_constructor: "window.__socket"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
