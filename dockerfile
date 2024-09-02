# Use a base image with a general purpose Linux distribution
FROM ubuntu:latest

# Set environment variables
ENV RUST_VERSION=1.73.0

# Install necessary packages and dependencies
RUN apt-get update && \
    apt-get install -y curl build-essential && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y && \
    source $HOME/.cargo/env && \
    rustc --version && \
    cargo --version

# Set up working directory
WORKDIR /workspace

# Default command
CMD ["bash"]
