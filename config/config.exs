# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elixir_webrtc,
  namespace: AudioVideoChat,
  ecto_repos: [AudioVideoChat.Repo]

# Configures the endpoint
config :elixir_webrtc, AudioVideoChatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ul3E/6qbIPWsOznS3r3Pgjq+3WmvTw2Fs0zCSqslGT6kYv0Vhgp5UEdZdN/H83/N",
  render_errors: [view: AudioVideoChatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AudioVideoChat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
