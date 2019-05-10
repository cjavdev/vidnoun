defmodule Vidnoun.Repo.Migrations.CreateNouns do
  use Ecto.Migration

  def change do
    create table(:nouns) do
      add :label, :string

      timestamps()
    end

  end
end
