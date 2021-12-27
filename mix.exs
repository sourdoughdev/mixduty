defmodule Mixduty.MixProject do
  use Mix.Project

  def project do
    [
      app: :mixduty,
      version: "0.2.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      name: "Mixduty",
      source_url: "https://github.com/PagerDuty/mixduty",
      deps: deps()
    ]
  end

  defp description do
    """
    An elixir client for PagerDuty's API v2
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Ian Minoso"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/PagerDuty/mixduty"}
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.6"},
      {:jason, "~> 1.3.0"},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:plug_cowboy, "~> 2.5"},
      {:morphix, "~> 0.8.0"}
    ]
  end
end
