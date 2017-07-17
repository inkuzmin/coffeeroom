defmodule Coffeeroom.UserView do
  use Coffeeroom.Web, :view

  def render("index.json", %{users: users}) do
    %{
      users: Enum.map(users, &user_json/1)
    }
  end

  def render("show.json", %{user: user}) do
    %{user: user_json(user)}
  end

  def user_json(user) do
    %{
      nickname: user.nickname,
      realname: user.realname,
      inserted_at: user.inserted_at,
      updated_at: user.updated_at
    }
  end
end
