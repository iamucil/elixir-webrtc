defmodule PHXWebRTCWeb.CallChannel do
  use Phoenix.Channel

  def join("call", _auth_msg, socket) do
    {:ok, socket}
  end

  def handle_in("message", %{"body" => body}, socket) do
    broadcast! socket, "message", %{body: body}
    {:noreply, socket}
  end
end
