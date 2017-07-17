defmodule Coffeeroom.PageController do
  use Coffeeroom.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
