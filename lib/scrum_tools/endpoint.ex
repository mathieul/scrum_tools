defmodule ScrumTools.Endpoint do
  use Phoenix.Endpoint, otp_app: :scrum_tools

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :scrum_tools,
    only: ~w(css images js assets favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_scrum_tools_key",
    signing_salt: "YIfNruO3",
    encryption_salt: "R6rT1Fy4"

  plug :router, ScrumTools.Router
end
