defmodule BambooCampaignMonitor.MixProject do
  use Mix.Project

  @project_url "https://github.com/jackmarchant/bamboo_campaign_monitor"

  def project do
    [
      app: :bamboo_campaign_monitor,
      version: "0.1.0",
      elixir: "~> 1.7",
      source_url: @project_url,
      homepage_url: @project_url,
      name: "Bamboo Campaign Monitor Adapter",
      description: "Send emails with Campaign Monitor, through Bamboo",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :hackney]
    ]
  end

  def package do
    [
      maintainers: ["Jack Marchant"],
      licenses: ["MIT"],
      links: %{"GitHub" => @project_url}
    ]
  end

  defp deps do
    [
      {:bamboo, ">= 1.2.0"},
      {:hackney, ">= 1.6.5"},
      {:poison, ">= 1.5.0", only: :test},
      {:plug, "~> 1.0"},
      {:plug_cowboy, "~> 1.0", only: [:test, :dev]},
      {:ex_doc, "~> 0.19", only: :dev}
    ]
  end
end
