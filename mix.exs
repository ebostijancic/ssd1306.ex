defmodule SSD1306.Mixfile do
  use Mix.Project

  def project do
    [app: :ssd1306,
     version: "0.1.1",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :elixir_ale],
     mod: {SSD1306, []}]
  end
  
  defp deps do
    [
      {:elixir_ale, "~> 0.5.5"},
      {:egd, github: "erlang/egd"}
    ]
  end
end
