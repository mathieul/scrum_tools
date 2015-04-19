defmodule ScrumTools.DailySection do
  use ScrumTools.Web, :model

  schema "daily_sections" do
    field :label, :string
    field :position, :integer
    has_many :daily_tasks, ScrumTools.DailyTask

    timestamps
  end

  @required_fields ~w(label position)
  @optional_fields ~w()

  def changeset(model, params \\ nil) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_number(:position, greater_than_or_equal_to: 0)
  end

  def with_tasks do
    from s in __MODULE__, preload: [:daily_tasks]
  end
end
