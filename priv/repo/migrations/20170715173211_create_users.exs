defmodule Coffeeroom.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
          add :nickname, :string
          add :realname, :string

          timestamps()
        end
  end
end