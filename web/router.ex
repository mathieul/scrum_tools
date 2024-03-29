defmodule ScrumTools.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ScrumTools do
    pipe_through :api

    resources "/daily_sections", DailySectionController
    resources "/daily_tasks",    DailyTaskController
  end

  scope "/", ScrumTools do
    pipe_through :browser

    get "*anything", PageController, :index
  end
end
