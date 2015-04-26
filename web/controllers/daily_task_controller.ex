defmodule ScrumTools.DailyTaskController do
  use ScrumTools.Web, :controller

  alias ScrumTools.Repo
  alias ScrumTools.DailyTask

  plug :action

  def show(conn, %{"id" => id}) do
    task = Repo.get(DailyTask, id)
    render(conn, :show, daily_task: task)
  end

  def create(conn, %{"daily_task" => params}) do
    changeset = DailyTask.changeset(%DailyTask{}, params)

    if changeset.valid? do
      task = Repo.insert(changeset)
      conn
      |> put_resp_header("Location", daily_task_url(conn, :show, %{id: task.id}))
      |> put_status(201)
      |> render(:create, daily_task: task)
    else
      conn
      |> put_status(422)
      |> render(:create, errors: changeset.errors)
    end
  end

  def update(conn, %{"id" => id, "daily_task" => params}) do
    task = Repo.get(DailyTask, id)
    changeset = DailyTask.changeset(task, params)

    if changeset.valid? do
      Repo.update(changeset)
      conn
      |> put_resp_header("Location", daily_task_url(conn, :show, %{id: task.id}))
      |> render(:update, daily_task: task)
    else
      conn
      |> put_status(422)
      |> render(:update, errors: changeset.errors)
    end
  end

  def delete(conn, %{"id" => id}) do
    task = Repo.get(DailyTask, id)
    Repo.delete(task)
    conn
      |> render(:destroy, daily_task: task)
  end
end
