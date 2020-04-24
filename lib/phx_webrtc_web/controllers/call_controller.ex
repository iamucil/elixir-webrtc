defmodule PHXWebRTCWeb.CallController do
  use PHXWebRTCWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
