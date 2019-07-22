defmodule ElixirBlog.Repo do
  use Ecto.Repo,
    otp_app: :elixirBlog,
    adapter: Ecto.Adapters.Postgres
end
