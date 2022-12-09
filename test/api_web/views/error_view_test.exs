defmodule ApiWeb.ErrorViewTest do
  use ApiWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  alias ApiWeb.ErrorView

  test "renders 500.json" do
    assert render(ErrorView, "500.json", []) == %{errors: %{detail: "Internal Server Error"}}
  end
end
