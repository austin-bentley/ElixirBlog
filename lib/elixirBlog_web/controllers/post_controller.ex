defmodule ElixirBlogWeb.PostController do
  use ElixirBlogWeb, :controller

  alias ElixirBlog.Repo
  alias ElixirBlog.Blog.Post

  def show(conn, %{"slug" => slug}) do
    postBody = Repo.get_by(Post, slug: slug)
    IO.inspect(postBody, label: "paramssssss")
    render(conn, "index.html", postData: postBody)
  end

  def new(conn, _params) do
    changeset = Post.changeset(%Post{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"post" => post_params}) do
    post_params = add_slug(post_params)
    %Post{}
    |> Post.changeset(post_params)
    |> Repo.insert()
    |> case do
      {:ok, post} ->
        conn
        |> put_flash(:info, "Post created successfully.")
        |> redirect(to: "/")
  
      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  defp add_slug(params) do 
    slug = slugified_title(params["title"])
    Map.put_new(params, "slug", slug)
  end

  defp slugified_title(title) do
    title
      |> String.downcase
      |> String.replace(~r/[^a-z0-9\s-]/, "")
      |> String.replace(~r/(\s|-)+/, "-")
  end
end
