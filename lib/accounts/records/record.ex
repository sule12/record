defmodule Accounts.Records.Record do
  use Ecto.Schema
  import Ecto.Changeset

  schema "records" do
    field :amount, :integer
    field :client_name, :string
    field :description, :string

    timestamps()
  end

  @doc false
  def changeset(record, attrs) do
    record
    |> cast(attrs, [:client_name, :amount, :description])
    |> validate_required([:client_name, :amount, :description])
    |> validate_length(:client_name, min: 3)
  end
end
