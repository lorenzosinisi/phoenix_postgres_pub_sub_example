defmodule PhoenixPostgresPubSubExample.PhoenixPostgresPubSub do
  def handle_postgres_notification(notification, _state) do
    IO.inspect(notification, label: "Some table has changed")
  end
end
