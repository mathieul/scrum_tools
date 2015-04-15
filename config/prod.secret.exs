use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :scrum_tools, ScrumTools.Endpoint,
  secret_key_base: "9AUFH29EkE1sV7hQzlh4z5OqU5cmQQUv03myl4p9xpcgtRVjBPRS6kFFWF7/KVSB"

# Configure your database
config :scrum_tools, ScrumTools.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "scrum_tools_prod"
