class CounterService(private val config: CounterConfig) {
    init {
        require(config.from <= config.to) {
            "\"from\" (${config.from}) must be <= \"to\" (${config.to})"
        }
    }

    fun count(): Sequence<CounterOutput> = sequence {
        for (i in config.from..config.to) {
            yield(CounterOutput(value = i, label = "Count: $i"))
        }
    }
}
