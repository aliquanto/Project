defmodule Backend.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :login, :string
      add :pass, :string
      add :email, :string
      add :firstname, :string
      add :lastname, :string
      add :middlename, :string
      add :birthday, :date
      add :region, :string
      add :fon, :string
    end

  end
end
