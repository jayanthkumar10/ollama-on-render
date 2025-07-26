FROM debian:bookworm-slim

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    lsb-release \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Add Ollama's package repo
RUN curl -fsSL https://ollama.com/download/linux | sh

# Expose port for API
EXPOSE 11434

# Start ollama server
CMD ["ollama", "serve"]
