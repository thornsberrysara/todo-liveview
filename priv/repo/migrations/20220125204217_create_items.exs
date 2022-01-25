defmodule TodoList.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :text, :string
      add :status, :integer, default: 0

      timestamps()
    end
  end
end
