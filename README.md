## Installation

```
brew install libpq
cargo install diesel_cli --no-default-features --features postgres
```

## Run

```
docker-compose up -d
diesel migration run
cargo run
```
