
defmodule Api.Router do
  use Plug.Router
  plug Plug.Logger
  plug :match
  plug Plug.Parsers, parsers: [:json], json_decoder: Jason
  plug :dispatch

  get "/" do
    send_resp(conn, 200, ~s({"name":"Geospatial Venue Map + Heatmaps API","ok":true}))
  end

  get "/api/venues" do
    send_resp(conn, 200, ~s([{"id":"V-1","name":"HQ"},{"id":"V-2","name":"Park West"}]))
  end
end
