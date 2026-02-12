import { CounterConfig, CounterOutput } from "./types";

export class CounterService {
  private config: CounterConfig;

  constructor(config: CounterConfig) {
    if (config.from > config.to) {
      throw new Error(`"from" (${config.from}) must be <= "to" (${config.to})`);
    }
    this.config = config;
  }

  *count(): Generator<CounterOutput> {
    for (let i = this.config.from; i <= this.config.to; i++) {
      yield { value: i, label: `Count: ${i}` };
    }
  }
}
