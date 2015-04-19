defmodule ScrumTools.DailySectionView do
  use ScrumTools.Web, :view

  alias ScrumTools.DailyTaskView

  def render("index.json", %{daily_sections: daily_sections}) do
    collection = for daily_section <- daily_sections do
      daily_section
      |> Map.take([:id, :label, :position])
      |> Map.put(:daily_tasks_ids, Enum.map(daily_section.daily_tasks, fn task -> task.id end))
    end

    tasks = Enum.flat_map(daily_sections, fn ds -> ds.daily_tasks end)
    DailyTaskView.render("index.json", %{daily_tasks: tasks})
    |> Map.merge(%{daily_sections: collection})
  end
end
