defmodule Coffeeroom.UserControllerTest do
  use Coffeeroom.ConnCase
  alias Coffeeroom.UserView

  test "#index renders a list of users" do
    conn = build_conn()
    user = insert(:user)

    conn = get conn, user_path(conn, :index)

    assert json_response(conn, 200) == render_json(UserView, "index.json", users: [user])
  end

  test "#show renders a user" do
    conn = build_conn()
    user = insert(:user)

    conn = get conn, user_path(conn, :show, user)

    assert json_response(conn, 200) == render_json(UserView, "show.json", user: user)
  end

end
