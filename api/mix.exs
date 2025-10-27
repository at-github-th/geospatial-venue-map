
defmodule Api.MixProject do
  use Mix.Project
  def project do
    [app: :api, version: "0.1.0", elixir: "~> 1.15", deps: deps()]
  end
  def application do
    [extra_applications: [:logger, :cowboy, :plug_cowboy, :jason], mod: {Api.Application, []}]
  end
  defp deps do
    [{:plug_cowboy, "~> 2.7"}, {:jason, "~> 1.4"}]
  end
end
