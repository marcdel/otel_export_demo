use Mix.Config

config :logger, level: :debug

# Configure OpenTelemetry Exporter
api_key = Map.fetch!(System.get_env(), "HONEYCOMB_KEY")

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
