defmodule AccountsWeb.Api.V1.RecordView do
  use AccountsWeb, :view

  alias AccountsWeb.Api.V1.RecordView

  def render("list_records.json", %{records: records}) do
    %{
      status: :ok,
      message: "Records listed Successfully",
      data: render_many(records, RecordView, "record.json")
    }
  end

  def render("create_record.json", %{record: record}) do
    %{
      id: record.id,
      amount: record.amount,
      client_name: record.client_name,
      description: record.description,
      reviewed_at: record.inserted_at
    }
  end

  def render("record.json", %{record: record}) do
    %{
      id: record.id,
      amount: record.amount,
      client_name: record.client_name,
      description: record.description,
      reviewed_at: record.inserted_at
    }
  end
end
