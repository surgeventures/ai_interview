struct CounterService {
    private let config: CounterConfig

    init(config: CounterConfig) {
        precondition(config.from <= config.to, "\"from\" (\(config.from)) must be <= \"to\" (\(config.to))")
        self.config = config
    }

    func count() -> [CounterOutput] {
        (config.from...config.to).map { i in
            CounterOutput(value: i, label: "Count: \(i)")
        }
    }
}
