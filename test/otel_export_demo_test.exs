defmodule OtelExportDemoTest do
  use ExUnit.Case
  doctest OtelExportDemo

  test "greets the world" do
    assert OtelExportDemo.hello() == :world
  end
end
