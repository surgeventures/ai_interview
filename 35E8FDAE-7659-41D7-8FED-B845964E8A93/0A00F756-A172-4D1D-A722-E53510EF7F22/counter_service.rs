use crate::types::{CounterConfig, CounterOutput};

pub struct CounterService {
    config: CounterConfig,
}

impl CounterService {
    pub fn new(config: CounterConfig) -> Self {
        assert!(
            config.from <= config.to,
            "\"from\" ({}) must be <= \"to\" ({})",
            config.from,
            config.to
        );
        Self { config }
    }

    pub fn count(&self) -> Vec<CounterOutput> {
        (self.config.from..=self.config.to)
            .map(|i| CounterOutput {
                value: i,
                label: format!("Count: {i}"),
            })
            .collect()
    }
}
