defmodule ScrumTools.DailySectionController do
  use ScrumTools.Web, :controller

  alias ScrumTools.Repo
  alias ScrumTools.DailySection

  plug :action

  def index(conn, _params) do
    sections = Repo.all(DailySection)
    render conn, daily_sections: sections
  end
end
