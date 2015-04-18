defmodule ScrumTools.Repo.Migrations.CreateDailySection do
  use Ecto.Migration

  def change do
    create table(:daily_sections) do
      add :label, :string
      add :position, :integer

      timestamps
    end
  end
end
