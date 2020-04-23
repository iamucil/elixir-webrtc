# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_webrtc,
  namespace: PHXWebRTC,
  ecto_repos: [PHXWebRTC.Repo]

# Configures the endpoint
config :phx_webrtc, PHXWebRTCWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i516HVVDcPbqiCRaS9BRMSoYywCRXohOlulRKpEKDOWAtCdtCn09FySh+pmF4Whg",
  render_errors: [view: PHXWebRTCWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PHXWebRTC.PubSub,
  live_view: [signing_salt: "vLoO9X5l"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
