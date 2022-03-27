defmodule AccountsWeb.Api.V1.RecordController do
  use AccountsWeb, :controller
  alias Accounts.Records
  alias Accounts.Records.Record

  def get_records(conn, _params) do
    records = Records.list_records()
    render(conn, "list_records.json", records: records)
  end

  def create_record(conn, %{"record" => record_params}) do
    with {:ok, %Record{} = record} <-
           Records.create_record(record_params) do
      conn
      |> put_status(:created)
      |> render("create_record.json", record: record)
    end
  end
end
