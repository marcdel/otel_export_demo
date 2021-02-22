use Mix.Config

config :logger, level: :debug

config :opentelemetry_exporter,
  protocol: :grpc,
  # otlp_endpoint: "https://localhost:9411"
  otlp_traces_endpoint: "https://localhost:9411"

