defmodule OtelExportDemo do
  require OpenTelemetry.Tracer, as: Tracer

  def hello do
    Tracer.with_span "hello" do
      :world
    end
  end
end
