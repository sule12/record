defmodule Accounts.Repo.Migrations.CreateRecords do
  use Ecto.Migration

  def change do
    create table(:records) do
      add :client_name, :string
      add :amount, :integer
      add :description, :string

      timestamps()
    end

  end
end
