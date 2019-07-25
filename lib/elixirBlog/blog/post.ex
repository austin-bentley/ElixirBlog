defmodule ElixirBlog.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :subtitle, :string
    field :content, :string
    field :slug, :string
    field :author_id, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(post, attrs, conn) do
    post
    |> cast(attrs, [:title, :subtitle, :content, :slug, :author_id])
    |> validate_required([:title, :subtitle, :content])
    |> put_slug()
    |> put_author(conn)
    |> unique_constraint(:title, name: :posts_title_slug_index)
  end


  defp put_author(changeset, conn) do
    id = Plug.Conn.get_session(conn, :current_user_id)
    put_change(changeset, :author_id, id)
  end

  defp put_slug(%{changes: %{title: title}} = changeset) do
    put_change(changeset, :slug, slugify_title(title))
  end

  defp put_slug(changeset), do: changeset

  defp slugify_title(title) do
    title
      |> String.downcase
      |> String.replace(~r/[^a-z0-9\s-]/, "")
      |> String.trim()
      |> String.replace(~r/(\s|-)+/, "-")
  end
end
