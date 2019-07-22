defmodule ElixirBlogWeb.PageCommander do
  use Drab.Commander

  alias ElixirBlog.Repo
  alias ElixirBlog.Blog.Post

  defhandler remove_post(socket, sender) do
    # IO.inspect(sender["dataset"]["slug"], label: "soememeemem")
    Repo.get_by(Post, slug: sender["dataset"]["slug"])
    |> Repo.delete()
    |> case do
      {:ok, post} ->
        Drab.Browser.redirect_to(socket, "/")
    end
  end
end
