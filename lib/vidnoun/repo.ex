defmodule Vidnoun.Repo do
  use Ecto.Repo,
    otp_app: :vidnoun,
    adapter: Ecto.Adapters.Postgres
end
