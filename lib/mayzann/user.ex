defmodule Mayzann.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :provider, :string
    field :token, :string
    field :username, :string
    has_many :posts, Mayzann.Post

    timestamps()
  end

  @doc false
  def changeset(user, attrs \\ %{}) do
    user
    |> cast(attrs, [:username, :email, :provider, :token])
    |> validate_required([:username, :email, :provider, :token])
  end
end
