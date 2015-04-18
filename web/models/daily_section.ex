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

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_number(:position, greater_than_or_equal_to: 0)
  end
end
