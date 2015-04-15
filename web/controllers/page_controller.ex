defmodule ScrumTools.PageController do
  use ScrumTools.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end
end
