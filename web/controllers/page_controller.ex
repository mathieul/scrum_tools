defmodule ScrumTools.PageController do
  use ScrumTools.Web, :controller

  plug :action

  def index(conn, _params) do
    conn
    |> put_layout(false)
    |> render(:index)
  end
end
