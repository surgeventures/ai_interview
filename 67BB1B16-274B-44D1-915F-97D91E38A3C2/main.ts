import { CounterService } from "./counter.service";

const counter = new CounterService({ from: 1, to: 10 });

for (const output of counter.count()) {
  console.log(output.label);
}
