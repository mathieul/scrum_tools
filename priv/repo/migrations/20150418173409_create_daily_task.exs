defmodule ScrumTools.Repo.Migrations.CreateDailyTask do
  use Ecto.Migration

  def change do
    create table(:daily_tasks) do
      add :label, :string
      add :position, :integer
      add :daily_section_id, :integer

      timestamps
    end
  end
end
