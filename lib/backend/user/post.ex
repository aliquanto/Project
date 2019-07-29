defmodule Backend.User.Post do
  use Ecto.Schema

  schema "posts" do
    field :text, :string

    belongs_to :user, Backend.User
  end
end
