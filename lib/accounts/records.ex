defmodule Accounts.Records do
  import Ecto.Query, warn: false
  alias Accounts.Repo
  alias Accounts.Records.Record

  def list_records do
    Repo.all(Record)
  end

  def get_record!(id), do: Repo.get!(Record, id)

  def create_record(attrs \\ %{}) do
    %Record{}
    |> Record.changeset(attrs)
    |> Repo.insert()
  end

  def update_record(%Record{} = record, attrs) do
    record
    |> Record.changeset(attrs)
    |> Repo.update()
  end

  def delete_record(%Record{} = record) do
    Repo.delete(record)
  end

  def change_record(%Record{} = record, attrs \\ %{}) do
    Record.changeset(record, attrs)
  end
end
