defmodule ElixirBlog.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :subtitle, :string
      add :content, :text
      add :slug, :string
      add :author_id, :integer

      timestamps()
    end

    create unique_index(:posts, [:title, :slug])
  end
end
