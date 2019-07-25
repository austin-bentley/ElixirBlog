defmodule ElixirBlogWeb.PostController do
  use ElixirBlogWeb, :controller

  alias ElixirBlog.Repo
  alias ElixirBlog.Blog.Post

  def show(conn, %{"id" => slug}) do
    postBody = Repo.get_by(Post, slug: slug)
    render(conn, "index.html", postData: postBody)
  end

  def new(conn, _params) do
    changeset = Post.changeset(%Post{}, %{}, conn)
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"post" => post_params}) do
    %Post{}
    |> Post.changeset(post_params, conn)
    |> Repo.insert()
    |> case do
      {:ok, _post} ->
        conn
        |> put_flash(:info, "Post created successfully.")
        |> redirect(to: "/")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def delete(conn, %{"id" => slug}) do
    Repo.get_by(Post, slug: slug)
    |> Repo.delete()
    |> case do
      {:ok, _post} ->
        conn
        |> put_flash(:info, "Post deleted successfully.")
        |> redirect(to: "/")

      {:error, _error} ->
        conn
        |> put_flash(:info, "Something went wrong")
    end
  end
end
