defmodule ScrumTools.DailySectionController do
  use ScrumTools.Web, :controller

  alias ScrumTools.Repo
  alias ScrumTools.DailySection

  plug :action

  def index(conn, _params) do
    render conn, daily_sections: Repo.all(DailySection.with_tasks)
  end
end
