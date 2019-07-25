defmodule ElixirBlogWeb.PageController do
  use ElixirBlogWeb, :controller
  alias ElixirBlog.Repo
  alias ElixirBlog.Blog.Post

  def index(conn, _params) do
    blog_posts = Repo.all(Post)
    render(conn, "index.html", posts: blog_posts)
  end
end
