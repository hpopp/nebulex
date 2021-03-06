defmodule Mix.Nebulex do
  # Conveniences for writing Mix.Tasks in Nebulex.
  @moduledoc false

  alias Mix.Project

  @doc """
  Gets a path relative to the application path.
  Raises on umbrella application.
  """
  def no_umbrella!(task) do
    if Project.umbrella? do
      Mix.raise "Cannot run task #{inspect task} from umbrella application"
    end
  end
end
