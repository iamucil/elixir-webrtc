defmodule AudioVideoChatWeb.CallChannel do
  use Phoenix.Channel

  def join("call", _auth_msg, socket) do
    {:ok, socket}
  end

  def handle_in("message", %{"body" => body}, socket) do
    {:noreply, socket}
  end
end
