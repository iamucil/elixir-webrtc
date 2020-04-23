defmodule PHXWebRTC.Repo do
  use Ecto.Repo,
    otp_app: :phx_webrtc,
    adapter: Ecto.Adapters.Postgres
end
