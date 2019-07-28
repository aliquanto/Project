defmodule Backend.User do
  use Ecto.Schema

  schema "users" do
    field :login, :string
    field :pass, :string
    field :email, :string
    field :firstname, :string
    field :lastname, :string
    field :middlename, :string
    field :birthday, :date
    field :region, :string
    field :fon, :string
  end
end
