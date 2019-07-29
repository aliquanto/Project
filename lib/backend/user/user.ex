defmodule Backend.User do
  use Ecto.Schema
  alias Ecto.Changeset
  require Ecto.Query

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

    has_one :avatar, Backend.User.Avatar
    has_many :posts, Backend.User.Post
  end

  def changeset(user, params \\ %{}) do
    user
    |> Changeset.cast(params, [:login, :pass, :email, :firstname, :lastname, :middlename, :birthday, :region, :fon,])
    |> Chageset.validate_required([:login, :pass, :email])
    |> Changeset.validate_length(:login, min: 3)
    |> Changeset.validate_length(:pass, min: 8)
  end
end
