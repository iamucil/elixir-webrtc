defmodule PHXWebRTCWeb.PageController do
  use PHXWebRTCWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
