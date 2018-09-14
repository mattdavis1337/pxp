defmodule PxpWeb.PageController do
  use PxpWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
