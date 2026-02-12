mod types;
mod counter_service;

use types::CounterConfig;
use counter_service::CounterService;

fn main() {
    let counter = CounterService::new(CounterConfig { from: 1, to: 10 });

    for output in counter.count() {
        println!("{}", output.label);
    }
}
