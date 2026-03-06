Code.require_file("types.ex", __DIR__)
Code.require_file("counter_service.ex", __DIR__)

config = %CounterConfig{from: 1, to: 10}

CounterService.count(config)
|> Enum.each(fn output -> IO.puts(output.label) end)
