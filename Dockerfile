# Use the official Rust image as a base
FROM rust:latest

# Set the working directory inside the container
WORKDIR /usr/src/rusty-blockparser

# Copy the entire project
COPY . .

# Build the release version of the project
RUN cargo build --release

# Set the entry point to the binary produced by the build
ENTRYPOINT ["./target/release/rusty-blockparser"]

# Set default arguments (can be overridden)
CMD []