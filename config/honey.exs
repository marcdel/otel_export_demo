use Mix.Config

config :logger, level: :debug

api_key = Map.fetch!(System.get_env(), "HONEYCOMB_KEY")

#config :opentelemetry_exporter,
#  protocol: :grpc,
#  # otlp_endpoint: "https://api.honeycomb.io:443",
#  otlp_traces_endpoint: "https://api.honeycomb.io:443",
#  otlp_headers: [
#    {"x-honeycomb-team", api_key},
#    {"x-honeycomb-dataset", "otel_export_demo"}
#  ]

# Configure OpenTelemetry Exporter
config :opentelemetry, :processors,
       otel_batch_processor: %{
         exporter:
           {:opentelemetry_exporter,
           %{
             protocol: :grpc,
             headers: [
               {'x-honeycomb-team', api_key},
               {'x-honeycomb-dataset', 'experiments'}
             ],
             endpoints: [{:https, 'api.honeycomb.io', 443, []}]
           }}
       }