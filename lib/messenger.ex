defmodule Messenger do
  def start do
    receive do
      {:msg, from, message} ->
        IO.puts("#{inspect(from)}: #{message}")
        start()
    end
  end

  def send_message(to_node, message) do
    send({:messenger, to_node}, {:msg, self(), message})
  end
end
