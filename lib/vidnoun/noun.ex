defmodule Vidnoun.Noun do
  use Ecto.Schema
  import Ecto.Changeset

  schema "nouns" do
    field :label, :string

    timestamps()
  end

  @doc false
  def changeset(noun, attrs) do
    noun
    |> cast(attrs, [:label])
    |> validate_required([:label])
  end
end
