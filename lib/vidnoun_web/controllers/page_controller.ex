defmodule VidnounWeb.PageController do
  use VidnounWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
