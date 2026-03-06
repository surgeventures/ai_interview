data class CounterConfig(
    val from: Int,
    val to: Int,
)

data class CounterOutput(
    val value: Int,
    val label: String,
)
