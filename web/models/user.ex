defmodule Coffeeroom.User do
  use Coffeeroom.Web, :model

  schema "users" do
    field :nickname
    field :realname

    timestamps()
  end
end
