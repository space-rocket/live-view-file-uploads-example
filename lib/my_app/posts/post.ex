defmodule MyApp.Posts.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :avatar, :string

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:avatar])
    |> validate_required([:avatar])
  end
end
