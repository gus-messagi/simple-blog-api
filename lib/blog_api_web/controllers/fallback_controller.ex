defmodule BlogApiWeb.FallbackController do
  use BlogApiWeb, :controller

  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(BlogApiWeb.ChangesetView)
    |> render("error.json", changeset: changeset)
  end
end
