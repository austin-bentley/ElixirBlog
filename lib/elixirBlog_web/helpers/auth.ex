defmodule ElixirBlogWeb.Helpers.Auth do

  def signed_in?(conn) do
    user_id = Plug.Conn.get_session(conn, :current_user_id)
    if user_id, do: !!ElixirBlog.Repo.get(ElixirBlog.Accounts.User, user_id)
  end

  def is_owner?(conn, author) do
    user_id = Plug.Conn.get_session(conn, :current_user_id)
    if user_id == author, do: true
  end
end
