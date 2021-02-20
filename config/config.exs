use Mix.Config

api_key = Map.fetch!(System.get_env(), "HONEYCOMB_KEY")

config :opentelemetry_exporter,
  otlp_endpoint: "api.honeycomb.io:443",
  otlp_headers: [
    "x-honeycomb-team": api_key,
    "x-honeycomb-dataset": "otel_export_demo"
  ]
