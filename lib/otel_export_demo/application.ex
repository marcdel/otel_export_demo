defmodule OtelExportDemo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    OpenTelemetry.register_application_tracer(:otel_export_demo)

    children = [
      # Starts a worker by calling: OtelExportDemo.Worker.start_link(arg)
      # {OtelExportDemo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OtelExportDemo.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
