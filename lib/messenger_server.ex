defmodule MessengerServer do
  use GenServer

  # Client API
  def start_link(_) do
    GenServer.start_link(__MODULE__, :ok, name: :messenger)
  end

  def send_message(to_node, message) do
    send({:messenger, to_node}, {:msg, self(), message})
  end

  # Server Callbacks
  def init(:ok) do
    {:ok, %{}}
  end

  def handle_info({:msg, from, message}, state) do
    IO.puts("#{inspect(from)}: #{message}")
    {:noreply, state}
  end
end
