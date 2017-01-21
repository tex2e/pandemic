defmodule Pandemic.GameChannel do
  use Phoenix.Channel

  def join("game:lobby", _message, socket) do
    {:ok, socket}
  end
  def join("game:room1", _message, socket) do
    {:ok, socket}
  end
  def join("game:" <> _private_room_id, _message, _socket) do
    {:error, %{reason: "unauthorized"}}
  end

  intercept ["new_event"]

  def handle_in("new_event", %{"body" => body}, socket) do
    broadcast! socket, "new_event", %{body: body}
    {:noreply, socket}
  end

  def handle_out("new_event", payload, socket) do
    push socket, "new_event", payload
    {:noreply, socket}
  end
end
