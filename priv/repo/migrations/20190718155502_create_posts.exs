defmodule ElixirBlog.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :subtitle, :string
      add :content, :text
      add :slug, :string

      timestamps()
    end
  end
end
