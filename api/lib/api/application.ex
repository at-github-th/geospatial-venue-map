
defmodule Api.Application do
  use Application
  def start(_type, _args) do
    children = [{Plug.Cowboy, scheme: :http, plug: Api.Router, options: [port: 5107]}]
    Supervisor.start_link(children, strategy: :one_for_one, name: Api.Supervisor)
  end
end
