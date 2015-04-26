defmodule ScrumTools.DailyTaskView do
  use ScrumTools.Web, :view

  def render(_file, %{daily_tasks: daily_tasks}) do
    collection = for daily_task <- daily_tasks do
      daily_task_attributes(daily_task)
    end
    %{daily_tasks: collection}
  end

  defp daily_task_attributes(daily_task) do
    Map.take(daily_task, [:id, :label, :position, :daily_section_id])
  end

  def render(_file, %{daily_task: daily_task}) do
    %{daily_task: daily_task_attributes(daily_task)}
  end

  def render(_file, %{errors: errors}) do
    %{errors: Enum.map(errors, fn {field, message} -> "#{field} #{message}" end)}
  end
end
