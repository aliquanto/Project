defmodule Backend.Repo.Migrations.CreateAvatarsTable do
  use Ecto.Migration

  def change do
    create table(:avatars) do
      add :nick_name, :string
      add :image_url, :string
    end

  end
end
