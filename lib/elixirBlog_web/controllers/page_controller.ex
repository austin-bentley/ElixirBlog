defmodule ElixirBlogWeb.PageController do
  use ElixirBlogWeb, :controller
  alias ElixirBlog.Repo
  alias ElixirBlog.Blog.Post

  def index(conn, _params) do
    blogPosts = Repo.all(Post)
    render(conn, "index.html", posts: blogPosts)
  end
end
