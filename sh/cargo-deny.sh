#!/usr/bin/env bash

set -eu
script_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )
cd "$script_path/.."
set -x

# cargo install cargo-deny
cargo deny --all-features --log-level error --target aarch64-apple-darwin check
cargo deny --all-features --log-level error --target aarch64-linux-android check
cargo deny --all-features --log-level error --target wasm32-unknown-unknown check
cargo deny --all-features --log-level error --target x86_64-apple-darwin check
cargo deny --all-features --log-level error --target x86_64-pc-windows-msvc check
cargo deny --all-features --log-level error --target x86_64-unknown-linux-gnu check
cargo deny --all-features --log-level error --target x86_64-unknown-linux-musl check
