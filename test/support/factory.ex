defmodule Coffeeroom.Factory do
  use ExMachina.Ecto, repo: Coffeeroom.Repo

  def user_factory do
    %Coffeeroom.User{
      nickname: "test_user",
      realname: "Test User"
    }
  end
end
