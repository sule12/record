defmodule AccountsWeb.Api.V1.RecordControllerTest do
  use AccountsWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  describe "POST create_record/2" do
    test "should return 201 when record was created Successfully", %{
      conn: conn
    } do
      params = %{
        "record" => %{
          "amount" => 200,
          "client_name" => "Suleiman",
          "description" => "This is a new record"
        }
      }

      conn = post(conn, Routes.api_v1_record_path(conn, :create_record), params)

      assert json_response(conn, 201)
    end
  end
end
