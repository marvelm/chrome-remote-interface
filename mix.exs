defmodule ChromeRemoteInterface.Mixfile do
  use Mix.Project

  def project do
    [
      app: :chrome_remote_interface,
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps(),
      name: "Chrome Remote Interface",
      source_url: "https://github.com/andrewvy/chrome-remote-interface",
      description: description(),
      package: package()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 3.1"},
      {:httpipe_adapters_hackney, "~> 0.9"},
      {:httpipe, "~> 0.9"},
      {:websockex, "~> 0.4.0"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    "Chrome Debugging Protocol client for Elixir"
  end

  defp package do
    [
      maintainers: ["andrew@andrewvy.com"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/andrewvy/chrome-remote-interface"
      }
    ]
  end
end
