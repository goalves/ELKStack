defmodule PhoenixLogger.MessageController do
  use PhoenixLogger.Web, :controller
  def redirector(conn, params) do
    IO.inspect(params)

    KafkaEx.produce("logger", 0, Poison.encode!(params))

    conn
    |> put_status(:ok)
    |> json(%{})
  end
end
