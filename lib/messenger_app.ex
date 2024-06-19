defmodule MessengerApp do
  use Application

  def start(_type, _args) do
    children = [
      {MessengerServer, []}
    ]

    opts = [strategy: :one_for_one, name: MessengerApp.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
