use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_test_app, ElixirTestApp.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :elixir_test_app, ElixirTestApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: [scheme: "https", host: "https://rafaelvicio-elixir.herokuapp.com/", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true