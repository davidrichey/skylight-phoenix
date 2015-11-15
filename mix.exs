defmodule Skylight.Mixfile do
  use Mix.Project

  def project do
    [app: :skylight,
     version: "0.0.1",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :crypto]]
  end

  defp deps do
    [{:uuid, "~> 1.1"},
     {:plug, ">= 1.0.0", optional: true},
     {:cowboy, ">= 1.0.0", optional: true},
     {:ex_doc, "~> 0.10", only: :docs}]
  end
end
