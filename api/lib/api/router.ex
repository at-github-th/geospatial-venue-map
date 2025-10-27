defmodule Api.Router do
  use Plug.Router
  plug Plug.Logger
  plug :cors
  plug :match
  plug Plug.Parsers, parsers: [:json], json_decoder: Jason
  plug :dispatch
  defp cors(conn, _), do:
    conn |> Plug.Conn.put_resp_header("access-control-allow-origin","*")
        |> Plug.Conn.put_resp_header("access-control-allow-headers","*")
        |> Plug.Conn.put_resp_header("access-control-allow-methods","*")
  get "/" do send_resp(conn, 200, ~s({"name":"Geospatial Venue Map API","ok":true})) end
  get "/api/venues" do send_resp(conn, 200, ~s([{"id":"V-1","name":"HQ"},{"id":"V-2","name":"Park West"}])) end
end
