defmodule ScrumTools.DailyTaskView do
  use ScrumTools.Web, :view

  def render("index.json", %{daily_tasks: daily_tasks}) do
    collection = for daily_task <- daily_tasks do
      daily_task |> Map.take([:id, :label, :position, :daily_section_id])
    end
    %{daily_tasks: collection}
  end
end
