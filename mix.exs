defmodule OtelExportDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :otel_export_demo,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {OtelExportDemo.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opentelemetry_api,
       github: "open-telemetry/opentelemetry-erlang",
       sparse: "apps/opentelemetry_api",
       override: true},
      {:opentelemetry_exporter,
       github: "open-telemetry/opentelemetry-erlang",
       sparse: "apps/opentelemetry_exporter",
       override: true},
      {:opentelemetry,
       github: "open-telemetry/opentelemetry-erlang", sparse: "apps/opentelemetry", override: true}
    ]
  end
end
