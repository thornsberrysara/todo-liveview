defmodule TodoList.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :status, :integer
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:text, :status])
    |> validate_required([:text])
  end
end
