defmodule CounterConfig do
  @enforce_keys [:from, :to]
  defstruct [:from, :to]

  @type t :: %__MODULE__{from: integer(), to: integer()}
end

defmodule CounterOutput do
  @enforce_keys [:value, :label]
  defstruct [:value, :label]

  @type t :: %__MODULE__{value: integer(), label: String.t()}
end
