defmodule CounterService do
  @spec count(CounterConfig.t()) :: [CounterOutput.t()]
  def count(%CounterConfig{from: from, to: to}) when from <= to do
    Enum.map(from..to, fn i ->
      %CounterOutput{value: i, label: "Count: #{i}"}
    end)
  end

  def count(%CounterConfig{from: from, to: to}) do
    raise ArgumentError, "\"from\" (#{from}) must be <= \"to\" (#{to})"
  end
end
