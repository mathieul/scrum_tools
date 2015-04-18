defmodule ScrumTools.DailySectionView do
  use ScrumTools.Web, :view

  def render("index.json", %{daily_sections: daily_sections}),
    do: %{daily_sections: daily_sections}
end
