defmodule AudioVideoChatWeb.PageController do
  use AudioVideoChatWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
