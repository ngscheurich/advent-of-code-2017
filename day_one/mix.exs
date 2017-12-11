defmodule DayOne.MixProject do
  use Mix.Project

  def project do
    [
      app: :day_one,
      version: "0.1.0",
      elixir: "~> 1.6-dev",
      start_permanent: Mix.env() == :prod,
      escript: escript(),
      deps: deps()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  def escript do
    [main_module: DayOne.CLI]
  end

  defp deps do
    []
  end
end
