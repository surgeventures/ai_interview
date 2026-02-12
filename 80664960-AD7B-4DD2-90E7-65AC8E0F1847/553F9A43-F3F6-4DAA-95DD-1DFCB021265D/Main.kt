fun main() {
    val counter = CounterService(CounterConfig(from = 1, to = 10))

    for (output in counter.count()) {
        println(output.label)
    }
}
