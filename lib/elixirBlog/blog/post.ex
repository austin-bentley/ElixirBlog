defmodule ElixirBlog.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :subtitle, :string
    field :content, :string
    field :slug, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :subtitle, :content, :slug])
    |> validate_required([:title, :subtitle, :content, :slug])
  end
end
