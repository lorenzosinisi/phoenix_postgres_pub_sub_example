defmodule PhoenixPostgresPubSubExample.Repo do
  use Ecto.Repo, otp_app: :phoenix_postgres_pub_sub_example

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end
end
